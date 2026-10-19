#!/usr/bin/env python3
"""Inventory the Ghidra pseudocode export against reconstructed source.

Reads recovered/native/decompiled/*/function-index.jsonl, demangles names,
assigns each function a library/category bucket, and marks functions whose
original address or mangled symbol is already claimed by maintained code
under port/ (original-functions manifests, address fields, or symbol names in
source). Writes reports/decomp-reconstruction/inventory.{json,csv}.

Read-only with respect to the evidence; run from any directory.
"""
from __future__ import annotations

import csv
import json
import re
import subprocess
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMP = ROOT / "recovered" / "native" / "decompiled"
OUT = ROOT / "reports" / "decomp-reconstruction"
SRC_EXT = {".c", ".cc", ".cpp", ".cxx", ".h", ".hh", ".hpp", ".inl"}
# Our own output tree is excluded so reruns measure prior work only.
EXCLUDE_PARTS = {"decomp-reconstruction"}

LIB_RULES = [
    ("thunk", lambda n, d: n.startswith("<EXTERNAL>") or n.startswith("___") and n.endswith("_veneer")),
    ("runtime-stl", lambda n, d: d.startswith(("std::", "stlp", "__gnu", "__cxa", "__aeabi", "__cxx"))
        or n.startswith(("__", "_GLOBAL__", "_ZTv", "_ZTh", "_ZNSt", "_ZSt", "_ZNKSt", "_ZNSs", "_ZNKSs", "_ZNSb", "_ZNKSb", "_ZNSi", "_ZNSo", "_ZNSa", "_ZSt"))),
    ("engine-glitch", lambda n, d: d.startswith(("glitch::", "boost::"))),
    ("lib-gameswf", lambda n, d: d.startswith(("gameswf::", "RenderFX", "bitmap_info_ogl", "render_handler", "tu_", "image::", "membuf", "bitmap_info"))),
    ("lib-vox-audio", lambda n, d: d.startswith(("vox::", "Vox", "ov_", "vorbis", "oggpack", "ogg_", "mpc_", "_vorbis", "_ov"))),
    ("lib-box2d", lambda n, d: re.match(r"b2[A-Z]", d) is not None),
    ("lib-lua", lambda n, d: re.match(r"(lua[A-Z_]|luaL_|luaB_|luaK_|luaY_|luaX_|luaO_|luaS_|luaH_|luaF_|luaG_|luaV_|luaD_|luaC_|luaE_|luaT_|luaU_|luaZ_|luaM_|luaP_|luaI_|lua_)", d) is not None
        or d.startswith(("sfc::script::lua", "LuaAllocator"))),
    ("lib-image-zip-font", lambda n, d: re.match(r"(png_|jpeg_|jinit_|jpeg|inflate|deflate|adler32|crc32|zcalloc|zcfree|zError|FT_|ft_|t1_|T1_|cff_|tt_|TT_|ps_|af_|pfr_|bdf_|pcf_|Load_Glyph|parse_|tt|_tr_|gz)", d) is not None),
    ("lib-online-glx", lambda n, d: d.startswith(("GLX", "COnline", "CGLLive", "gaia", "Gaia", "glwebtools", "GLLive", "Json::", "XPlayer", "CXPlayer", "tMatching", "Matching", "Online", "CMatching", "LCX", "ALicense", "HttpClient", "curl", "Curl", "Crypto", "XP_", "openssl", "SSL"))),
]


def demangle(names: list[str]) -> list[str]:
    proc = subprocess.run(["c++filt"], input="\n".join(names), capture_output=True, text=True, check=True)
    out = proc.stdout.split("\n")
    return out[: len(names)]


def strip_prefix(d: str) -> str:
    """Drop thunk/vtable wording and a template function's leading return type."""
    d = re.sub(r"^(vtable for|typeinfo for|typeinfo name for|non-virtual thunk to|virtual thunk to|construction vtable for|guard variable for) ", "", d)
    m = re.match(r"^(?:const )?[A-Za-z_][\w:]*(?:<[^()]*?>)?[\s\*&]+(?=[A-Za-z_][\w]*(?:<[^()]*>)?::)", d)
    if m and "(" in d and m.end() < d.index("("):
        d = d[m.end():]
    return d


def top_qualifier(d: str) -> str:
    """First class/namespace component of a demangled name."""
    d = strip_prefix(d)
    d = d.split("(", 1)[0]
    depth, buf = 0, ""
    parts = []
    i = 0
    while i < len(d):
        c = d[i]
        if c == "<":
            depth += 1
        elif c == ">":
            depth -= 1
        if depth == 0 and d.startswith("::", i):
            parts.append(buf)
            buf = ""
            i += 2
            continue
        buf += c
        i += 1
    parts.append(buf)
    head = parts[0] if len(parts) > 1 else "<global>"
    return re.sub(r"<.*", "", head).strip() or "<global>"


