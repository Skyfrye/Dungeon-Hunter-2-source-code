#!/usr/bin/env python3
"""Layout audit: the offsets written in the headers against the offsets the ARM32 build gives the members.

TRACK-B.md asks that every member of a game class carries its original 32-bit offset as a comment
(`CharAI m_ai; // +0x3c8`) and forbids static_assert on sizes because the host build is 64-bit. The ARM32
build has 4-byte pointers, so the compiler's own layout (clang -fdump-record-layouts, saved by build_arm.py in
build/tb-arm32/*/*.meta.json) can be compared with those comments.

    py -3 tools/trackb/armdiff/build_arm.py -c game-anim -c game-app ...      # layouts come from here
    py -3 tools/trackb/armdiff/layout_audit.py [--header-dir DIR ...] [--csv PATH] [--classes N]

A member is `ok` when the compiled offset equals the comment. A deviation of exactly -12 bytes per preceding
std::string/map member is `stl` (expected: STLport's string is 24 bytes, libc++'s 12). A deviation after such a member
that those members do not explain is `stl_other` (another STL type, or a real error hidden behind the STL shift);
a deviation with no such member before it is `shifted`: a base class or member of the wrong size, or a missing or extra
field. Later members of a class inherit the first deviation, so the summary looks at the first one per class. The
per-class summary says whether one constant delta explains all deviations, which usually points at one member
or base class of the wrong size.
"""
from __future__ import annotations

import argparse
import csv
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
DR = ROOT / "port" / "decomp-reconstruction"
OUT_ROOT = ROOT / "build" / "tb-arm32"
REPORT = ROOT / "reports" / "decomp-reconstruction" / "armdiff" / "layout-audit.csv"

sys.path.insert(0, str(Path(__file__).resolve().parent))
import run as runmod  # noqa: E402  (stl_incompatible)

MEMBER_RE = re.compile(r"^\s*(?!return\b|typedef\b|using\b|friend\b|static\b|virtual\b)(?P<decl>[A-Za-z_][^;(){}]*?)\s*;\s*//\s*\+0x(?P<off>[0-9a-fA-F]+)")
CLASS_RE = re.compile(r"^\s*(?:template\s*<[^>]*>\s*)?(?:class|struct|union)\s+(?:alignas\([^)]*\)\s*)?(?P<name>[A-Za-z_]\w*)\s*(?:final\s*)?(?::[^{;]*)?\{")
NS_RE = re.compile(r"^\s*namespace\s+(?P<name>[A-Za-z_][\w:]*)\s*\{")


def member_name(decl: str) -> str | None:
    d = re.sub(r"=.*$", "", decl)                 # default initialiser
    d = re.sub(r"\{.*$", "", d)
    d = re.sub(r"\[[^\]]*\]\s*$", "", d.strip())  # array bound
    d = re.sub(r":\s*\d+\s*$", "", d.strip())     # bit-field width
    m = re.search(r"([A-Za-z_]\w*)\s*$", d.strip())
    return m.group(1) if m else None


def scan_header(path: Path):
    """Yield (qualified class, member, annotated offset, line number)."""
    stack: list[tuple[str, str, int]] = []        # (kind, name, brace depth after the opening brace)
    depth = 0
    in_block_comment = False
    text = path.read_text(encoding="utf-8", errors="replace").splitlines()
    for ln, raw in enumerate(text, 1):
        line = raw
        if in_block_comment:
            if "*/" in line:
                in_block_comment = False
                line = line.split("*/", 1)[1]
            else:
                continue
        code = re.sub(r"//.*$", "", line)
        code = re.sub(r'"(?:\\.|[^"\\])*"', '""', code)
        while "/*" in code:
            pre, _, post = code.partition("/*")
            if "*/" in post:
                code = pre + post.split("*/", 1)[1]
            else:
                code = pre
                in_block_comment = True
        # a declaration line first (it sits inside the innermost class scope)
        mm = MEMBER_RE.match(raw)
        if mm and stack and stack[-1][0] == "class" and depth == stack[-1][2]:
            name = member_name(mm.group("decl"))
            if name:
                qual = "::".join(s[1] for s in stack)
                yield qual, name, int(mm.group("off"), 16), ln
        cm = CLASS_RE.match(code)
        nm = NS_RE.match(code)
        opens = code.count("{")
        closes = code.count("}")
        if cm and opens > closes:
            depth += opens - closes
            stack.append(("class", cm.group("name"), depth))
            continue
        if nm and opens > closes:
            depth += opens - closes
            stack.append(("ns", nm.group("name"), depth))
            continue
        depth += opens - closes
        while stack and depth < stack[-1][2]:
            stack.pop()


