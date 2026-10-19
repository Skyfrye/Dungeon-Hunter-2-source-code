#!/usr/bin/env python3
"""Inventory for the cleanup/rename pass: hash-named source files and their main class, plus unk_ fields.
Writes reports/decomp-reconstruction/cleanup/rename-inventory.csv.  Read-only otherwise.
"""
import collections
import csv
import glob
import os
import re

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
PORT = os.path.join(ROOT, 'port', 'decomp-reconstruction')
HASHED = re.compile(r'^(?:[a-z]\d?[a-z]?\d?-)?([a-z-]+?)-(.+?)-([0-9a-f]{6})-(\d+)\.cpp$')
METHOD = re.compile(r'^\w[\w:<>]*?\s+(?:\*|&)?\s*([A-Z]\w+)::\w+\s*\(', re.M)


def main():
    rows = []
    cats = collections.Counter()
    unk = 0
    all_cpp = glob.glob(os.path.join(PORT, '*', 'src', '**', '*.cpp'), recursive=True)
    for f in all_cpp:
        b = os.path.basename(f)
        if not HASHED.match(b):
            continue
        cat = os.path.relpath(f, PORT).replace(os.sep, '/').split('/')[0]
        cats[cat] += 1
        txt = open(f, encoding='utf-8', errors='replace').read()
        classes = collections.Counter(METHOD.findall(txt))
        top = classes.most_common(1)[0][0] if classes else '?'
        n_unk = txt.count('unk_')
        unk += n_unk
        rows.append((cat, b, top, len(classes), n_unk))
    print('cpp files', len(all_cpp), 'hash-named', len(rows), 'unk_ refs in those', unk)
    for c, n in cats.most_common():
        print(f'  {c:28s} {n}')
    print('hash-named files with >1 class', sum(1 for r in rows if r[3] > 1))
    hdr = 0
    for f in glob.glob(os.path.join(PORT, '*', 'include', '**', '*.hpp'), recursive=True):
        hdr += open(f, encoding='utf-8', errors='replace').read().count('unk_')
    print('unk_ occurrences in headers', hdr)
    out_dir = os.path.join(ROOT, 'reports', 'decomp-reconstruction', 'cleanup')
    os.makedirs(out_dir, exist_ok=True)
    with open(os.path.join(out_dir, 'rename-inventory.csv'), 'w', newline='', encoding='utf-8') as fh:
        w = csv.writer(fh)
        w.writerow(['category', 'file', 'main_class', 'class_count', 'unk_refs'])
        w.writerows(sorted(rows))


if __name__ == '__main__':
    main()
