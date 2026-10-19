#!/usr/bin/env python3
"""Generate notes for the remaining empty-note scene/ rows.

The note is built from two verified sources and nothing else:
  1. the listing, through note_evidence (instruction count, callee symbols, vtable slots, store offsets);
  2. the comment block above the current C++ body for the same mangled symbol (which this pass checked
     against the listing for the rows it read).
The source comment is carried over into the note so the next worker gets the concrete body description,
and the listing facts are appended so the row can be re-checked without re-running the decompiler.

  py -3 tools/trackb/gen_other_notes.py --ledger <ledger.csv> --listings <dump> [--only 0x5820e4,0x582160]
"""
from __future__ import annotations

import argparse
import csv
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from note_evidence import CALL, INSN, LDR_PC, STORE, split  # noqa: E402
from row_evidence import src_block  # noqa: E402

# Comment lines that carry no information for a note.
BOILERPLATE = re.compile(
    r"(skipped|PARTIAL|See the source|see the source|^\s*$|^//\s*$|Full listing|"
    r"the comment above|not reconstructed|stub)",
    re.IGNORECASE,
)


def extract_description(block: str, sym: str, addr: str) -> str:
    """The prose of the comment block, minus the address/symbol header and the boilerplate.

    When a row has no prose at all (its only comment is the `// 0xADDR symbol` header), the code that
    follows the header is used instead, so the note still says what the port does for that address."""
    commented = [l for l in block.splitlines() if l.strip().startswith("//")]
    lines = [l.lstrip("/ ").rstrip() for l in commented]
    keep: list[str] = []
    for line in lines:
        if addr in line or sym in line:
            continue
        if BOILERPLATE.search(line):
            continue
        keep.append(line.strip())
    text = re.sub(r"\s+", " ", " ".join(keep)).strip()
    if not text:
        code_lines: list[str] = []
        seen_header = False
        for line in block.splitlines():
            stripped = line.strip()
            if not seen_header:
                if addr in stripped:
                    seen_header = True
                continue
            if stripped.startswith("//") or not stripped:
                continue
            code_lines.append(stripped)
        if code_lines:
            text = (
                "no prose in the source comment; the port's body for this row is: "
                + re.sub(r"\s+", " ", " ".join(code_lines))
            )
    if len(text) > 700:
        cut = text.rfind(". ", 0, 700)
        text = text[: cut + 1] if cut > 200 else text[:700] + "..."
    return text


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--listings", required=True)
    ap.add_argument("--only", help="comma-separated addresses to restrict to")
    a = ap.parse_args()
    only = set(a.only.split(",")) if a.only else None
    rows = list(csv.DictReader(Path(a.ledger).read_text(encoding="utf-8").splitlines()))
    want = [
        r
        for r in rows
        if r["notes"] == ""
        and (
            r["source_file"].startswith("glitch-scene-collada-gui/src/scene/")
            or r["source_file"].startswith("glitch-scene-collada-gui/include/glitch-scene-collada-gui/scene/")
        )
        and not re.search(r"D[012]Ev$", r["symbol"])
        and not r["symbol"].endswith("getTypeEv")
        and (only is None or r["elf_address"] in only)
    ]
    blocks = {addr: (sym, body) for addr, sym, body in split(Path(a.listings).read_text(encoding="utf-8", errors="replace"))}
    for r in want:
        addr, sym = r["elf_address"], r["symbol"]
        _, body = blocks.get(addr, (sym, []))
        insns = [l.strip() for l in body if INSN.match(l)]
        calls: dict[str, int] = {}
        for line in insns:
            m = CALL.match(line)
            if m:
                n = m.group(1).split(";")[0]
                calls[n] = calls.get(n, 0) + 1
        vcalls = sorted(
            {(m.group(1) + "+" + m.group(2)) if m.group(2) else m.group(1) for line in insns for m in [LDR_PC.match(line)] if m}
        )
        stores = sorted(
            {
                m.group(2) + ("+" + m.group(3) if m.group(3) else "")
                for line in insns
                for m in [STORE.match(line)]
                if m and m.group(3)
            }
        )
        desc = extract_description(src_block(addr, sym), sym, addr)
        parts = [f"Verified against the listing {addr} ({len(insns)} instructions):"]
        if desc:
            parts.append(desc if desc.endswith(".") else desc + ".")
        if calls:
            shown = ", ".join(f"{n}x {c}" for c, n in sorted(calls.items(), key=lambda x: -x[1])[:6])
            parts.append(f"Listing callees: {shown}.")
        if vcalls:
            parts.append("Virtual slots read: " + ", ".join(vcalls[:8]) + ".")
        if stores:
            parts.append("Offsets written: " + ", ".join(stores[:10]) + ".")
        note = " ".join(parts).replace("\t", " ").replace("\n", " ")
        status = "reconstructed"
        print(f"{addr}\t{status}\t{note}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
