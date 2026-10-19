#!/usr/bin/env python3
"""Summarise port/decomp-reconstruction ledgers against their queues."""
import csv
from collections import Counter
from pathlib import Path

PORT = Path(__file__).resolve().parents[1] / "port" / "decomp-reconstruction"
VALID = {"reconstructed", "upstream", "partial", "skipped"}


def main() -> int:
    total_q = 0
    total = Counter()
    bad = 0
    print(f"{'category':28} {'queued':>7} {'recon':>7} {'upstrm':>7} {'partial':>7} {'skip':>7}")
    for q in sorted(PORT.glob("*/queue.csv")):
        cat = q.parent.name
        queued = {r["elf_address"].lower().removeprefix("0x") for r in csv.DictReader(q.open(encoding="utf-8"))}
        c = Counter()
        led = q.parent / "ledger.csv"
        if led.exists():
            seen = set()
            for r in csv.DictReader(led.open(encoding="utf-8")):
                a = r["elf_address"].lower().removeprefix("0x")
                if r["status"] not in VALID or a not in queued or a in seen:
                    bad += 1
                    continue
                seen.add(a)
                c[r["status"]] += 1
        total_q += len(queued)
        total += c
        print(f"{cat:28} {len(queued):7} {c['reconstructed']:7} {c['upstream']:7} {c['partial']:7} {c['skipped']:7}")
    print(f"{'TOTAL':28} {total_q:7} {total['reconstructed']:7} {total['upstream']:7} {total['partial']:7} {total['skipped']:7}")
    if bad:
        print(f"{bad} ledger rows ignored (unknown status, address not queued, or duplicate)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
