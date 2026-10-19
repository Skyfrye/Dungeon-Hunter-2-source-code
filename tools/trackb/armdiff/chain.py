#!/usr/bin/env python3
"""armdiff chain harness: whole function chains of the reconstruction against the original, on real state.

armdiff (run.py) tests one function at a time on random bytes. A chain is a scenario of calls (construct objects,
read real pydata files, compute damage, serialise a savegame, ...) executed twice from one real initial state:

    boot   (original only)  the original library runs its own static initialisers, constructors and loaders in Unicorn
                            on the real game data files; the result (heap, arena, the original's .data/.bss) is a
                            snapshot, cached on disk.
    orig   the scenario runs on the original code, starting from the snapshot.
    recon  the same scenario runs on the reconstruction (ARM32 build, all translation units linked into one
           shared object, build/.../_chain/chain.so), starting from the SAME snapshot with every pointer into the
           original image that names a symbol the reconstruction also defines (vtables, functions, globals)
           re-pointed at the reconstruction's copy. A function the reconstruction does not define is the original's.

Both runs end in a state that is compared: the return values, the effectful library calls (operator new sizes, ...),
the whole heap and arena, and the original's data segment overlaid with the reconstruction's copies of the same
globals. Words that hold code addresses are canonicalised to (symbol, offset) as in compare.py. A difference is
reported with the heap block it is in, the class of that block (from its vtable or a tag) and the member that the
reconstruction's own record layout (clang -fdump-record-layouts, so our headers' `// +0xNN` offsets) has at the offset.

    py -3 tools/trackb/armdiff/chain.py --list
    py -3 tools/trackb/armdiff/chain.py [-v] [--rebuild] NAME...        # run chains (default: all)

Chains live in tools/trackb/armdiff/chains/*.py. Each defines CHAINS = [Chain(...)].
"""
from __future__ import annotations

import argparse
import hashlib
import importlib
import json
import os
import pickle
import struct
import subprocess
import sys
import time
from dataclasses import dataclass, field
from pathlib import Path
from typing import Callable

sys.path.insert(0, str(Path(__file__).resolve().parent))
import build_arm  # noqa: E402
import compare  # noqa: E402
import elf32  # noqa: E402
import machine as mc  # noqa: E402
import manifest  # noqa: E402
import stubs  # noqa: E402
from unicorn import UC_HOOK_BLOCK, UcError  # noqa: E402
from unicorn.arm_const import UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11  # noqa: E402
from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_LR, UC_ARM_REG_SP as _SP, UC_ARM_REG_PC, UC_ARM_REG_CPSR, UC_ARM_REG_SP  # noqa: E402

ROOT = build_arm.ROOT
DR = build_arm.DR
M32 = 0xFFFFFFFF
PAGE = mc.PAGE
CHAIN_CATS = ["pydata-accessors", "core-platform", "net-transport", "net-session-online", "game-anim", "game-app",
              "game-character", "game-items-save", "game-ui", "game-world", "tinyxml-and-c-libs", "glitch-core-io"]
DATA_ROOT = ROOT / "build" / "own-r" / "data" / "com.gameloft.android.GAND.GloftD2SS" / "files"
REPORT_DIR = ROOT / "reports" / "decomp-reconstruction" / "armdiff"
DEFAULT_IGNORE = (r"^_ZN13DebugSwitches", r"^_ZNSt17__node_alloc_impl", r"^_ZNSt\d+__node_alloc", r"^_ZSt")      # STLport pool allocator state
HARNESS_BOOT_VERSION = "1"          # bump when run_boot / apply_snapshot / the models change what a boot produces
SPLIT_HEAP = mc.HEAP_BASE + mc.HEAP_SIZE // 2        # the reconstruction's own static initialisers allocate from here


# ----- extra import models (state the chains need and run.py's single-function cases do not) -----------------------------

