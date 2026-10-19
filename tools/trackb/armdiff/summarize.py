#!/usr/bin/env python3
"""Markdown tables from the armdiff CSVs.

    py -3 tools/trackb/armdiff/summarize.py                       # every reports/decomp-reconstruction/armdiff/*.csv
    py -3 tools/trackb/armdiff/summarize.py game-anim glitch-core-io

Counts per call shape and result, the exclusion reasons grouped, the mismatches with their first difference, and
the matches whose inputs reached less than 80% of the original code.
"""
from __future__ import annotations

import csv
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
REPORTS = ROOT / "reports" / "decomp-reconstruction" / "armdiff"


def group_reason(reason: str) -> str:
    r = reason
    if r.startswith("original body makes calls"):
        return "original body makes calls (outside the no-call pilot)"
    if r.startswith("defined in a header"):
        return "defined in a header with no translation unit of its own"
    if r.startswith("ARM32 build failed"):
        m = re.search(r"error: (.*)", r)
        return "ARM32 build of the source failed: " + (re.sub(r"'[^']*'", "'..'", m.group(1))[:90] if m else r[:90])
    if r.startswith("STL layout"):
        return "STL layout: differences only at or after a std::string/map member"
    if r.startswith("class ") and "STL member" in r:
        return "STL member in the class"
    if r.startswith("STL type in the signature"):
        return "STL type in the signature"
    if r.startswith("no definition of"):
        return "no definition with this mangled name in the ARM32 build (signature or namespace differs, or never emitted)"
    if r.startswith("too few comparable cases"):
        return "too few comparable cases (inputs did not reach a comparable end)"
    if r.startswith("ledger status"):
        return "ledger status is not reconstructed"
    if r.startswith("original body has"):
        return "original body has data words capstone cannot decode"
    if r.startswith("calls an import"):
        return "calls an import armdiff has no model for"
    if r.startswith("call shape"):
        return "call shape out of scope for this run"
    return re.sub(r"\d+", "N", r)[:100]


def summarize(path: Path) -> str:
    rows = list(csv.DictReader(path.open(encoding="utf-8")))
    cat = path.stem
    out = [f"### {cat}", ""]
    out.append(f"{len(rows)} ledger rows with status `reconstructed`.")
    out.append("")
    shapes = Counter((r["shape"] or "n/a") for r in rows)
    out.append("| call shape of the original | rows | match (trivial) | match (other) | mismatch | excluded |")
    out.append("|---|---:|---:|---:|---:|---:|")

    def is_trivial(r) -> bool:
        return (r.get("trivial") == "yes") if "trivial" in r else 0 < int(r["orig_size"] or 0) <= 8

    for sh in ("none", "imports", "internal", "indirect", "n/a"):
        sub = [r for r in rows if (r["shape"] or "n/a") == sh]
        if not sub:
            continue
        mt = [r for r in sub if r["result"] == "match"]
        triv = sum(1 for r in mt if is_trivial(r))
        c = Counter(r["result"] for r in sub)
        out.append(f"| {sh} | {len(sub)} | {triv} | {len(mt) - triv} | {c['mismatch']} | {c['excluded']} |")
    out.append("")
    ran = [r for r in rows if r["result"] in ("match", "mismatch")]
    trivial = [r for r in ran if r["result"] == "match" and is_trivial(r)]
    lowcov = [r for r in ran if r["result"] == "match" and r["orig_coverage_pct"] and int(r["orig_coverage_pct"]) < 80]
    out.append(f"Of the {sum(1 for r in ran if r['result'] == 'match')} matches, {len(trivial)} are trivial (an original of 8 bytes or less: "
               f"`bx lr`, a constant return) and are counted apart; {len(lowcov)} reached under 80% of the original code.")
    out.append("")
    exc = Counter(group_reason(r["reason_or_difference"]) for r in rows if r["result"] == "excluded")
    out.append("| excluded: reason | rows |")
    out.append("|---|---:|")
    for k, v in exc.most_common():
        out.append(f"| {k} | {v} |")
    out.append("")
    mm = [r for r in rows if r["result"] == "mismatch"]
    if mm:
        out.append("| address | function | class | first difference |")
        out.append("|---|---|---|---|")
        for r in mm:
            d = r["reason_or_difference"].replace("|", "/")
            out.append(f"| {r['address']} | `{r['demangled'][:70]}` | {r['mismatch_class']} | {d[:150]} |")
        out.append("")
    return "\n".join(out)


def main() -> int:
    names = sys.argv[1:]
    paths = [REPORTS / f"{n}.csv" for n in names] if names else sorted(REPORTS.glob("*.csv"))
    for p in paths:
        print(summarize(p))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
