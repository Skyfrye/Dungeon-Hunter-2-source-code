#!/usr/bin/env python3
"""Derive per-class facts for the Track B layout wave from the Hex-Rays export.

For every owner class in the queues: function count, constructors, the base class
constructors each one calls on `this`, members constructed in place at `this + N`,
`operator new` sizes cast to the class, and the vtable size.
Output: reports/decomp-reconstruction/class-facts.json
"""
import csv
import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PORT = ROOT / "port" / "decomp-reconstruction"
HEX = ROOT / "recovered" / "native" / "hexrays-all"
VT = ROOT / "recovered" / "native" / "symbols" / "libDungeonHunter2.so" / "vtables-001.json"
HDR = re.compile(r"^// ===== ([0-9a-fA-F]+) (.*?) =====\r?$", re.M)
NAME_CTOR = re.compile(r"(?:\S+ )?((?:[A-Za-z_]\w*::)*)([A-Za-z_]\w*)::\2\(")
CALL_CTOR = re.compile(r"\b((?:[A-Za-z_]\w*::)*([A-Za-z_]\w*))::\2\(([^;\n]*)\);")
EMBED = re.compile(r"\(([\w:<>, *]+?)\s*\*\)\s*\((?:a1|this) \+ (\d+)\)")
NEW = re.compile(r"\(([\w:]+) \*\)operator new\((0x[0-9A-Fa-f]+|\d+)u?, 0\)")


def main() -> None:
    owners = defaultdict(lambda: {"category": None, "functions": 0})
    for q in PORT.glob("*/queue.csv"):
        for r in csv.DictReader(q.open(encoding="utf-8")):
            o = owners[r["owner"]]
            o["category"] = q.parent.name
            o["functions"] += 1
    ctors, bases, sizes, members = defaultdict(list), defaultdict(set), defaultdict(set), defaultdict(set)
    for p in sorted(HEX.glob("chunk_*.c")):
        t = p.read_text(encoding="utf-8", errors="replace")
        hs = list(HDR.finditer(t))
        for i, m in enumerate(hs):
            name = m.group(2)
            body = t[m.end(): hs[i + 1].start() if i + 1 < len(hs) else len(t)]
            for m2 in NEW.finditer(body):
                sizes[m2.group(1)].add(int(m2.group(2), 0))
            nm = NAME_CTOR.match(name)
            if not nm:
                continue
            cls = nm.group(1) + nm.group(2)
            ctors[cls].append(hex(int(m.group(1), 16)))
            for full, _short, args in CALL_CTOR.findall(body)[:24]:
                a = args.strip()
                if full == cls:
                    continue
                if a == "" or re.match(r"(\([^)]*\)\s*)?(a1|this)(?!\w)(?!\s*\+)", a):
                    bases[cls].add(full)
                    continue
                em = EMBED.fullmatch(a)
                if em:
                    members[cls].add((int(em.group(2)), em.group(1).strip()))
    vts = {v["demangled"].removeprefix("vtable for "): v["size"] for v in json.loads(VT.read_text(encoding="utf-8"))}
    out = {}
    for o, info in owners.items():
        out[o] = dict(info, ctors=ctors.get(o, []), bases=sorted(bases.get(o, [])),
                      alloc_sizes=sorted(sizes.get(o, [])),
                      embedded=[[hex(off), t] for off, t in sorted(members.get(o, []))],
                      vtable_bytes=vts.get(o))
    dst = ROOT / "reports" / "decomp-reconstruction" / "class-facts.json"
    dst.write_text(json.dumps(out, indent=1, sort_keys=True) + "\n", encoding="utf-8")
    g = {k: v for k, v in out.items() if v["category"].startswith("game-")}
    print(len(out), "owners;", len(g), "game owners;", sum(1 for v in g.values() if v["bases"]), "with base;",
          sum(1 for v in g.values() if v["alloc_sizes"]), "with size;", sum(1 for v in g.values() if v["embedded"]), "with members")


if __name__ == "__main__":
    main()