def claimed_sets():
    addrs: set[int] = set()
    syms: set[str] = set()
    sources = Counter()
    sym_re = re.compile(r"_Z[A-Za-z0-9_]{3,}")
    addr_re = re.compile(r'"(?:elf_address|original_address|address|function_start|start)"\s*:\s*"?(0x[0-9a-fA-F]+)')
    for path in (ROOT / "port").rglob("*"):
        if not path.is_file() or EXCLUDE_PARTS & set(path.parts):
            continue
        if path.suffix == ".json" and path.stat().st_size < 8_000_000:
            text = path.read_text(encoding="utf-8", errors="ignore")
            found = {int(a, 16) for a in addr_re.findall(text)}
            if path.name.startswith("original-functions"):
                addrs |= found
                syms |= set(sym_re.findall(text))
                sources["manifest"] += 1
        elif path.suffix in SRC_EXT:
            text = path.read_text(encoding="utf-8", errors="ignore")
            syms |= set(sym_re.findall(text))
            sources["source"] += 1
    return addrs, syms, sources


def smooth_c_linkage(rows: list[dict]) -> None:
    """C-linkage/unnamed functions inherit the library of their address neighbours.

    Static libraries are linked contiguously, so an unprefixed C function such as
    ``leaveblock`` sitting between Lua functions is Lua. C++ game functions
    (demangled with a parameter list) are never reassigned.
    """
    lib = [r for r in rows if r["library"] == "libDungeonHunter2.so"]
    lib.sort(key=lambda r: int(r["elf_address"], 16))
    def is_c(r):
        return r["bucket"] == "game" and r["owner"] == "<global>" and "(" not in r["demangled"] and not r["name"].startswith("Java_")
    for i, r in enumerate(lib):
        if not is_c(r):
            continue
        votes = Counter()
        for j in range(max(0, i - 25), min(len(lib), i + 26)):
            n = lib[j]
            if j == i or is_c(n):
                continue
            votes["game" if n["bucket"] == "game" else n["bucket"]] += 1
        if votes:
            best, count = votes.most_common(1)[0]
            if best != "game" and count >= 3:
                r["bucket"] = best
                r["owner"] = best
                r["bucket_inferred"] = True


def main() -> int:
    OUT.mkdir(parents=True, exist_ok=True)
    addrs, syms, src_counts = claimed_sets()
    rows = []
    for lib_dir in sorted(p for p in DECOMP.iterdir() if p.is_dir()):
        for line in (lib_dir / "function-index.jsonl").open(encoding="utf-8"):
            r = json.loads(line)
            r["library"] = lib_dir.name
            rows.append(r)
    names = [re.sub(r"\.clone\.\d+$", "", r["name"].replace("<EXTERNAL>::", "")) for r in rows]
    dem = demangle(names)
    lib_counts = defaultdict(Counter)
    for r, n, d in zip(rows, names, dem):
        r["demangled"] = d
        bucket = "game"
        for label, rule in LIB_RULES:
            if rule(r["name"], strip_prefix(d)):
                bucket = label
                break
        if r["library"] == "libStormGLOFT.so":
            bucket = "wrapper-stormgloft"  # compatibility-wrapper shim (Mesa GLSL, hooks), not game code
        elif r["library"] != "libDungeonHunter2.so" and bucket == "game":
            bucket = "lib-" + r["library"].removesuffix(".so").lower()
        r["bucket"] = bucket
        r["owner"] = top_qualifier(d) if bucket == "game" else bucket
        elf = int(r["elf_address"], 16)
        r["claimed"] = bool(r["library"] == "libDungeonHunter2.so" and (elf in addrs or n in syms))
    smooth_c_linkage(rows)
    for r in rows:
        lib_counts[r["bucket"]]["total"] += 1
        lib_counts[r["bucket"]]["claimed"] += r["claimed"]
        lib_counts[r["bucket"]]["bytes"] += r["body_bytes"]
    import gzip
    with (OUT / "inventory.csv").open("w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh)
        w.writerow(["library", "elf_address", "body_bytes", "bucket", "owner", "claimed", "is_thunk", "file", "byte_offset", "byte_length", "name", "demangled"])
        for r in rows:
            w.writerow([r["library"], r["elf_address"], r["body_bytes"], r["bucket"], r["owner"], int(r["claimed"]), int(r["is_thunk"]), r["file"], r["byte_offset"], r["byte_length"], r["name"], r["demangled"]])
    with (OUT / "inventory.csv").open("rb") as src, gzip.GzipFile(OUT / "inventory.csv.gz", "wb", mtime=0) as dst:
        dst.write(src.read())
    owners = Counter(r["owner"] for r in rows if r["bucket"] == "game")
    owner_claimed = Counter(r["owner"] for r in rows if r["bucket"] == "game" and r["claimed"])
    summary = {
        "functions_total": len(rows),
        "functions_claimed": sum(r["claimed"] for r in rows),
        "claim_sources": dict(src_counts),
        "claimed_addresses_in_manifests": len(addrs),
        "buckets": {k: dict(v) for k, v in sorted(lib_counts.items())},
        "game_owners": {k: {"total": v, "claimed": owner_claimed[k]} for k, v in owners.most_common()},
    }
    (OUT / "inventory.json").write_text(json.dumps(summary, indent=1) + "\n", encoding="utf-8")
    print(json.dumps({k: summary[k] for k in ("functions_total", "functions_claimed", "claim_sources", "claimed_addresses_in_manifests", "buckets")}, indent=1))
    return 0


if __name__ == "__main__":
    sys.exit(main())
