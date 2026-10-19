#!/usr/bin/env python3
"""Build the reconstructed sources for armv7a (ARM mode) with the Android NDK clang.

Every translation unit of a category becomes
    build/tb-arm32/<category>/<stem>.o            object (ARM, soft-float, -fPIC)
    build/tb-arm32/<category>/<stem>.so           that one object linked as a shared object
    build/tb-arm32/<category>/<stem>.meta.json    status, source hash, IR signatures, record layouts

One .so per translation unit keeps the function under test exactly the code of its ledger source
file; calls that leave the unit are bound to the original library at load time (see machine.py).

    py -3 tools/trackb/armdiff/build_arm.py --category game-anim
    py -3 tools/trackb/armdiff/build_arm.py --category glitch-core-io --force -j 8
"""
from __future__ import annotations

import argparse
import concurrent.futures as cf
import hashlib
import json
import os
import re
import subprocess
import sys
import time
from dataclasses import dataclass, field
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import abi  # noqa: E402

ROOT = Path(__file__).resolve().parents[3]
DR = ROOT / "port" / "decomp-reconstruction"
OUT_ROOT = Path(os.environ["DH2_ARMDIFF_OUT"]) if os.environ.get("DH2_ARMDIFF_OUT") else ROOT / "build" / "tb-arm32"

