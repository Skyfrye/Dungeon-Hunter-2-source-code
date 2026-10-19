#!/usr/bin/env python3
"""Print pseudocode for queued functions. Hex-Rays is the default source.

  python3 tools/decomp_extract.py --category core-platform --next 20
  python3 tools/decomp_extract.py --category core-platform --owner Console
  python3 tools/decomp_extract.py --address 0x3cbb08
  python3 tools/decomp_extract.py --category vox-audio --remaining
  python3 tools/decomp_extract.py --category glitch-core-io --match 'glitch::io::CXMLReader' --list
  python3 tools/decomp_extract.py --category glitch-video --redo-partial --next 20
  python3 tools/decomp_extract.py --address 0x3cbb08 --source ghidra

--source hexrays (default) reads recovered/native/hexrays-all/ (IDA Hex-Rays export).
--source ghidra reads the older Ghidra export under recovered/native/decompiled/ and is
the fallback only where the Hex-Rays body is missing for an address.
--next/--owner skip addresses already present in the category's ledger.csv;
--redo-partial selects only rows the ledger marks partial, for re-reconstruction.
"""
from __future__ import annotations

import argparse
import csv
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMP = ROOT / "recovered" / "native" / "decompiled" / "libDungeonHunter2.so"
HEXRAYS = ROOT / "recovered" / "native" / "hexrays-all"
PORT = ROOT / "port" / "decomp-reconstruction"
HEX_HEADER = re.compile(rb"^// ===== ([0-9a-fA-F]+) (.*?) =====\r?$", re.M)


def index_ghidra() -> dict[int, dict]:
    out = {}
    for line in (DECOMP / "function-index.jsonl").open(encoding="utf-8"):
        r = json.loads(line)
        out[int(r["elf_address"], 16)] = r
    return out


def index_hexrays() -> dict[int, dict]:
    """Map address to {name, path, byte_offset, byte_length} from the chunk headers.

    Each function runs from its `// ===== <addr> <name> =====` header to the next header.
    """
    out = {}
    for path in sorted(HEXRAYS.glob("chunk_*.c")):
        data = path.read_bytes()
        heads = list(HEX_HEADER.finditer(data))
        for i, m in enumerate(heads):
            end = heads[i + 1].start() if i + 1 < len(heads) else len(data)
            out[int(m.group(1), 16)] = {
                "name": m.group(2).decode("utf-8", errors="replace"),
                "path": path,
                "byte_offset": m.start(),
                "byte_length": end - m.start(),
                "body_bytes": end - m.start(),
            }
    return out


def pseudo(r: dict) -> str:
    path = r["path"] if "path" in r else DECOMP / r["file"]
    with Path(path).open("rb") as fh:
        fh.seek(r["byte_offset"])
        return fh.read(r["byte_length"]).decode("utf-8", errors="replace")


def ledger(category: str) -> dict[int, str]:
    led = PORT / category / "ledger.csv"
    if not led.exists():
        return {}
    return {int(row["elf_address"], 16): row["status"] for row in csv.DictReader(led.open(encoding="utf-8")) if row.get("elf_address")}


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--category")
    ap.add_argument("--source", choices=["hexrays", "ghidra"], default="hexrays")
    ap.add_argument("--next", type=int, default=0)
    ap.add_argument("--owner")
    ap.add_argument("--match", help="regex on the demangled name, e.g. 'glitch::io::CXMLReader'")
    ap.add_argument("--list", action="store_true", help="list address/size/name instead of pseudocode")
    ap.add_argument("--address", action="append", default=[])
    ap.add_argument("--remaining", action="store_true", help="print counts only")
    ap.add_argument("--redo-partial", action="store_true", help="select rows the ledger marks partial")
    ap.add_argument("--max-bytes", type=int, default=0, help="skip functions whose body is larger")
    a = ap.parse_args()
    idx = index_hexrays() if a.source == "hexrays" else index_ghidra()
    targets = [int(x, 16) for x in a.address]
    if a.category:
        q = list(csv.DictReader((PORT / a.category / "queue.csv").open(encoding="utf-8")))
        status = ledger(a.category)
        finished = set(status)
        if a.redo_partial:
            todo = [r for r in q if status.get(int(r["elf_address"], 16)) == "partial"]
        else:
            todo = [r for r in q if int(r["elf_address"], 16) not in finished]
        if a.owner:
            todo = [r for r in todo if r["owner"] == a.owner]
        if a.match:
            todo = [r for r in todo if re.search(a.match, r["demangled"])]
        if a.max_bytes:
            todo = [r for r in todo if int(r["body_bytes"]) <= a.max_bytes]
        if a.remaining:
            print(f"{a.category}: {len(todo)} remaining of {len(q)} queued ({len(finished)} in ledger)")
            return 0
        todo = todo[: a.next or len(todo)]
        if a.list:
            for r in todo:
                print(f"0x{r['elf_address']}\t{r['body_bytes']}\t{r['demangled']}")
            return 0
        targets += [int(r["elf_address"], 16) for r in todo]
    for t in targets:
        r = idx.get(t)
        if r is None:
            print(f"// no {a.source} pseudocode for 0x{t:x}", file=sys.stderr)
            continue
        print(f"// ===== elf_address=0x{t:x} size={r['body_bytes']} symbol={r['name']}")
        print(pseudo(r).rstrip())
        print()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
