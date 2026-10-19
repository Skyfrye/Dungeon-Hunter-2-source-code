#!/usr/bin/env python3
"""Mechanical first cut for the note-quality pass over the scene/ cluster.

Splits the dumped listings into (a) destructors, (b) getType, (c) everything else, and prints a
compact per-row evidence block so the notes can be written from facts instead of from the source
comment. This only READS; it writes nothing.

  py -3 tools/trackb/note_evidence.py <listings.txt> --kind dtor
  py -3 tools/trackb/note_evidence.py <listings.txt> --kind gettype
  py -3 tools/trackb/note_evidence.py <listings.txt> --kind other --limit 40
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

HEAD = re.compile(r"^=== (0x[0-9a-fA-F]+) (\S+)\s*$")
INSN = re.compile(r"^\s{8,}([A-Z][A-Z0-9.]*)\s*(.*)$")
CALL = re.compile(r"^\s*(?:BL|BLX)\s+(\S+)")
STORE = re.compile(r"^\s*(STR[BHD]?|STM)\s+\S+\s*,\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")
LDR_PC = re.compile(r"LDR\s+PC,\s*\[(\S+?)(?:,#(0x[0-9A-Fa-f]+|\d+))?\]")
MOVI = re.compile(r"^(MOV|MOVS|MOVW)\s+R0,\s*#(0x[0-9A-Fa-f]+|\d+)")


def split(text: str) -> list[tuple[str, str, list[str]]]:
    out: list[tuple[str, str, list[str]]] = []
    addr = sym = None
    body: list[str] = []
    for line in text.splitlines():
        m = HEAD.match(line)
        if m:
            if addr:
                out.append((addr, sym, body))
            addr, sym, body = m.group(1), m.group(2), []
            continue
        if addr:
            body.append(line)
    if addr:
        out.append((addr, sym, body))
    return out


def insns(body: list[str]) -> list[str]:
    return [l.strip() for l in body if INSN.match(l)]


def summarize(sym: str, body: list[str]) -> str:
    lines = insns(body)
    calls: dict[str, int] = {}
    for line in lines:
        m = CALL.match(line)
        if m:
            name = m.group(1).split(";")[0]
            calls[name] = calls.get(name, 0) + 1
    vcalls: list[str] = []
    stores: list[str] = []
    for line in lines:
        m = LDR_PC.match(line)
        if m:
            vcalls.append(f"{m.group(1)}+{m.group(2)}" if m.group(2) else m.group(1))
        m = STORE.match(line)
        if m:
            stores.append(f"{m.group(1)}[{m.group(2)}" + (f"+{m.group(3)}]" if m.group(3) else "]"))
    out = [f"{len(lines)} insns"]
    if sym.endswith("getTypeEv"):
        for line in lines[:6]:
            m = MOVI.match(line)
            if m:
                out.append(f"returns {m.group(2)} ({int(m.group(2), 16) if m.group(2).startswith('0x') else m.group(2)})")
                break
    if calls:
        out.append("calls: " + ", ".join(f"{n}x {c}" for c, n in sorted(calls.items(), key=lambda x: -x[1])))
    if vcalls:
        out.append("vcall slots: " + ", ".join(sorted(set(vcalls))))
    if stores:
        out.append("stores: " + ", ".join(sorted(set(stores))))
    return "\n      ".join(out)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("listings")
    ap.add_argument("--kind", choices=["dtor", "gettype", "other"], required=True)
    ap.add_argument("--limit", type=int, default=0)
    ap.add_argument("--offset", type=int, default=0)
    a = ap.parse_args()
    blocks = split(Path(a.listings).read_text(encoding="utf-8", errors="replace"))
    selected = []
    for addr, sym, body in blocks:
        is_dtor = bool(re.search(r"D[012]Ev$", sym))
        is_type = sym.endswith("getTypeEv")
        if a.kind == "dtor" and is_dtor:
            selected.append((addr, sym, body))
        elif a.kind == "gettype" and is_type:
            selected.append((addr, sym, body))
        elif a.kind == "other" and not is_dtor and not is_type:
            selected.append((addr, sym, body))
    selected = selected[a.offset :]
    if a.limit:
        selected = selected[: a.limit]
    for addr, sym, body in selected:
        print(f"### {addr} {sym}")
        print("      " + summarize(sym, body))
    print(f"-- {len(selected)} rows")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
