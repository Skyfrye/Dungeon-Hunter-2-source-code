#!/usr/bin/env python3
"""Link reports for the Track B build (link-1).

  py -3 tools/trackb/link_report.py stubs     [--build build/tb-all]   regenerate port/decomp-reconstruction/link-stubs/link_stubs.csv
  py -3 tools/trackb/link_report.py missing   [--build build/tb-all]   write reports/decomp-reconstruction/link-missing.csv
  py -3 tools/trackb/link_report.py overrides [--build build/tb-all]   write reports/decomp-reconstruction/link-test-overrides.csv

Run each after a successful `ninja -C build/tb-all -k 0` (the libraries and the test objects must be built).

stubs      Relinks every test executable WITHOUT the stub archive and collects the undefined symbols: the symbols that some
           test reaches and no library defines. Each becomes one aborting definition in the stub archive (CMakeLists.txt).
           Run cmake and ninja again afterwards. A stub for a symbol that a library defines later is a stale stub: the ctest
           link/library-duplicates fails, rerun this command.
missing    One link of every library with --whole-archive: every symbol that some library object references and no library
           defines. These are the functions without a body in the tree (not reconstructed, third-party code, or port seams).
overrides  Relinks every test WITHOUT --allow-multiple-definition and lists, per test, the symbols that the test defines and a
           library defines too (the test's definition wins in the real link).
"""
import argparse, collections, concurrent.futures as cf, csv, glob, json, os, re, subprocess, sys, tempfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..')).replace('\\', '/')
PORT = ROOT + '/port/decomp-reconstruction'
SYMBOLS = ROOT + '/recovered/native/symbols/libDungeonHunter2.so/symbols.csv'
BS = chr(92)


class Build:
    def __init__(self, build):
        self.dir = os.path.abspath(build).replace('\\', '/')
        cache = open(self.dir + '/CMakeCache.txt', encoding='utf-8').read()
        self.cxx = re.search(r'^CMAKE_CXX_COMPILER:\S+=(.*)$', cache, re.M).group(1).replace('\\', '/')
        tool_dir = os.path.dirname(self.cxx)
        ext = '.exe' if os.name == 'nt' else ''
        self.nm = tool_dir + '/nm' + ext
        self.filt = tool_dir + '/c++filt' + ext
        self.libs = sorted(l.replace('\\', '/') for l in glob.glob(self.dir + '/lib*.a')
                           if '_test' not in os.path.basename(l) and 'link_stubs' not in l)
        self.stub_lib = self.dir + '/libdh2_test_link_stubs.a'

    def tests(self, flt=''):
        out = subprocess.run(['ninja', '-C', self.dir, '-t', 'targets', 'all'], capture_output=True, text=True).stdout
        return sorted(l.split(':')[0] for l in out.splitlines() if re.match(r'^dh2_.*_test\.exe: ', l) and flt in l)

    def demangle(self, names):
        names = list(names)
        if not names:
            return {}
        out = subprocess.run([self.filt], input='\n'.join(names), capture_output=True, text=True).stdout.splitlines()
        return dict(zip(names, out))


def relink(b, target, drop_stubs=False, drop_allow=False):
    """Link one test into a scratch file; returns (undefined, multiple, other)."""
    cmd = subprocess.run(['ninja', '-C', b.dir, '-t', 'commands', target], capture_output=True, text=True).stdout.strip().splitlines()[-1]
    cmd = cmd.replace('c++.exe ', 'c++.exe -Wl,--no-demangle ', 1) if 'c++.exe ' in cmd else cmd.replace(' -O', ' -Wl,--no-demangle -O', 1)
    if drop_stubs:
        cmd = re.sub(r'\s+libdh2_test_link_stubs\.a\s+', ' ', cmd)
    if drop_allow:
        cmd = cmd.replace('-Wl,--allow-multiple-definition', '')
    cmd = cmd.replace('-o ' + target, '-o ' + 'scratch_' + target, 1)
    p = subprocess.run(cmd, shell=True, capture_output=True, text=True, cwd=b.dir)
    txt = (p.stderr + p.stdout).replace(BS, '/')
    try:
        os.remove(os.path.join(b.dir, 'scratch_' + target))
    except OSError:
        pass
    und, mult, other = collections.OrderedDict(), [], []
    for l in txt.splitlines():
        m = re.search(r"undefined reference to `(.*)'$", l)
        if m:
            und.setdefault(m.group(1), None)
            continue
        m = re.search(r"ld\.exe: (.*?): multiple definition of `(.*)'; (.*?): first defined here", l)
        if m:
            mult.append((m.group(2), m.group(1), m.group(3)))
            continue
        if re.search(r'cannot find|No such file|error:', l) and 'ld returned' not in l:
            other.append(l[:200])
    return target, und, mult, other


