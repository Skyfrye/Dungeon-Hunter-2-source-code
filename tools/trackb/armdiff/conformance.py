#!/usr/bin/env python3
"""Symbol conformance: does the ARM32 build of a row's source define the original mangled symbol?

    py -3 tools/trackb/armdiff/conformance.py                      # every category, statuses reconstructed and partial
    py -3 tools/trackb/armdiff/conformance.py -c game-world -c vox-audio
    py -3 tools/trackb/armdiff/conformance.py --no-build           # use the objects already built

TRACK-B.md decision 10: names, namespaces, const-ness and parameter types must reproduce the original mangled symbol.
For each ledger row the original symbol is the mangled name in the ledger (or, when the ledger holds IDA's demangled
text, the ELF symbol at the row's address). The functions the ARM32 build of the row's `source_file` defines are the
candidates: the translation unit for a .cpp source, a synthetic unit for a header (build_arm.build_header_tu).

Classes (first match wins, in this order):
    exact            the mangled name is defined (`exact_other_tu`: by another unit of the same category)
    variant          only the C1/C2 or D1/D2 sibling is defined (same code without virtual bases; not a defect)
    stl_abi          equal once libc++'s std::__ndk1 (or libstdc++'s std::__cxx11) is read as STLport's std, expanded std::basic_string /
                     basic_istream / basic_ostream are read as std::string / istream / ostream and a 64-bit size_t inside a std type as the
                     original's 32-bit one (TRACK-B decision 12; norm_std); expected, the mangled names differ
    namespace_drift  same function name and class name, different enclosing namespace
    param_drift      same qualified name, different parameter types
    param_drift_stl  the parameters differ only in std:: container, iterator or allocator types (the original's STLport
                     and glitch::core::SAllocator against the reconstruction's libc++ types)
    const_drift      same qualified name and parameters, const-ness of the method differs
    return_only      only the return type differs (visible in the mangling of function templates only; for ordinary
                     functions a different return type does not change the symbol, so it cannot be detected here)
    linkage_drift    the original is an unmangled C name and the build defines the C++ mangled one (or the reverse)
    missing          nothing in the unit has this name
    unchecked        a function template or inline function of a header whose original types the synthetic header unit
                     cannot spell (they are not declared by the header's own includes); neither conforming nor not
    unbuilt          the unit does not compile for ARM32 (the error is in the detail)
    no_source        the row has no source file
"""
from __future__ import annotations

import argparse
import concurrent.futures as cf
import csv
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import abi  # noqa: E402
import build_arm  # noqa: E402
import manifest  # noqa: E402

ROOT = manifest.ROOT
DR = manifest.DR
REPORT_DIR = ROOT / "reports" / "decomp-reconstruction" / "armdiff"
CLASSES = ["exact", "exact_other_tu", "variant", "stl_abi", "namespace_drift", "param_drift", "param_drift_stl", "const_drift", "return_only",
           "linkage_drift", "missing", "unchecked", "unbuilt", "no_source"]
PRIORITY = ["namespace_drift", "param_drift", "param_drift_stl", "const_drift", "return_only"]


# ---- demangled-name helpers --------------------------------------------------------------------------------

def scan(d: str):
    return build_arm._scan_demangled(d)


def strip_templates(s: str) -> str:
    out, depth = [], 0
    for ch in s:
        if ch == "<":
            depth += 1
        elif ch == ">":
            depth -= 1
        elif depth == 0:
            out.append(ch)
    return "".join(out)


# Decision 12 (STLport option A): the original links STLport 5.2.1 (namespace `std`), the reconstruction builds against the NDK's libc++
# (`std::__ndk1`) or the host's libstdc++ (`std::__cxx11`). A std-typed symbol is compared after this canonical form: the inline
# namespaces and ABI tags are dropped, the expanded character-string and stream types are folded back to the names the original
# mangling abbreviates (Ss, Sa, Si, So, Sd), and size_t-like widths inside std types are read as the 32-bit original's.
_STD_NAMESPACES = ("std::__ndk1::", "std::__1::", "std::__cxx11::", "std::__cxx1998::", "std::_V2::")
_CHAR_STRING = {"char": "string", "wchar_t": "wstring"}
_STD_FOLD = [
    (re.compile(r"std::basic_string<(char|wchar_t),std::char_traits<\1>,std::allocator<\1>>"), lambda m: "std::" + _CHAR_STRING[m.group(1)]),
    (re.compile(r"std::basic_istream<char,std::char_traits<char>>"), lambda m: "std::istream"),
    (re.compile(r"std::basic_ostream<char,std::char_traits<char>>"), lambda m: "std::ostream"),
    (re.compile(r"std::basic_iostream<char,std::char_traits<char>>"), lambda m: "std::iostream"),
]
_UNSIGNED_LONG = re.compile(r"\bunsigned long\b(?! long)")


