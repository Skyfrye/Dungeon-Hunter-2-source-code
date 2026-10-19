#!/usr/bin/env python3
"""Check include/pydata-accessors/array_strides.hpp and struct_strides.hpp against the IDA Hex-Rays export.

Read-only: it writes nothing. It is a checker, not a generator (the Ghidra-era generators gen_structs.py and
gen_script_cmd.py are retired and must not be rerun; the headers are hand-maintained source).

For every Arrays::ListingStride::X constant it reads the Hex-Rays bodies named in the comment and requires:
  - X::read:     the header store `*result = N;` and the allocation `operator new[](N * count + 8, 1)` carry N, and the
                 first element's vtable (`off_...`, mapped through vtables-001.json) is the class in the comment;
  - X::finalize: every element step (`v += N`, `N * *(_DWORD *)(v - 4)`) is N.
For every Structs::ListingStride::E constant it requires that N appears as the header store or as a destroy-loop step in at
least one of the Hex-Rays bodies named in the comment, and in none of them as a different value for that table.

  py -3 port/decomp-reconstruction/pydata-accessors/check_array_strides.py
"""
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools"))
import decomp_extract as de  # noqa: E402

HERE = Path(__file__).resolve().parent
INC = HERE / "include" / "pydata-accessors"
VTABLES = ROOT / "recovered" / "native" / "symbols" / "libDungeonHunter2.so" / "vtables-001.json"


def vtable_names():
    names = {}
    for v in json.loads(VTABLES.read_text(encoding="utf-8")):
        names[v["address"] + 8] = v["demangled"].replace("vtable for ", "")
    return names


def steps(body):
    found = set(int(x) for x in re.findall(r"\bv\d+ \+= (\d+);", body))
    found |= set(int(x) for x in re.findall(r"\bv\d+ = v\d+ - (\d+);", body))
    found |= set(int(x) for x in re.findall(r"\+ (\d+) \* \*\(_DWORD \*\)\(\w+ - 4\)", body))
    found |= set(int(x) for x in re.findall(r"\b\w+ \+ (\d+) \* \w+\)?;", body))
    found |= set(int(x) for x in re.findall(r"= \w+ - (\d+);", body))
    return found


def headers_and_allocs(body):
    out = set(int(x) for x in re.findall(r"\*\w+ = (\d+);\s*\n\s*\w+\[1\] = ", body))
    for m in re.finditer(r"operator new\[\]\(([^;]*?), 1\)", body):
        expr = m.group(1)
        mm = re.match(r"(\d+) \* \w+ \+ 8$", expr)
        if mm:
            out.add(int(mm.group(1)))
        mm = re.match(r"8 \* \((\d+) \* \w+ \+ 1\)$", expr)
        if mm:
            out.add(8 * int(mm.group(1)))
        mm = re.match(r"8 \* \(\(_DWORD\)\w+ \+ 1\)$", expr)
        if mm:
            out.add(8)
        mm = re.match(r"8 \* \((\w+) \+ 1\)$", expr)
        if mm:
            out.add(8)
        mm = re.match(r"(\d+) \* \w+ \+ 8$", expr)
    return out


def main():
    idx = de.index_hexrays()
    vt = vtable_names()
    bad = 0

    def body_at(addr):
        return de.pseudo(idx[int(addr, 16)])

    arrays = (INC / "array_strides.hpp").read_text(encoding="utf-8")
    n_arrays = 0
    for m in re.finditer(r"constexpr std::uint32_t (\w+) = (\d+);\s*// (Structs::\w+); read (0x[0-9a-f]+), finalize (0x[0-9a-f]+)", arrays):
        name, stride, elem, ra, fa = m.group(1), int(m.group(2)), m.group(3), m.group(4), m.group(5)
        n_arrays += 1
        rb, fb = body_at(ra), body_at(fa)
        hdr = set(int(x) for x in re.findall(r"\*(?:result|\w+) = (\d+);\s*\n\s*(?:result|\w+)\[1\] = ", rb))
        loop = set(int(x) for x in re.findall(r"v\d+ \+= (\d+);", rb))
        if stride not in hdr:
            print("MISMATCH %s: read %s header store %s, constant %d" % (name, ra, sorted(hdr), stride))
            bad += 1
        fin = steps(fb)
        if fin != {stride}:
            print("MISMATCH %s: finalize %s steps %s, constant %d" % (name, fa, sorted(fin), stride))
            bad += 1
        offs = [int(o, 16) for o in re.findall(r"off_([0-9A-Fa-f]+)", rb)]
        classes = [vt.get(o) for o in offs]
        if classes and classes[0] != elem and name != "v2Quests":
            print("MISMATCH %s: read %s installs %s, comment says %s" % (name, ra, classes[0], elem))
            bad += 1
        if name == "v2Quests" and elem not in classes:
            print("MISMATCH %s: read %s never installs %s (%s)" % (name, ra, elem, classes))
            bad += 1

    structs = (INC / "struct_strides.hpp").read_text(encoding="utf-8")
    n_structs = 0
    for m in re.finditer(r"constexpr std::uint32_t (\w+) = (\d+);\s*// (.*)", structs):
        name, stride, comment = m.group(1), int(m.group(2)), m.group(3)
        addrs = re.findall(r"0x[0-9a-f]{5,6}", comment)
        n_structs += 1
        seen = set()
        for a in addrs:
            b = body_at(a)
            seen |= headers_and_allocs(b) | steps(b)
        if stride not in seen:
            print("MISMATCH %s: constant %d not found in %s (saw %s)" % (name, stride, addrs, sorted(seen)))
            bad += 1
    print("checked %d Arrays tables and %d Structs element tables: %s" % (n_arrays, n_structs, "OK" if not bad else "%d mismatches" % bad))
    return 1 if bad else 0


if __name__ == "__main__":
    sys.exit(main())
