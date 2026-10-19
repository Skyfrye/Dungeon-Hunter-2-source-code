#!/usr/bin/env python3
"""Regenerate reports/decomp-reconstruction/android-link-missing.csv.

Links every library of an Android build dir (cmake -DANDROID_ABI=arm64-v8a, see
port/decomp-reconstruction/ANDROID-BUILD.md) whole-archive into a shared object with -Wl,--no-undefined and writes
the undefined symbols, classified with the host report reports/decomp-reconstruction/link-missing.csv.

    py -3 tools/trackb/android_link_report.py build/own-arm64 [--ndk <dir>]

The libraries must be built first (ninja -k 0 <the libdh2_*.a targets>).
"""
import argparse
import collections
import csv
import os
import re
import subprocess
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
DEFAULT_NDK = '<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk/ndk/29.0.14206865'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('builddir')
    ap.add_argument('--ndk', default=os.environ.get('DH2_ANDROID_NDK', DEFAULT_NDK))
    ap.add_argument('--api', default='26')
    a = ap.parse_args()
    bd = os.path.abspath(a.builddir)
    pre = os.path.join(a.ndk, 'toolchains', 'llvm', 'prebuilt')
    pre = os.path.join(pre, os.listdir(pre)[0], 'bin')
    exe = '.exe' if os.name == 'nt' else ''
    cxx = os.path.join(pre, 'clang++' + exe)
    filt = os.path.join(pre, 'llvm-cxxfilt' + exe)
    libs = sorted(f for f in os.listdir(bd) if f.startswith('libdh2_') and f.endswith('.a')
                  and 'stubs' not in f)
    cmd = [cxx, '--target=aarch64-none-linux-android' + a.api, '-shared', '-o', os.path.join(bd, 'libdh2-probe.so'),
           '-Wl,--no-undefined', '-Wl,--no-demangle', '-Wl,--error-limit=0', '-Wl,--whole-archive'] + libs + [
           '-Wl,--no-whole-archive', '-llog', '-landroid', '-lEGL', '-lGLESv2', '-lOpenSLES', '-ldl', '-lm']
    r = subprocess.run(cmd, cwd=bd, capture_output=True, text=True, errors='replace')
    log = r.stderr
    if 'duplicate symbol' in log:
        print('duplicate symbols between the libraries:', file=sys.stderr)
        print('\n'.join(sorted(set(re.findall(r'duplicate symbol: (.*)', log)))), file=sys.stderr)
        return 1
    ref = collections.OrderedDict()
    cur = None
    for line in log.splitlines():
        m = re.match(r'ld.lld: error: undefined symbol: (\S+)', line)
        if m:
            cur = m.group(1)
            ref.setdefault(cur, None)
            continue
        m = re.match(r'>>> referenced by (.*)', line)
        if m and cur and ref[cur] is None:
            ref[cur] = m.group(1).strip()
    host = {x['symbol']: x for x in csv.DictReader(
        open(os.path.join(ROOT, 'reports/decomp-reconstruction/link-missing.csv'), encoding='utf-8'))}

    def klass(h):
        k = h['kind']
        if k.startswith('port seam'):
            return 'port-seam-placeholder'
        if k.startswith('port-stand-in'):
            return 'port-stand-in'
        if k.startswith('third-party'):
            return 'third-party-source-not-linked'
        if 'Application glue' in k:
            return 'jni-app-entry-glue'
        if 'partial' in k:
            return 'original-partial-row'
        if 'skipped' in k or 'signature differs' in k:
            return 'original-not-reconstructed'
        return 'other'

    rows = [['symbol', 'kind', 'android_category', 'ledger_category', 'address', 'in_host_link_missing',
             'referenced_by', 'note']]
    for s in sorted(ref):
        if s.startswith('_Z'):
            d = subprocess.run([filt, s], capture_output=True, text=True).stdout.strip()
            kind = 'function' if '(' in d else 'data'
        else:
            kind = 'data' if s.startswith('g_') else 'function'
        h = host.get(s)
        if h:
            rows.append([s, kind, klass(h), h['category'], h['address'], 'yes', ref[s] or '', h['note']])
        elif s.startswith('_ZTIN8RenderFX'):
            rows.append([s, kind, 'android-only-key-function', 'game-ui', '', 'no', ref[s] or '',
                         'clang emits the typeinfo only where the key function (OnEvent) is defined; no unit defines '
                         'RenderFX::EventListener::OnEvent/OnFSCommand (only a test stand-in does)'])
        else:
            rows.append([s, kind, 'android-libcxx-mangling-or-new', '-', '', 'no', ref[s] or '',
                         'not in the host link-missing.csv: libc++ (__ndk1) spelling of a host row, or a row that '
                         'appeared after the host report was written'])
    out = os.path.join(ROOT, 'reports/decomp-reconstruction/android-link-missing.csv')
    with open(out, 'w', newline='', encoding='utf-8') as f:
        csv.writer(f).writerows(rows)
    print(len(rows) - 1, 'undefined symbols ->', out)
    print(collections.Counter(x[2] for x in rows[1:]))
    os.path.exists(os.path.join(bd, 'libdh2-probe.so')) and os.remove(os.path.join(bd, 'libdh2-probe.so'))
    return 0


if __name__ == '__main__':
    sys.exit(main())
