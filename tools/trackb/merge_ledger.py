#!/usr/bin/env python3
"""Fold each category's ledger.d/*.csv parts into its ledger.csv, replacing rows by address.

  py -3 tools/trackb/merge_ledger.py            # all categories
  py -3 tools/trackb/merge_ledger.py --check    # report bad rows only, change nothing

Worker batches never edit ledger.csv. Each writes ledger.d/<batch-id>.csv with the
columns elf_address,symbol,status,source_file,notes. Rows with an unknown status or an
address outside the category's queue are reported and left in the part file.
"""
import argparse
import csv
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PORT = ROOT / "port" / "decomp-reconstruction"
VALID = {"reconstructed", "upstream", "partial", "skipped"}
COLS = ["elf_address", "symbol", "status", "source_file", "notes"]


def norm(a: str) -> str:
    return a.strip().lower().removeprefix("0x")


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--check", action="store_true")
    ap.add_argument("--categories", nargs="*", help="only these categories (default: all)")
    a = ap.parse_args()
    bad_total = merged_total = 0
    for q in sorted(PORT.glob("*/queue.csv")):
        cat = q.parent
        if a.categories and cat.name not in a.categories:
            continue
        parts = sorted((cat / "ledger.d").glob("*.csv"))
        if not parts:
            continue
        queued = {norm(r["elf_address"]) for r in csv.DictReader(q.open(encoding="utf-8"))}
        led = cat / "ledger.csv"
        rows = {}
        if led.exists():
            for r in csv.DictReader(led.open(encoding="utf-8")):
                rows[norm(r["elf_address"])] = r
        for p in parts:
            keep_bad = []
            for r in csv.DictReader(p.open(encoding="utf-8")):
                addr = norm(r.get("elf_address", ""))
                if r.get("status") not in VALID or addr not in queued:
                    keep_bad.append(r)
                    print(f"{cat.name}: {p.name}: bad row {r.get('elf_address')} {r.get('status')}")
                    continue
                r = {k: (r.get(k) or "") for k in COLS}
                r["elf_address"] = addr
                rows[addr] = r
                merged_total += 1
            bad_total += len(keep_bad)
            if not a.check:
                if keep_bad:
                    with p.open("w", newline="", encoding="utf-8") as fh:
                        w = csv.DictWriter(fh, fieldnames=COLS, extrasaction="ignore")
                        w.writeheader()
                        w.writerows(keep_bad)
                else:
                    p.unlink()
        if not a.check:
            with led.open("w", newline="", encoding="utf-8") as fh:
                w = csv.DictWriter(fh, fieldnames=COLS, extrasaction="ignore", lineterminator="\n")
                w.writeheader()
                for addr in sorted(rows, key=lambda x: int(x, 16)):
                    w.writerow(dict({k: rows[addr].get(k, "") for k in COLS}, elf_address="0x" + addr))
    print(f"merged {merged_total} rows, {bad_total} bad rows left in parts")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
