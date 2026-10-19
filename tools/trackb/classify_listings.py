#!/usr/bin/env python3
"""Group the listings dumped by listing_index.py by address and classify them.

  py -3 tools/trackb/classify_listings.py listings.txt > report.txt
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

HEAD = re.compile(r"^=== (0x[0-9a-fA-F]+) (\S+)\s*$")
INSN = re.compile(r"^\s{8,}[A-Z][A-Z0-9.]*\s+\S")
CALL = re.compile(r"^\s*(?:BL|BLX)\s+(\S+)")
STORE = re.compile(r"^\s*STR[BHD]?\s+\S+,\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")
LDR_PC = re.compile(r"LDR\s+PC,\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")


def split(text: str) -> list[tuple[str, str, str]]:
    out: list[tuple[str, str, str]] = []
    addr = sym = None
    body: list[str] = []
    for line in text.splitlines():
        m = HEAD.match(line)
        if m:
            if addr:
                out.append((addr, sym, "\n".join(body)))
            addr, sym, body = m.group(1), m.group(2), []
            continue
        if addr:
            body.append(line)
    if addr:
        out.append((addr, sym, "\n".join(body)))
    return out


def facts(sym: str, body: str) -> dict:
    insns = [l for l in body.splitlines() if INSN.match(l)]
    calls: dict[str, int] = {}
    for line in insns:
        m = CALL.match(line)
        if m:
            calls[m.group(1).split(";")[0]] = calls.get(m.group(1).split(";")[0], 0) + 1
    stores: list[str] = []
    vcalls: list[str] = []
    for line in insns:
        m = STORE.match(line)
        if m:
            stores.append(f"{m.group(1)}+{m.group(2)}" if m.group(2) else m.group(1))
        m = LDR_PC.match(line)
        if m:
            vcalls.append(f"{m.group(1)}+{m.group(2)}" if m.group(2) else m.group(1))
    return {"insns": len(insns), "calls": calls, "stores": stores, "vcalls": vcalls}


def main() -> int:
    text = Path(sys.argv[1]).read_text(encoding="utf-8", errors="replace")
    blocks = split(text)
    print(f"blocks: {len(blocks)}")
    kinds = {"dtor": [], "getType": [], "other": []}
    for addr, sym, body in blocks:
        f = facts(sym, body)
        if re.search(r"D[012]Ev$", sym):
            kinds["dtor"].append((addr, sym, f))
        elif sym.endswith("getTypeEv"):
            kinds["getType"].append((addr, sym, f))
        else:
            kinds["other"].append((addr, sym, f))
    for kind, items in kinds.items():
        print(f"{kind}: {len(items)}")
    print()
    print("## other rows, by descending instruction count")
    for addr, sym, f in sorted(kinds["other"], key=lambda x: -x[2]["insns"]):
        print(f"{f['insns']:5d} {addr} {sym}")
        for name, count in sorted(f["calls"].items(), key=lambda x: -x[1]):
            print(f"        {count}x {name}")
    print()
    print("## dtor rows")
    for addr, sym, f in kinds["dtor"]:
        calls = ", ".join(f"{c}x {n}" for n, c in sorted(f["calls"].items(), key=lambda x: -x[1]))
        print(f"{f['insns']:5d} {addr} {sym}")
        print(f"        stores: {sorted(set(f['stores']))}")
        print(f"        calls: {calls}")
    print()
    print("## getType rows")
    for addr, sym, f in kinds["getType"]:
        print(f"{f['insns']:5d} {addr} {sym}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