DEFAULT_NDK = Path((os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT") or os.path.expanduser("~/AppData/Local/Android/Sdk")) + r"/ndk/29.0.14206865")
TARGET = "armv7a-linux-androideabi21"
META_VERSION = 6          # bump when the signature or layout extraction changes: cached metadata is then rebuilt

ENGINE = ["core-platform", "pydata-accessors", "net-transport", "net-session-online", "vox-audio",
          "tinyxml-and-c-libs", "glitch-core-io", "glitch-video", "glitch-scene-collada-gui"]
VENDOR = ["vendor-lua", "vendor-box2d", "vendor-gameswf"]
GAME = ["game-anim", "game-app", "game-character", "game-items-save", "game-ui", "game-world"]


def find_ndk() -> Path:
    cands = []
    for var in ("DH2_ANDROID_NDK", "ANDROID_NDK_HOME", "ANDROID_NDK_ROOT", "ANDROID_NDK"):
        if os.environ.get(var):
            cands.append(Path(os.environ[var]))
    for var in ("ANDROID_SDK_ROOT", "ANDROID_HOME"):
        if os.environ.get(var):
            cands += sorted((Path(os.environ[var]) / "ndk").glob("*"), reverse=True)
    cands.append(DEFAULT_NDK)
    for c in cands:
        if (c / "toolchains" / "llvm" / "prebuilt").is_dir():
            return c
    raise SystemExit("Android NDK not found. Set DH2_ANDROID_NDK to the NDK directory.")


def llvm_bin() -> Path:
    ndk = find_ndk()
    pre = next((ndk / "toolchains" / "llvm" / "prebuilt").iterdir())
    return pre / "bin"


def exe(name: str) -> str:
    b = llvm_bin()
    p = b / (name + ".exe")
    return str(p if p.exists() else b / name)


def include_flags(cat: str) -> list[str]:
    """The include set tools/trackb/check_tu.sh uses: own include dir first, then everything."""
    out: list[str] = []
    for d in (DR / cat / "include", DR / "game" / "include", DR / "shared" / "include"):
        if d.is_dir():
            out.append(f"-I{d}")
    for c in ENGINE + VENDOR:
        d = DR / c / "include"
        if d.is_dir():
            out.append(f"-I{d}")
    out += ["-DNOMINMAX", "-DTIXML_USE_STL", "-DTU_CONFIG_LINK_TO_JPEGLIB=0", "-DTU_CONFIG_LINK_TO_LIBPNG=0",
            "-DTU_CONFIG_LINK_TO_FREETYPE=0", "-DTU_CONFIG_LINK_TO_THREAD=0"]
    for v in ("vendor-lua/upstream/lua-5.1.4/src", "vendor-box2d/upstream/box2d-2.0.1/Include",
              "vendor-box2d/upstream/box2d-2.0.1/Source", "vendor-gameswf/upstream/gameswf-r1714", "tinyxml-and-c-libs/upstream/tinyxml-2.5.3"):
        out += ["-isystem", str(DR / v)]
    return out


def base_flags(opt: str, exceptions: bool) -> list[str]:
    f = [f"--target={TARGET}", "-std=c++17", "-marm", opt, "-fPIC", "-mfloat-abi=soft", "-ffunction-sections",
         "-fdata-sections", "-Wno-everything", "-DDH2_ARMDIFF=1"]
    if not exceptions:
        f.append("-fno-exceptions")
    if os.environ.get("DH2_ARMDIFF_PACK"):
        f.append("-fpack-struct=" + os.environ["DH2_ARMDIFF_PACK"])   # experiment: the original aligns 8-byte members to 4
    return f


@dataclass
class TuResult:
    cat: str
    src: str                 # path relative to port/decomp-reconstruction
    status: str              # 'ok' | 'compile_failed' | 'cached'
    exceptions: bool = False
    error: str = ""
    sha1: str = ""
    seconds: float = 0.0
    object: str = ""
    so: str = ""
    meta: str = ""
    link_error: str = ""

    def to_json(self) -> dict:
        return dict(self.__dict__)


def sha1_of(p: Path) -> str:
    return hashlib.sha1(p.read_bytes()).hexdigest()


def _dep_files(depfile: Path) -> list[str]:
    """Prerequisites listed in a clang make-style depfile (backslash-escaped spaces, line continuations)."""
    txt = depfile.read_text(encoding="utf-8", errors="replace")
    i = txt.find(".o:")
    txt = txt[i + 3:] if i >= 0 else txt.partition(": ")[2]
    txt = re.sub(r"\\\r?\n", " ", txt)
    toks, cur, k = [], [], 0
    while k < len(txt):
        c = txt[k]
        if c == "\\" and k + 1 < len(txt) and txt[k + 1] == " ":
            cur.append(" ")
            k += 2
            continue
        if c.isspace():
            if cur:
                toks.append("".join(cur))
                cur = []
        else:
            cur.append(c)
        k += 1
    if cur:
        toks.append("".join(cur))
    return toks


def _deps_newer(depfile: Path, ts: float) -> bool:
    """True if any dependency listed in the depfile is newer than ts (or the depfile is unreadable)."""
    try:
        files = _dep_files(depfile)
    except OSError:
        return True
    for f in files:
        try:
            if os.path.getmtime(f) > ts:
                return True
        except OSError:
            return True
    return False


def parse_layouts(text: str) -> dict[str, dict]:
    """Parse clang -fdump-record-layouts output into {record name: {size, align, fields, ...}}."""
    recs: dict[str, dict] = {}
    cur = None
    pat = re.compile(r"^\s*(\d+)(?::(\d+)-(\d+))?\s*\|( *)(.*)$")
    in_ast = False
    for line in text.splitlines():
        if line.startswith("*** Dumping AST Record Layout"):
            in_ast = True
            cur = None
            continue
        if line.startswith("*** Dumping"):
            in_ast = False
            cur = None
            continue
        if not in_ast:
            continue
        s = line.strip()
        if s.startswith("| [sizeof="):
            m = re.search(r"sizeof=(\d+), dsize=(\d+), align=(\d+)", s)
            if cur is not None and m:
                cur["size"], cur["dsize"], cur["align"] = int(m.group(1)), int(m.group(2)), int(m.group(3))
            continue
        m = pat.match(line)
        if not m:
            continue
        off = int(m.group(1))
        bits = (int(m.group(2)), int(m.group(3))) if m.group(2) else None
        indent = len(m.group(4))
        text_ = m.group(5)
        depth = max(0, (indent - 1) // 2)
        if cur is None:
            mm = re.match(r"(class|struct|union) (.*?)(?: \(empty\))?$", text_)
            if not mm:
                in_ast = False
                continue
            name = mm.group(2)
            skip = name.startswith("std::") or name.startswith("__") or "(anonymous" in name or "(unnamed" in name
            cur = {"name": name, "kind": mm.group(1), "fields": [], "std_members": [], "vptr": False, "_skip": skip}
            if not skip and name not in recs:
                recs[name] = cur
            continue
        if cur.get("_skip"):
            continue
        # by-value members of std types print as `std::string name` or `class std::vector<int> v`;
        # pointers and references to them end the type text with * or &
        ms = re.match(r"(?:(?:class|struct|union) )?(std::.*) (\S+)$", text_)
        if ms and not ms.group(1).rstrip().endswith(("*", "&")) and "(anonymous" not in ms.group(1):
            cur["std_members"].append([off, text_, depth])
        if depth == 1:
            if text_.startswith("(") and "vtable pointer" in text_:
                cur["vptr"] = True
                cur["fields"].append([off, "vptr", text_.strip("()")])
            elif re.match(r"(class|struct|union) .*\((primary |virtual )?base\)", text_):
                cur["fields"].append([off, "base", re.sub(r"\s*\((primary |virtual )?base\)", "", text_)])
            else:
                ty, _, nm = re.sub(r" \(empty\)$", "", text_).rpartition(" ")
                cur["fields"].append([off, ty or text_, nm if ty else ""] + ([bits[0], bits[1]] if bits else []))
    for r in recs.values():
        r.pop("_skip", None)
    return recs


_ALIAS_RE = re.compile(r'^@("[^"]+"|[\w.$]+) = .*?\balias\b.*, ptr @("[^"]+"|[\w.$]+)\s*$')


def parse_aliases(ll_text: str) -> dict[str, str]:
    out = {}
    for line in ll_text.splitlines():
        if line.startswith("@") and " alias " in line:
            m = _ALIAS_RE.match(line)
            if m:
                out[m.group(1).strip('"').lstrip("\x01")] = m.group(2).strip('"').lstrip("\x01")
    return out


def build_tu(cat: str, src: Path, opt: str, force: bool, outdir: Path | None = None, extra: list[str] | None = None,
             rel: str | None = None) -> TuResult:
    extra = extra or []
    outdir = outdir or (OUT_ROOT / cat)
    outdir.mkdir(parents=True, exist_ok=True)
    stem = src.stem
    obj, so, meta = outdir / f"{stem}.o", outdir / f"{stem}.so", outdir / f"{stem}.meta.json"
    dep = outdir / f"{stem}.d"
    rel = rel or src.relative_to(DR).as_posix()
    res = TuResult(cat, rel, "ok", object=str(obj), so=str(so), meta=str(meta))
    t0 = time.time()
    res.sha1 = sha1_of(src)
    if not force and meta.exists() and so.exists() and obj.exists():
        try:
            old = json.loads(meta.read_text(encoding="utf-8"))
        except (OSError, ValueError):
            old = {}
        if (old.get("sha1") == res.sha1 and old.get("opt") == opt and old.get("meta_version") == META_VERSION
                and not _deps_newer(dep, obj.stat().st_mtime)):
            res.status = "cached"
            res.exceptions = bool(old.get("exceptions"))
            return res
    inc = include_flags(cat)
    cxx = exe("clang++")
    exceptions = False
    err = ""
    for attempt in (0, 1):
        exceptions = bool(attempt)
        cmd = [cxx] + base_flags(opt, exceptions) + extra + inc + ["-MMD", "-MF", str(dep), "-c", str(src), "-o", str(obj)]
        r = subprocess.run(cmd, capture_output=True, text=True)
        if r.returncode == 0:
            err = ""
            break
        err = r.stderr
        if attempt == 0 and re.search(r"cannot use '(throw|try)' with exceptions disabled|exceptions disabled", err):
            continue
        break
    if err:
        res.status = "compile_failed"
        m = re.search(r"error: .*", err)
        res.error = (m.group(0) if m else err.strip().splitlines()[-1] if err.strip() else "?")[:400]
        meta.write_text(json.dumps({"sha1": res.sha1, "opt": opt, "status": "compile_failed", "error": res.error,
                                    "error_full": err[:400000]}), encoding="utf-8")
        if so.exists():
            so.unlink()
        res.seconds = time.time() - t0
        return res
    res.exceptions = exceptions
    # IR (signatures) and record layouts from the same flags
    ll = outdir / f"{stem}.ll"
    cmd = [cxx] + base_flags(opt, exceptions) + extra + ["-fno-discard-value-names", "-Xclang", "-fdump-record-layouts"] + inc + \
          ["-S", "-emit-llvm", str(src), "-o", str(ll)]
    r = subprocess.run(cmd, capture_output=True, text=True)
    sigs: dict[str, dict] = {}
    aliases: dict[str, str] = {}
    layouts: dict[str, dict] = {}
    if r.returncode == 0:
        ll_text = ll.read_text(encoding="utf-8", errors="replace")
        sigs = {k: v.to_json() for k, v in abi.parse_ir_signatures(ll_text).items()}
        aliases = parse_aliases(ll_text)
        layouts = parse_layouts(r.stdout)
        ll.unlink()
    # link this one object as a shared object (undefined symbols are allowed; the loader binds them)
    lk = subprocess.run([exe("ld.lld"), "-shared", "-m", "armelf_linux_eabi", "-z", "muldefs", "--hash-style=sysv",
                         "--build-id=none", "-z", "norelro", "-o", str(so), str(obj)], capture_output=True, text=True)
    if lk.returncode != 0:
        res.link_error = lk.stderr.strip()[:300]
        res.status = "compile_failed"
        res.error = "link: " + res.link_error
    meta.write_text(json.dumps({
        "sha1": res.sha1, "opt": opt, "meta_version": META_VERSION, "status": res.status, "exceptions": exceptions, "src": rel,
        "sigs": sigs, "aliases": aliases, "layouts": layouts, "built": time.time(),
    }), encoding="utf-8")
    res.seconds = time.time() - t0
    return res


# ----- header translation units ------------------------------------------------------------------------
# A function whose ledger source is a header (an inline method, or a member of an explicitly instantiated
# template) has no translation unit of its own. armdiff builds a synthetic one: it includes the header,
# compiles with -femit-all-decls (every inline function is emitted) and instantiates the class templates and
# function templates named by the selected rows.

def _scan_demangled(d: str):
    """Split a demangled function name into (return type, qualified name, params, trailing qualifiers) or None."""
    if d.startswith(("non-virtual thunk", "virtual thunk", "guard variable", "vtable", "typeinfo", "VTT")):
        return None
    depth = 0
    i = 0
    n = len(d)
    while i < n:
        c = d[i]
        if d.startswith("operator", i) and (i == 0 or not (d[i - 1].isalnum() or d[i - 1] == "_")):
            j = i + 8
            if d.startswith("()", j):
                i = j + 2
                continue
            k = j
            while k < n and d[k] in "<>=!+-*/%&|^~[],":
                k += 1
            i = k if k > j else j
            continue
        if c == "<":
            depth += 1
        elif c == ">":
            depth -= 1
        elif c == "(" and depth == 0:
            break
        i += 1
    if i >= n:
        return None
    pd, j = 0, i
    while j < n:
        if d[j] == "(":
            pd += 1
        elif d[j] == ")":
            pd -= 1
            if pd == 0:
                break
        j += 1
    head, params, quals = d[:i], d[i + 1:j], d[j + 1:].strip()
    depth = 0
    cut = -1
    for k, c in enumerate(head):
        if c in "<(":
            depth += 1
        elif c in ">)":
            depth -= 1
        elif c == " " and depth == 0 and not head[:k].endswith("operator"):
            cut = k
    ret, qname = (head[:cut], head[cut + 1:]) if cut >= 0 else ("", head)
    return ret, qname, params, quals


def _last_scope(qname: str):
    depth = 0
    last = -1
    i = 0
    while i < len(qname) - 1:
        c = qname[i]
        if c in "<(":
            depth += 1
        elif c in ">)":
            depth -= 1
        elif c == ":" and qname[i + 1] == ":" and depth == 0:
            last = i
            i += 1
        i += 1
    return (qname[:last], qname[last + 2:]) if last >= 0 else ("", qname)


def instantiation_directive(demangled: str) -> str | None:
    """Explicit instantiation that makes the compiler emit this template member, or None for plain functions."""
    sc = _scan_demangled(demangled)
    if not sc:
        return None
    ret, qname, params, quals = sc
    owner, member = _last_scope(qname)
    if "<" in member:
        if not ret:
            return None
        return f"template {ret} {qname}({params}){(' ' + quals) if quals else ''};"
    if "<" in owner:
        return f"template class {owner};"
    return None


_FORCE_COUNTER = [0]


def _split_params(params: str) -> list[str]:
    out, depth, cur = [], 0, []
    for ch in params:
        if ch in "<([":
            depth += 1
        elif ch in ">)]":
            depth -= 1
        if ch == "," and depth == 0:
            out.append("".join(cur).strip())
            cur = []
        else:
            cur.append(ch)
    tail = "".join(cur).strip()
    if tail:
        out.append(tail)
    return out


def force_statement(demangled: str) -> str | None:
    """A function that calls the named non-template member or free function, so that a compiler which only emits
    inline functions on use emits it. The call is never executed; arguments are std::declval values."""
    sc = _scan_demangled(demangled)
    if not sc:
        return None
    ret, qname, params, quals = sc
    owner, member = _last_scope(qname)
    if "<" in member or member.startswith("operator") or "operator" in qname.split("::")[-1]:
        return None
    ps = [] if params.strip() in ("", "void") else _split_params(params)
    if any(p == "..." for p in ps):
        return None
    args = ", ".join(f"armdiff_val<{p}>()" for p in ps)
    _FORCE_COUNTER[0] += 1
    n = _FORCE_COUNTER[0]
    if owner:
        cls_last = owner.rsplit("::", 1)[-1]
        if member == cls_last:
            body = f"::new ((void*)armdiff_ptr()) {owner}({args})"
        elif member == "~" + cls_last:
            body = f"(armdiff_obj<{owner}>()->{owner}::{member}())"
        else:
            body = f"(armdiff_obj<{owner}>()->{owner}::{member}({args}))"
    else:
        body = f"{qname}({args})"
    return f'extern "C" __attribute__((used)) void armdiff_force_{n}() {{ {body}; }}'


HEADER_PRELUDE = """#include <type_traits>
#include <utility>
// armdiff header unit helpers: values the optimiser cannot see through, so no wrapper is folded away
static void* volatile armdiff_null_ptr = nullptr;
static inline void* armdiff_ptr() { return armdiff_null_ptr; }
template <class C> __attribute__((noinline)) C* armdiff_obj() { return static_cast<C*>(armdiff_null_ptr); }
template <class T> __attribute__((noinline)) T armdiff_val() {
    using U = std::remove_reference_t<T>;
    return static_cast<T>(*static_cast<U*>(armdiff_null_ptr));
}
"""


def header_include_name(source_file: str) -> str | None:
    i = source_file.find("/include/")
    return source_file[i + 9:] if i >= 0 else None


def header_unit_stem(header_src: str, demangled: list[str], opt: str = "-O1") -> str:
    key = hashlib.sha1(("\n".join(sorted(set(demangled))) + header_src + opt).encode()).hexdigest()[:8]
    return f"hdr_{Path(header_src).stem}_{key}"


def build_header_tu(cat: str, header_src: str, demangled: list[str], opt: str = "-O1", force: bool = False) -> TuResult:
    """Synthetic translation unit for the functions of a header: explicit instantiations for template members and
    a calling wrapper for each plain inline function, compiled without inlining so every one of them is emitted."""
    inc_name = header_include_name(header_src)
    names = sorted(set(demangled))
    outdir = OUT_ROOT / "_hdr"
    outdir.mkdir(parents=True, exist_ok=True)
    stem = header_unit_stem(header_src, demangled, opt)
    srcp = outdir / f"{stem}.cpp"
    _FORCE_COUNTER[0] = 0
    body: list[str] = []
    seen: set[str] = set()
    for d in names:
        for line in (instantiation_directive(d), force_statement(d)):
            if line and line not in seen:
                seen.add(line)
                body.append(line)
    prelude = HEADER_PRELUDE.strip().splitlines()
    lines = [f'#include "{inc_name}"'] + prelude + body
    keep_first = 1 + len(prelude)
    res = None
    dropped: dict[str, str] = {}
    for attempt in range(8):
        srcp.write_text("\n".join(lines) + "\n", encoding="utf-8")
        res = build_tu(cat, srcp, opt, force or attempt > 0, outdir, ["-femit-all-decls", "-fno-inline", "-ferror-limit=0"], rel=header_src)
        if res.status != "compile_failed":
            break
        # drop the lines the compiler rejected and retry; remember why
        err = ""
        try:
            err = json.loads((outdir / f"{stem}.meta.json").read_text(encoding="utf-8")).get("error_full", "")
        except (OSError, ValueError):
            pass
        bad: dict[int, list[str]] = {}
        for m_ in re.finditer(rf"{re.escape(stem)}\.cpp:(\d+):\d+: (error|note): ([^\n]*)", err):
            msgs = bad.setdefault(int(m_.group(1)), [])
            if m_.group(2) == "error" and len(msgs) < 4:
                msgs.append(m_.group(3))
        keep = []
        for i, ln in enumerate(lines, 1):
            if i > keep_first and i in bad:
                dropped[ln] = " | ".join(bad[i])
            else:
                keep.append(ln)
        if len(keep) == len(lines):
            break
        lines = keep
    (outdir / f"{stem}.drops.json").write_text(json.dumps(dropped), encoding="utf-8")
    return res


def category_sources(cat: str) -> list[Path]:
    d = DR / cat / "src"
    return sorted(p for p in d.rglob("*.cpp")) if d.is_dir() else []


def build_category(cat: str, opt: str = "-O1", force: bool = False, jobs: int | None = None,
                   only: list[str] | None = None, log=print) -> list[TuResult]:
    srcs = category_sources(cat)
    if cat.startswith("game-"):
        pass
    if only:
        srcs = [s for s in srcs if any(o in s.name for o in only)]
    jobs = jobs or max(1, (os.cpu_count() or 4))
    results: list[TuResult] = []
    t0 = time.time()
    with cf.ThreadPoolExecutor(jobs) as ex:
        futs = {ex.submit(build_tu, cat, s, opt, force): s for s in srcs}
        for f in cf.as_completed(futs):
            results.append(f.result())
    results.sort(key=lambda r: r.src)
    ok = sum(1 for r in results if r.status in ("ok", "cached"))
    log(f"[build_arm] {cat}: {ok}/{len(results)} translation units built in {time.time() - t0:.1f}s "
        f"({sum(1 for r in results if r.status == 'cached')} cached)")
    idx = OUT_ROOT / cat / "build-index.json"
    idx.parent.mkdir(parents=True, exist_ok=True)
    idx.write_text(json.dumps([r.to_json() for r in results], indent=1), encoding="utf-8")
    return results


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--category", "-c", action="append", required=True, help="category (repeatable), e.g. game-anim")
    ap.add_argument("--opt", default="-O1", help="optimization level (default -O1)")
    ap.add_argument("--force", action="store_true", help="rebuild even if cached")
    ap.add_argument("-j", "--jobs", type=int, default=None)
    ap.add_argument("--only", action="append", help="only sources whose file name contains this text")
    a = ap.parse_args()
    bad = 0
    for cat in a.category:
        res = build_category(cat, a.opt, a.force, a.jobs, a.only)
        for r in res:
            if r.status == "compile_failed":
                bad += 1
                print(f"  FAIL {r.src}: {r.error}")
    return 0 if bad == 0 else 2


if __name__ == "__main__":
    raise SystemExit(main())
