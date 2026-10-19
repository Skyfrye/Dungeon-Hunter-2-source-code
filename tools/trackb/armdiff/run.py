#!/usr/bin/env python3
"""armdiff: differential test of reconstructed functions against the original ARM machine code.

    py -3 tools/trackb/armdiff/run.py --address 0x3c9228 --cases 64
    py -3 tools/trackb/armdiff/run.py --category game-anim --no-call-only
    py -3 tools/trackb/armdiff/run.py --category glitch-core-io --no-call-only --csv out.csv

For every selected ledger row (status `reconstructed`) it runs the original function at its address and
the same function from the ARM32 build of the reconstruction, on identical copies of generated input
memory, in one Unicorn ARM32 address space. It compares the return registers, every byte written
outside the callee's own stack frame, and the effectful library calls. See README.md.
"""
from __future__ import annotations

import argparse
import csv
import json
import os
import re
import sys
import time
import traceback
from dataclasses import dataclass, field
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import abi  # noqa: E402
import build_arm  # noqa: E402
import cases as cases_mod  # noqa: E402
import compare  # noqa: E402
import machine as mc  # noqa: E402
import manifest  # noqa: E402
import stubs  # noqa: E402

ROOT = manifest.ROOT
DR = manifest.DR
REPORT_DIR = ROOT / "reports" / "decomp-reconstruction" / "armdiff"
CLASS_FACTS = ROOT / "reports" / "decomp-reconstruction" / "class-facts.json"

CSV_COLUMNS = ["category", "address", "symbol", "demangled", "source_file", "orig_size", "trivial", "shape", "result", "reason_or_difference",
               "cases", "equal", "fault_equal", "inconclusive", "mismatch", "first_case", "first_difference", "mismatch_class",
               "orig_coverage_pct", "flags", "recon_symbol", "src_sha1", "notes"]

TRIVIAL_BYTES = 8       # an original of this many bytes or fewer (bx lr, a constant return) is a "trivial" match; reports count them apart

# std:: types whose 32-bit layout is the same in STLport (the original) and libc++ (the ARM32 build)
# fundamental typedefs spelled with std:: (cstdint, cstddef): not containers
STL_FUNDAMENTAL = r"std::(u?int(_least|_fast)?\d+_t|u?intptr_t|u?intmax_t|size_t|ptrdiff_t|nullptr_t|max_align_t|wint_t|wchar_t|FILE)\b"
STL_LAYOUT_COMPATIBLE = ("std::vector<", "std::shared_ptr<", "std::weak_ptr<", "std::pair<", "std::array<", "std::unique_ptr<",
                         "std::reference_wrapper<")


@dataclass
class Outcome:
    row: manifest.Row
    demangled: str = ""
    result: str = "excluded"            # match | mismatch | excluded
    reason: str = ""
    cases: int = 0
    equal: int = 0
    fault_equal: int = 0
    inconclusive: int = 0
    mismatch: int = 0
    stl_suspect: int = 0
    first_case: str = ""
    first_diff: str = ""
    mismatch_class: str = ""
    recon_symbol: str = ""
    src_sha1: str = ""
    notes: list[str] = field(default_factory=list)
    flags: list[str] = field(default_factory=list)
    shape: str = ""
    coverage: float = -1.0              # share of the original function's code bytes the inputs executed
    printed: bool = False

    def csv_row(self) -> list:
        r = self.row
        return [r.category, f"0x{r.addr:x}", r.symbol, self.demangled, r.source_file, r.size, "yes" if 0 < r.size <= TRIVIAL_BYTES else "",
                self.shape, self.result, self.reason,
                self.cases, self.equal, self.fault_equal, self.inconclusive, self.mismatch, self.first_case, self.first_diff,
                self.mismatch_class, ("" if self.coverage < 0 else f"{100 * self.coverage:.0f}"), ";".join(self.flags), self.recon_symbol, self.src_sha1, "; ".join(self.notes)]


# ----- owner classes -------------------------------------------------------------------------------------

class ClassInfo:
    def __init__(self, mangled_syms: list[str]):
        self.cxxfilt = build_arm.exe("llvm-cxxfilt")
        self.demangled: dict[str, str] = {}
        self.facts = {}
        if CLASS_FACTS.exists():
            self.facts = json.loads(CLASS_FACTS.read_text(encoding="utf-8"))
        self.add(mangled_syms)

    @staticmethod
    def _ts(fn: abi.MangledFn) -> str:
        return "_ZTS" + (f"N{fn.owner}E" if fn.owner_nested else fn.owner)

    def add(self, syms: list[str]) -> None:
        todo = [s for s in syms if s not in self.demangled]
        owners = []
        for s in todo:
            fn = abi.parse_function_symbol(s)
            if fn.owner:
                owners.append(self._ts(fn))
        self.demangled.update(abi.demangle_all(todo + owners, self.cxxfilt))

    def owner_name(self, sym: str) -> str | None:
        fn = abi.parse_function_symbol(sym)
        if not fn.owner:
            return None
        t = self._ts(fn)
        d = self.demangled.get(t)
        if d is None:
            d = abi.demangle_all([t], self.cxxfilt).get(t, t)
            self.demangled[t] = d
        return d[len("typeinfo name for "):] if d.startswith("typeinfo name for ") else None

    def alloc_size(self, owner: str | None) -> int:
        f = self.facts.get(owner) if owner else None
        return max(f["alloc_sizes"]) if f and f.get("alloc_sizes") else 0


