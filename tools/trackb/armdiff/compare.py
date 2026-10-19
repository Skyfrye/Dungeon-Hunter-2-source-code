"""Compare two runs of the same case: return registers, every byte the callee wrote, and the call trace.

Outcomes of one case:
    equal            both returned; return value, written memory and effectful calls are identical
    fault_equal      both faulted the same way (same kind and address)
    mismatch         anything else that is conclusive (the detail names the first difference)
    inconclusive     the case cannot decide anything (both ran out of budget, original hit an unmodeled call, ...)

Words that hold code or stack addresses are canonicalised before comparing: a pointer into the
reconstructed image becomes (symbol name, offset), the same as the matching pointer into the original,
and any stack address becomes `<stack>`. Everything else is compared byte for byte.
"""
from __future__ import annotations

import struct
from dataclasses import dataclass, field

import machine as mc
from cases import Case

M32 = 0xFFFFFFFF
PAGE = mc.PAGE

# Calls whose whole effect is memory traffic: the bytes written are compared, so the call itself is not.
MEMORY_HELPERS = {"memcpy", "memmove", "memset", "memclr", "bcmp", "memcmp", "__aeabi_memcpy", "__aeabi_memcpy4", "__aeabi_memcpy8",
                  "__aeabi_memmove", "__aeabi_memmove4", "__aeabi_memmove8", "__aeabi_memset", "__aeabi_memset4", "__aeabi_memset8",
                  "__aeabi_memclr", "__aeabi_memclr4", "__aeabi_memclr8", "memchr"}
# Calls with no effect other than their result (libm, string and ctype helpers): the result reaches the compared
# registers and memory, so the call sequence itself is not compared. `sqrtf(x)` and `(float)sqrt((double)x)` are equal.
PURE_CALLS = {"sinf", "cosf", "tanf", "asinf", "acosf", "atanf", "atan2f", "sqrtf", "expf", "logf", "log10f", "powf", "fmodf", "floorf",
              "ceilf", "fabsf", "truncf", "roundf", "sinhf", "coshf", "tanhf", "sin", "cos", "tan", "asin", "acos", "atan", "atan2",
              "sqrt", "exp", "log", "log10", "pow", "fmod", "floor", "ceil", "fabs", "strlen", "strcmp", "strncmp", "strcasecmp",
              "stricmp", "strchr", "strrchr", "strstr", "toupper", "tolower", "abs", "labs"}
_NORMALIZE_CALL = {"_ZdlPvj": "_ZdlPv", "_ZdaPvj": "_ZdaPv", "_Znaj": "_Znwj", "_ZdaPv": "_ZdlPv"}


@dataclass
class Verdict:
    kind: str                       # equal | fault_equal | mismatch | inconclusive
    detail: str = ""
    first: str = ""                 # short location of the first difference ("r0", "this+0x18", ...)
    region: str = ""                # for memory differences: the case region name ("this", "arg2(userData)", "heap", ...)
    offset: int = -1                # offset of the first differing byte inside that region


def canon_word(m: mc.Machine, v: int):
    v &= M32
    if mc.STACK_LOW <= v < mc.STACK_TOP:
        return "<stack>"
    for img in (m.orig, m.recon, m.rt):
        if img is not None and img.contains(v):
            s = img.sym_at(v)
            if s:
                return ("sym", s[0], s[1])
            return (img.name, v - img.base)
    if mc.STUB_BASE <= v < mc.STUB_BASE + mc.STUB_SIZE:
        i = (v - mc.STUB_BASE) >> 3
        return ("stub", m.stub_names[i]) if i < len(m.stub_names) else v
    return v


def _cstring(m: mc.Machine, addr: int, limit: int = 256) -> bytes | None:
    try:
        raw = bytes(m.uc.mem_read(addr, limit))
    except Exception:
        try:
            raw = bytes(m.uc.mem_read(addr, 16))
        except Exception:
            return None
    i = raw.find(b"\0")
    return raw[:i] if i >= 0 else None


def words_equal(m: mc.Machine, va: int, vb: int) -> bool:
    """Equal after canonicalisation; two pointers into the images (original rodata, reconstruction rodata) also
    count as equal when they point at the same non-empty C string."""
    if canon_word(m, va) == canon_word(m, vb):
        return True
    if _is_nan32(va) and _is_nan32(vb):
        return True                  # NaN sign and payload depend on which operation produced it; not behaviour
    oa, ob = m.orig.contains(va), m.orig.contains(vb)
    ra = m.recon is not None and m.recon.contains(va)
    rb = m.recon is not None and m.recon.contains(vb)
    if (oa and rb) or (ra and ob):
        sa, sb = _cstring(m, va), _cstring(m, vb)
        return sa is not None and sa == sb and len(sa) > 0
    return False