def norm_std(s: str) -> str:
    for ns in _STD_NAMESPACES:
        s = s.replace(ns, "std::")
    s = re.sub(r"\[abi:[^\]]*\]", "", s)
    s = re.sub(r"\s+", " ", s).replace(" >", ">").replace("> >", ">>").replace("> >", ">>").replace(", ", ",")
    for rx, rep in _STD_FOLD:
        s = rx.sub(rep, s)
    if "std::" in s:
        s = _UNSIGNED_LONG.sub("unsigned int", s)   # a 64-bit size_t read as the original's 32-bit one, inside std types only
    return s.strip()


def last_ident(q: str) -> str:
    base = strip_templates(q)
    return base.rsplit("::", 1)[-1]


def class_ident(scope: str) -> str:
    return strip_templates(scope).rsplit("::", 1)[-1]


def const_of(quals: str) -> bool:
    return "const" in quals.split()


# ---- classification -------------------------------------------------------------------------------------------

def classify(orig_m: str, orig_d: str, cands: dict[str, str]) -> tuple[str, str, str]:
    """(class, matched/near recon mangled name, detail). `cands` maps mangled -> demangled for the plausible candidates."""
    if not orig_m.startswith("_Z"):
        # an unmangled C name: the C++ build mangles it unless it is extern "C"
        for m, d in cands.items():
            sc = scan(d)
            if sc and last_ident(sc[1]) == orig_m and "::" not in sc[1]:
                return "linkage_drift", m, f'original is the C symbol {orig_m}; the build defines {d} (missing extern "C")'
        return "missing", "", f"no definition named {orig_m}"
    so = scan(orig_d)
    # variant siblings
    for alt in _variants(orig_m):
        if alt in cands:
            return "variant", alt, "C1/C2 or D1/D2 sibling"
    if so is None:
        return "missing", "", "original name could not be split"
    oret, oq, op, oqual = so
    onq, onp = norm_std(oq), norm_std(op)
    oc = const_of(oqual)
    best: dict[str, tuple[str, str]] = {}
    for m, d in cands.items():
        sc = scan(d)
        if sc is None:
            continue
        cret, cq, cp, cqual = sc
        cc = const_of(cqual)
        if norm_std(cq) == onq:
            same_p, same_np = cp == op, norm_std(cp) == onp
            if same_p and cc == oc:
                if cret != oret:
                    best.setdefault("return_only", (m, f"return type {cret!r} against the original's {oret!r}"))
                elif cq != oq:
                    best.setdefault("stl_abi", (m, d))
            elif same_np and cc == oc:
                best.setdefault("stl_abi", (m, d))
            elif same_np or same_p:
                best.setdefault("const_drift", (m, f"the reconstruction declares the method {'const' if cc else 'non-const'}, the original {'const' if oc else 'non-const'}"))
            else:
                n_o = len(build_arm._split_params(op)) if op.strip() not in ("", "void") else 0
                n_c = len(build_arm._split_params(cp)) if cp.strip() not in ("", "void") else 0
                key_cls = "param_drift_stl" if ("std::" in cp or "std::" in op) and not any(
                    t in cp and t in op for t in ()) and strip_std_params(cp) == strip_std_params(op) else "param_drift"
                prev = best.get(key_cls)
                if prev is None or (n_o == n_c and not prev[2:]):
                    best[key_cls] = (m, f"parameters ({cp}) against the original's ({op})" + ("" if cc == oc else "; const-ness also differs"), "same count" if n_o == n_c else "")
        else:
            # same function name in a class of the same name but another namespace
            oscope, olast = build_arm._last_scope(oq)
            cscope, clast = build_arm._last_scope(cq)
            if olast != clast:
                continue
            if class_ident(oscope) == class_ident(cscope) and strip_templates(oscope) != strip_templates(cscope):
                same = "same parameters" if cp == op else f"parameters also differ ({cp})"
                best.setdefault("namespace_drift", (m, f"{strip_templates(oscope)} -> {strip_templates(cscope)} ({same})"))
            elif not oscope and cscope and cp == op:
                best.setdefault("namespace_drift", (m, f"global -> {strip_templates(cscope)} (same parameters)"))
            elif oscope and not cscope and cp == op:
                best.setdefault("namespace_drift", (m, f"{strip_templates(oscope)} -> global (same parameters)"))
    for k in ["stl_abi"] + PRIORITY:
        if k in best:
            return k, best[k][0], best[k][1]
    return "missing", "", f"no function named {last_ident(oq)} in {strip_templates(build_arm._last_scope(oq)[0]) or 'the global scope'}"


