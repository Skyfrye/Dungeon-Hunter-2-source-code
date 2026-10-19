#!/usr/bin/env python3
"""Cleanup pass (CLEANUP-PLAN.md rule 5): re-point ledger source_file columns after files were moved/merged.

  py -3 tools/trackb/ledger_rescan.py --category game-anim [--apply]

For every ledger row whose source_file no longer exists, the `// 0x<elf_address>` function header is searched in the
category's src tree and the row is pointed at the file that holds it. Rows whose header is found nowhere are reported
and left alone. Paths in the ledger are relative to port/decomp-reconstruction/.
"""
import argparse
import csv
import glob
import os
import re

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
PORT = os.path.join(ROOT, 'port', 'decomp-reconstruction')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--category', required=True)
    ap.add_argument('--apply', action='store_true')
    a = ap.parse_args()
    cat_dir = os.path.join(PORT, a.category)
    ledger = os.path.join(cat_dir, 'ledger.csv')
    rows = list(csv.DictReader(open(ledger, encoding='utf-8', newline='')))
    fields = rows[0].keys() if rows else []
    # address -> file, from the `// 0xADDR` headers of every source in the category
    index = {}
    for f in glob.glob(os.path.join(cat_dir, 'src', '**', '*.cpp'), recursive=True):
        txt = open(f, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'^//\s*(0x[0-9a-fA-F]+)\b', txt, re.M):
            index.setdefault(m.group(1).lower(), os.path.relpath(f, PORT).replace(os.sep, '/'))
    changed = missing = 0
    moved = {}  # old file -> set of new files its headered rows went to (for rows without a header: compiler-generated members)
    pending = []
    for r in rows:
        src = r.get('source_file', '')
        if not src or os.path.exists(os.path.join(PORT, src)):
            continue
        addr = r['elf_address'].lower()
        if not addr.startswith('0x'):
            addr = '0x' + addr.lstrip('0x')
        new = index.get(addr)
        if new is None:
            pending.append(r)
            continue
        print(f'  {addr}: {src} -> {new}')
        moved.setdefault(src, set()).add(new)
        r['source_file'] = new
        changed += 1
    for r in pending:
        src = r['source_file']
        dsts = moved.get(src, set())
        if len(dsts) == 1:   # the whole old file went to one new file: a member without a header follows it
            new = next(iter(dsts))
            print(f'  {r["elf_address"]} (no header, follows its file): {src} -> {new}')
            r['source_file'] = new
            changed += 1
        else:
            missing += 1
            print(f'  no header for {r["elf_address"]} ({r.get("symbol", "")}), was {src}; candidates {sorted(dsts)}')
    print(f'{a.category}: {changed} row(s) re-pointed, {missing} without a header')
    if a.apply and changed:
        with open(ledger, 'w', encoding='utf-8', newline='') as fh:
            w = csv.DictWriter(fh, fieldnames=list(fields))
            w.writeheader()
            w.writerows(rows)


if __name__ == '__main__':
    main()