# ----- per-TU data -------------------------------------------------------------------------------------------

class TuData:
    def __init__(self, directory: Path, stem: str):
        self.so = directory / f"{stem}.so"
        self.meta_path = directory / f"{stem}.meta.json"
        self.meta = json.loads(self.meta_path.read_text(encoding="utf-8")) if self.meta_path.exists() else {}
        self.ok = self.meta.get("status") == "ok" and self.so.exists()
        self.sigs = {k: abi.IRSig.from_json(v) for k, v in self.meta.get("sigs", {}).items()}
        self.aliases = self.meta.get("aliases", {})
        self.layouts = self.meta.get("layouts", {})
        self.sha1 = self.meta.get("sha1", "")[:10]
        self.error = self.meta.get("error", "")

    def sig_for(self, sym: str) -> abi.IRSig | None:
        if sym in self.sigs:
            return self.sigs[sym]
        t = self.aliases.get(sym)
        return self.sigs.get(t) if t else None


def header_drop_reason(unit, demangled: str) -> str:
    """Why the compiler rejected the explicit instantiation derived from the original's signature, if it did."""
    d = build_arm.instantiation_directive(demangled)
    if not d or unit is None:
        return ""
    try:
        drops = json.loads((unit[0] / f"{unit[1]}.drops.json").read_text(encoding="utf-8"))
    except (OSError, ValueError):
        return ""
    return drops.get(d, "")[:160]


def const_toggled(sym: str) -> str | None:
    """The same member function symbol with the const qualifier added or removed (`_ZNK...` <-> `_ZN...`)."""
    if sym.startswith("_ZNK"):
        return "_ZN" + sym[4:]
    if sym.startswith("_ZN") and not sym.startswith(("_ZNV", "_ZNr")):
        return "_ZNK" + sym[3:]
    return None


def _first_template_arg(ty: str) -> str | None:
    i = ty.find("<")
    if i < 0:
        return None
    depth, j = 0, i
    while j < len(ty):
        c = ty[j]
        if c == "<":
            depth += 1
        elif c == ">":
            depth -= 1
            if depth == 0:
                break
        elif c == "," and depth == 1:
            break
        j += 1
    arg = ty[i + 1:j].strip()
    for kw in ("class ", "struct ", "union ", "const "):
        if arg.startswith(kw):
            arg = arg[len(kw):]
    return arg


def stl_members(rec: dict | None, layouts: dict | None = None, _depth: int = 0) -> list[tuple[int, str]]:
    """Every member (offset, type text) whose layout differs between STLport (the original) and libc++ (the ARM32
    build), outermost ones only, in offset order. Containers whose 32-bit layout agrees (std::vector, shared_ptr, ...)
    count only when their element type holds such a member by value, because the element size then differs."""
    if not rec:
        return []
    found: list[tuple[int, str]] = []
    skip_below = None          # inside a member already accounted for: its internals (allocator, pair, ...) do not count
    for e in rec.get("std_members", []):
        text = e[1]
        depth = e[2] if len(e) > 2 else 1
        if skip_below is not None:
            if depth > skip_below:
                continue
            skip_below = None
        ty = text.split(" ", 1)[1] if text.split(" ", 1)[0] in ("class", "struct", "union") else text
        if ty.startswith("std::__") or re.match(STL_FUNDAMENTAL, ty):
            continue                  # std::int32_t and library internals: not containers
        if ty.startswith("std::vector<bool"):
            skip_below = depth        # STLport's vector<bool> is 20 bytes (two bit iterators and the end of storage), libc++'s 12
            found.append((e[0], ty.rpartition(" ")[0] or ty))
            continue
        if ty.startswith(STL_LAYOUT_COMPATIBLE):
            skip_below = depth
            el = _first_template_arg(ty)
            if el and layouts and _depth < 4 and not el.endswith("*") and el in layouts:
                inner = stl_members(layouts[el], layouts, _depth + 1)
                if inner:
                    found.append((e[0], f"{ty.rpartition(' ')[0] or ty} (element {el} holds {inner[0][1]})"))
            continue
        skip_below = depth
        found.append((e[0], ty if "(element" in ty else (ty.rpartition(" ")[0] or ty)))
    return sorted(found)