def strip_std_params(p: str) -> str:
    """Parameters with every std:: type argument list removed: two lists that agree outside the STL types."""
    out, depth, i = [], 0, 0
    parts = build_arm._split_params(p) if p.strip() not in ("", "void") else []
    for x in parts:
        out.append("STL" if "std::" in x else x)
    return ",".join(out)


_SUG = re.compile(r"no (?:template|class|type|member) named '(\w+)' in namespace '([^']+)'; did you mean '([^']+)'")


def namespace_suggestions(u) -> dict[str, str]:
    """Names the compiler could not find in the original's namespace but offered in another: name -> 'original ns -> suggested'."""
    cached = getattr(u, "_sug", None)
    if cached is None:
        cached = {}
        for why in u.drops.values():
            for m in _SUG.finditer(why):
                cached.setdefault(m.group(1), f"{m.group(2)} -> {m.group(3).rsplit('::', 1)[0]} (class {m.group(1)})")
        u._sug = cached
    return cached


def last_ident_full(q: str) -> str:
    return build_arm._last_scope(q)[1]


def _variants(name: str) -> list[str]:
    out = []
    for a, b in (("C2E", "C1E"), ("C1E", "C2E"), ("D2E", "D1E"), ("D1E", "D2E")):
        if a in name:
            out.append(name.replace(a, b, 1))
    return out


# ---- units ---------------------------------------------------------------------------------------------------------

