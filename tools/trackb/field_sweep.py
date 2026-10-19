#!/usr/bin/env python3
"""Sweep every function of a class for accesses through `this` and print a field table.

  py -3 tools/trackb/field_sweep.py glitch::scene::CTerrainSceneNode

For each queue function of the class (any category), the Hex-Rays body is scanned for
`*(TYPE *)(a1 + N)`, `*(TYPE *)(this + N)`, `a1[N]` and `*(a1 + N)` forms (a1 is `this`
for member functions). Output: offset, access types seen, functions that touch it,
plus `operator new` sizes cast to the class. Use it to write a layout header.
"""
import csv
import re
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))
import decomp_extract as dx  # noqa: E402

PTR = re.compile(r"\*\(\(([\w:<> ]+?)\s*\*\)\s*(?:a1|this)\s*\+\s*(0x[0-9A-Fa-f]+|\d+)\)")  # *((T *)a1 + N): element N
BYTE = re.compile(r"\*\(([\w:<> ]+?)\s*\*\)\((?:a1|this)\s*\+\s*(0x[0-9A-Fa-f]+|\d+)\)")  # *(T *)(a1 + N): byte N
SIZE = {"_BYTE": 1, "char": 1, "unsigned __int8": 1, "_WORD": 2, "__int16": 2, "unsigned __int16": 2, "_QWORD": 8, "double": 8, "__int64": 8}
IDX = re.compile(r"\b(?:a1|this)\[(\d+)\]")
CAST = re.compile(r"\(([\w:<> ]+?)\s*\*\)\s*\((?:a1|this)\s*\+\s*(0x[0-9A-Fa-f]+|\d+)\)")


def main() -> int:
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    cls = sys.argv[1]
    short = cls.split("::")[-1]
    rows = []
    for q in (ROOT / "port" / "decomp-reconstruction").glob("*/queue.csv"):
        for r in csv.DictReader(q.open(encoding="utf-8")):
            head = r["demangled"].split("(")[0]
            if f"{cls}::" in head or head.startswith(f"{short}::"):
                rows.append(r)
    idx = dx.index_hexrays()
    fields = defaultdict(lambda: {"types": set(), "funcs": set()})
    for r in rows:
        a = int(r["elf_address"], 16)
        rec = idx.get(a)
        if not rec:
            continue
        body = dx.pseudo(rec)
        name = r["demangled"].split("(")[0].split("::")[-1]
        for m in PTR.finditer(body):
            off = int(m.group(2), 0) * SIZE.get(m.group(1).strip(), 4)
            fields[off]["types"].add(m.group(1).strip())
            fields[off]["funcs"].add(name)
        for m in BYTE.finditer(body):
            off = int(m.group(2), 0)
            fields[off]["types"].add(m.group(1).strip())
            fields[off]["funcs"].add(name)
        for m in CAST.finditer(body):
            off = int(m.group(2), 0)
            fields[off]["types"].add("&" + m.group(1).strip())
            fields[off]["funcs"].add(name)
        for m in IDX.finditer(body):
            off = int(m.group(1)) * 4
            fields[off]["types"].add("word[]")
            fields[off]["funcs"].add(name)
    sizes = set()
    for rec in idx.values():
        pass
    print(f"// {cls}: {len(rows)} queue functions")
    for off in sorted(fields):
        f = fields[off]
        print(f"+0x{off:04x}  {', '.join(sorted(f['types']))[:60]:60}  {', '.join(sorted(f['funcs']))[:90]}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
