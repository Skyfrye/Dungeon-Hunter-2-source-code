#!/usr/bin/env python3
"""Print the IDA assembly listing of one function, found by its address.

  python3 tools/decomp_asm.py --address 0x4f2750
  python3 tools/decomp_asm.py --name _ZrsRSiRN6glitch4core8vector3dIiEE

The listing (recovered/native/ida-asm/asm_chunk_*.asm) has no address column.
Each function starts with a `; =============== S U B R O U T I N E` banner and a
label line in column 0. The label is `sub_<ADDR>` for unnamed functions and the
mangled symbol otherwise. --address finds the label from the Hex-Rays header
name (sub_ names) or the Ghidra symbol (named functions), then prints the block.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from decomp_extract import ROOT, index_ghidra, index_hexrays  # noqa: E402

ASM = ROOT / "recovered" / "native" / "ida-asm"
BANNER = "; =============== S U B R O U T I N E"


def label_for(address: int) -> str:
    hx = index_hexrays().get(address)
    if hx and hx["name"].startswith("sub_"):
        return hx["name"]
    g = index_ghidra().get(address)
    if g:
        return g["name"]
    raise SystemExit(f"no label known for 0x{address:x}")


def find_block(label: str) -> list[str]:
    pat = re.compile(r"^" + re.escape(label) + r"(\s|$)")
    for chunk in sorted(ASM.glob("asm_chunk_*.asm")):
        lines = chunk.read_text(encoding="utf-8", errors="replace").splitlines()
        for i, line in enumerate(lines):
            if not pat.match(line):
                continue
            start = i
            while start > 0 and not lines[start].startswith(BANNER):
                start -= 1
            end = i + 1
            while end < len(lines) and not lines[end].startswith("; End of function") and not lines[end].startswith(BANNER):
                end += 1
            return lines[start : min(end + 1, len(lines))]
    return []


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--address", action="append", default=[])
    ap.add_argument("--name", action="append", default=[])
    a = ap.parse_args()
    labels = [label_for(int(x, 16)) for x in a.address] + a.name
    for label in labels:
        block = find_block(label)
        if not block:
            print(f"// no assembly block for {label}", file=sys.stderr)
            continue
        print("\n".join(block))
        print()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