def run_all(b, flt='', **kw):
    res = {}
    with cf.ThreadPoolExecutor(max_workers=int(os.environ.get('LINKJOBS', '6'))) as ex:
        for t, und, mult, other in ex.map(lambda t: relink(b, t, **kw), b.tests(flt)):
            res[t] = (list(und), mult, other)
    return res


def elf_symbols():
    elf = {}
    for row in csv.DictReader(open(SYMBOLS, encoding='utf-8')):
        if row['name'] and row['table'] == '.symtab':
            elf.setdefault(row['name'], row)
    return elf


def cmd_stubs(b, a):
    res = run_all(b, a.filter, drop_stubs=True)
    und = collections.defaultdict(set)
    skipped = []
    for t, (u, m, other) in res.items():
        if other:
            skipped.append((t, other[0]))
        for s in u:
            und[s].add(t)
    if skipped:
        print('not linked (objects missing, build first):', len(skipped), file=sys.stderr)
    elf = elf_symbols()
    syms = sorted(und)
    dem = b.demangle(syms)
    out_path = a.out or PORT + '/link-stubs/link_stubs.csv'
    w = csv.writer(open(out_path, 'w', newline='', encoding='utf-8'), lineterminator='\n')
    w.writerow(['symbol', 'kind', 'size', 'category', 'address', 'demangled'])
    clean = lambda t: re.sub(r'[;,]', '|', t)
    for s in syms:
        ds = dem.get(s, s)
        row = elf.get(s)
        kind, size, addr = 'function', 0, ''
        if row:
            addr = '0x%x' % int(row['address'])
            if row['type'] == 'STT_OBJECT':
                kind, size = 'data', max(int(row['size']), 8)
        if kind == 'function' and not row and '(' not in ds and ds != s and s.startswith('_Z'):
            kind, size = 'data', 8   # a static data member (no parameter list)
        if not row and not s.startswith('_Z') and not ds.endswith(')'):
            kind, size = 'data', 8
        w.writerow([s, kind, size, clean('see link-missing.csv'), addr, clean(ds if ds != s else '')])
    print('%d tests, %d failed to link without stubs, %d stub symbols written to %s' %
          (len(res), sum(1 for r in res.values() if r[0] or r[2]), len(syms), out_path))


def cmd_missing(b, a):
    main = tempfile.mkdtemp() + '/main.cpp'
    open(main, 'w').write('int main(){return 0;}\n')
    args = [b.cxx, '-static-libgcc', '-static-libstdc++', '-static', '-Wl,--no-demangle', main,
            '-o', main + '.exe', '-Wl,--whole-archive'] + b.libs + ['-Wl,--no-whole-archive', '-lws2_32']
    p = subprocess.run(args, capture_output=True, text=True)
    txt = (p.stderr + p.stdout).replace(BS, '/')
    und = collections.defaultdict(set)
    for l in txt.splitlines():
        m = re.search(r"undefined reference to `(.*)'$", l)
        if m:
            mm = re.search(r'ld\.exe: (.*?):[^:]*:\(', l)
            und[m.group(1)].add(re.sub(r'^.*/', '', mm.group(1)) if mm else '?')
    mult = [l for l in txt.splitlines() if 'multiple definition' in l]
    write_missing(b, und, a.out or ROOT + '/reports/decomp-reconstruction/link-missing.csv')
    print('%d undefined symbols; %d multiple definitions between the libraries' % (len(und), len(mult)))


