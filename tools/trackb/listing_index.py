#!/usr/bin/env python3
"""Build a one-pass index of the IDA assembly dumps, then print the listing for many addresses.

decomp_asm.py rescans every asm_chunk_*.asm (about 145 MB) for each address, which is fine for one
function and unusable for a note pass over hundreds of rows. This reads the chunks once.

  py -3 tools/trackb/listing_index.py 0x35c2a4 0x6cc138
  py -3 tools/trackb/listing_index.py --from-file addrs.txt --out listings.txt
  py -3 tools/trackb/listing_index.py --from-file addrs.txt --facts
"""
from __future__ import annotations

import argparse
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))

from decomp_asm import BANNER  # noqa: E402
from decomp_extract import ROOT  # noqa: E402

ASM = ROOT / "recovered" / "native" / "ida-asm"


def load_index() -> dict[str, list[str]]:
    """One pass over the chunks: label -> its listing block."""
    blocks: dict[str, list[str]] = {}
    for chunk in sorted(ASM.glob("asm_chunk_*.asm")):
        lines = chunk.read_text(encoding="utf-8", errors="replace").splitlines()
        start: int | None = None
        label: str | None = None
        depth = 0
        for i, line in enumerate(lines):
            if line.startswith(BANNER):
                if label is not None and start is not None:
                    blocks[label] = lines[start:i]
                label = None
                start = None
                # The label line is the first non-empty line that does not start with ';'
                for j in range(i + 1, min(i + 12, len(lines))):
                    candidate = lines[j]
                    if candidate and not candidate.startswith(";") and not candidate[0].isspace():
                        label = candidate.split()[0]
                        start = j
                        break
                continue
            if label is None and start is not None and line.startswith("; End of function"):
                blocks[label] = lines[start:i + 1]
                label = None
                start = None
        if label is not None and start is not None:
            blocks[label] = lines[start:]
        depth += 1
    return blocks


def label_for(address: int, index: dict[str, list[str]]) -> str | None:
    try:
        from decomp_extract import index_ghidra, index_hexrays
    except Exception:
        return None
    hx = index_hexrays().get(address)
    if hx and hx["name"].startswith("sub_") and hx["name"] in index:
        return hx["name"]
    g = index_ghidra().get(address)
    if g and g["name"] in index:
        return g["name"]
    if hx and hx["name"] in index:
        return hx["name"]
    return None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("addresses", nargs="*")
    ap.add_argument("--from-file")
    ap.add_argument("--out")
    ap.add_argument("--facts", action="store_true")
    a = ap.parse_args()
    addresses = list(a.addresses)
    if a.from_file:
        addresses += [l.strip() for l in Path(a.from_file).read_text().splitlines() if l.strip()]
    index = load_index()
    out = []
    for item in addresses:
        label = label_for(int(item, 16), index) if item.lower().startswith("0x") else item
        block = index.get(label) if label else None
        if block is None:
            out.append(f"=== {item}: NO LISTING ({label})\n")
            continue
        out.append(f"=== {item} {label}\n" + "\n".join(block) + "\n")
    text = "\n".join(out)
    if a.out:
        Path(a.out).write_text(text, encoding="utf-8")
        print(f"wrote {a.out}: {len(text)} chars, {len(addresses)} addresses")
    else:
        print(text)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