def overlay_paired_globals(m: mc.Machine, run: mc.RunResult):
    """The reconstruction's copy of a global the original also has (same name, same size) stands for the original's
    copy: if the run changed it, present the change at the original's address so it compares like any other write."""
    final = dict(run.pages_final)
    initial = dict(run.pages_initial)
    paired: set[int] = set()
    for oa, ra, size, _name in m.global_pairs:
        rpages = range(ra & ~(PAGE - 1), (ra + size + PAGE - 1) & ~(PAGE - 1), PAGE)
        if not any(pg in run.pages_final for pg in rpages):
            continue
        paired.update(rpages)

        def view(pages: dict, addr: int, n: int) -> bytes:
            out = bytearray()
            while n > 0:
                pg = addr & ~(PAGE - 1)
                off = addr - pg
                take = min(n, PAGE - off)
                data = pages.get(pg)
                if data is None:
                    data = bytes(m.uc.mem_read(pg, PAGE))
                out += data[off:off + take]
                addr += take
                n -= take
            return bytes(out)
        new = view(run.pages_final, ra, size)
        old = view(run.pages_initial, ra, size)
        if new == old:
            continue
        # patch `new` into the original-address pages of the overlay
        addr, n, pos = oa, size, 0
        while n > 0:
            pg = addr & ~(PAGE - 1)
            off = addr - pg
            take = min(n, PAGE - off)
            if pg not in initial:
                initial[pg] = bytes(m.uc.mem_read(pg, PAGE))
            page = bytearray(final.get(pg, initial[pg]))
            page[off:off + take] = new[pos:pos + take]
            final[pg] = bytes(page)
            addr += take
            n -= take
            pos += take
    return final, initial, paired


def _is_nan32(v: int) -> bool:
    return (v & 0x7F800000) == 0x7F800000 and (v & 0x007FFFFF) != 0


def _is_nan64(lo: int, hi: int) -> bool:
    return (hi & 0x7FF00000) == 0x7FF00000 and ((hi & 0x000FFFFF) or lo)


def locate_ex(m: mc.Machine, case: Case, addr: int, namer=None) -> tuple[str, str, int]:
    """(text, region name, offset) of an address; region is "" when it is not inside a case region."""
    for r in case.regions:
        if r.addr <= addr < r.addr + r.size:
            off = addr - r.addr
            s = f"{r.name}+{off:#x}"
            if namer is not None:
                nm = namer(r.name, off)
                if nm:
                    s += f" ({nm})"
            return s, r.name, off
    return locate(m, case, addr, namer), "", -1


def locate(m: mc.Machine, case: Case, addr: int, namer=None) -> str:
    for r in case.regions:
        if r.addr <= addr < r.addr + r.size:
            off = addr - r.addr
            s = f"{r.name}+{off:#x}"
            if namer is not None:
                nm = namer(r.name, off)
                if nm:
                    s += f" ({nm})"
            return s
    if mc.HEAP_BASE <= addr < mc.HEAP_BASE + mc.HEAP_SIZE:
        return f"heap+{addr - mc.HEAP_BASE:#x}"
    if mc.STACK_LOW <= addr < mc.STACK_TOP:
        return f"stack+{addr - mc.STACK_LOW:#x}"
    if mc.ARENA_BASE <= addr < mc.ARENA_BASE + mc.ARENA_SIZE:
        return f"arena+{addr - mc.ARENA_BASE:#x}"
    if m.orig.contains(addr):
        s = m.orig.sym_at(addr)
        return f"orig:{s[0]}+{s[1]:#x}" if s else f"orig+{addr - m.orig.base:#x}"
    if m.recon is not None and m.recon.contains(addr):
        s = m.recon.sym_at(addr)
        return f"recon:{s[0]}+{s[1]:#x}" if s else f"recon+{addr - m.recon.base:#x}"
    if mc.CELL_BASE <= addr < mc.CELL_BASE + mc.CELL_SIZE:
        return f"cell+{addr - mc.CELL_BASE:#x}"
    return f"wild@{addr:#x}"