# Size of the container in the original (STLport, ARM32) minus its size in the ARM32 libc++ build, per type. These are the
# differences the layout audit and the STL triage use to tell a pure STL shift from a real layout error behind it:
# string 24 against 12, wstring 72 against 12, map and set (an _Rb_tree: node count, header and the word of the empty comparator) 24 against 12 (LuaScript, EventManager, NetStruct). Some headers write the last 4 bytes as an explicit `pad_` member after the map (ObjectManager); stl_expected_delta() counts that pad back, list 8 against 12, deque 40 against 24.
STL_SIZE_DELTA = (("std::string", -12), ("std::wstring", -60), ("std::basic_string", -12), ("std::map", -12), ("std::multimap", -12),
                  ("std::set", -12), ("std::multiset", -12), ("std::list", 4), ("std::vector<bool>", -8), ("std::deque", -16), ("std::queue", -16),
                  ("std::stack", -16))


def stl_type_delta(type_text: str) -> int | None:
    """libc++ size minus STLport size of one std:: member type, or None when the layout is not known."""
    t = type_text.strip()
    for kw in ("class ", "struct ", "union "):
        if t.startswith(kw):
            t = t[len(kw):]
    for prefix, d in STL_SIZE_DELTA:
        if t.startswith(prefix) and (len(t) == len(prefix) or t[len(prefix)] in "< "):
            return d
    return None


def stl_expected_delta(rec: dict | None, layouts: dict | None, before_offset: int) -> tuple[int, int]:
    """(sum of the size differences of the STL members that precede `before_offset`, how many of them have an unknown size)."""
    total = unknown = 0
    fields = (rec or {}).get("fields", [])
    for o, ty in stl_members(rec, layouts):
        if o < before_offset:
            d = stl_type_delta(ty)
            if d is None:
                unknown += 1
            else:
                total += d
                if d == -12 and ty.strip().split("<")[0].replace("class ", "").replace("struct ", "") in ("std::map", "std::multimap", "std::set", "std::multiset"):
                    # an explicit 4-byte `pad_` member right after the (12-byte) libc++ tree is the comparator word of the STLport map
                    for f in fields:
                        if f[0] == o + 12 and str(f[1]).startswith("uint8_t[4]") and str(f[2]).startswith("pad") and f[0] < before_offset + 1:
                            total += 4
                            break
    return total, unknown


def stl_incompatible(rec: dict | None, layouts: dict | None = None):
    """(offset, type text) of the lowest-offset STL member whose layout differs, or None."""
    m = stl_members(rec, layouts)
    return m[0] if m else None


def field_namer(layouts: dict, owner: str | None):
    rec = layouts.get(owner) if owner else None
    if not rec:
        return None
    fields = rec.get("fields", [])

    def namer(region: str, off: int) -> str:
        if region != "this":
            return ""
        size = rec.get("size", 0)
        if off >= size:
            return f"beyond recon sizeof {size}"
        best = None
        for f in fields:
            if f[0] <= off:
                best = f
        if best is None:
            return ""
        if best[1] == "vptr":
            return "vptr"
        return best[2] or best[1]
    return namer


def classify_mismatch(v: compare.Verdict) -> str:
    d = v.detail
    if v.first.startswith("r") and v.first[1:2].isdigit() or d.startswith("r0"):
        return "return value"
    if d.startswith("memory"):
        if v.region == "this":
            return "write to this"
        if v.region.startswith("arg"):
            return "write through argument"
        if v.region == "sret":
            return "return object (sret)"
        return "write elsewhere (" + (v.region or "global/heap") + ")"
    if d.startswith("call") or "calls something" in d:
        return "library call"
    if "fault" in d or "returns" in d:
        return "control flow / fault"
    return "other"


# ----- the run ------------------------------------------------------------------------------------------------------

def select_rows(orig: manifest.Original, a) -> list[manifest.Row]:
    rows: list[manifest.Row] = []
    if a.address:
        want = {int(x, 16) for x in a.address}
        cats = a.category or [p.parent.name for p in sorted(DR.glob("*/ledger.csv"))]
        for cat in cats:
            rows += manifest.build_rows(cat, orig, only_status=None, only_addrs=want)
        missing = want - {r.addr for r in rows}
        if missing:
            print("addresses not found in any ledger:", ", ".join(hex(x) for x in sorted(missing)), file=sys.stderr)
        return rows
    for cat in a.category or []:
        rows += manifest.build_rows(cat, orig, only_status="reconstructed")
    return rows


def exclusion_reason(row: manifest.Row, a, models_ok) -> str:
    if row.status != "reconstructed" and not manifest.is_armdiff_demoted(row.status, row.notes):
        return f"ledger status is {row.status}, not reconstructed"
    if not row.elf_name:
        return "no function symbol at this address in the original"
    if row.thumb:
        return "original function is Thumb code"
    if row.size == 0 or row.shape is None:
        return "original symbol has no size"
    k = row.shape.kind
    if a.no_call_only and k != "none":
        return f"original body makes calls ({k}); --no-call-only"
    if not a.no_call_only and a.shape != "any":
        allowed = {"none", "imports"} if a.shape == "default" else set(a.shape.split(","))
        if k not in allowed:
            return f"call shape {k} not in scope (use --shape any)"
        if k == "imports":
            bad = [n.replace(" (tail)", "") for n in row.shape.imports if not models_ok(n.replace(" (tail)", ""))]
            if bad:
                return "calls an import armdiff has no model for: " + ",".join(sorted(set(bad))[:4])
    if row.shape.svc:
        return "original body contains a supervisor call"
    if row.shape.undecodable:
        return f"original body has {row.shape.undecodable} undecodable words (data in code)"
    return ""


