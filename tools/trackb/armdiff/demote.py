#!/usr/bin/env python3
"""Write ledger demotions for triaged armdiff mismatches.

    py -3 tools/trackb/armdiff/demote.py                     # dry run: what would be written
    py -3 tools/trackb/armdiff/demote.py --apply             # write port/decomp-reconstruction/<category>/ledger.d/armdiff-<n>.csv

Input is reports/decomp-reconstruction/armdiff/triage.csv. Only rows whose `verdict` is `real` (a reconstruction error
found by triage, not a harness artefact, a layout artefact of the STL, or an intended deviation) are demoted, and only if
the row is still `reconstructed` in the merged ledger and still mismatches when armdiff runs it again (--no-verify skips
that re-run). The part holds the five ledger columns; status becomes `partial`, source_file and symbol stay as they are,
and the note is

    armdiff mismatch: <first difference: register or memory offset, values> (case N, seed S). Previous note: <old note>

ledger.csv is never edited: merge_ledger.py folds the part in. A row armdiff demoted stays under test (run.py selects rows
whose note starts with `armdiff mismatch:`), so a fix shows up as "now matches (candidate for promotion)".
"""
from __future__ import annotations

import argparse
import csv
import re
import subprocess
import sys
import tempfile
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import manifest  # noqa: E402

ROOT = manifest.ROOT
DR = manifest.DR
TRIAGE = ROOT / "reports" / "decomp-reconstruction" / "armdiff" / "triage.csv"
COLS = ["elf_address", "symbol", "status", "source_file", "notes"]


def next_index(cat: str) -> int:
    d = DR / cat / "ledger.d"
    n = 0
    if d.is_dir():
        for p in d.glob("armdiff-*.csv"):
            m = re.fullmatch(r"armdiff-(\d+)\.csv", p.name)
            if m:
                n = max(n, int(m.group(1)))
    return n + 1


def short(detail: str) -> str:
    d = re.sub(r"\s*\[[^\]]*\]\s*$", "", detail.strip())      # drop the "[original r0 still equals ...]" remarks
    d = re.sub(r"\s+", " ", d)
    return d[:240]


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--triage", default=str(TRIAGE))
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--no-verify", action="store_true", help="do not re-run armdiff on each row first")
    ap.add_argument("--cases", type=int, default=48)
    a = ap.parse_args()
    rows = [r for r in csv.DictReader(open(a.triage, encoding="utf-8")) if r["verdict"] == "real"]
    by_cat: dict[str, list[dict]] = defaultdict(list)
    for r in rows:
        by_cat[r["category"]].append(r)
    written = 0
    for cat, rs in sorted(by_cat.items()):
        ledger = manifest.read_ledger(cat)
        verified: dict[int, dict] = {}
        if not a.no_verify:
            with tempfile.TemporaryDirectory() as td:
                out = Path(td) / "v.csv"
                cmd = [sys.executable, str(Path(__file__).resolve().parent / "run.py"), "-c", cat, "--shape", "any", "--cases", str(a.cases),
                       "--csv", str(out)] + sum((["--address", r["address"]] for r in rs), [])
                subprocess.run(cmd, capture_output=True, text=True)
                if out.exists():
                    for x in csv.DictReader(open(out, encoding="utf-8")):
                        verified[int(x["address"], 16)] = x
        part = []
        for r in rs:
            addr = int(r["address"], 16)
            cur = ledger.get(addr)
            if cur is None:
                print(f"  skip {cat} {r['address']}: not in the ledger")
                continue
            if (cur.get("status") or "").strip() != "reconstructed":
                print(f"  skip {cat} {r['address']}: ledger status is {(cur.get('status') or '').strip()}")
                continue
            if not a.no_verify:
                v = verified.get(addr)
                if v is None or v["result"] != "mismatch":
                    print(f"  skip {cat} {r['address']}: no longer a mismatch ({v['result'] if v else 'not run'}: {(v or {}).get('reason_or_difference', '')[:80]})")
                    continue
                detail, case = v["reason_or_difference"], v["first_case"]
            else:
                detail, case = r["evidence"], r.get("first_case", "")
            note = f"armdiff mismatch: {short(detail)}" + (f" ({case})" if case else "")
            old = (cur.get("notes") or "").strip()
            if old:
                note += f". Previous note: {old}"
            part.append({"elf_address": f"0x{addr:x}", "symbol": (cur.get("symbol") or "").strip(), "status": "partial",
                         "source_file": (cur.get("source_file") or "").strip(), "notes": note})
        if not part:
            continue
        idx = next_index(cat)
        path = DR / cat / "ledger.d" / f"armdiff-{idx}.csv"
        print(f"{cat}: {len(part)} demotions -> {path.relative_to(ROOT)}" + ("" if a.apply else "  (dry run)"))
        if a.apply:
            path.parent.mkdir(exist_ok=True)
            with open(path, "w", newline="", encoding="utf-8") as fh:
                w = csv.DictWriter(fh, fieldnames=COLS, lineterminator="\n")
                w.writeheader()
                w.writerows(part)
        written += len(part)
    print(f"{written} rows {'written' if a.apply else 'would be written'}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
