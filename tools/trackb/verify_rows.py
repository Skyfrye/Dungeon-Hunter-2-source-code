#!/usr/bin/env python3
"""For every empty-note ledger row in the scene/ cluster, decide whether the address has a LIVE
body in the port, or only an empty stand-in left behind in src/recon/slice_*.cpp.

  py -3 tools/trackb/verify_rows.py --ledger <ledger.csv> --listings <dump> [--out rows.csv]

Heuristic, and only a screen: it prints the file that mentions the address, whether the mention is
in src/scene/ (live) or src/recon/ (a stand-in), and whether the code under the address comment
looks empty (a body of `{}`, a `return nullptr;`, `= default`, or nothing at all). A human still
has to read the ones it flags.
"""
from __future__ import annotations

import argparse
import csv
import re
import sys
from pathlib import Path

WORK = Path(__import__("os").path.expanduser("~") + r"\Documents\Projects\Dungeon Hunter 2 Recomp\DH_sc\.worktrees\track-b")
SRC = WORK / "port" / "decomp-reconstruction"


def scan() -> dict[str, list[tuple[str, str]]]:
    """address -> [(file, following ~12 lines)] for every .cpp that mentions it."""
    hits: dict[str, list[tuple[str, str]]] = {}
    pattern = re.compile(r"\b0x([0-9a-fA-F]{6,7})\b")
    for path in sorted(SRC.rglob("*.cpp")):
        text = path.read_text(encoding="utf-8", errors="replace")
        lines = text.splitlines()
        for i, line in enumerate(lines):
            for m in pattern.finditer(line):
                addr = "0x" + m.group(1).lower()
                hits.setdefault(addr, []).append((str(path.relative_to(SRC)), "\n".join(lines[i : i + 14])))
    return hits


def classify(addr: str, entries: list[tuple[str, str]]) -> tuple[str, str]:
    live = [e for e in entries if "/scene/" in e[0].replace("\\", "/")]
    stubs = [e for e in entries if "/recon/" in e[0].replace("\\", "/")]
    body = (live or stubs)[0][1] if (live or stubs) else ""
    # Strip the comment lines to look at the code that follows.
    code = "\n".join(l for l in body.splitlines() if not l.lstrip().startswith("//"))
    code = code.strip()
    if not code:
        shape = "no body"
    elif re.search(r"=\s*default\s*;", code):
        shape = "= default"
    elif re.search(r"\)\s*\{\s*\}", code) or re.search(r"\{\s*\}\s*$", code):
        shape = "empty body"
    elif re.search(r"return\s+nullptr\s*;", code) and len(code) < 120:
        shape = "returns null"
    elif re.search(r"return\s+(true|false|0)\s*;", code) and len(code) < 90:
        shape = "constant return"
    else:
        shape = "has code"
    where = "scene" if live else ("recon-standin" if stubs else "not found")
    return where, shape


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", required=True)
    ap.add_argument("--out")
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
    hits = scan()
    out_rows = []
    for r in want:
        entries = hits.get(r["elf_address"], [])
        where, shape = classify(r["elf_address"], entries)
        out_rows.append((r["elf_address"], where, shape, r["symbol"], r["source_file"], [e[0] for e in entries]))
    counts: dict[tuple[str, str], int] = {}
    for _, where, shape, *_ in out_rows:
        counts[(where, shape)] = counts.get((where, shape), 0) + 1
    for key, n in sorted(counts.items(), key=lambda x: -x[1]):
        print(f"{n:4d}  {key[0]:14s} {key[1]}")
    print()
    suspicious = [o for o in out_rows if o[1] != "scene" or o[2] in ("no body", "empty body", "returns null", "constant return")]
    print(f"## {len(suspicious)} rows to read by hand")
    for addr, where, shape, sym, src, files in suspicious:
        print(f"{addr}  {where:14s} {shape:16s} {sym}")
        print(f"        ledger says {src}; address appears in: {', '.join(files) or 'NOTHING'}")
    if a.out:
        with open(a.out, "w", encoding="utf-8", newline="") as fh:
            w = csv.writer(fh)
            w.writerow(["elf_address", "where", "shape", "symbol", "ledger_source", "files"])
            for addr, where, shape, sym, src, files in out_rows:
                w.writerow([addr, where, shape, sym, src, ";".join(files)])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
