#!/usr/bin/env python3
"""Merge generated notes into a ledger.csv in place, preserving CRLF and the file's own quoting.

  py -3 tools/trackb/merge_notes.py --ledger <ledger.csv> --notes a.tsv b.tsv [--status-from-notes]

The notes files are `addr<TAB>status<TAB>note`. Only rows whose `notes` field is currently empty are
touched, so a concurrent worker's edit is never overwritten. The status in the notes file is applied
only with --status-from-notes.
"""
from __future__ import annotations

import argparse
import csv
import io
from pathlib import Path


def read_notes(paths: list[str]) -> dict[str, tuple[str, str]]:
    out: dict[str, tuple[str, str]] = {}
    for path in paths:
        for lineno, line in enumerate(Path(path).read_text(encoding="utf-8").splitlines(), 1):
            if not line.strip():
                continue
            fields = line.split("\t")
            if len(fields) != 3:
                raise SystemExit(f"{path}:{lineno}: expected 3 tab-separated fields, got {len(fields)}")
            addr, status, note = fields
            if not note.strip():
                raise SystemExit(f"{path}:{lineno}: empty note")
            out[addr] = (status.strip(), note.strip())
    return out


def csv_row(fields: list[str]) -> str:
    buf = io.StringIO()
    csv.writer(buf, lineterminator="").writerow(fields)
    return buf.getvalue()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--notes", nargs="+", required=True)
    ap.add_argument("--status-from-notes", action="store_true")
    a = ap.parse_args()
    path = Path(a.ledger)
    raw = path.read_bytes().decode("utf-8")
    trailing_newline = raw.endswith("\r\n") or raw.endswith("\n")
    lines = raw.replace("\r\n", "\n").split("\n")
    if trailing_newline:
        lines = lines[:-1]
    notes = read_notes(a.notes)
    header = lines[0]
    touched = 0
    statuses = 0
    missing = set(notes)
    for i in range(1, len(lines)):
        row = next(csv.reader([lines[i]]))
        if len(row) != 5:
            continue
        addr, symbol, status, source, note = row
        if addr not in notes:
            continue
        missing.discard(addr)
        if note != "":
            # Another worker filled it in already: leave their note alone.
            continue
        new_status, new_note = notes[addr]
        if a.status_from_notes and new_status and new_status != status:
            status = new_status
            statuses += 1
        lines[i] = csv_row([addr, symbol, status, source, new_note])
        touched += 1
    path.write_bytes(("\r\n".join(lines) + ("\r\n" if trailing_newline else "")).encode("utf-8"))
    print(f"header: {header.split(',')[0]}")
    print(f"rows updated: {touched}; status changes: {statuses}")
    if missing:
        print(f"addresses in the notes files that are not empty-note rows: {sorted(missing)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
