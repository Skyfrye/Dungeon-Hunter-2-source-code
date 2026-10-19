#!/usr/bin/env python3
"""Cleanup pass: merge the hash-named slice files of one class into <Class>.cpp (CLEANUP-PLAN.md rule 1).

  py -3 tools/trackb/merge_slices.py --category net-transport            # dry run: print the plan
  py -3 tools/trackb/merge_slices.py --category net-transport --apply    # git mv/merge, rewrite ledger source_file

A group is every hash-named file whose main class is the same and which holds only that class (class_count 1 in
rename-inventory.csv). Slices merge in (sha, n) order: the first slice keeps its preamble; later slices contribute
their includes (deduplicated, hoisted after the first slice's includes) and their bodies. The `// 0xADDR` function
headers are untouched, so armdiff and the ledger keep working. A group whose target file already exists is skipped
and reported. Run the inventory first: py -3 tools/trackb/rename_inventory.py
"""
import argparse
import collections
import csv
import glob
import os
import re
import subprocess

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
PORT = os.path.join(ROOT, 'port', 'decomp-reconstruction')
INV = os.path.join(ROOT, 'reports', 'decomp-reconstruction', 'cleanup', 'rename-inventory.csv')
HASHED = re.compile(r'^(?:[a-z]\d?[a-z]?\d?-)?([a-z-]+?)-(.+?)-([0-9a-f]{6})-(\d+)\.cpp$')
INCLUDE = re.compile(r'^\s*#\s*include\b.*$', re.M)


def rel(p):
    return os.path.relpath(p, ROOT).replace(os.sep, '/')


COND = re.compile(r'^\s*#\s*(if|ifdef|ifndef|endif)', re.M)


def top_level_includes(text):
    """[(start, end)] of every #include line that is outside any #if/#ifdef/#ifndef ... #endif block."""
    events = sorted([(m.start(), 'inc', m.end()) for m in INCLUDE.finditer(text)] +
                    [(m.start(), m.group(1), m.end()) for m in COND.finditer(text)])
    depth, out = 0, []
    for start, kind, end in events:
        if kind == 'inc':
            if depth == 0:
                out.append((start, end))
        elif kind == 'endif':
            depth = max(0, depth - 1)
        else:
            depth += 1
    return out


def strip_top_level_includes(text):
    """(includes, body): the top-level #include lines, and the text without them (conditional includes stay in place)."""
    spans = top_level_includes(text)
    incs = [text[a:b] for a, b in spans]
    body, last = [], 0
    for a, b in spans:
        body.append(text[last:a])
        last = b
    body.append(text[last:])
    return incs, ''.join(body)


def merge_group(cat, cls, files, apply):
    files = sorted(files, key=lambda f: (HASHED.match(os.path.basename(f)).group(3), int(HASHED.match(os.path.basename(f)).group(4))))
    dst = os.path.join(os.path.dirname(files[0]), cls + '.cpp')
    if os.path.exists(dst):
        print(f'  SKIP {cat}/{cls}: {rel(dst)} exists')
        return None
    print(f'  {cat}/{cls}: {len(files)} slice(s) -> {rel(dst)}')
    if not apply:
        return None
    texts = [open(f, encoding='utf-8', errors='replace').read() for f in files]
    # A single slice is a pure rename: its text is left byte for byte. For several slices the first one keeps its
    # preamble; the later slices' top-level includes that it lacks are inserted after its last top-level include
    # (never inside an #if block), and their bodies follow.
    out = texts[0]
    if len(texts) > 1:
        first_spans = top_level_includes(texts[0])
        seen = list(dict.fromkeys(texts[0][a:b].strip() for a, b in first_spans))
        extra, bodies = [], []
        for f, t in zip(files[1:], texts[1:]):
            incs, body = strip_top_level_includes(t)
            for i in incs:
                s = i.strip()
                if s not in seen:
                    seen.append(s)
                    extra.append(s)
            bodies.append('\n// ---- merged from ' + os.path.basename(f) + ' ----\n' + body.strip() + '\n')
        if extra:
            at = first_spans[-1][1] if first_spans else 0
            out = out[:at] + '\n' + '\n'.join(extra) + out[at:]
        out = out.rstrip() + '\n' + ''.join(bodies)
    subprocess.run(['git', 'mv', files[0], dst], check=True)
    for f in files[1:]:
        subprocess.run(['git', 'rm', '-q', '-f', f], check=True)
    with open(dst, 'w', encoding='utf-8', newline='\n') as fh:
        fh.write(out)
    # Slices of one class often repeat file-local helpers (anonymous-namespace constants/functions); a merged TU
    # that no longer compiles is reverted and left for a manual merge.
    check = subprocess.run(['bash', os.path.join(ROOT, 'tools', 'trackb', 'check_tu.sh'), dst], capture_output=True, text=True)
    if os.environ.get('MERGE_DEBUG'):
        print(check.stdout[-800:], check.stderr[-1500:])
    if check.returncode != 0 or not any(l.startswith('OK ') for l in check.stdout.splitlines()):
        subprocess.run(['git', 'reset', '-q', 'HEAD', '--'] + files + [dst])
        subprocess.run(['git', 'checkout', '--'] + files)
        os.remove(dst)
        print(f'  REVERTED {cat}/{cls}: merged file does not compile (duplicate file-local definitions?) - manual merge')
        return None
    ledger = os.path.join(PORT, cat, 'ledger.csv')
    if os.path.exists(ledger):
        txt = open(ledger, encoding='utf-8').read()
        for f in files:
            txt = txt.replace(rel(f).split('/', 2)[2], rel(dst).split('/', 2)[2])
        open(ledger, 'w', encoding='utf-8', newline='').write(txt)
    return dst


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--category', required=True)
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    rows = [r for r in csv.DictReader(open(INV, encoding='utf-8')) if r['category'] == a.category and r['class_count'] == '1' and r['main_class'] != '?']
    groups = collections.defaultdict(list)
    for r in rows:
        hits = glob.glob(os.path.join(PORT, a.category, 'src', '**', r['file']), recursive=True)
        if len(hits) == 1:
            groups[r['main_class']].append(hits[0])
    print(f'{a.category}: {len(groups)} class group(s), {sum(len(v) for v in groups.values())} file(s)')
    done = 0
    for cls, files in sorted(groups.items()):
        if merge_group(a.category, cls, files, a.apply):
            done += 1
    if a.apply:
        print(f'merged {done} group(s); now: cmake + ninja + ctest, then check_tu on the new files')


if __name__ == '__main__':
    main()