def _fault_key(detail: str) -> str:
    """Normalise a fault description: keep the kind and any accessed address, drop code locations."""
    d = detail.split(" at pc=")[0]
    return d.strip()


def compare_runs(m: mc.Machine, case: Case, ret: str, ret_flags: dict, a: mc.RunResult, b: mc.RunResult, *,
                 orig_has_calls: bool, is_ctor_like: bool = False, has_sret: bool = False, namer=None) -> Verdict:
    """a = original, b = reconstructed."""
    if b.local_touch:
        return Verdict("inconclusive", "reconstruction touches its own global state with no counterpart by name in the original: "
                       + ", ".join(b.local_touch[:2]))
    # ---- status ----------------------------------------------------------------------------------
    if a.status != "ok" or b.status != "ok":
        sa, sb = a.status, b.status
        if sa == "budget" and sb == "budget":
            return Verdict("inconclusive", "both exceeded the instruction budget")
        if sa == "unmodeled":
            return Verdict("inconclusive", f"original reached an unmodeled call: {a.detail}")
        if sa == "fault" and sb == "fault":
            ka, kb = _fault_key(a.detail), _fault_key(b.detail)
            if _fault_kind(ka) == _fault_kind(kb):
                return Verdict("fault_equal", f"both fault: {ka} | {kb}")
            return Verdict("mismatch", f"different faults: orig {a.detail} | recon {b.detail}", "fault")
        if sa == "ok" and sb == "unmodeled":
            # The reconstruction calls a function that has no model and is not in the original under that name: most
            # often a header-inline helper the original compiler inlined (or a libc++ routine). It cannot be run, so
            # the case decides nothing; a real extra call to a modelled function is caught by the call comparison.
            return Verdict("inconclusive", f"reconstruction reached a function armdiff cannot run and the original does not call: {b.detail}")
        if sa == "ok":
            return Verdict("mismatch", f"original returns, reconstruction {sb}: {b.detail}", "status")
        if sb == "ok":
            return Verdict("mismatch", f"reconstruction returns, original {sa}: {a.detail}", "status")
        return Verdict("inconclusive", f"orig {sa} ({a.detail}); recon {sb} ({b.detail})")

    # ---- return value ---------------------------------------------------------------------------
    r0a, r1a, r0b, r1b = a.regs[0], a.regs[1], b.regs[0], b.regs[1]
    diff = None
    if ret in ("i32", "ptr") and not has_sret:
        if not words_equal(m, r0a, r0b):
            diff = f"r0: orig={r0a:#x} recon={r0b:#x}"
    elif ret == "float":
        if r0a != r0b and not (_is_nan32(r0a) and _is_nan32(r0b)):
            diff = f"r0 (float): orig={r0a:#010x} recon={r0b:#010x}"
    elif ret == "i1" or ret == "i8":
        if (r0a & 0xFF) != (r0b & 0xFF):
            diff = f"r0 (low byte): orig={r0a & 0xFF:#x} recon={r0b & 0xFF:#x}"
        else:
            za = ret_flags.get("ret_zeroext") and (r0a & ~0xFF) != 0
            zb = ret_flags.get("ret_zeroext") and (r0b & ~0xFF) != 0
            # callee must extend; the original is the reference
            if zb and not za:
                diff = f"r0 not zero-extended: orig={r0a:#x} recon={r0b:#x}"
    elif ret == "i16":
        if (r0a & 0xFFFF) != (r0b & 0xFFFF):
            diff = f"r0 (low half): orig={r0a & 0xFFFF:#x} recon={r0b & 0xFFFF:#x}"
    elif ret == "i64":
        if (r0a, r1a) != (r0b, r1b):
            diff = f"r0:r1: orig={r1a:#x}:{r0a:#x} recon={r1b:#x}:{r0b:#x}"
    elif ret == "double":
        if (r0a, r1a) != (r0b, r1b) and not (_is_nan64(r0a, r1a) and _is_nan64(r0b, r1b)):
            diff = f"r0:r1 (double): orig={r1a:#x}:{r0a:#x} recon={r1b:#x}:{r0b:#x}"
    elif ret.startswith("[") or ret.startswith("{"):
        n = 4
        if a.regs[:n] != b.regs[:n]:
            diff = f"r0..r3: orig={[hex(x) for x in a.regs[:n]]} recon={[hex(x) for x in b.regs[:n]]}"
    if diff:
        if case.args and r0a == case.args[0] and r0b != case.args[0]:
            diff += "  [original r0 still equals its first argument: the original may return nothing here]"
        elif case.args and r0b == case.args[0] and r0a != case.args[0]:
            diff += "  [reconstruction r0 still equals its first argument: it may return nothing here]"
        return Verdict("mismatch", diff, diff.split(":")[0].split(" ")[0])

    # ---- memory ------------------------------------------------------------------------------------
    b_final, b_initial, paired = overlay_paired_globals(m, b)
    pages = set(a.pages_final) | set(b_final)
    sp_lo = mc.STACK_LOW
    sp_entry = a.sp_entry
    first_diff = None
    recon_local = 0
    for pg in sorted(pages):
        if m.recon is not None and m.recon.contains(pg):
            # the reconstruction's own statics/constants that have no counterpart in the original
            if pg in b.pages_final and b.pages_final[pg] != b.pages_initial.get(pg) and pg not in paired:
                recon_local += 1
            continue
        init = a.pages_initial.get(pg) or b_initial.get(pg)
        fa = a.pages_final.get(pg, init)
        fb = b_final.get(pg, init)
        if fa == fb:
            continue
        lo = 0
        hi = PAGE
        if sp_lo <= pg < mc.STACK_TOP:
            # callee frame (below the stack pointer at entry) is private
            if pg + PAGE <= sp_entry & ~7:
                continue
            if pg <= sp_entry < pg + PAGE:
                lo = (sp_entry - pg) & ~3
        if fa[lo:hi] == fb[lo:hi]:
            continue
        for w in range(lo, hi, 4):
            xa, xb = fa[w:w + 4], fb[w:w + 4]
            if xa == xb:
                continue
            va, vb = struct.unpack("<I", xa)[0], struct.unpack("<I", xb)[0]
            if words_equal(m, va, vb):
                continue
            # find the first differing byte inside the word
            k = next(i for i in range(4) if xa[i] != xb[i])
            addr = pg + w + k
            first_diff = (addr, xa[k], xb[k], va, vb, pg + w)
            break
        if first_diff:
            break
    if first_diff:
        addr, ba, bb, va, vb, waddr = first_diff
        where, region, off = locate_ex(m, case, addr, namer)
        return Verdict("mismatch", f"memory {where}: orig={ba:#04x} recon={bb:#04x} (word {va:#010x} vs {vb:#010x})", where, region, off)

    # ---- trace of effectful calls ----------------------------------------------------------------------
    ta = [t for t in a.trace if t[0] not in MEMORY_HELPERS and t[0] not in PURE_CALLS]
    tb = [t for t in b.trace if t[0] not in MEMORY_HELPERS and t[0] not in PURE_CALLS]
    na = [(_NORMALIZE_CALL.get(n, n), tuple(canon_word(m, v) for v in _norm_args(n, args))) for n, args in ta]
    nb = [(_NORMALIZE_CALL.get(n, n), tuple(canon_word(m, v) for v in _norm_args(n, args))) for n, args in tb]
    if na != nb:
        for i in range(max(len(na), len(nb))):
            x = na[i] if i < len(na) else None
            y = nb[i] if i < len(nb) else None
            if x != y:
                return Verdict("mismatch", f"call #{i}: orig={_fmt_call(x)} recon={_fmt_call(y)}", "call")
    note = f" (recon-local writes on {recon_local} pages ignored)" if recon_local else ""
    return Verdict("equal", note)


def _fault_kind(key: str) -> str:
    # "null_access:read@0x4" -> keep as is (kind + address); "read_unmapped" etc. -> kind only
    return key


def _norm_args(name: str, args) -> tuple:
    # allocation and string helpers: the first argument(s) matter; trailing registers are garbage
    n = {"_Znwj": 1, "_Znaj": 1, "malloc": 1, "calloc": 2, "realloc": 2, "free": 1, "_ZdlPv": 1, "_ZdaPv": 1, "_ZdlPvj": 1,
         "strlen": 1, "strcmp": 2, "strncmp": 3, "strcpy": 2, "strcat": 2, "strchr": 2, "strstr": 2, "toupper": 1, "tolower": 1,
         "abs": 1, "labs": 1}.get(name)
    return tuple(args[:n]) if n is not None else tuple(args)


def _fmt_call(c) -> str:
    if c is None:
        return "(none)"
    n, args = c
    return f"{n}({', '.join(str(x) if not isinstance(x, int) else hex(x) for x in args)})"