def run_function(m: mc.Machine, row: manifest.Row, tu: TuData, sig: abi.IRSig, recon_sym: str, ci: ClassInfo, a,
                 out: Outcome) -> None:
    ncases = a.cases
    orig_addr = mc.ORIG_BASE + row.addr
    recon_addr = m.recon.syms.get(recon_sym)
    if recon_addr is None:
        out.reason = f"symbol {recon_sym} not present in the linked object"
        return
    fn = abi.parse_function_symbol(row.msym)
    owner = ci.owner_name(row.msym)
    rec = tu.layouts.get(owner) if owner else None
    this_size = max(ci.alloc_size(owner), (rec or {}).get("size", 0))
    vptr_value = None
    if owner and sig.has_this:
        vts = abi.vtable_symbol_for(fn)
        if vts and vts in m.orig.syms and (rec or {}).get("vptr"):
            vptr_value = m.orig.syms[vts] + 8
            out.flags.append("vptr_set")
    stl = stl_incompatible(rec, tu.layouts)
    if stl:
        out.flags.append("stl_class")
        out.notes.append(f"class has an STL member ({stl[1]}) at +{stl[0]:#x}; differences at or after it are not counted")
    try:
        param_recs: dict[int, dict] = {}
        if rec:
            for pi, p in enumerate(sig.params):
                if p.is_this:
                    param_recs[pi] = rec
        dsc = build_arm._scan_demangled(ci.demangled.get(row.msym, row.msym)) if row.msym.startswith("_Z") else None
        if dsc:
            dparams = build_arm._split_params(dsc[2]) if dsc[2].strip() not in ("", "void") else []
            irp = [pi for pi, p in enumerate(sig.params) if not p.is_this and not p.sret]
            if len(irp) == len(dparams):
                for pi, dp in zip(irp, dparams):
                    if sig.params[pi].ty == "ptr":
                        nm = cases_mod._strip_kw(dp.replace("&", "").replace("*", "").replace("const", "").replace("volatile", ""))
                        if nm in tu.layouts:
                            param_recs[pi] = tu.layouts[nm]
        gen = cases_mod.CaseGen(sig, row.addr, a.seed, this_size=this_size, vptr_value=vptr_value, layouts=tu.layouts,
                                param_recs=param_recs)
    except ValueError as e:
        out.reason = f"unsupported signature: {e}"
        return
    namer = field_namer(tu.layouts, owner)
    ret_flags = {"ret_zeroext": sig.ret_zeroext, "ret_signext": sig.ret_signext}
    orig_has_calls = row.shape.kind != "none"
    first_mismatch = None
    first_suspect = None
    code_addrs = [mc.ORIG_BASE + x for x in (row.shape.code_addrs if row.shape else [])]
    conds = {}
    for ad in code_addrs:
        off = ad - mc.ORIG_BASE
        conds[ad] = int.from_bytes(bytes(m.orig.data[off:off + 4]), "little") >> 28
    m.cover_exec = set()
    n_code = max(1, len(code_addrs))
    cap = max(ncases, ncases * a.extend)
    stall = 0
    idx = -1
    last_cov = 0

    t_start = time.time()
    while True:
        idx += 1
        if time.time() - t_start > a.fn_timeout:
            out.notes.append(f"stopped after {out.cases} cases: wall-clock limit of {a.fn_timeout}s per function")
            break
        if idx >= ncases:
            # more cases while the original function still has code the inputs have not reached
            if idx >= cap or stall >= 32 or len(m.cover_exec) >= n_code:
                break
        try:
            case = gen.make(idx)
        except (ValueError, AssertionError) as e:
            out.reason = f"unsupported signature: {e}"
            return
        runs = []
        this_region = next((rg for rg in case.regions if rg.name == "this"), None)
        for addr in (orig_addr, recon_addr):
            m.begin_case(case.seed)
            for ba, data in case.buffers:
                m.write_mem(ba, data)
            if addr == recon_addr:
                m.sync_globals()
            if stl and this_region is not None:
                m.watch_reads(this_region.addr, this_region.addr + this_region.size)
            if addr == orig_addr:
                m.cover(orig_addr, orig_addr + row.size, conds)
            r = m.call(addr, case.args, case.stack_words, a.budget)
            m.unwatch()
            m.uncover()
            m.end_case()
            runs.append(r)
        if len(m.cover_exec) == last_cov:
            stall += 1
        else:
            stall = 0
            last_cov = len(m.cover_exec)
        v = compare.compare_runs(m, case, sig.ret, ret_flags, runs[0], runs[1], orig_has_calls=orig_has_calls,
                                 has_sret=sig.has_sret, namer=namer)
        out.cases += 1
        if v.kind == "mismatch" and stl:
            # a difference is credible only if neither side read the object at or beyond the STL member (where the
            # two layouts disagree) and the difference itself is not in that part of the object
            reads_clean = this_region is not None and max(runs[0].watch_max, runs[1].watch_max) < stl[0]
            real = reads_clean and (v.region != "this" or 0 <= v.offset < stl[0])
            if not real:
                out.stl_suspect += 1
                if first_suspect is None:
                    first_suspect = (idx, v)
                v = compare.Verdict("inconclusive", "STL layout suspect: " + v.detail)
        if v.kind == "equal":
            out.equal += 1
        elif v.kind == "fault_equal":
            out.fault_equal += 1
        elif v.kind == "inconclusive":
            out.inconclusive += 1
            if len(out.notes) < 3 and not any(v.detail[:60] in n for n in out.notes):
                out.notes.append("inconclusive: " + v.detail[:140])
        else:
            out.mismatch += 1
            if first_mismatch is None:
                first_mismatch = (idx, v, case, runs)
        if a.verbose:
            print(f"    case {idx}: {v.kind} {v.detail[:200]}  [{case.desc[:160]}]  "
                  f"orig={runs[0].status}:{runs[0].r0:#x} recon={runs[1].status}:{runs[1].r0:#x}")
    out.coverage = min(1.0, len(m.cover_exec) / n_code)
    if first_mismatch:
        idx, v, case, runs = first_mismatch
        out.result = "mismatch"
        out.reason = v.detail[:300]
        out.first_case = f"case {idx} (seed {a.seed})"
        out.first_diff = v.first
        out.mismatch_class = classify_mismatch(v)
        out.notes.append(f"inputs: {case.desc[:200]}")
        return
    need = max(4, ncases // 4)
    if out.stl_suspect and out.equal < need:
        idx, v = first_suspect
        out.result = "excluded"
        out.reason = (f"STL layout: {out.stl_suspect} cases differ only at or after the STL member ({stl[1]} at +{stl[0]:#x}), "
                      f"not comparable; first: {v.detail[:140]}")
        return
    if out.equal >= need:
        out.result = "match"
        out.reason = f"{out.equal}/{out.cases} cases identical"
        if manifest.is_armdiff_demoted(row.status, row.notes):
            out.reason += "; demoted by an earlier armdiff mismatch and now matches (candidate for promotion)"
            out.flags.append("was_demoted")
        if out.fault_equal:
            out.reason += f", {out.fault_equal} identical faults"
        if out.stl_suspect:
            out.reason += f", {out.stl_suspect} STL-suspect cases not counted"
    else:
        out.result = "excluded"
        out.reason = (f"too few comparable cases ({out.equal} identical, {out.fault_equal} identical faults, "
                      f"{out.inconclusive} inconclusive of {out.cases})")
        first_note = next((n for n in out.notes if n.startswith("inconclusive: ")), "")
        if first_note:
            out.reason += "; first inconclusive case: " + first_note[len("inconclusive: "):]


def run_all(a) -> int:
    """Every category with a ledger: build once, then one child process per category, one CSV each."""
    import subprocess
    import concurrent.futures as cf
    cats = sorted(p.parent.name for p in DR.glob("*/ledger.csv"))
    t0 = time.time()
    if not a.no_build:
        for cat in cats:
            if (DR / cat / "src").is_dir():
                build_arm.build_category(cat, a.opt, a.force_build, a.jobs)
    common = ["--cases", str(a.cases), "--extend", str(a.extend), "--seed", str(a.seed), "--budget", str(a.budget),
              "--shape", a.shape, "--fn-timeout", str(a.fn_timeout), "--callee", a.callee, f"--opt={a.opt}", "--library", a.library, "--skip-tu-build"]
    if a.no_call_only:
        common.append("--no-call-only")
    if a.no_build:
        common.append("--no-build")
    if a.csv_suffix:
        common += ["--csv-suffix", a.csv_suffix]
    workers = a.workers or max(1, min(8, (os.cpu_count() or 4) // 2))
    logdir = ROOT / "build" / "tb-arm32" / "_logs"
    logdir.mkdir(parents=True, exist_ok=True)

    def one(cat: str):
        t = time.time()
        try:
            p = subprocess.run([sys.executable, str(Path(__file__).resolve()), "-c", cat] + common, capture_output=True, text=True,
                               timeout=a.category_timeout)
            (logdir / f"{cat}.log").write_text(p.stdout + "\n" + p.stderr, encoding="utf-8")
            return cat, p.returncode, time.time() - t
        except subprocess.TimeoutExpired as e:
            (logdir / f"{cat}.log").write_text(f"timeout after {a.category_timeout}s\n" + str(e.stdout or "")[-4000:], encoding="utf-8")
            return cat, -9, time.time() - t

    print(f"[armdiff --all] {len(cats)} categories, {workers} processes", flush=True)
    done = []
    with cf.ThreadPoolExecutor(workers) as ex:
        for cat, rc, dt in ex.map(one, cats):
            done.append(cat)
            print(f"  {cat:28s} exit {rc}  {dt:5.0f}s", flush=True)
    # summary from the CSVs
    suffix = f"-{a.csv_suffix}" if a.csv_suffix else ""
    lines = [["category", "ledger_rows_selected", "ran", "match", "match_trivial", "match_nontrivial", "mismatch", "excluded"]]
    tot = [0] * 7
    for cat in cats:
        path = REPORT_DIR / f"{cat}{suffix}.csv"
        if not path.exists():
            continue
        rows = list(csv.DictReader(path.open(encoding="utf-8")))
        ran = [r for r in rows if int(r["cases"] or 0) > 0]
        mt = [r for r in rows if r["result"] == "match"]
        triv = sum(1 for r in mt if r.get("trivial") == "yes")
        vals = [len(rows), len(ran), len(mt), triv, len(mt) - triv, sum(1 for r in rows if r["result"] == "mismatch"),
                sum(1 for r in rows if r["result"] == "excluded")]
        lines.append([cat] + vals)
        tot = [x + y for x, y in zip(tot, vals)]
    lines.append(["total"] + tot)
    out = REPORT_DIR / f"all-summary{suffix}.csv"
    with out.open("w", newline="", encoding="utf-8") as fh:
        csv.writer(fh, lineterminator="\n").writerows(lines)
    w = max(len(x[0]) for x in lines)
    print(f"{'category':{w}s} {'rows':>6s} {'ran':>5s} {'match':>6s} {'trivial':>7s} {'other':>6s} {'mism':>5s} {'excl':>6s}")
    for ln in lines[1:]:
        print(f"{ln[0]:{w}s} {ln[1]:6d} {ln[2]:5d} {ln[3]:6d} {ln[4]:7d} {ln[5]:6d} {ln[6]:5d} {ln[7]:6d}")
    print(f"wrote {out}  ({time.time() - t0:.0f}s)")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--category", "-c", action="append", help="ledger category (repeatable), e.g. game-anim")
    ap.add_argument("--all", action="store_true", help="every category that has a ledger, one CSV each (runs categories in parallel processes)")
    ap.add_argument("--workers", type=int, default=0, help="parallel category processes for --all (default: half the CPUs, at most 8)")
    ap.add_argument("--skip-tu-build", action="store_true", help=argparse.SUPPRESS)
    ap.add_argument("--address", action="append", help="hex ELF address of the original function (repeatable)")
    ap.add_argument("--cases", type=int, default=48, help="cases per function (default 48)")
    ap.add_argument("--extend", type=int, default=4,
                    help="when the original function still has unexecuted code after --cases cases, keep generating cases "
                         "up to this multiple of --cases (default 4)")
    ap.add_argument("--seed", type=int, default=1, help="global seed (default 1); cases are reproducible from it")
    ap.add_argument("--budget", type=int, default=400000, help="instruction budget per call")
    ap.add_argument("--fn-timeout", type=int, default=90, help="wall-clock seconds per function before its remaining cases are dropped (default 90)")
    ap.add_argument("--category-timeout", type=int, default=2400, help="--all: seconds before a category process is killed (default 2400)")
    ap.add_argument("--no-call-only", action="store_true", help="only functions whose original body makes no call")
    ap.add_argument("--shape", default="default", help="call shapes to include: default (none,imports), any, or a comma list")
    ap.add_argument("--callee", choices=["original", "recon"], default="original",
                    help="who answers calls that leave the translation unit (default original)")
    ap.add_argument("--opt", default="-O1")
    ap.add_argument("--unit", help="use this C++ file as the reconstruction of every selected function instead of the ledger source")
    ap.add_argument("--unit-category", default="game-anim", help="include set for --unit (default game-anim)")
    ap.add_argument("--no-build", action="store_true", help="use existing ARM32 objects as they are")
    ap.add_argument("--force-build", action="store_true")
    ap.add_argument("--limit", type=int, default=0, help="stop after this many functions")
    ap.add_argument("--csv", help="write the results to this CSV (default: reports/decomp-reconstruction/armdiff/<category>.csv for category runs)")
    ap.add_argument("--no-csv", action="store_true")
    ap.add_argument("--csv-suffix", default="", help="added to the category name of the default CSV (for example with-imports gives <category>-with-imports.csv)")
    ap.add_argument("--library", default=str(manifest.ORIG_DEFAULT))
    ap.add_argument("--verbose", "-v", action="store_true", help="print every case")
    ap.add_argument("-j", "--jobs", type=int, default=None, help="compile jobs")
    a = ap.parse_args()
    if a.all:
        if a.address or a.unit:
            ap.error("--all does not combine with --address or --unit")
        return run_all(a)
    if not a.category and not a.address:
        ap.error("give --category, --address or --all")

    t0 = time.time()
    orig = manifest.Original(Path(a.library))
    sha = orig.sha256()
    if not sha.startswith(manifest.ORIG_SHA_PREFIX):
        print(f"WARNING: library SHA-256 {sha[:16]} is not the pinned {manifest.ORIG_SHA_PREFIX}", file=sys.stderr)
    rows = select_rows(orig, a)
    if not rows:
        print("no ledger rows selected")
        return 1
    machine = mc.Machine(a.library, callee=a.callee)
    rt_names = set(machine.rt.syms)

    def models_ok(n: str) -> bool:
        return n in stubs.MODELS or n in rt_names or n in ("__stack_chk_fail",)

    ci = ClassInfo([r.msym for r in rows])

    # which rows can run at all, and what must be built for them
    outcomes: dict[int, Outcome] = {}
    runnable: list[manifest.Row] = []
    for row in rows:
        out = Outcome(row, ci.demangled.get(row.msym, row.msym), shape=row.shape.kind if row.shape else "")
        outcomes[id(row)] = out
        r = exclusion_reason(row, a, models_ok)
        if r:
            out.reason = r
        elif not row.source_file:
            out.reason = "ledger row has no source file"
        elif a.limit and len(runnable) >= a.limit:
            out.reason = "beyond --limit"
        else:
            runnable.append(row)

    cats_needed = sorted({r.source_file.split("/")[0] for r in runnable if r.source_file.endswith(".cpp")})
    hdr_rows: dict[str, list[manifest.Row]] = {}
    for r in runnable:
        if not r.source_file.endswith(".cpp"):
            hdr_rows.setdefault(r.source_file, []).append(r)
    unit_override = None
    if a.unit:
        # stand-in reconstruction: this file replaces the ledger source for every selected function
        up = Path(a.unit).resolve()
        ures = build_arm.build_tu(a.unit_category, up, a.opt, True, build_arm.OUT_ROOT / "_unit", rel=up.as_posix())
        if ures.status == "compile_failed":
            print(f"--unit {up} does not compile for ARM32: {ures.error}", file=sys.stderr)
            return 2
        unit_override = (build_arm.OUT_ROOT / "_unit", up.stem)
        cats_needed, hdr_rows = [], {}
    if not a.no_build and not a.skip_tu_build:
        for cat in cats_needed:
            if (DR / cat / "src").is_dir():
                build_arm.build_category(cat, a.opt, a.force_build, a.jobs)

    # units: (directory, stem) per source file
    unit_of: dict[str, tuple[Path, str] | None] = {}
    for r in runnable:
        if unit_override is not None:
            unit_of[r.source_file] = unit_override
            continue
        if r.source_file in unit_of:
            continue
        cat = r.source_file.split("/")[0]
        if r.source_file.endswith(".cpp"):
            unit_of[r.source_file] = (build_arm.OUT_ROOT / cat, Path(r.source_file).stem)
    for hdr, hrows in hdr_rows.items():
        cat = hdr.split("/")[0]
        if build_arm.header_include_name(hdr) is None:
            unit_of[hdr] = None
            continue
        dem = [ci.demangled.get(r.msym, r.msym) for r in hrows]
        if a.no_build:
            unit_of[hdr] = (build_arm.OUT_ROOT / "_hdr", build_arm.header_unit_stem(hdr, dem, a.opt))
            continue
        res = build_arm.build_header_tu(cat if cat in build_arm.ENGINE + build_arm.GAME + build_arm.VENDOR else "glitch-core-io",
                                        hdr, dem, a.opt, a.force_build)
        unit_of[hdr] = (build_arm.OUT_ROOT / "_hdr", Path(res.object).stem)
        print(f"[build_arm] header unit {hdr}: {res.status}" + (f" ({res.error[:100]})" if res.status == "compile_failed" else ""))

    sym2tu: dict[str, dict[str, str]] = {}

    def tu_index(cat: str) -> dict[str, str]:
        if cat not in sym2tu:
            idx: dict[str, str] = {}
            d = build_arm.OUT_ROOT / cat
            for mp in sorted(d.glob("*.meta.json")):
                try:
                    md = json.loads(mp.read_text(encoding="utf-8"))
                except (OSError, ValueError):
                    continue
                if md.get("status") != "ok":
                    continue
                stem = mp.name[:-len(".meta.json")]
                for s, g in md.get("sigs", {}).items():
                    if g.get("linkage") in ("external", "weak_odr", "linkonce_odr", "weak"):
                        idx.setdefault(s, stem)
                for al in md.get("aliases", {}):
                    idx.setdefault(al, stem)
            sym2tu[cat] = idx
        return sym2tu[cat]

    by_src: dict[str, list[manifest.Row]] = {}
    for r in runnable:
        by_src.setdefault(r.source_file, []).append(r)

    tus: dict[tuple[Path, str], TuData] = {}

    def get_tu(unit) -> TuData:
        if unit not in tus:
            tus[unit] = TuData(*unit)
        return tus[unit]

    for src, trows in sorted(by_src.items()):
        cat = src.split("/")[0]
        unit = unit_of.get(src)
        for row in trows:
            out = outcomes[id(row)]
            if unit is None:
                out.reason = f"defined in a header ({src}) that is not under an include directory"
                continue
            tu = get_tu(unit)
            if not tu.ok:
                if tu.meta:
                    out.reason = "ARM32 build failed: " + tu.error
                else:
                    out.reason = "no ARM32 build of this source" + (" (header unit)" if not src.endswith(".cpp") else "")
                continue
            out.src_sha1 = tu.sha1
            sym = row.msym
            base_sym = re.sub(r"\.(?:clone|part|isra|constprop|cold)\.\d+$", "", sym)
            if base_sym != sym:
                out.notes.append(f"original symbol is a compiler clone ({sym[len(base_sym):]}); compared with {base_sym}")
                sym = base_sym
            sig = tu.sig_for(sym)
            use_tu = tu
            if sig is None and src.endswith(".cpp"):
                other = tu_index(cat).get(sym)
                if other and other != unit[1]:
                    use_tu = get_tu((build_arm.OUT_ROOT / cat, other))
                    sig = use_tu.sig_for(sym)
                    out.notes.append(f"defined in {other}.cpp, not in the ledger source")
            recon_sym = sym
            if sig is None:
                # the reconstruction may declare a method const where the original symbol is not (or the reverse)
                alt = const_toggled(sym)
                if alt:
                    sig = use_tu.sig_for(alt)
                    if sig is not None:
                        recon_sym = alt
                        out.notes.append("signature differs from the original symbol: the reconstruction declares the method "
                                         + ("const" if alt.startswith("_ZNK") else "non-const"))
                        out.flags.append("const_differs")
            if sig is None:
                out.reason = (f"no definition of {sym} emitted by the ARM32 build "
                              "(not instantiated, unused inline, or a different signature than the original symbol)")
                why = header_drop_reason(unit, out.demangled) if not src.endswith(".cpp") else ""
                if why:
                    out.reason += "; the compiler rejected the instantiation of the original's signature: " + why
                continue
            if "std::" in out.demangled and ("basic_string" in out.demangled or "std::map" in out.demangled or "std::list" in out.demangled):
                out.reason = "STL type in the signature (STLport in the original, libc++ in the ARM32 build): layouts differ"
                continue
            t_fn = time.time()
            try:
                machine.load_recon(use_tu.so)
                out.recon_symbol = recon_sym
                run_function(machine, row, use_tu, sig, recon_sym, ci, a, out)
            except Exception as e:  # keep the run going; report it
                out.result = "excluded"
                out.reason = f"harness error: {type(e).__name__}: {e}"
                if a.verbose:
                    traceback.print_exc()
                try:
                    machine.end_case()
                except Exception:
                    pass
            tag = {"match": "MATCH   ", "mismatch": "MISMATCH", "excluded": "excluded"}[out.result]
            slow = f" [{time.time() - t_fn:.1f}s]" if time.time() - t_fn > 3 else ""
            print(f"{tag} 0x{row.addr:x} {out.demangled[:70]:70s} {out.reason[:110]}{slow}", flush=True)
            out.printed = True
        machine.unload_recon()

    # ----- summary and CSV ------------------------------------------------------------------------------
    results = [outcomes[id(r)] for r in rows]
    if len(results) <= 60:
        for o in results:
            if not o.printed:
                print(f"excluded 0x{o.row.addr:x} {o.demangled[:70]:70s} {o.reason[:400]}")
    counts = {"match": 0, "mismatch": 0, "excluded": 0}
    for o in results:
        counts[o.result] += 1
    print(f"\n{len(results)} functions: {counts['match']} match, {counts['mismatch']} mismatch, {counts['excluded']} excluded "
          f"({time.time() - t0:.1f}s)")
    if not a.no_csv:
        targets: list[tuple[Path, list[Outcome]]] = []
        if a.csv:
            targets.append((Path(a.csv), results))
        elif a.category and not a.address:
            for cat in a.category:
                targets.append((REPORT_DIR / (f"{cat}-{a.csv_suffix}.csv" if a.csv_suffix else f"{cat}.csv"), [o for o in results if o.row.category == cat]))
        for path, subset in targets:
            path.parent.mkdir(parents=True, exist_ok=True)
            with path.open("w", newline="", encoding="utf-8") as fh:
                w = csv.writer(fh, lineterminator="\n")
                w.writerow(CSV_COLUMNS)
                for o in subset:
                    w.writerow(o.csv_row())
            print("wrote", path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