def _install_models() -> None:
    M = stubs.MODELS

    def pthread_ok(m, a):
        return 0
    for n in ("pthread_mutex_init", "pthread_mutex_lock", "pthread_mutex_unlock", "pthread_mutex_destroy", "pthread_mutex_trylock",
              "pthread_mutexattr_init", "pthread_mutexattr_settype", "pthread_mutexattr_destroy", "pthread_cond_init",
              "pthread_cond_signal", "pthread_cond_broadcast", "pthread_cond_destroy", "pthread_key_create",
              "pthread_setspecific", "pthread_once"):
        M.setdefault(n, pthread_ok)

    def getspecific(m, a):
        return 0
    M.setdefault("pthread_getspecific", getspecific)
    M.setdefault("pthread_self", lambda m, a: 1)

    def fn_time(m, a):
        return 1000000
    M.setdefault("time", fn_time)
    M.setdefault("clock", fn_time)
    M.setdefault("sysconf", lambda m, a: 4096)

    def gettimeofday(m, a):
        if a[0]:
            m.write_mem(a[0], struct.pack("<II", 1000, 0))
        return 0
    M.setdefault("gettimeofday", gettimeofday)

    def clock_gettime(m, a):
        if a[1]:
            m.write_mem(a[1], struct.pack("<II", 1000, 0))
        return 0
    M.setdefault("clock_gettime", clock_gettime)

    def memalign(m, a):
        al = max(a[0], 8)
        p = m.heap_alloc(a[1] + al)
        return (p + al - 1) & ~(al - 1)
    M.setdefault("memalign", memalign)
    M.setdefault("posix_memalign", lambda m, a: (m.write_mem(a[0], struct.pack("<I", memalign(m, [a[1], a[2]]))), 0)[1])

    def strdup(m, a):
        s = stubs._cstr(m, a[0])
        p = m.heap_alloc(len(s) + 1)
        m.write_mem(p, s + b"\0")
        return p
    M.setdefault("strdup", strdup)

    def cstr_n(m, addr, n):
        """Up to n bytes of a C string, stopping at the NUL (strncmp and strncpy never read past it)."""
        raw = bytes(m.read_mem(addr, n)) if n else b""
        i = raw.find(b"\0")
        return raw if i < 0 else raw[:i]

    def strncmp_m(m, a):
        n = stubs._len_ok(a[2])
        x, y = cstr_n(m, a[0], n), cstr_n(m, a[1], n)
        return ((x > y) - (x < y)) & M32
    M["strncmp"] = strncmp_m

    def strncpy_m(m, a):
        n = stubs._len_ok(a[2])
        src = cstr_n(m, a[1], n)
        m.write_mem(a[0], src + bytes(n - len(src)))
        return a[0]
    M["strncpy"] = strncpy_m

    def setjmp_m(m, a):
        regs = [m.uc.reg_read(r) for r in (UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8,
                                           UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11, UC_ARM_REG_SP, UC_ARM_REG_LR)]
        m.write_mem(a[0], struct.pack("<10I", *regs))
        return 0
    for n_ in ("setjmp", "_setjmp", "sigsetjmp"):
        M[n_] = setjmp_m

    def longjmp_m(m, a):
        regs = struct.unpack("<10I", m.read_mem(a[0], 40))
        for r, v in zip((UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9,
                         UC_ARM_REG_R10, UC_ARM_REG_R11, UC_ARM_REG_SP, UC_ARM_REG_LR), regs):
            m.uc.reg_write(r, v)
        return a[1] or 1                 # the stub's `bx lr` now returns to the setjmp caller
    for n_ in ("longjmp", "_longjmp", "siglongjmp"):
        M[n_] = longjmp_m

    class ArgReader:
        """Reads variadic arguments the AAPCS way: 32-bit words, 64-bit values 8-byte aligned."""

        def __init__(self, m, words, stack_ptr):
            self.m, self.words, self.sp, self.i = m, list(words), stack_ptr, 0

        def word(self):
            if self.i < len(self.words):
                v = self.words[self.i]
                self.i += 1
                return v
            v = self.m.read_u32(self.sp)
            self.sp += 4
            return v

        def dword(self):
            if self.i < len(self.words):          # register pair must start at an even register
                if (self.i + (4 - len(self.words))) % 2 and self.i < len(self.words):
                    self.i += 1
            else:
                self.sp = (self.sp + 7) & ~7
            lo = self.word()
            hi = self.word()
            return lo | (hi << 32)

    def vformat(m, fmt: bytes, rd) -> bytes:
        import re as _re
        out = bytearray()
        i = 0
        spec = _re.compile(rb"%([-+ #0]*)(\*|\d+)?(?:\.(\*|\d+))?(hh|h|ll|l|z|t|j|L)?([diuoxXcspfFeEgGn%])")
        while i < len(fmt):
            c = fmt[i:i + 1]
            if c != b"%":
                out += c
                i += 1
                continue
            mo = spec.match(fmt, i)
            if not mo:
                out += c
                i += 1
                continue
            flags, width, prec, length, conv = mo.groups()
            i = mo.end()
            flags = flags.decode()
            w_ = rd.word() if width == b"*" else (int(width) if width else 0)
            p_ = rd.word() if prec == b"*" else (int(prec) if prec is not None else None)
            if conv == b"%":
                text = b"%"
            elif conv in b"di":
                v = rd.dword() if length in (b"ll", b"j") else rd.word()
                bits = 64 if length in (b"ll", b"j") else 32
                if length == b"h":
                    v &= 0xFFFF
                    bits = 16
                elif length == b"hh":
                    v &= 0xFF
                    bits = 8
                if v >= 1 << (bits - 1):
                    v -= 1 << bits
                text = (("+" if "+" in flags and v >= 0 else " " if " " in flags and v >= 0 else "") + str(v)).encode()
            elif conv in b"uoxX":
                v = rd.dword() if length in (b"ll", b"j") else rd.word()
                if length == b"h":
                    v &= 0xFFFF
                elif length == b"hh":
                    v &= 0xFF
                text = {b"u": f"{v}", b"o": f"{v:o}", b"x": f"{v:x}", b"X": f"{v:X}"}[conv].encode()
                if "#" in flags and v and conv in b"xX":
                    text = (b"0x" if conv == b"x" else b"0X") + text
            elif conv == b"c":
                text = bytes([rd.word() & 0xFF])
            elif conv == b"s":
                p = rd.word()
                text = stubs._cstr(m, p) if p else b"(null)"
                if p_ is not None:
                    text = text[:p_]
            elif conv == b"p":
                text = f"0x{rd.word():x}".encode()
            elif conv in b"fFeEgG":
                v = struct.unpack("<d", struct.pack("<Q", rd.dword()))[0]
                pr = 6 if p_ is None else p_
                text = (("%" + ("+" if "+" in flags else "") + f".{pr}" + conv.decode()) % v).encode()
            else:
                text = b""
            if p_ is not None and conv in b"diuoxX" and len(text.lstrip(b"+- ")) < p_:
                sign = text[:1] if text[:1] in b"+- " else b""
                text = sign + text[len(sign):].rjust(p_, b"0")
            if len(text) < w_:
                if "-" in flags:
                    text = text.ljust(w_)
                elif "0" in flags and conv not in b"cs" and p_ is None:
                    sign = text[:1] if text[:1] in b"+- " else b""
                    text = sign + text[len(sign):].rjust(w_ - len(sign), b"0")
                else:
                    text = text.rjust(w_)
            out += text
        return bytes(out)

    def _put(m, buf, n, data):
        if n == 0:
            return
        data2 = data[:max(n - 1, 0)] + b"\0"
        m.write_mem(buf, data2)

    def sprintf_m(m, a):
        data = vformat(m, stubs._cstr(m, a[1]), ArgReader(m, a[2:4], m.uc.reg_read(UC_ARM_REG_SP)))
        m.write_mem(a[0], data + b"\0")
        return len(data)
    M["sprintf"] = sprintf_m

    def snprintf_m(m, a):
        data = vformat(m, stubs._cstr(m, a[2]), ArgReader(m, a[3:4], m.uc.reg_read(UC_ARM_REG_SP)))
        _put(m, a[0], a[1], data)
        return len(data)
    M["snprintf"] = snprintf_m

    def vsnprintf_m(m, a):
        data = vformat(m, stubs._cstr(m, a[2]), ArgReader(m, [], a[3]))
        _put(m, a[0], a[1], data)
        return len(data)
    M["vsnprintf"] = vsnprintf_m

    def vsprintf_m(m, a):
        data = vformat(m, stubs._cstr(m, a[1]), ArgReader(m, [], a[2]))
        m.write_mem(a[0], data + b"\0")
        return len(data)
    M["vsprintf"] = vsprintf_m

    def atoi(m, a):
        s = stubs._cstr(m, a[0]).decode("latin1").lstrip()
        import re as _re2
        mo = _re2.match(r"[+-]?\d+", s)
        v = int(mo.group(0)) if mo else 0
        return v & M32
    M.setdefault("atoi", atoi)
    M.setdefault("atol", atoi)

    def strtol(m, a):
        s = stubs._cstr(m, a[0]).decode("latin1")
        base = a[2] or 10
        import re as _re2
        mo = _re2.match(r"\s*([+-]?)(0[xX])?([0-9a-fA-F]+)" if base in (0, 16) else r"\s*([+-]?)()(\d+)", s)
        v = 0
        end = 0
        if mo:
            try:
                v = int(mo.group(3), 16 if base == 16 or (base == 0 and mo.group(2)) else 10)
                end = mo.end()
                if mo.group(1) == "-":
                    v = -v
            except ValueError:
                pass
        if a[1]:
            m.write_mem(a[1], struct.pack("<I", (a[0] + end) & M32))
        return v & M32
    M.setdefault("strtol", strtol)
    M.setdefault("strtoul", strtol)

    def atof_like(m, a):
        s = stubs._cstr(m, a[0]).decode("latin1")
        import re as _re2
        mo = _re2.match(r"\s*[+-]?(\d+\.?\d*([eE][+-]?\d+)?|\.\d+)", s)
        v = float(mo.group(0)) if mo else 0.0
        return stubs.bits64(v)
    M.setdefault("atof", atof_like)
    M.setdefault("strtod", lambda m, a: (m.write_mem(a[1], struct.pack("<I", a[0])) if a[1] else None, atof_like(m, a))[1])

    def _wstr(m, addr, limit=1 << 14):
        out = []
        while len(out) < limit:
            c = m.read_u32(addr + 4 * len(out))
            if c == 0:
                return out
            out.append(c)
        raise stubs.Fault("unterminated wide string")
    M.setdefault("wcslen", lambda m, a: len(_wstr(m, a[0])))

    def wcscmp(m, a):
        x, y = _wstr(m, a[0]), _wstr(m, a[1])
        return ((x > y) - (x < y)) & M32
    M.setdefault("wcscmp", wcscmp)

    def wcscpy(m, a):
        x = _wstr(m, a[1]) + [0]
        m.write_mem(a[0], struct.pack(f"<{len(x)}I", *x))
        return a[0]
    M.setdefault("wcscpy", wcscpy)

    def wmemcpy(m, a):
        if a[2]:
            m.write_mem(a[0], bytes(m.read_mem(a[1], 4 * stubs._len_ok(a[2]))))
        return a[0]
    M.setdefault("wmemcpy", wmemcpy)
    M.setdefault("wmemmove", wmemcpy)

    def wmemset(m, a):
        if a[2]:
            m.write_mem(a[0], struct.pack("<I", a[1]) * stubs._len_ok(a[2]))
        return a[0]
    M.setdefault("wmemset", wmemset)
    for n in ("puts", "putchar", "fflush", "fclose", "printf", "fprintf", "dlclose", "setlocale",
              "usleep", "sched_yield", "nanosleep", "sched_get_priority_max", "sched_get_priority_min", "madvise"):
        M.setdefault(n, lambda m, a: 0)


_install_models()


# ----- building the chain image ----------------------------------------------------------------------------------------

def libcxx_archive() -> Path | None:
    """The NDK's static libc++ (the out-of-line std::string, std::vector, ... code the reconstruction's libc++ headers expect)."""
    ndk = build_arm.find_ndk()
    cands = sorted((ndk / "toolchains" / "llvm" / "prebuilt").glob("*/sysroot/usr/lib/arm-linux-androideabi/libc++_static.a"))
    return cands[-1] if cands else None


