#!/usr/bin/env python3
"""Rewrite specific ledger rows (status/source/note) in place, preserving CRLF.

  py -3 tools/trackb/set_rows.py --ledger <ledger.csv> --rows rows.tsv

`rows.tsv` is `elf_address<TAB>status<TAB>source_file<TAB>note`; use `-` for a field to keep it.
"""
from __future__ import annotations

import argparse
import csv
import io
from pathlib import Path


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--rows", required=True)
    a = ap.parse_args()
    updates: dict[str, list[str]] = {}
    for lineno, line in enumerate(Path(a.rows).read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        fields = line.split("\t")
        if len(fields) != 4:
            raise SystemExit(f"{a.rows}:{lineno}: expected 4 tab-separated fields, got {len(fields)}")
        updates[fields[0]] = fields[1:]
    path = Path(a.ledger)
    raw = path.read_bytes().decode("utf-8")
    trailing = raw.endswith("\r\n") or raw.endswith("\n")
    lines = raw.replace("\r\n", "\n").split("\n")
    if trailing:
        lines = lines[:-1]
    changed = 0
    seen: set[str] = set()
    for i in range(1, len(lines)):
        row = next(csv.reader([lines[i]]))
        if len(row) != 5:
            continue
        addr = row[0]
        if addr not in updates:
            continue
        status, source, note = updates[addr]
        seen.add(addr)
        new = [addr, row[1], status if status != "-" else row[2], source if source != "-" else row[3],
               note if note != "-" else row[4]]
        buf = io.StringIO()
        csv.writer(buf, lineterminator="").writerow(new)
        if buf.getvalue() != lines[i]:
            lines[i] = buf.getvalue()
            changed += 1
    path.write_bytes(("\r\n".join(lines) + ("\r\n" if trailing else "")).encode("utf-8"))
    print(f"rows changed: {changed}")
    unused = set(updates) - seen
    if unused:
        print(f"addresses not found: {sorted(unused)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
