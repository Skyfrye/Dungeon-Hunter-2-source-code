#!/usr/bin/env python3
"""Plan Track B worker batches: unledgered (or partial) queue rows grouped by owner class.

  py -3 tools/trackb/plan_batches.py --categories game-world game-ui --max-funcs 20 --max-bytes 24000 > batches.json
  py -3 tools/trackb/plan_batches.py --categories glitch-scene-collada-gui --redo-partial

Each batch holds functions of one owner only, so one agent owns that class's files while it
runs. Batches of the same owner are numbered in order (part 0, 1, ...) and must run one
after another. Rows already in ledger.csv or in a ledger.d/*.csv part are skipped, unless
--redo-partial selects rows whose current status is partial.
"""
import argparse
import hashlib
import csv
import json
import re
from collections import OrderedDict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PORT = ROOT / "port" / "decomp-reconstruction"


def statuses(cat: Path) -> dict:
    out = {}
    files = [cat / "ledger.csv"] + sorted((cat / "ledger.d").glob("*.csv"))
    for f in files:
        if f.exists():
            for r in csv.DictReader(f.open(encoding="utf-8")):
                if r.get("elf_address"):
                    out[r["elf_address"].lower().removeprefix("0x")] = r["status"]
    return out


BUCKET_OWNERS = {"engine-glitch", "lib-online-glx", "lib-vox-audio", "lib-image-zip-font", "lib-gameswf", "lib-box2d", "lib-lua", "<global>"}


def owner_of(r: dict) -> str:
    """The class a function belongs to. Bucket-level owners are replaced by the qualified
    class in the demangled name (everything before the last ::), so one class's functions
    share a batch chain; free functions stay with their bucket owner."""
    if r["owner"] not in BUCKET_OWNERS:
        return r["owner"]
    head = r["demangled"].split("(", 1)[0]
    depth, cut = 0, -1
    for i, ch in enumerate(head):
        if ch == "<":
            depth += 1
        elif ch == ">":
            depth -= 1
        elif ch == " " and depth == 0:
            cut = i
    head = head[cut + 1:]
    depth, last = 0, -1
    for i in range(len(head) - 1):
        if head[i] == "<":
            depth += 1
        elif head[i] == ">":
            depth -= 1
        elif depth == 0 and head[i:i + 2] == "::":
            last = i
    return head[:last] if last > 0 else r["owner"]


def slug(s: str) -> str:
    return re.sub(r"[^A-Za-z0-9]+", "_", s).strip("_")[:48] or "global"


def make(a, c: str, owners: list, rows: list, part: int, parts: int, pack=None) -> dict:
    """One batch. The id is unique: a slug for reading plus a hash of the owner list."""
    tag = hashlib.sha1("|".join(owners).encode("utf-8")).hexdigest()[:6]
    name = f"pack{pack}" if pack is not None else slug(owners[0])[:40]
    return {
        "id": f"{a.prefix}-{c}-{name}-{tag}-{part}",
        "category": c, "owner": owners[0] if len(owners) == 1 else " | ".join(owners), "owners": owners,
        "part": part, "parts": parts,
        "functions": [{"address": "0x" + r["elf_address"].lower().removeprefix("0x"), "bytes": int(r["body_bytes"] or 0),
                       "owner": owner_of(r), "demangled": r["demangled"]} for r in rows],
        "bytes": sum(int(r["body_bytes"] or 0) for r in rows),
    }


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--categories", nargs="+", required=True)
    ap.add_argument("--max-funcs", type=int, default=20)
    ap.add_argument("--max-bytes", type=int, default=24000)
    ap.add_argument("--redo-partial", action="store_true")
    ap.add_argument("--redo-status", help="select rows whose current status is this (e.g. skipped)")
    ap.add_argument("--prefix", default="b")
    ap.add_argument("--only", help="JSON file with a list of elf addresses; plan only those rows")
    ap.add_argument("--pack-under", type=int, default=8,
                    help="classes with fewer functions than this are packed together, whole, into shared batches")
    a = ap.parse_args()
    only = None
    if a.only:
        only = {x.lower().removeprefix("0x") for x in json.loads(Path(a.only).read_text(encoding="utf-8"))}
    batches = []
    for c in a.categories:
        cat = PORT / c
        st = statuses(cat)
        by_owner = OrderedDict()
        for r in csv.DictReader((cat / "queue.csv").open(encoding="utf-8")):
            addr = r["elf_address"].lower().removeprefix("0x")
            s = st.get(addr)
            want = a.redo_status or ("partial" if a.redo_partial else None)
            if (want and s != want) or (not want and s is not None):
                continue
            if only is not None and addr not in only:
                continue
            by_owner.setdefault(owner_of(r), []).append(r)
        small = []
        for owner, rows in by_owner.items():
            rows.sort(key=lambda r: int(r["elf_address"], 16))
            parts, cur, size = [], [], 0
            for r in rows:
                b = int(r["body_bytes"] or 0)
                if cur and (len(cur) >= a.max_funcs or size + b > a.max_bytes):
                    parts.append(cur)
                    cur, size = [], 0
                cur.append(r)
                size += b
            if cur:
                parts.append(cur)
            if len(parts) == 1 and len(parts[0]) < a.pack_under:
                small.append((owner, parts[0]))
                continue
            for i, p in enumerate(parts):
                batches.append(make(a, c, [owner], p, i, len(parts)))
        # Pack whole small classes of this category into shared batches, keeping each class whole.
        bins, cur, size = [], [], 0
        for owner, rows in small:
            b = sum(int(r["body_bytes"] or 0) for r in rows)
            if cur and (sum(len(x[1]) for x in cur) + len(rows) > a.max_funcs or size + b > a.max_bytes):
                bins.append(cur)
                cur, size = [], 0
            cur.append((owner, rows))
            size += b
        if cur:
            bins.append(cur)
        for k, bn in enumerate(bins):
            batches.append(make(a, c, [o for o, _ in bn], [r for _, rows in bn for r in rows], 0, 1, pack=k))
    print(json.dumps(batches, indent=0))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