def link_chain(cats: list[str] | None = None, force: bool = False) -> Path:
    """Link every ARM32 object of the categories into one shared object (undefined symbols stay undefined)."""
    cats = cats or CHAIN_CATS
    objs: list[Path] = []
    for cat in cats:
        d = build_arm.OUT_ROOT / cat
        for meta in sorted(d.glob("*.meta.json")):
            try:
                st = json.loads(meta.read_text(encoding="utf-8")).get("status")
            except (OSError, ValueError):
                continue
            o = meta.with_name(meta.name[:-len(".meta.json")] + ".o")
            if st in ("ok", "cached") and o.exists():
                objs.append(o)
    out_dir = build_arm.OUT_ROOT / "_chain"
    out_dir.mkdir(parents=True, exist_ok=True)
    libcxx = libcxx_archive()
    so = out_dir / "chain.so"
    key = hashlib.sha1(("|".join(f"{o}:{o.stat().st_mtime_ns}:{o.stat().st_size}" for o in objs) + str(libcxx)).encode()).hexdigest()
    keyfile = out_dir / "chain.key"
    if not force and so.exists() and keyfile.exists() and keyfile.read_text() == key:
        return so
    rsp = out_dir / "chain.rsp"
    rsp.write_text("\n".join('"' + str(o).replace("\\", "/") + '"' for o in objs), encoding="utf-8")
    r = subprocess.run([build_arm.exe("ld.lld"), "-shared", "-m", "armelf_linux_eabi", "-z", "muldefs", "--hash-style=sysv",
                        "--build-id=none", "-z", "norelro", "-o", str(so), f"@{rsp}"] + ([str(libcxx)] if libcxx else []),
                       capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit("linking the chain image failed:\n" + r.stderr[:3000])
    keyfile.write_text(key)
    return so


class ChainMachine(mc.Machine):
    """Machine with a fast path for the import stubs that do nothing (locks): STLport takes a mutex around every
    node allocation, which is a million Python callbacks in a game-data load."""

    FAST_NOOP = frozenset(["pthread_mutex_lock", "pthread_mutex_unlock", "pthread_mutex_init", "pthread_mutex_destroy",
                           "pthread_mutex_trylock", "pthread_mutexattr_init", "pthread_mutexattr_settype", "pthread_mutexattr_destroy",
                           "__cxa_guard_abort"])

    def _on_stub(self, uc, address, size, user):
        idx = (address - mc.STUB_BASE) >> 3
        if not (address & 7) and idx < len(self.stub_names) and self.stub_names[idx] in self.FAST_NOOP:
            uc.reg_write(UC_ARM_REG_R0, 0)
            return
        super()._on_stub(uc, address, size, user)


# ----- environment -------------------------------------------------------------------------------------------------------

class Env:
    """One Unicorn machine: the original, the chain image (the reconstruction) and the runtime helpers."""

    def __init__(self, library: str | None = None, cats: list[str] | None = None, rebuild: bool = False):
        self.library = library or str(manifest.ORIG_DEFAULT)
        t0 = time.time()
        if rebuild:
            for cat in cats or CHAIN_CATS:
                build_arm.build_category(cat, "-O1", False, None, log=lambda *_: None)
        self.so = link_chain(cats, force=rebuild)
        self.m = ChainMachine(self.library, callee="chain", track_writes=False)
        self.recon = self.m.load_recon(self.so)
        self._alias_pairs()
        for h in self.m._recon_hooks:                     # chain mode: the reconstruction owns its statics
            self.m.uc.hook_del(h)
        self.m._recon_hooks = []
        self.load_seconds = time.time() - t0
        orig = self.m.orig
        # rw range of the original (data + bss) and of the reconstruction
        self.orig_rw = [(orig.base + s.vaddr & ~(PAGE - 1), mc._round_up(s.memsz + (s.vaddr & (PAGE - 1)), PAGE))
                        for s in orig.elf.load_segments() if s.flags & 2]
        self.recon_rw = [(self.recon.base + s.vaddr & ~(PAGE - 1), mc._round_up(s.memsz + (s.vaddr & (PAGE - 1)), PAGE))
                         for s in self.recon.elf.load_segments() if s.flags & 2]
        self.orig_cmp = [(orig.base + sec.addr, orig.base + sec.addr + sec.size) for sec in orig.elf.sections
                         if sec.name in (".data", ".bss") and sec.size]
        self.orig_pristine = [(a, bytes(self.m.uc.mem_read(a, n))) for a, n in self.orig_rw]   # before any code ran
        self.recon_pristine = [(a, bytes(self.m.uc.mem_read(a, n))) for a, n in self.recon_rw]
        self.cells_pristine = bytes(self.m.uc.mem_read(mc.CELL_BASE, mc.CELL_SIZE))
        self._canon_cache: dict = {}
        self._layouts: dict | None = None
        self._cxxfilt_cache: dict[str, str] = {}

    def _alias_pairs(self) -> None:
        """File-static variables of the original (`_ZL10s_attacker`) are plain globals of the reconstruction
        (`s_attacker`): pair them by the unmangled name when the sizes agree."""
        import re as _re
        have = {n for _o, _r, _s, n in self.m.global_pairs}
        orig, recon = self.m.orig, self.recon
        for name, oa in orig.syms.items():
            mo = _re.match(r"_ZL(\d+)(.+)$", name)
            if not mo or name in have or orig.sym_kind.get(name) != elf32.STT_OBJECT:
                continue
            nm = mo.group(2)[: int(mo.group(1))]
            for cand in (nm, name):
                ra = recon.syms.get(cand)
                if ra is not None and recon.sym_kind.get(cand) == elf32.STT_OBJECT and recon.sym_size.get(cand) == orig.sym_size.get(name):
                    self.m.global_pairs.append((oa, ra, orig.sym_size[name], name))
                    break

    # layouts of every record clang computed for the chain translation units (name -> record)
    @property
    def layouts(self) -> dict:
        if self._layouts is None:
            cache = build_arm.OUT_ROOT / "_chain" / "layouts.json"
            metas = sorted(build_arm.OUT_ROOT.glob("*/*.meta.json"))
            newest = max((p.stat().st_mtime for p in metas), default=0)
            if cache.exists() and cache.stat().st_mtime >= newest:
                self._layouts = json.loads(cache.read_text(encoding="utf-8"))
            else:
                lay: dict = {}
                for p in metas:
                    if p.parent.name.startswith("_") or p.parent.name in ("vendor-lua", "vendor-box2d", "vendor-gameswf", "vox-audio"):
                        continue
                    try:
                        d = json.loads(p.read_text(encoding="utf-8"))
                    except (OSError, ValueError):
                        continue
                    for k, v in (d.get("layouts") or {}).items():
                        cur = lay.get(k)
                        if cur is None or len(v.get("fields", [])) > len(cur.get("fields", [])):
                            lay[k] = v
                cache.write_text(json.dumps(lay), encoding="utf-8")
                self._layouts = lay
        return self._layouts

    def realign(self, cls: str | None, size_b: int):
        """[(reconstruction offset, length, original offset)] spans of a class that can be compared word for word, or
        None when the class has no STLport/libc++ container. A container (and the 4-byte comparator pad the headers
        write after a map) is left out; the spans after it are shifted by the size difference."""
        if not cls:
            return None
        rec = self.layouts.get(cls)
        if not rec:
            return None
        import run as _run
        mem = _run.stl_members(rec, self.layouts)
        if not mem:
            return None
        fields = sorted(f[0] for f in rec.get("fields", []))
        size = rec.get("size", size_b)
        segs = []
        pos = 0
        for o, ty in mem:
            if o < pos:
                continue
            nxt = next((x for x in fields if x > o), size)
            msz = nxt - o
            tot, unknown = _run.stl_expected_delta(rec, self.layouts, o)
            if unknown:
                return segs or None
            segs.append((pos, o - pos, pos - tot))
            end = o + msz
            for f in rec.get("fields", []):
                if f[0] == end and str(f[1]).startswith("uint8_t[4]") and str(f[2]).startswith("pad"):
                    end += 4
            pos = end
        tot, unknown = _run.stl_expected_delta(rec, self.layouts, pos)
        if unknown:
            return segs or None
        segs.append((pos, max(size_b, size) - pos, pos - tot))
        return segs

    def demangle(self, name: str) -> str:
        if name not in self._cxxfilt_cache:
            r = subprocess.run([build_arm.exe("llvm-cxxfilt"), name], capture_output=True, text=True)
            self._cxxfilt_cache[name] = r.stdout.strip() or name
        return self._cxxfilt_cache[name]


# ----- worlds ---------------------------------------------------------------------------------------------------------------

@dataclass
class CallRec:
    name: str
    args: tuple
    status: str
    r0: int
    r1: int
    detail: str = ""
    insns_hint: int = 0
    extra: tuple = ()


class ChainError(Exception):
    pass


class World:
    """The view of one side ('orig' or 'recon') a scenario function gets. Same scenario code runs on both."""

    def __init__(self, env: Env, side: str, snap: "Snapshot | None" = None, budget: int = 50_000_000):
        self.env = env
        self.m = env.m
        self.side = side
        self.budget = budget
        self.log: list[CallRec] = []
        self.roots: dict[str, int] = dict(snap.roots) if snap else {}
        self.tags: dict[int, str] = dict(snap.tags) if snap else {}
        self.arena_ptr = snap.arena_ptr if snap else mc.ARENA_BASE
        self.fallback: set[str] = set()            # recon side: functions the reconstruction does not define (the original ran)
        self.faults: list[str] = []
        self.executed: set[int] = set()
        self._cover_hook = None
        self.sync: Callable[[str], bool] | None = None

    # ----- symbols
    def sym(self, name: str) -> int:
        m = self.m
        if self.side == "recon":
            a = m.recon.syms.get(name)
            if a is not None:
                return a
            for alt in mc._variant_names(name):
                a = m.recon.syms.get(alt)
                if a is not None:
                    return a
            self.fallback.add(name)
        a = m.orig.syms.get(name)
        if a is None:
            for alt in mc._variant_names(name):
                a = m.orig.syms.get(alt)
                if a is not None:
                    return a
            raise ChainError(f"no symbol {name} in the original")
        return a

    def fn(self, cls: str, name: str, const: bool | None = None, nth: int = 0) -> str:
        """Mangled name of the member function Class::name found in the original (unique prefix match, so the
        parameter list does not have to be spelled). `cls` may be 'A::B' for a namespace/nested class."""
        parts = cls.split("::")
        prefix = "_ZN" + "".join(f"{len(p)}{p}" for p in parts) + f"{len(name)}{name}E"
        cprefix = "_ZNK" + "".join(f"{len(p)}{p}" for p in parts) + f"{len(name)}{name}E"
        cands = sorted(n for n in self.m.orig.syms if (n.startswith(prefix) and const is not True) or (n.startswith(cprefix) and const is not False))
        if not cands:
            raise ChainError(f"no member {cls}::{name} in the original")
        if len(cands) > 1 and nth == 0 and len({c for c in cands if not c.endswith(("C1", "C2"))}) > 1:
            raise ChainError(f"{cls}::{name} is overloaded: {cands}")
        return cands[nth]

    def base_offset(self, cls: str, base: str) -> int:
        """Offset of base class `base` inside `cls` in this side's layout. The original's offset is given by the
        scenario (`orig_off`); the reconstruction's comes from its clang record layout."""
        rec = self.env.layouts[cls]
        for f in rec["fields"]:
            if f[1] == "base" and f[2].split()[-1] == base:
                return f[0]
        raise ChainError(f"{cls} has no base {base}")

    def field_offset(self, cls: str, field_name: str) -> int:
        rec = self.env.layouts[cls]
        for f in rec["fields"]:
            if f[2] == field_name:
                return f[0]
        raise ChainError(f"{cls} has no member {field_name}")

    def neuter(self, name: str, value: int = 0, only_recon: bool = False) -> None:
        """Make a function return `value` immediately on this side (`mov r0, #value; bx lr`): for engine services a chain
        does not model (the debug-switch file reader, the file system). Applied to the original and to the
        reconstruction alike; the patch is undone when the case ends."""
        patched = 0
        for img in ((self.m.recon,) if only_recon else (self.m.orig, self.m.recon)):
            a = img.syms.get(name)
            if a is None:
                continue
            patched += 1
            self.m.write_mem(a, struct.pack("<II", 0xE3A00000 | (value & 0xFF), 0xE12FFF1E))
        if not patched:
            raise ChainError(f"neuter: no symbol {name}")
        try:
            self.m.uc.ctl_flush_tb()
        except (AttributeError, UcError):
            pass

    def neuter_prefix(self, prefix: str, value: int = 0) -> int:
        """neuter() every function whose mangled name starts with `prefix` (all overloads), in both images."""
        names = {n for img in (self.m.orig, self.m.recon) for n, k in img.sym_kind.items() if n.startswith(prefix) and k == elf32.STT_FUNC}
        for n in names:
            self.neuter(n, value)
        return len(names)

    def words(self, addr: int, n: int) -> list:
        """n 32-bit words at addr (code addresses canonicalised, so vptrs of the two images compare equal)."""
        raw = struct.unpack(f"<{n}I", self.m.read_mem(addr, 4 * n))
        return [compare.canon_word(self.m, v) if (self.m.orig.contains(v) or (self.m.recon and self.m.recon.contains(v))) else v for v in raw]

    def orig_only(self, name: str) -> int:
        a = self.m.orig.syms.get(name)
        if a is None:
            raise ChainError(f"no symbol {name} in the original")
        return a

    # ----- memory
    def alloc(self, n: int, init: bytes | None = None, tag: str | None = None, align: int = 8) -> int:
        p = (self.arena_ptr + align - 1) & ~(align - 1)
        self.arena_ptr = p + max(n, 1)
        if self.arena_ptr > mc.ARENA_BASE + mc.ARENA_SIZE:
            raise ChainError("arena exhausted")
        if init:
            self.m.write_mem(p, init)
        if tag:
            self.tags[p] = tag
        return p

    def alloc_service(self, n: int, init: bytes | None = None) -> int:
        """Scaffolding of the emulated environment (fake file-system objects): kept out of the compared arena."""
        p = (getattr(self, "svc_ptr", mc.ARENA_BASE + 0x800000) + 7) & ~7
        self.svc_ptr = p + max(n, 1)
        if init:
            self.m.write_mem(p, init)
        return p

    def cstr(self, s: str | bytes) -> int:
        b = s.encode() if isinstance(s, str) else s
        return self.alloc(len(b) + 1, b + b"\0")

    def heap(self, n: int, tag: str | None = None) -> int:
        """A zeroed block from the shared heap (what `operator new` hands out; same sequence on both sides)."""
        p = self.m.heap_alloc(n)
        if tag:
            self.tags[p] = tag
        return p

    def read(self, addr: int, n: int) -> bytes:
        return self.m.read_mem(addr, n)

    def u32(self, addr: int) -> int:
        return self.m.read_u32(addr)

    def u8(self, addr: int) -> int:
        return self.m.read_u8(addr)

    def f32(self, addr: int) -> float:
        return struct.unpack("<f", self.m.read_mem(addr, 4))[0]

    def write(self, addr: int, data: bytes) -> None:
        self.m.write_mem(addr, data)

    def put_u32(self, addr: int, v: int) -> None:
        self.m.write_mem(addr, struct.pack("<I", v & M32))

    def put_f32(self, addr: int, v: float) -> None:
        self.m.write_mem(addr, struct.pack("<f", v))

    def global_addr(self, name: str) -> int:
        """Address of a global in this side's image (recon: its own copy when it defines one)."""
        return self.sym(name)

    def root(self, name: str, addr: int | None = None) -> int:
        if addr is not None:
            self.roots[name] = addr
        return self.roots[name]

    # ----- calls
    def call(self, target, *args, ret: str = "u32", budget: int | None = None, fatal: bool = True, mask: int = M32,
             capture: tuple | None = None, norec: bool = False):
        """Call `target` (mangled name or address). Arguments: ints, ('u64', v), ('f32', float), ('f64', float),
        ('f32bits', v). ret: 'u32' (r0), 'u64' (r1:r0), 'void'. A fault raises ChainError when fatal, else it is
        recorded and r0 returned as None."""
        name = target if isinstance(target, str) else f"@{target:#x}"
        addr = self.sym(target) if isinstance(target, str) else target
        if isinstance(target, str):
            img = self.m.recon if self.m.recon.contains(addr) else self.m.orig
            if target in img.thumb:
                addr |= 1
        words: list[int] = []
        for a in args:
            if isinstance(a, tuple):
                kind, v = a
                if kind == "u64":
                    if len(words) & 1:
                        words.append(0)
                    words += [v & M32, (v >> 32) & M32]
                elif kind == "f32":
                    words.append(struct.unpack("<I", struct.pack("<f", v))[0])
                elif kind == "f32bits":
                    words.append(v & M32)
                elif kind == "f64":
                    if len(words) & 1:
                        words.append(0)
                    lo, hi = struct.unpack("<II", struct.pack("<d", v))
                    words += [lo, hi]
                else:
                    raise ChainError(f"bad arg kind {kind}")
            else:
                words.append(a & M32)
        regs, stack = words[:4], words[4:]
        status, detail, r = self._run(addr, regs, stack, budget or self.budget)
        rec = CallRec(name, tuple(words), status, 0 if (ret == "void" or norec) else r[0] & mask, 0 if ret != "u64" else r[1], detail)
        if capture is not None and status == "ok":
            rec.extra = tuple(self.words(capture[0], capture[1]))
        self.log.append(rec)
        if status != "ok":
            self.faults.append(f"{name}: {status} {detail}")
            if fatal:
                raise ChainError(f"{self.side}: {name}: {status}: {detail}")
            return None
        if ret == "u64":
            return (r[1] << 32) | r[0]
        if ret == "void":
            return None
        return r[0] & mask

    def _run(self, addr: int, regs: list[int], stack: list[int], budget: int):
        m = self.m
        uc = m.uc
        sp = mc.STACK_TOP - 0x100 - mc._round_up(4 * len(stack), 8)
        if stack:
            m.write_mem(sp, struct.pack(f"<{len(stack)}I", *[w & M32 for w in stack]))
        regs = list(regs) + [0] * (4 - len(regs))
        for i in range(4):
            uc.reg_write(mc.REGS[i], regs[i] & M32)
        for i in range(4, 13):
            uc.reg_write(mc.REGS[i], 0xA5A50000 + i)
        uc.reg_write(UC_ARM_REG_CPSR, 0x10)
        uc.reg_write(UC_ARM_REG_SP, sp)
        uc.reg_write(UC_ARM_REG_LR, mc.RET_ADDR)
        m.fault = ""
        m.fault_kind = ""
        err = None
        try:
            uc.emu_start(addr, mc.RET_ADDR, count=budget)
        except UcError as e:
            err = e
        pc = uc.reg_read(UC_ARM_REG_PC)
        r = [uc.reg_read(mc.REGS[0]), uc.reg_read(mc.REGS[1])]
        if m.fault:
            return m.fault_kind or "fault", f"{m.fault} at pc={m.describe(pc)} lr={m.describe(uc.reg_read(UC_ARM_REG_LR))}", r
        if err is not None:
            return "fault", mc._classify_uc_error(err, pc, m), r
        if pc != mc.RET_ADDR:
            return "budget", f"stopped at {m.describe(pc)} (lr {m.describe(uc.reg_read(UC_ARM_REG_LR))}) after {budget} instructions", r
        if uc.reg_read(UC_ARM_REG_SP) != sp:
            return "fault", "sp not restored", r
        return "ok", "", r

    # ----- coverage of the run (which functions of each image executed)
    def start_cover(self) -> None:
        m = self.m
        ex = self.executed

        def on_block(uc, address, size, user):
            ex.add(address)
        self._cover_hook = m.uc.hook_add(UC_HOOK_BLOCK, on_block)

    def stop_cover(self) -> None:
        if self._cover_hook is not None:
            self.m.uc.hook_del(self._cover_hook)
            self._cover_hook = None

    def executed_functions(self) -> tuple[set[str], set[str]]:
        """(functions of the reconstruction that ran, functions of the original that ran)"""
        r, o = set(), set()
        for a in self.executed:
            if self.m.recon.contains(a):
                s = self.m.recon.sym_at(a)
                if s:
                    r.add(s[0])
            elif self.m.orig.contains(a):
                s = self.m.orig.sym_at(a)
                if s:
                    o.add(s[0])
        return r, o


# ----- snapshots --------------------------------------------------------------------------------------------------------------

@dataclass
class Snapshot:
    heap: bytes
    heap_ptr: int
    heap_sizes: dict
    arena: bytes
    arena_ptr: int
    orig_rw: list           # [(addr, bytes)]
    roots: dict
    tags: dict
    rand_state: int = 1
    notes: list = field(default_factory=list)


def take_snapshot(env: Env, w: World) -> Snapshot:
    m = env.m
    heap = bytes(m.uc.mem_read(mc.HEAP_BASE, min(m.heap_ptr, mc.HEAP_BASE + mc.HEAP_SIZE) - mc.HEAP_BASE)) if m.heap_ptr > mc.HEAP_BASE else b""
    arena = bytes(m.uc.mem_read(mc.ARENA_BASE, w.arena_ptr - mc.ARENA_BASE)) if w.arena_ptr > mc.ARENA_BASE else b""
    rw = [(a, bytes(m.uc.mem_read(a, n))) for a, n in env.orig_rw]
    return Snapshot(heap, m.heap_ptr, dict(m.heap_sizes), arena, w.arena_ptr, rw, dict(w.roots), dict(w.tags), m.rand_state)


def translate_words(env: Env, data: bytes, base: int) -> bytes:
    """Re-point every word that is an address inside the original image and names a symbol the reconstruction also
    defines (same name, same offset) at the reconstruction's copy."""
    m = env.m
    orig, recon = m.orig, m.recon
    lo, hi = orig.base, orig.end
    n = len(data) // 4
    words = list(struct.unpack(f"<{n}I", data[:n * 4]))
    cache: dict[int, int] = {}
    changed = False
    for i, v in enumerate(words):
        if lo <= v < hi:
            t = cache.get(v)
            if t is None:
                t = v
                s = orig.sym_at(v)
                if s:
                    ra = recon.syms.get(s[0])
                    if ra is not None:
                        sz_o = orig.sym_size.get(s[0], 0)
                        sz_r = recon.sym_size.get(s[0], 0)
                        if s[1] < max(sz_r, 1) and (orig.sym_kind.get(s[0]) == recon.sym_kind.get(s[0])):
                            t = ra + s[1]
                cache[v] = t
            if t != v:
                words[i] = t
                changed = True
    if not changed:
        return data
    return struct.pack(f"<{n}I", *words) + data[n * 4:]


def apply_snapshot(env: Env, w: World, snap: Snapshot) -> dict:
    """Restore the snapshot into the machine (inside an open case). For the reconstruction side the pointers are
    translated and the globals the two images share by name are copied into the reconstruction's variables."""
    m = env.m
    recon = w.side == "recon"
    stats = {"translated_pages": 0}
    heap = snap.heap
    arena = snap.arena
    if recon:
        heap = translate_words(env, heap, mc.HEAP_BASE)
        arena = translate_words(env, arena, mc.ARENA_BASE)
    if heap:
        m.write_mem(mc.HEAP_BASE, heap)
    if arena:
        m.write_mem(mc.ARENA_BASE, arena)
    for a, data in snap.orig_rw:
        m.write_mem(a, data)                     # the original's data/bss exactly as the boot left it
    m.heap_ptr = snap.heap_ptr
    m.heap_sizes = dict(snap.heap_sizes)
    m.rand_state = snap.rand_state
    if recon:
        pairs = skipped = 0
        for oa, ra, sz, name in m.global_pairs:
            data = pristine = None
            for (a, d), (_a2, pd) in zip(snap.orig_rw, env.orig_pristine):
                if a <= oa and oa + sz <= a + len(d):
                    data = d[oa - a: oa - a + sz]
                    pristine = pd[oa - a: oa - a + sz]
                    break
            if data is None:
                continue
            cur = bytes(m.uc.mem_read(ra, sz))
            if cur != pristine and cur != translate_words(env, pristine, oa) and cur != bytes(sz):
                skipped += 1              # the reconstruction's own initialiser set it up (an STL object, a table): keep its own
                continue
            if w.sync is not None and not w.sync(name):
                continue
            if sz % 4 == 0:
                data = translate_words(env, data, oa)
            m.write_mem(ra, data)
            pairs += 1
        stats["pairs"] = pairs
        stats["pairs_kept"] = skipped
        # The reconstruction keeps the pydata member-name tables in pydata::NameTable{names, size}; the original has a
        # char** and the count in Arrays::X::size. Present the original's loaded names to the reconstruction.
        import re as _re
        rd = lambda a: struct.unpack("<I", bytes(m.uc.mem_read(a, 4)))[0]
        n_names = 0
        for name, oa in m.orig.syms.items():
            mo = _re.fullmatch(r"_ZN6Arrays(\d+)(\w+?)13m_memberNamesE", name)
            if not mo or len(mo.group(2)) != int(mo.group(1)):
                continue
            ra = m.recon.syms.get(name)
            sz = m.orig.syms.get(f"_ZN6Arrays{len(mo.group(2))}{mo.group(2)}4sizeE")
            if ra is None or m.recon.sym_size.get(name) != 8 or sz is None:
                continue
            m.write_mem(ra, struct.pack("<II", rd(oa), rd(sz)))
            n_names += 1
        stats["name_tables"] = n_names
    return stats


def case_end(env: Env) -> None:
    """Undo a case without a per-store hook: zero the heap, arena and stack, put the data segments of both images
    and the import cells back, undo host-side writes (code patches) and drop demand-paged pages."""
    m = env.m
    uc = m.uc
    for pg in m.garbage_pages:
        try:
            uc.mem_unmap(pg, PAGE)
        except UcError:
            pass
        m.restore_log.pop(pg, None)
    m.garbage_pages = set()
    for pg, data in m.restore_log.items():
        uc.mem_write(pg, data)
    m.restore_log = {}
    zero = bytes(0x400000)
    for lo, size in ((mc.HEAP_BASE, mc.HEAP_SIZE), (mc.ARENA_BASE, mc.ARENA_SIZE), (mc.STACK_LOW, mc.STACK_TOP - mc.STACK_LOW)):
        for off in range(0, size, len(zero)):
            uc.mem_write(lo + off, zero[:min(len(zero), size - off)])
    for a, d in env.orig_pristine + env.recon_pristine:
        uc.mem_write(a, d)
    uc.mem_write(mc.CELL_BASE, env.cells_pristine)
    m.run_pristine = {}


# ----- running init arrays ------------------------------------------------------------------------------------------------------

def init_array(env: Env, img: mc.Image, w: World, limit: int | None = None) -> tuple[int, list[str]]:
    sec = img.elf.section(".init_array")
    if sec is None:
        return 0, []
    n = sec.size // 4
    bad: list[str] = []
    done = 0
    for i in range(n):
        fn = env.m.read_u32(img.base + sec.addr + 4 * i)
        if fn in (0, M32):
            continue
        if limit is not None and done >= limit:
            break
        st, det, _ = w._run(fn, [], [], 5_000_000)
        done += 1
        if st != "ok":
            bad.append(f"[{i}] {env.m.describe(fn)}: {st} {det}")
    return done, bad


# ----- chains -------------------------------------------------------------------------------------------------------------------

@dataclass
class Chain:
    name: str
    boot: str                               # name of a Boot (state both sides start from)
    run: Callable[[World], object]          # the scenario; returns an optional dict of named results to compare
    doc: str = ""
    sync: Callable[[str], bool] | None = None    # which shared-by-name globals are copied into the reconstruction (default: all)
    ignore_globals: tuple = ()               # regexes of global symbol names left out of the comparison (documented deviations)
    compare_heap: object = "graph"           # "graph" (reachable objects), "raw" (heap bytes) or False
    budget: int = 200_000_000


@dataclass
class Boot:
    name: str
    fn: Callable[[World], None]
    doc: str = ""
    version: int = 1


def boot_key(env: Env, b: Boot) -> str:
    src = Path(sys.modules[b.fn.__module__].__file__).read_bytes()
    h = hashlib.sha1(src + HARNESS_BOOT_VERSION.encode() + Path(env.library).stat().st_size.to_bytes(8, "little")).hexdigest()
    return f"{b.name}-{b.version}-{h[:10]}"


def run_boot(env: Env, b: Boot, force: bool = False, verbose: bool = False) -> Snapshot:
    cache = build_arm.OUT_ROOT / "_chain" / "boots"
    cache.mkdir(parents=True, exist_ok=True)
    f = cache / (boot_key(env, b) + ".pkl")
    if f.exists() and not force:
        return pickle.loads(f.read_bytes())
    t0 = time.time()
    m = env.m
    m.begin_case(1)
    w = World(env, "orig")
    w.budget = 2_000_000_000
    try:
        b.fn(w)
    finally:
        pass
    snap = take_snapshot(env, w)
    snap.notes = list(w.faults)
    case_end(env)
    if verbose:
        print(f"[boot {b.name}] {time.time() - t0:.1f}s heap {len(snap.heap):#x} arena {len(snap.arena):#x} calls {len(w.log)}")
    f.write_bytes(pickle.dumps(snap))
    return snap


@dataclass
class SideResult:
    side: str
    rets: list
    trace: list
    heap: bytes
    heap_ptr: int
    heap_sizes: dict
    arena: bytes
    orig_rw: list           # [(addr, bytes)] the original's data/bss, reconstruction copies overlaid
    recon_rw: dict          # name -> bytes of the reconstruction's shared globals
    faults: list
    values: dict
    log: list
    fallback: set
    ran_recon: set
    ran_orig: set
    tags: dict
    roots: dict = field(default_factory=dict)
    heap_init: bytes = b""
    arena_init: bytes = b""
    rw_init: list = field(default_factory=list)
    recon_init: dict = field(default_factory=dict)
    seconds: float = 0.0
    error: str = ""


def run_side(env: Env, chain: Chain, snap: Snapshot, side: str, cover: bool = False) -> SideResult:
    m = env.m
    t0 = time.time()
    m.begin_case(1)
    w = World(env, side, snap, budget=chain.budget)
    w.sync = chain.sync
    init_notes: list[str] = []
    if side == "recon":
        keep = m.heap_ptr
        m.heap_ptr = SPLIT_HEAP                     # the reconstruction's own static initialisers allocate from the upper half
        _n, init_notes = init_array(env, env.recon, w)
        m.heap_ptr, m.heap_sizes = keep, {}
        w.log.clear()
    apply_snapshot(env, w, snap)
    heap_init = bytes(m.uc.mem_read(mc.HEAP_BASE, min(m.heap_ptr, mc.HEAP_BASE + mc.HEAP_SIZE) - mc.HEAP_BASE)) if m.heap_ptr > mc.HEAP_BASE else b""
    arena_init = bytes(m.uc.mem_read(mc.ARENA_BASE, w.arena_ptr - mc.ARENA_BASE)) if w.arena_ptr > mc.ARENA_BASE else b""
    rw_init = [(a, bytes(m.uc.mem_read(a, n))) for a, n in env.orig_rw]
    recon_init = {name: bytes(m.uc.mem_read(ra, sz)) for oa, ra, sz, name in m.global_pairs} if side == "recon" else {}
    trace_start = len(m.trace)
    error = ""
    values = {}
    if cover:
        w.start_cover()
    try:
        values = chain.run(w) or {}
    except ChainError as e:
        error = str(e)
    except stubs.Fault as e:
        error = f"fault: {e}"
    if cover:
        w.stop_cover()
    heap = bytes(m.uc.mem_read(mc.HEAP_BASE, min(m.heap_ptr, mc.HEAP_BASE + mc.HEAP_SIZE) - mc.HEAP_BASE)) if m.heap_ptr > mc.HEAP_BASE else b""
    arena = bytes(m.uc.mem_read(mc.ARENA_BASE, w.arena_ptr - mc.ARENA_BASE)) if w.arena_ptr > mc.ARENA_BASE else b""
    rw = [(a, bytes(m.uc.mem_read(a, n))) for a, n in env.orig_rw]
    shared = {}
    if side == "recon":
        for oa, ra, sz, name in m.global_pairs:
            shared[name] = bytes(m.uc.mem_read(ra, sz))
    ran_r, ran_o = w.executed_functions() if cover else (set(), set())
    res = SideResult(side, [(c.name, c.status, c.r0, c.r1, c.extra) for c in w.log], list(m.trace[trace_start:]), heap, m.heap_ptr,
                     dict(m.heap_sizes), arena, rw, shared, list(w.faults), values, w.log, set(w.fallback), ran_r, ran_o, dict(w.tags), dict(w.roots), heap_init, arena_init, rw_init, recon_init,
                     time.time() - t0, error)
    res.init_notes = init_notes
    cache = env._canon_cache
    def canon(v):
        if isinstance(v, (str, bytes)):
            return v
        r = cache.get(v)
        if r is None:
            r = cache[v] = compare.canon_word(m, v)
        return r
    res.trace_canon = [(n, tuple(canon(v) for v in compare._norm_args(n, args))) for n, args in res.trace
                       if not n.startswith(("pthread_", "__cxa_guard"))
                       if n not in compare.MEMORY_HELPERS and n not in compare.PURE_CALLS]
    case_end(env)
    return res


# ----- comparison -------------------------------------------------------------------------------------------------------------------

@dataclass
class Diff:
    where: str
    detail: str


def _word_diffs(env: Env, a: bytes, b: bytes, base: int, limit: int = 200) -> list[tuple[int, int, int]]:
    """Addresses (and the two words) where a and b differ after canonicalisation."""
    out = []
    n = min(len(a), len(b))
    if a[:n] == b[:n]:
        return out
    step = 256
    for off in range(0, n, step):
        ca, cb = a[off:off + step], b[off:off + step]
        if ca == cb:
            continue
        for w in range(0, len(ca) - len(ca) % 4, 4):
            xa, xb = ca[w:w + 4], cb[w:w + 4]
            if xa == xb:
                continue
            va, vb = struct.unpack("<I", xa)[0], struct.unpack("<I", xb)[0]
            if compare.words_equal(env.m, va, vb):
                continue
            out.append((base + off + w, va, vb))
            if len(out) >= limit:
                return out
    return out


class Namer:
    """Block / class / member names for a heap address, from tags, vptrs and the reconstruction's record layouts."""

    def __init__(self, env: Env, res: SideResult):
        self.env = env
        self.res = res
        self.starts = sorted(res.heap_sizes.items())
        self.addrs = [s for s, _ in self.starts]
        self._cls: dict[int, str | None] = {}

    def block(self, addr: int):
        import bisect
        i = bisect.bisect_right(self.addrs, addr) - 1
        if i < 0:
            return None
        s, n = self.starts[i]
        return (s, n, i) if s <= addr < s + max(n, 1) else None

    def class_of(self, start: int) -> str | None:
        if start in self._cls:
            return self._cls[start]
        c = self.res.tags.get(start)
        if c is None:
            off = start - mc.HEAP_BASE
            if 0 <= off + 4 <= len(self.res.heap):
                v = struct.unpack_from("<I", self.res.heap, off)[0]
                s = None
                for img in (self.env.m.orig, self.env.m.recon):
                    if img.contains(v):
                        s = img.sym_at(v)
                        break
                if s and s[0].startswith("_ZTV"):
                    d = self.env.demangle(s[0])
                    c = d[len("vtable for "):] if d.startswith("vtable for ") else d
        self._cls[start] = c
        return c

    def member(self, cls: str | None, off: int) -> str:
        if not cls:
            return ""
        rec = self.env.layouts.get(cls)
        if not rec:
            return ""
        best = None
        for f in rec.get("fields", []):
            if f[0] <= off and f[1] not in ("base",):
                if best is None or f[0] >= best[0]:
                    best = f
            elif f[1] == "base" and f[0] <= off:
                sub = self.env.layouts.get(f[2])
                if sub and best is None:
                    pass
        if best is None:
            for f in rec.get("fields", []):
                if f[1] == "base" and f[0] <= off:
                    return f"base {f[2]}"
            return ""
        return f"{best[2]}" if best[1] != "vptr" else "vptr"

    def describe(self, addr: int) -> str:
        if mc.HEAP_BASE <= addr < mc.HEAP_BASE + mc.HEAP_SIZE:
            b = self.block(addr)
            if b is None:
                return f"heap@{addr:#x}"
            s, n, i = b
            cls = self.class_of(s)
            off = addr - s
            mem = self.member(cls, off)
            return f"heap block #{i} @{s:#x} size {n}" + (f" [{cls}]" if cls else "") + f" +{off:#x}" + (f" ({mem})" if mem else "")
        if mc.ARENA_BASE <= addr < mc.ARENA_BASE + mc.ARENA_SIZE:
            t = None
            for ts, tn in self.res.tags.items():
                if ts <= addr and (t is None or ts > t[0]) and mc.ARENA_BASE <= ts:
                    t = (ts, tn)
            if t:
                return f"arena {t[1]} +{addr - t[0]:#x} ({self.member(t[1], addr - t[0])})"
            return f"arena@{addr:#x}"
        m = self.env.m
        if m.orig.contains(addr):
            s = m.orig.sym_at(addr)
            return f"global {m.describe(addr)}" if s else f"orig+{addr - m.orig.base:#x}"
        return f"{addr:#x}"


class _Side:
    """Heap block lookup for one side of the comparison."""

    def __init__(self, res: SideResult):
        import bisect
        self._bisect = bisect
        self.res = res
        self.starts = sorted(res.heap_sizes.items())
        self.addrs = [x for x, _ in self.starts]
        self.lo = mc.HEAP_BASE
        self.hi = mc.HEAP_BASE + len(res.heap)
        self.init = res.heap_init

    def block(self, v: int):
        if not (self.lo <= v < self.hi):
            return None
        i = self._bisect.bisect_right(self.addrs, v) - 1
        if i < 0:
            return None
        s0, n = self.starts[i]
        if v > s0 + max(mc._round_up(n, 8), 1):          # inclusive: one-past-the-end pointers (empty arrays) belong to the block
            return None
        return (s0, n, i)

    def block_bytes(self, start: int, n: int) -> bytes:
        off = start - mc.HEAP_BASE
        return self.res.heap[off: off + (n & ~3)]

    def block_init(self, start: int, n: int) -> bytes | None:
        off = start - mc.HEAP_BASE
        if off + (n & ~3) <= len(self.init):
            return self.init[off: off + (n & ~3)]
        return None


def graph_compare(env: Env, a: SideResult, b: SideResult, regions: list, roots: list, verbose: bool,
                  max_blocks: int = 14) -> list[Diff]:
    """Compare the object graphs reachable from `regions` (same-address word arrays) and `roots` (named pointer pairs).
    Heap blocks are matched by following pointers in step through both sides, so a different allocation order
    or address is not a difference; a different value, shape or sharing is."""
    from collections import deque
    m = env.m
    A, B = _Side(a), _Side(b)
    namer = Namer(env, a)
    diffs: list[Diff] = []
    matched: dict[int, int] = {}
    inverse: dict[int, int] = {}
    work: deque = deque()
    reported: set = set()
    nblocks = [0]
    via: dict[int, str] = {}

    def path_of(where: str) -> str:
        return where

    def report(where: str, detail: str, key) -> None:
        if key in reported:
            return
        reported.add(key)
        nblocks[0] += 1
        if nblocks[0] <= max_blocks or verbose:
            blk = None
            if isinstance(key, tuple) and key and key[0] == "block" or (isinstance(key, tuple) and key and isinstance(key[0], tuple) and key[0][0] == "block"):
                blk = key[0][1] if isinstance(key[0], tuple) else key[1]
            chain_ = ""
            hops = 0
            while blk is not None and blk in via and hops < 4:
                chain_ += f"  <- {via[blk]}"
                nb = A.block(int(via[blk].split("@")[1].split()[0], 16)) if "@" in via[blk] else None
                blk = nb[0] if nb else None
                hops += 1
            diffs.append(Diff(where, detail + chain_))
        elif nblocks[0] == max_blocks + 1:
            diffs.append(Diff("...", "more differences suppressed (use -v)"))

    def pair_ptr(va: int, vb: int, ctx: str, key) -> None:
        ia, ib = A.block(va), B.block(vb)
        if ia is None or ib is None:
            report(ctx, f"orig {va:#010x} ({'heap' if ia else 'not heap'}) | recon {vb:#010x} ({'heap' if ib else 'not heap'})", key)
            return
        oa, ob = va - ia[0], vb - ib[0]
        if oa != ob:
            report(ctx, f"pointer into block at +{oa:#x} | recon +{ob:#x}", key)
        if ia[0] in matched:
            if matched[ia[0]] != ib[0]:
                report(ctx, f"orig block #{ia[2]} is block #{B.block(matched[ia[0]])[2]} | recon block #{ib[2]}: the graphs differ in sharing", key)
            return
        if ib[0] in inverse:
            report(ctx, f"recon block #{ib[2]} reached from orig blocks #{A.block(inverse[ib[0]])[2]} and #{ia[2]}", key)
            return
        matched[ia[0]] = ib[0]
        inverse[ib[0]] = ia[0]
        via[ia[0]] = ctx
        if ia[1] != ib[1] and namer.class_of(ia[0]):
            report(f"{namer.describe(ia[0])}", f"block size orig {ia[1]} | recon {ib[1]}", ("size", ia[0]))
        work.append((ia, ib))

    def compare_words(wa: bytes, wb: bytes, label, owner_key, ina: bytes | None = None, inb: bytes | None = None,
                      chase: bool = True) -> None:
        n = min(len(wa), len(wb)) // 4
        xa = struct.unpack(f"<{n}I", wa[:n * 4])
        xb = struct.unpack(f"<{n}I", wb[:n * 4])
        ya = struct.unpack(f"<{n}I", ina[:n * 4]) if ina is not None and len(ina) >= n * 4 else None
        yb = struct.unpack(f"<{n}I", inb[:n * 4]) if inb is not None and len(inb) >= n * 4 else None
        for i in range(n):
            va, vb = xa[i], xb[i]
            if ya is not None and yb is not None and va == ya[i] and vb == yb[i]:
                continue          # neither side touched it
            if va == vb and (not chase or not (A.lo <= va < A.hi)):
                continue
            # a word is a pointer when it lands inside an allocated block (a float in 2.0..2.25 is not)
            ha = chase and A.lo <= va < A.hi and A.block(va) is not None
            hb = chase and B.lo <= vb < B.hi and B.block(vb) is not None
            if ha and hb:
                pair_ptr(va, vb, label(i), (owner_key, i))
                continue
            if ha != hb and va != vb and not compare.words_equal(m, va, vb):
                report(label(i), f"orig {va:#010x}{' (pointer)' if ha else ''} | recon {vb:#010x}{' (pointer)' if hb else ''}", (owner_key, i))
                continue
            if ha != hb and va == vb:
                continue                          # same number, a pointer on one side only: data
            if compare.words_equal(m, va, vb):
                continue
            report(label(i), f"orig {va:#010x} | recon {vb:#010x}", (owner_key, i))

    for name, ra, rb, base, ia_, ib_ in regions:
        compare_words(ra, rb, lambda i, base=base: namer.describe(base + 4 * i), ("region", name), ia_, ib_, chase=(name != "arena"))
    for name, pa, pb in roots:
        if pa is None or pb is None:
            continue
        pair_ptr(pa, pb, f"root {name}", ("root", name))
    while work:
        ia, ib = work.popleft()
        cls = namer.class_of(ia[0])
        if cls == "@skip":
            continue                                  # an opaque scaffold block: the scenario compares its parts itself
        segs = env.realign(cls, ib[1]) if cls else None
        if segs is None:
            n = min(ia[1], ib[1])
            compare_words(A.block_bytes(ia[0], n), B.block_bytes(ib[0], n),
                          lambda i, s0=ia[0]: namer.describe(s0 + 4 * i), ("block", ia[0]),
                          A.block_init(ia[0], n), B.block_init(ib[0], n))
            continue
        # a class with STLport/libc++ containers: compare the spans between them at the offsets the original has
        # (the reconstruction's own layout shifted by the size difference of the containers before each span)
        wa, wb, ina, inb, offs = bytearray(), bytearray(), bytearray(), bytearray(), []
        full_a = A.block_bytes(ia[0], ia[1])
        full_b = B.block_bytes(ib[0], ib[1])
        init_a = A.block_init(ia[0], ia[1])
        init_b = B.block_init(ib[0], ib[1])
        for boff, blen, aoff in segs:
            blen = min(blen, len(full_b) - boff, len(full_a) - aoff)
            if blen <= 0:
                continue
            wa += full_a[aoff:aoff + blen]
            wb += full_b[boff:boff + blen]
            if init_a is not None and init_b is not None:
                ina += init_a[aoff:aoff + blen]
                inb += init_b[boff:boff + blen]
            offs += [boff + k for k in range(0, blen & ~3, 4)]
        compare_words(bytes(wa), bytes(wb), lambda i, s0=ia[0], offs=offs: namer.describe(s0 + offs[i]) if i < len(offs) else "?",
                      ("block", ia[0]), bytes(ina) if ina else None, bytes(inb) if inb else None)
    return diffs


def compare_sides(env: Env, chain: Chain, a: SideResult, b: SideResult, verbose: bool = False) -> list[Diff]:
    """a = original, b = reconstruction."""
    diffs: list[Diff] = []
    m = env.m
    if a.error or b.error:
        if a.error != b.error:
            diffs.append(Diff("run", f"orig: {a.error or 'ok'} | recon: {b.error or 'ok'}"))
    # return values
    for i in range(max(len(a.rets), len(b.rets))):
        x = a.rets[i] if i < len(a.rets) else None
        y = b.rets[i] if i < len(b.rets) else None
        if x is None or y is None:
            diffs.append(Diff(f"call #{i}", f"orig {x} | recon {y}"))
            break
        if x[1] != y[1]:
            diffs.append(Diff(f"call #{i} {x[0]}", f"status orig {x[1]} | recon {y[1]}"))
        elif x[0] != y[0]:
            diffs.append(Diff(f"call #{i}", f"orig called {x[0]} | recon called {y[0]}"))
        elif (mc.HEAP_BASE <= x[2] < mc.HEAP_BASE + mc.HEAP_SIZE and mc.HEAP_BASE <= y[2] < mc.HEAP_BASE + mc.HEAP_SIZE
              and x[3] == y[3]):
            pass                      # a heap address: the graph comparison matches the blocks
        elif not (compare.words_equal(m, x[2], y[2]) and compare.words_equal(m, x[3], y[3])):
            diffs.append(Diff(f"call #{i} {x[0]}", f"result orig {x[3]:#x}:{x[2]:#x} | recon {y[3]:#x}:{y[2]:#x}"))
        elif x[4] != y[4]:
            k = next((q for q in range(min(len(x[4]), len(y[4]))) if x[4][q] != y[4][q]), 0)
            diffs.append(Diff(f"call #{i} {x[0]}", f"captured output word {k}: orig {x[4][k:k+1]} | recon {y[4][k:k+1]}"))
    # allocations / effectful library calls (the original's STLport locks and pool allocator are not behaviour)
    def skip(n: str) -> bool:
        # the original's STLport containers allocate through a lock-protected pool (malloc/pthread) where libc++ calls
        # operator new: allocation calls are not compared, their effect is (block sizes of classified objects)
        return (n.startswith("pthread_") or n.startswith("__cxa_guard") or n in ("__cxa_atexit", "__aeabi_atexit")
                or n in ("sprintf", "snprintf", "vsnprintf", "vsprintf", "atoi", "atol", "strtol", "strtoul", "atof", "strtod",
                         "strdup", "wcslen", "wcscmp", "wcscpy", "wmemcpy", "wmemmove", "wmemset", "strcpy", "strncpy", "strcat",
                         "strchr", "strrchr", "strstr", "memchr")
                or n in ("malloc", "calloc", "realloc", "free", "_Znwj", "_Znaj", "_ZdlPv", "_ZdaPv", "_ZdlPvj", "_ZdaPvj")
                or n.startswith(("_Znwj", "_Znaj", "_ZdlPv", "_ZdaPv")))
    ta = [t for t in a.trace_canon if not skip(t[0])]
    tb = [t for t in b.trace_canon if not skip(t[0])]
    if ta != tb:
        for i in range(max(len(ta), len(tb))):
            x = ta[i] if i < len(ta) else None
            y = tb[i] if i < len(tb) else None
            if x != y:
                diffs.append(Diff("library calls", f"call #{i}: orig={compare._fmt_call(x)} recon={compare._fmt_call(y)} (orig {len(ta)} calls, recon {len(tb)})"))
                break
    # named values returned by the scenario
    for k in sorted(set(a.values) | set(b.values)):
        if a.values.get(k) != b.values.get(k):
            diffs.append(Diff(f"value {k}", f"orig {a.values.get(k)!r} | recon {b.values.get(k)!r}"))
    if not chain.compare_heap:
        return diffs
    regions = []
    for (aaddr, abytes), (baddr, bbytes), (_x, ainit), (_y, binit) in zip(a.orig_rw, b.orig_rw, a.rw_init, b.rw_init):
        buf, bin_ = bytearray(bbytes), bytearray(binit)
        for oa, ra, sz, name in m.global_pairs:
            if baddr <= oa and oa + sz <= baddr + len(buf) and name in b.recon_rw:
                buf[oa - baddr: oa - baddr + sz] = b.recon_rw[name]
                bin_[oa - baddr: oa - baddr + sz] = b.recon_init.get(name, bytes(sz))
        import re as _re
        pats = [_re.compile(x) for x in DEFAULT_IGNORE + tuple(chain.ignore_globals)]
        abytes, ainit = bytearray(abytes), bytearray(ainit)
        for nm, sa in m.orig.syms.items():
            if baddr <= sa < baddr + len(buf) and m.orig.sym_kind.get(nm) == elf32.STT_OBJECT and any(pt.search(nm) for pt in pats):
                sz = m.orig.sym_size.get(nm, 0)
                o = sa - baddr
                buf[o:o + sz] = bytes(sz)
                bin_[o:o + sz] = bytes(sz)
                abytes[o:o + sz] = bytes(sz)
                ainit[o:o + sz] = bytes(sz)
        for lo, hi in env.orig_cmp:
            if baddr <= lo and hi <= baddr + len(buf):
                regions.append((f"globals@{lo:#x}", abytes[lo - aaddr: hi - aaddr], bytes(buf[lo - baddr: hi - baddr]), lo,
                                ainit[lo - aaddr: hi - aaddr], bytes(bin_[lo - baddr: hi - baddr])))
    regions.append(("arena", a.arena, b.arena, mc.ARENA_BASE, a.arena_init, b.arena_init))
    roots = [(k, a.roots.get(k), b.roots.get(k)) for k in sorted(set(a.roots) | set(b.roots))]
    if chain.compare_heap == "raw":
        namer = Namer(env, a)
        for addr, va, vb in _word_diffs(env, a.heap, b.heap, mc.HEAP_BASE, 40):
            diffs.append(Diff(namer.describe(addr), f"orig {va:#010x} | recon {vb:#010x}"))
        regions = regions[-1:]
        roots = []
    diffs += graph_compare(env, a, b, regions, roots, verbose)
    return diffs


# ----- driver -------------------------------------------------------------------------------------------------------------------------

def load_chains() -> tuple[dict[str, Chain], dict[str, Boot]]:
    chains: dict[str, Chain] = {}
    boots: dict[str, Boot] = {}
    d = Path(__file__).resolve().parent / "chains"
    sys.path.insert(0, str(d.parent))
    for p in sorted(d.glob("*.py")):
        if p.name.startswith("_"):
            continue
        mod = importlib.import_module(f"chains.{p.stem}")
        for c in getattr(mod, "CHAINS", []):
            chains[c.name] = c
        for b in getattr(mod, "BOOTS", []):
            boots[b.name] = b
    return chains, boots


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("names", nargs="*", help="chains to run (default all)")
    ap.add_argument("--list", action="store_true")
    ap.add_argument("-v", "--verbose", action="store_true")
    ap.add_argument("--rebuild", action="store_true", help="refresh the ARM32 objects of the chain categories first")
    ap.add_argument("--reboot", action="store_true", help="ignore cached boot snapshots")
    ap.add_argument("--cover", action="store_true", help="report which functions of the reconstruction the chain executed (slower)")
    ap.add_argument("--library", default=str(manifest.ORIG_DEFAULT))
    a = ap.parse_args()
    chains, boots = load_chains()
    if a.list:
        for c in chains.values():
            print(f"{c.name:34s} boot={c.boot:18s} {c.doc}")
        return 0
    names = a.names or list(chains)
    env = Env(a.library, rebuild=a.rebuild)
    print(f"[chain] image loaded in {env.load_seconds:.1f}s (recon {len(env.m.recon.syms)} symbols, pairs {len(env.m.global_pairs)})", flush=True)
    rc = 0
    snaps: dict[str, Snapshot] = {}
    for n in names:
        c = chains[n]
        b = boots[c.boot]
        if b.name not in snaps:
            snaps[b.name] = run_boot(env, b, a.reboot, True)
            if snaps[b.name].notes and a.verbose:
                print("  boot notes:", *snaps[b.name].notes[:10], sep="\n    ")
        snap = snaps[b.name]
        ra = run_side(env, c, snap, "orig")
        rb = run_side(env, c, snap, "recon", cover=a.cover)
        diffs = compare_sides(env, c, ra, rb, a.verbose)
        if ra.error or rb.error:
            print(f"   run error: orig={ra.error[:200]!r} recon={rb.error[:200]!r}")
        cov = f"recon ran {len(rb.ran_recon)} functions, {len(rb.ran_orig)} fell back to the original; calls {len(ra.log)}"
        print(f"[chain] {n}: {'MATCH' if not diffs else 'MISMATCH ' + str(len(diffs))}  ({ra.seconds:.1f}s/{rb.seconds:.1f}s; {cov})", flush=True)
        if rb.fallback and a.verbose:
            print("   not in reconstruction:", ", ".join(sorted(rb.fallback)[:10]))
        for d in diffs[:30 if not a.verbose else 400]:
            print(f"   {d.where}: {d.detail}")
        if diffs:
            rc = 1
    return rc


if __name__ == "__main__":
    import chain as _chain          # the classes must live in module `chain`, not `__main__`, for the pickled snapshots
    sys.exit(_chain.main())
