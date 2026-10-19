#!/usr/bin/env python3
"""One evidence block per empty-note row, listing facts next to the current source comment.

  py -3 tools/trackb/row_evidence.py --ledger <ledger.csv> --listings <dump> --kind other --out report.txt
"""
from __future__ import annotations

import argparse
import csv
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from note_evidence import CALL, INSN, LDR_PC, STORE, split  # noqa: E402

WORK = Path(r"<home>\Documents\Projects\Dungeon Hunter 2 Recomp\DH_sc\.worktrees\track-b")
SRC = WORK / "port" / "decomp-reconstruction"


def src_block(addr: str, sym: str = "") -> str:
    """The current body/comment for a row, best mention first.

    A bare address occurs in several places (other workers' files quote it, and a header carries the
    declaration while the .cpp carries the body), so score the candidates: an exact mangled symbol in a
    src/scene body wins, then a mention that actually carries a comment, then any glitch-scene file."""
    candidates: list[tuple[int, str, str]] = []
    for pattern in ("*.cpp", "*.hpp"):
        for path in sorted(SRC.rglob(pattern)):
            text = path.read_text(encoding="utf-8", errors="replace")
            idx = text.find(addr)
            if idx < 0:
                continue
            head = text.rfind("\n\n", 0, idx)
            head = 0 if head < 0 else head
            tail = text.find("\n\n", idx)
            tail = len(text) if tail < 0 else tail
            block = text[head:tail].strip()
            rel = str(path.relative_to(SRC)).replace("\\", "/")
            scene = rel.startswith("glitch-scene-collada-gui/src/scene/")
            has_symbol = bool(sym) and sym in block
            prose = len([l for l in block.splitlines() if l.strip().startswith("//") and len(l.strip()) > 20])
            score = (100 if (scene and has_symbol) else 0) + (40 if has_symbol else 0) + (20 if scene else 0) + min(prose, 9)
            candidates.append((score, rel, block))
    if not candidates:
        return "<address not found in any source file>"
    candidates.sort(key=lambda c: -c[0])
    return candidates[0][2]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--listings", required=True)
    ap.add_argument("--kind", choices=["other", "dtor", "gettype"], default="other")
    a = ap.parse_args()
    rows = list(csv.DictReader(Path(a.ledger).read_text(encoding="utf-8").splitlines()))
    want = [
        r
        for r in rows
        if r["notes"] == ""
        and (
            r["source_file"].startswith("glitch-scene-collada-gui/src/scene/")
            or r["source_file"].startswith("glitch-scene-collada-gui/include/glitch-scene-collada-gui/scene/")
        )
    ]
    if a.kind == "other":
        want = [r for r in want if not re.search(r"D[012]Ev$", r["symbol"]) and not r["symbol"].endswith("getTypeEv")]
    elif a.kind == "dtor":
        want = [r for r in want if re.search(r"D[012]Ev$", r["symbol"])]
    else:
        want = [r for r in want if r["symbol"].endswith("getTypeEv")]
    blocks = {addr: (sym, body) for addr, sym, body in split(Path(a.listings).read_text(encoding="utf-8", errors="replace"))}
    for r in want:
        addr = r["elf_address"]
        sym, body = blocks.get(addr, (r["symbol"], []))
        insns = [l.strip() for l in body if INSN.match(l)]
        calls: dict[str, int] = {}
        for line in insns:
            m = CALL.match(line)
            if m:
                n = m.group(1).split(";")[0]
                calls[n] = calls.get(n, 0) + 1
        vcalls = sorted({(m.group(1) + "+" + m.group(2)) if m.group(2) else m.group(1) for line in insns for m in [LDR_PC.match(line)] if m})
        stores = sorted({(m.group(1) + "[" + m.group(2) + ("+" + m.group(3) if m.group(3) else "") + "]") for line in insns for m in [STORE.match(line)] if m})
        print(f"================================================================================\n## {addr}  {r['source_file']}")
        print(f"## {sym}")
        print(f"## {len(insns)} insns")
        if calls:
            print("## calls: " + ", ".join(f"{n}x {c}" for c, n in sorted(calls.items(), key=lambda x: -x[1])[:14]))
        if vcalls:
            print("## vcall slots: " + ", ".join(vcalls[:14]))
        if stores:
            print("## stores: " + ", ".join(stores[:16]))
        print("## CURRENT SOURCE COMMENT/BODY:")
        for line in src_block(addr, sym).splitlines():
            print("   " + line)
    print(f"-- {len(want)} rows")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