def load_layouts() -> dict[str, dict]:
    layouts: dict[str, dict] = {}
    for mp in sorted(OUT_ROOT.glob("*/*.meta.json")):
        if mp.parent.name.startswith("_"):
            continue
        try:
            md = json.loads(mp.read_text(encoding="utf-8"))
        except (OSError, ValueError):
            continue
        for name, rec in md.get("layouts", {}).items():
            layouts.setdefault(name, rec)
    return layouts


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--header-dir", action="append", help="directory to scan (default: game/include, where the member offset comments are a rule)")
    ap.add_argument("--engine", action="store_true", help="also scan the engine categories' include directories (their comments do not all use this convention)")
    ap.add_argument("--csv", default=str(REPORT))
    ap.add_argument("--classes", type=int, default=40, help="how many classes the summary lists")
    a = ap.parse_args()
    dirs = [Path(d) for d in a.header_dir] if a.header_dir else [DR / "game" / "include"]
    if a.engine:
        dirs += sorted(p for p in DR.glob("*/include") if p.parent.name != "game")
    layouts = load_layouts()
    rows = []
    for d in dirs:
        for h in sorted(d.rglob("*.hpp")):
            rel = h.relative_to(DR).as_posix()
            for cls, mem, off, ln in scan_header(h):
                rec = layouts.get(cls)
                if rec is None:
                    rows.append([rel, ln, cls, mem, off, "", "", "nolayout"])
                    continue
                field = next((f for f in rec["fields"] if f[2] == mem and f[1] not in ("vptr", "base")), None)
                if field is None:
                    rows.append([rel, ln, cls, mem, off, "", "", "notfound"])
                    continue
                comp = field[0]
                if comp == off:
                    rows.append([rel, ln, cls, mem, off, comp, 0, "ok"])
                    continue
                # STLport's std::string and the map family are 12 bytes larger than libc++'s; each one that precedes
                # the member explains a delta of -12
                expected, unknown = runmod.stl_expected_delta(rec, layouts, comp)
                before = sum(1 for o, _t in runmod.stl_members(rec, layouts) if o < comp)
                if before and not unknown and comp - off == expected:
                    status = "stl"
                elif before and not unknown:
                    status = "shifted_behind_stl"      # the STL members explain part of it; the rest is a real error
                elif before:
                    status = "stl_other"
                else:
                    status = "shifted"
                rows.append([rel, ln, cls, mem, off, comp, comp - off, status])
    classes = defaultdict(list)
    for r in rows:
        classes[(r[0], r[2])].append(r)
    first_dev: dict[tuple[str, str], list] = {}
    for key, rs in classes.items():
        dev = [r for r in rs if r[7] in ("stl", "stl_other", "shifted", "shifted_behind_stl")]
        if dev:
            first_dev[key] = min(dev, key=lambda r: r[4])
    Path(a.csv).parent.mkdir(parents=True, exist_ok=True)
    with open(a.csv, "w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh, lineterminator="\n")
        w.writerow(["header", "line", "class", "member", "annotated_offset", "compiled_offset", "delta", "status", "first_deviation_in_class"])
        for r in rows:
            first = first_dev.get((r[0], r[2])) is r
            w.writerow([r[0], r[1], r[2], r[3], f"0x{r[4]:x}", "" if r[5] == "" else f"0x{r[5]:x}", r[6], r[7], "yes" if first else ""])
    c = Counter(r[7] for r in rows)
    print(f"{len(rows)} annotated members in {len(classes)} classes: " + ", ".join(f"{k} {v}" for k, v in sorted(c.items())))
    kinds = Counter(r[7] for r in first_dev.values())
    print(f"{len(first_dev)} classes have at least one member whose compiled offset differs from its comment; "
          f"first deviation per class: " + ", ".join(f"{k} {v}" for k, v in sorted(kinds.items())))
    print("first deviation 'shifted' = no STL member before it, 'shifted_behind_stl' = the STL members before it explain only part of the "
          "delta: the class or a base is the wrong size or a member is missing/extra:")
    real = [(sum(1 for r in classes[k] if r[7] in ("shifted", "stl_other", "stl", "shifted_behind_stl")), k, r) for k, r in first_dev.items()
            if r[7] in ("shifted", "shifted_behind_stl")]
    real.sort(key=lambda t: -t[0])
    for n, (h, cls), r in real[:a.classes]:
        print(f"  {cls:34s} {n:3d} members off, first {r[3]:24s} comment +{r[4]:#x} compiled +{r[5]:#x} (delta {r[6]:+d})  [{h}:{r[1]}]")
    print("wrote", a.csv)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