class Unit:
    def __init__(self, directory: Path, stem: str):
        self.dir, self.stem = directory, stem
        mp = directory / f"{stem}.meta.json"
        self.exists = mp.exists()
        self.ok = False
        self.error = ""
        self.names: list[str] = []
        self.drops: dict[str, str] = {}
        dp = directory / f"{stem}.drops.json"
        if dp.exists():
            try:
                self.drops = json.loads(dp.read_text(encoding="utf-8"))
            except (OSError, ValueError):
                pass
        if self.exists:
            md = json.loads(mp.read_text(encoding="utf-8"))
            self.ok = md.get("status") == "ok"
            self.error = md.get("error", "")
            self.names = list(md.get("sigs", {})) + list(md.get("aliases", {}))


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--category", "-c", action="append", help="ledger category (default: every category with a ledger)")
    ap.add_argument("--status", default="reconstructed,partial", help="ledger statuses to check")
    ap.add_argument("--csv", default=str(REPORT_DIR / "conformance.csv"))
    ap.add_argument("--summary", default=str(REPORT_DIR / "conformance.md"))
    ap.add_argument("--opt", default="-O1")
    ap.add_argument("--no-build", action="store_true")
    ap.add_argument("-j", "--jobs", type=int, default=None)
    a = ap.parse_args()
    statuses = set(a.status.split(","))
    cats = a.category or sorted(p.parent.name for p in DR.glob("*/ledger.csv"))
    orig = manifest.Original()

    # ---- rows ----------------------------------------------------------------------------------------------------
    rows = []
    for cat in cats:
        for addr, r in sorted(manifest.read_ledger(cat).items()):
            st = (r.get("status") or "").strip()
            if st not in statuses:
                continue
            sym = (r.get("symbol") or "").strip()
            es = orig.by_addr.get(addr)
            msym = sym if sym.startswith("_Z") or es is None else es.name
            msym = re.sub(r"\.(?:clone|part|isra|constprop|cold)\.\d+$", "", msym)     # a GCC clone is the same function
            rows.append({"cat": cat, "addr": addr, "ledger_sym": sym, "msym": msym, "status": st,
                         "src": (r.get("source_file") or "").strip()})
    print(f"{len(rows)} ledger rows in {len(cats)} categories", flush=True)

    cxx = build_arm.exe("llvm-cxxfilt")
    dem_cache: dict[str, str] = {}

    def demangle(names) -> None:
        todo = sorted({n for n in names if n not in dem_cache})
        for i in range(0, len(todo), 20000):
            chunk = todo[i:i + 20000]
            dem_cache.update(abi.demangle_all(chunk, cxx))

    demangle(r["msym"] for r in rows)

    # ---- builds ----------------------------------------------------------------------------------------------------
    src_cats = sorted({r["src"].split("/")[0] for r in rows if r["src"].endswith(".cpp")})
    if not a.no_build:
        for c in src_cats:
            if (DR / c / "src").is_dir():
                build_arm.build_category(c, a.opt, False, a.jobs)
    headers: dict[str, dict] = {}
    for r in rows:
        if r["src"].endswith((".hpp", ".h")) and build_arm.header_include_name(r["src"]):
            h = headers.setdefault(r["src"], {"cat": r["cat"], "names": []})
            h["names"].append(dem_cache.get(r["msym"], r["msym"]))
    hunits: dict[str, Unit | None] = {}
    if headers:
        print(f"{len(headers)} header units", flush=True)

        def build_one(item):
            hdr, h = item
            if a.no_build:
                stem = build_arm.header_unit_stem(hdr, h["names"], a.opt)
                return hdr, Unit(build_arm.OUT_ROOT / "_hdr", stem)
            res = build_arm.build_header_tu(h["cat"], hdr, h["names"], a.opt, False)
            return hdr, Unit(build_arm.OUT_ROOT / "_hdr", Path(res.object).stem)
        with cf.ThreadPoolExecutor(a.jobs or 8) as ex:
            for hdr, unit in ex.map(build_one, headers.items()):
                hunits[hdr] = unit

    units: dict[str, Unit] = {}

    def unit_for(src: str) -> Unit | None:
        if src.endswith((".hpp", ".h")):
            return hunits.get(src)
        if src.endswith(".cpp"):
            if src not in units:
                units[src] = Unit(build_arm.OUT_ROOT / src.split("/")[0], Path(src).stem)
            return units[src]
        return None

    # category-wide index of defined names, for rows whose symbol lives in another unit
    cat_index: dict[str, set[str]] = {}

    def category_names(c: str) -> set[str]:
        if c not in cat_index:
            s: set[str] = set()
            for mp in (build_arm.OUT_ROOT / c).glob("*.meta.json"):
                try:
                    md = json.loads(mp.read_text(encoding="utf-8"))
                except (OSError, ValueError):
                    continue
                if md.get("status") == "ok":
                    s.update(md.get("sigs", {}))
                    s.update(md.get("aliases", {}))
            cat_index[c] = s
        return cat_index[c]

    # ---- classify ----------------------------------------------------------------------------------------------------
    out_rows = []
    by_unit_pending: dict[tuple, list[int]] = defaultdict(list)
    for i, r in enumerate(rows):
        m = r["msym"]
        r["orig_dem"] = dem_cache.get(m, m)
        src = r["src"]
        if not src or src == "none" or not src.endswith((".cpp", ".hpp", ".h")):
            r.update(cls="no_source", recon="", detail=f"source_file is {src!r}")
            continue
        if not build_arm.header_include_name(src) and src.endswith((".hpp", ".h")):
            r.update(cls="no_source", recon="", detail="header is not under an include directory")
            continue
        u = unit_for(src)
        if u is None or not u.exists or not u.ok:
            err = (u.error if u is not None and u.exists else "no ARM32 build of this source")
            r.update(cls="unbuilt", recon="", detail=err[:200])
            continue
        names = set(u.names)
        if m in names:
            r.update(cls="exact", recon=m, detail="")
            continue
        sc = src.split("/")[0]
        if src.endswith(".cpp") and m in category_names(sc):
            r.update(cls="exact_other_tu", recon=m, detail="defined by another unit of the category")
            continue
        by_unit_pending[(src, id(u))].append(i)

    # candidates are filtered by the function's own name before they are demangled
    for (src, _uid), idxs in by_unit_pending.items():
        u = unit_for(src)
        names = u.names
        want = []
        toks = {}
        for i in idxs:
            r = rows[i]
            so = scan(r["orig_dem"]) if r["msym"].startswith("_Z") else None
            if so is None:
                tok = r["msym"]
            else:
                li = last_ident(so[1]).lstrip("~")
                if li.startswith("operator") or not li:
                    li = class_ident(build_arm._last_scope(so[1])[0]) or li
                tok = li
            toks[i] = tok
            want.append(tok)
        pool = [n for n in names if any(t and t in n for t in set(want))]
        demangle(pool)
        for i in idxs:
            r = rows[i]
            tok = toks[i]
            cands = {n: dem_cache.get(n, n) for n in pool if tok and tok in n}
            cls, recon, detail = classify(r["msym"], r["orig_dem"], cands)
            if cls == "missing" and u.drops:
                d = build_arm.instantiation_directive(r["orig_dem"])
                why = u.drops.get(d, "") if d else ""
                sug = namespace_suggestions(u)
                so_ = scan(r["orig_dem"])
                hint = ""
                if so_:
                    scope_names = strip_templates(build_arm._last_scope(so_[1])[0]).split("::")
                    for nm in scope_names:
                        if nm in sug:
                            hint = sug[nm]
                            break
                if hint:
                    cls, detail = "namespace_drift", hint
                elif "did you mean" in why:
                    cls, detail = "namespace_drift", why[:200]
                elif "does not refer to" in why:
                    cls, detail = "param_drift", "no template matches the original's signature (parameters, return type or template parameters differ): " + why[:120]
                elif re.search(r"no member named|unknown type name|undeclared identifier|incomplete type|use of undeclared", why):
                    cls = "unchecked"
                    detail = "the header unit cannot spell the original's types (not declared by the header's own includes): " + why[:120]
                elif why:
                    detail = "the explicit instantiation of the original's signature was rejected: " + why[:150]
            r.update(cls=cls, recon=recon, detail=detail)

    # ---- outputs ----------------------------------------------------------------------------------------------------
    Path(a.csv).parent.mkdir(parents=True, exist_ok=True)
    with open(a.csv, "w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh, lineterminator="\n")
        w.writerow(["category", "address", "status", "source_file", "original_symbol", "original_demangled", "class",
                    "recon_symbol", "recon_demangled", "detail"])
        for r in rows:
            rd = dem_cache.get(r["recon"], r["recon"]) if r.get("recon") else ""
            w.writerow([r["cat"], f"0x{r['addr']:x}", r["status"], r["src"], r["msym"], r["orig_dem"], r["cls"], r["recon"], rd, r["detail"]])
    write_summary(rows, cats, Path(a.summary), dem_cache)
    tot = Counter(r["cls"] for r in rows)
    print("class counts:", ", ".join(f"{k} {tot[k]}" for k in CLASSES if tot[k]))
    print("wrote", a.csv, "and", a.summary)
    return 0


def write_summary(rows, cats, path: Path, dem_cache) -> None:
    per = defaultdict(Counter)
    for r in rows:
        per[r["cat"]][r["cls"]] += 1
    used = [k for k in CLASSES if any(per[c][k] for c in per)]
    L = ["# Symbol conformance of the ARM32 build against the original mangled symbols", ""]
    L.append(f"{len(rows)} ledger rows with status reconstructed or partial in {len(cats)} categories. `exact` and `variant` conform; the other "
             "classes do not reproduce the original symbol (TRACK-B decision 10). Generated by "
             "`py -3 tools/trackb/armdiff/conformance.py`; the per-row result is in `conformance.csv`.")
    L.append("")
    L.append("| category | rows | " + " | ".join(used) + " | conform |")
    L.append("|---|---:|" + "---:|" * (len(used) + 1))
    tot = Counter()
    for c in cats:
        if c not in per:
            continue
        n = sum(per[c].values())
        conf = per[c]["exact"] + per[c]["exact_other_tu"] + per[c]["variant"]
        L.append(f"| {c} | {n} | " + " | ".join(str(per[c][k]) for k in used) + f" | {conf} ({100 * conf // max(n, 1)}%) |")
        tot.update(per[c])
    n = sum(tot.values())
    conf = tot["exact"] + tot["exact_other_tu"] + tot["variant"]
    L.append(f"| **total** | {n} | " + " | ".join(str(tot[k]) for k in used) + f" | {conf} ({100 * conf // max(n, 1)}%) |")
    L.append("")
    L.append("Class meanings: `exact_other_tu` the symbol is defined by another unit of the category than the ledger's source_file; `variant` only the "
             "C1/C2 or D1/D2 sibling is defined; `stl_abi` equal once libc++'s `std::__ndk1` is read as STLport's `std` (expected); "
             "`namespace_drift`, `param_drift`, `const_drift`, `return_only` (function templates only: for other functions the return type "
             "is not part of the symbol and cannot be checked here) are defects to fix; `linkage_drift` the original is a C name; `missing` "
             "no function of that name in the unit; `unchecked` a header function whose original parameter types the synthetic header unit cannot declare; `unbuilt` the unit does not compile for ARM32 (see the CSV); `no_source` the row has "
             "no source file.")
    L.append("")
    # patterns
    for cls, title in (("namespace_drift", "Namespace drift: original scope -> reconstruction scope"),
                       ("const_drift", "Const drift: classes with most rows"),
                       ("param_drift", "Parameter-type drift: examples"),
                       ("return_only", "Return-type-only: examples"),
                       ("linkage_drift", "Linkage drift: examples")):
        sel = [r for r in rows if r["cls"] == cls]
        if not sel:
            continue
        L.append(f"## {title} ({len(sel)} rows)")
        L.append("")
        if cls == "namespace_drift":
            pat = Counter(r["detail"].split(" (")[0] for r in sel)
            L.append("| rows | original scope -> reconstruction scope |")
            L.append("|---:|---|")
            for k, v in pat.most_common(25):
                L.append(f"| {v} | `{k[:200]}` |")
        elif cls == "const_drift":
            pat = Counter((r["detail"], r["orig_dem"].split("::")[0:-1].__str__()[:80]) for r in sel)
            byclass = Counter(build_arm._last_scope(scan(r["orig_dem"])[1])[0] if scan(r["orig_dem"]) else "?" for r in sel)
            L.append("| rows | class |")
            L.append("|---:|---|")
            for k, v in byclass.most_common(20):
                L.append(f"| {v} | `{k[:120]}` |")
            dirs = Counter(r["detail"] for r in sel)
            L.append("")
            for k, v in dirs.most_common():
                L.append(f"- {v} rows: {k}")
        else:
            L.append("| address | original | detail |")
            L.append("|---|---|---|")
            for r in sel[:25]:
                L.append(f"| {r['cat']} 0x{r['addr']:x} | `{r['orig_dem'][:100]}` | {r['detail'][:160]} |")
        L.append("")
    sel = [r for r in rows if r["cls"] == "unbuilt"]
    if sel:
        byerr = Counter(re.sub(r"'[^']*'", "'..'", r["detail"])[:120] for r in sel)
        L.append(f"## Unbuilt ({len(sel)} rows)")
        L.append("")
        L.append("| rows | compiler error |")
        L.append("|---:|---|")
        for k, v in byerr.most_common(15):
            L.append(f"| {v} | {k} |")
        L.append("")
    sel = [r for r in rows if r["cls"] == "missing"]
    if sel:
        byc = Counter((r["cat"], r["status"]) for r in sel)
        L.append(f"## Missing ({len(sel)} rows)")
        L.append("")
        L.append("By category and ledger status (a `partial` row without a definition is expected to be missing):")
        L.append("")
        for (c, s), v in sorted(byc.items()):
            L.append(f"- {c} / {s}: {v}")
        L.append("")
    path.write_text("\n".join(L) + "\n", encoding="utf-8")


if __name__ == "__main__":
    raise SystemExit(main())
