#!/usr/bin/env python3
"""Distil one IDA assembly listing block into a short factual summary.

Used by the note-quality pass: a ledger row whose note is only a file:line pointer (or empty)
still has to say WHAT the original body does. This prints that, mechanically, from the listing:

  py -3 tools/trackb/listing_facts.py 0x35c2a4 0x6cc138
  py -3 tools/trackb/listing_facts.py --batch tools/trackb/_addrs.txt

The output is evidence, not a finished note: read it, then write the note yourself.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from decomp_asm import find_block, label_for  # noqa: E402

# A register or a literal, as they appear as the last operand of an ARM instruction.
CALL = re.compile(r"^\s*(?:BL|BLX)\s+(\S+)")
STR_OFF = re.compile(r"^\s*(STRB?|LDRB?|LDRSB|LDRSH|LDRH|STRH)\s+(\S+?),\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")
LDR_LIT = re.compile(r"^\s*LDR\s+(\S+?),\s*=\s*(.+?)\s*$")
LDR_PC = re.compile(r"^\s*LDR\s+(\S+?),\s*\[PC")
VPTR = re.compile(r"LDR\s+PC,\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")


def summarize(label: str) -> str:
    block = find_block(label)
    if not block:
        return "// NO LISTING FOUND"
    out: list[str] = []
    calls: list[str] = []
    literals: list[str] = []
    stores: list[str] = []
    vcalls: list[str] = []
    for line in block:
        m = CALL.match(line)
        if m:
            calls.append(m.group(1).split(";")[0].strip())
            continue
        m = LDR_LIT.match(line)
        if m:
            literals.append(f"{m.group(1)} = {m.group(2).split(' ;')[0].strip()}")
            continue
        if LDR_PC.match(line):
            vcalls.append(line.strip())
        m = STR_OFF.match(line)
        if m:
            stores.append(f"{m.group(1)} [{m.group(3)}" + (f"+{m.group(4)}" if m.group(4) else "") + "]")
    out.append(f"label: {label}")
    out.append(f"instructions: {sum(1 for l in block if re.match(r'^[0-9A-Fa-f]{8}\s', l))}")
    if calls:
        out.append("calls:")
        seen: dict[str, int] = {}
        for c in calls:
            seen[c] = seen.get(c, 0) + 1
        for name, count in seen.items():
            out.append(f"  {count}x {name}")
    if vcalls:
        out.append(f"virtual dispatch sites: {len(vcalls)}")
        for line in vcalls:
            out.append(f"  {line}")
    if literals:
        out.append("literal loads (pool / static data):")
        for item in literals:
            out.append(f"  {item}")
    if stores:
        out.append("stores:")
        for item in stores:
            out.append(f"  {item}")
    return "\n".join(out)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("addresses", nargs="*")
    ap.add_argument("--batch", help="file with one hex address (or mangled symbol) per line")
    ap.add_argument("--raw", action="store_true", help="print the listing block, not the summary")
    a = ap.parse_args()
    addresses = list(a.addresses)
    if a.batch:
        addresses += [l.strip() for l in Path(a.batch).read_text().splitlines() if l.strip()]
    for item in addresses:
        label = label_for(int(item, 16)) if item.lower().startswith("0x") else item
        if a.raw:
            print("\n".join(find_block(label)))
        else:
            print(summarize(label))
        print()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