def write_missing(b, und, out_path):
    elf = elf_symbols()
    elf_dem = {}
    elf_qual = collections.defaultdict(list)
    norm = lambda s: s.replace('std::__cxx11::', 'std::').replace(' >', '>').replace(', ', ',')
    for row in csv.DictReader(open(SYMBOLS, encoding='utf-8')):
        if row['name'] and row['table'] == '.symtab' and row['demangled'] and row['type'] in ('STT_FUNC', 'STT_OBJECT'):
            elf_dem.setdefault(norm(row['demangled']), row)
            i = row['demangled'].find('(')
            if i > 0 and row['type'] == 'STT_FUNC' and '.clone' not in row['demangled']:
                elf_qual[row['demangled'][:i]].append(row)
    ledger = {}
    for led in glob.glob(PORT + '/*/ledger.csv'):
        cat = os.path.basename(os.path.dirname(led))
        for p in [led] + sorted(glob.glob(os.path.dirname(led) + '/ledger.d/*.csv')):
            for r in csv.DictReader(open(p, encoding='utf-8', newline='')):
                try:
                    ledger[int(r['elf_address'], 16)] = (cat, r['status'], r.get('notes', ''))
                except (ValueError, TypeError):
                    pass

    def nparams(d):
        depth, n, seen = 0, 0, False
        for ch in d[d.find('(') + 1:]:
            if ch in '(<[':
                depth += 1
            elif ch in ')>]':
                if depth == 0:
                    break
                depth -= 1
            elif ch == ',' and depth == 0:
                n += 1
            elif not ch.isspace():
                seen = True
        return (n + 1) if seen else 0

    syms = sorted(und)
    dem = b.demangle(syms)
    w = csv.writer(open(out_path, 'w', newline='', encoding='utf-8'), lineterminator='\n')
    w.writerow(['symbol', 'demangled', 'address', 'category', 'ledger_status', 'kind', 'referenced_by', 'note'])
    counts = collections.Counter()
    for s in syms:
        ds = dem.get(s, s)
        row = elf.get(s) or (elf_dem.get(norm(ds)) if ds != s else None)
        fuzzy = False
        if row is None and ds != s and '(' in ds:
            c = [r for r in elf_qual.get(ds[:ds.find('(')], []) if nparams(r['demangled']) == nparams(ds)]
            if len({r['address'] for r in c}) == 1:
                row, fuzzy = c[0], True
        addr = int(row['address']) if row else None
        cat, status, notes = '-', '', ''
        if addr is not None and addr in ledger:
            cat, status, notes = ledger[addr]
        if re.match(r'^(FT_)', s):
            kind = 'third-party: FreeType 2.3.7 (statically linked in the binary, no source in the Track B tree)'
        elif ds.startswith('TiXml'):
            kind = 'third-party: TinyXML 2.5.x (statically linked in the binary, no source vendored in the Track B tree)'
        elif ds.startswith('glu') or re.match(r'^_Z\d+glu', s):
            kind = 'third-party: SGI libtess (gluTess*, statically linked in the binary, no source in the tree)'
        elif 'stb_vorbis' in ds or 'DecoderMPC8' in ds or s.startswith('mpc_') or re.search(r'\bmpc_', ds):
            kind = 'third-party: stb_vorbis / Musepack decoder (vox-audio, no source in the tree)'
        elif addr is None and 'recon' in ds:
            kind = 'port seam: a recon_* placeholder of the glitch scene layout recovery (owned by the layout worker)'
        elif addr is None:
            kind = 'port-stand-in: a name the port invented for a seam, with no ELF symbol'
        elif re.match(r'^(app[A-Z]|appInit)', s):
            kind = 'core-platform: Application glue (the app* entry points of the JNI natives), skipped'
        elif status == 'skipped':
            kind = 'ledger: skipped row (not reconstructed)'
        elif status == 'partial':
            kind = 'ledger: partial row (only partly rebuilt, no symbol-compatible body yet)'
        elif status in ('reconstructed', 'upstream'):
            kind = 'ledger: %s row, but no library defines the symbol (name or signature differs, or the source is compiled out)' % status
        else:
            kind = 'no ledger row'
        if fuzzy:
            kind = 'signature differs from the binary (decision 10): the binary has %s [%s]' % (row['demangled'][:120], kind)
        refs = ';'.join(sorted(und[s]))[:200]
        w.writerow([s, ds if ds != s else '', ('0x%x' % addr) if addr is not None else '', cat, status, kind, refs,
                    re.sub(r'\s+', ' ', notes)[:220]])
        counts[cat] += 1
    print('written', out_path)
    for c, n in counts.most_common():
        print('  %-28s %4d' % (c, n))


def cmd_overrides(b, a):
    res = run_all(b, a.filter, drop_allow=True)
    rows = []
    for t, (u, mult, other) in sorted(res.items()):
        for sym, later, first in mult:
            rows.append((t, sym, later, first))
    dem = b.demangle(sorted({r[1] for r in rows}))
    out_path = a.out or ROOT + '/reports/decomp-reconstruction/link-test-overrides.csv'
    w = csv.writer(open(out_path, 'w', newline='', encoding='utf-8'), lineterminator='\n')
    w.writerow(['test', 'symbol', 'demangled', 'replaced_library_object'])
    short = lambda o: re.sub(r'^.*/(CMakeFiles|build/[^/]*)/', '', o)
    for t, sym, later, first in rows:
        w.writerow([re.sub(r'^dh2_|\.exe$', '', t), sym, dem.get(sym, sym), re.sub(r':[^:]*:\(.*$', '', short(later)).replace('libdh2_', '')])
    print('%d tests with overrides, %d rows -> %s' % (len({r[0] for r in rows}), len(rows), out_path))


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('command', choices=['stubs', 'missing', 'overrides'])
    ap.add_argument('--build', default=ROOT + '/build/tb-all')
    ap.add_argument('--filter', default='', help='only test executables whose name contains this')
    ap.add_argument('--out', default='')
    a = ap.parse_args()
    b = Build(a.build)
    {'stubs': cmd_stubs, 'missing': cmd_missing, 'overrides': cmd_overrides}[a.command](b, a)


if __name__ == '__main__':
    main()
