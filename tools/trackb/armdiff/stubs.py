"""Python models for the C library imports of both libraries.

A model gets the Machine and the four argument registers `a` (a[0]..a[3]); stack arguments are read
with m.stack_arg(n). It returns None (void), an int (r0), or a (lo, hi) pair (r0, r1; 64-bit or
double results). Soft-float ABI: floats travel as 32-bit patterns in core registers.

Both libraries bind to the same models, so a model can only hide a difference that lies inside the
libc function itself. That is by design: armdiff checks the reconstruction, not libc.

Models that fail raise Unmodeled / Fault; the runner reports the case as `unmodeled` and never as
a match.
"""
from __future__ import annotations

import math
import struct
from typing import Callable

M32 = 0xFFFFFFFF


class Fault(Exception):
    """The emulated program did something a real device would fault on."""


class Unmodeled(Exception):
    """The program called something armdiff has no model for."""


MODELS: dict[str, Callable] = {}

MAX_BLOCK = 1 << 18      # a memory helper asked to touch more than 256 KiB has been given a wild size (and a loop of such calls would take hours)


def _len_ok(n: int) -> int:
    if n > MAX_BLOCK:
        raise Fault(f"wild length {n:#x}")
    return n

# Imported data objects (GLOB_DAT / ABS32 against a data symbol): name -> (size, initial bytes)
DATA_SYMBOLS: dict[str, tuple[int, bytes]] = {}


def stub(*names: str):
    def deco(fn):
        for n in names:
            MODELS[n] = fn
        return fn
    return deco


def f32(bits: int) -> float:
    return struct.unpack("<f", struct.pack("<I", bits & M32))[0]


def bits32(x: float) -> int:
    try:
        return struct.unpack("<I", struct.pack("<f", x))[0]
    except OverflowError:
        return 0x7F800000 if x > 0 else 0xFF800000


def f64(lo: int, hi: int) -> float:
    return struct.unpack("<d", struct.pack("<II", lo & M32, hi & M32))[0]


def bits64(x: float) -> tuple[int, int]:
    lo, hi = struct.unpack("<II", struct.pack("<d", x))
    return lo, hi


# ----- memory and strings ------------------------------------------------------------------------

@stub("memcpy", "memmove")
def _memcpy(m, a):
    dst, src, n = a[0], a[1], _len_ok(a[2])
    if n:
        m.write_mem(dst, bytes(m.read_mem(src, n)))
    return dst


@stub("__aeabi_memcpy", "__aeabi_memcpy4", "__aeabi_memcpy8", "__aeabi_memmove", "__aeabi_memmove4", "__aeabi_memmove8")
def _aeabi_memcpy(m, a):
    if _len_ok(a[2]):
        m.write_mem(a[0], bytes(m.read_mem(a[1], a[2])))
    return None


@stub("memset")
def _memset(m, a):
    if _len_ok(a[2]):
        m.write_mem(a[0], bytes([a[1] & 0xFF]) * a[2])
    return a[0]


@stub("__aeabi_memset", "__aeabi_memset4", "__aeabi_memset8")
def _aeabi_memset(m, a):
    # void __aeabi_memset(void *dest, size_t n, int c)
    if _len_ok(a[1]):
        m.write_mem(a[0], bytes([a[2] & 0xFF]) * a[1])
    return None


@stub("__aeabi_memclr", "__aeabi_memclr4", "__aeabi_memclr8")
def _aeabi_memclr(m, a):
    if _len_ok(a[1]):
        m.write_mem(a[0], bytes(a[1]))
    return None


@stub("memcmp", "bcmp")
def _memcmp(m, a):
    _len_ok(a[2])
    x, y = bytes(m.read_mem(a[0], a[2])), bytes(m.read_mem(a[1], a[2]))
    for p, q in zip(x, y):
        if p != q:
            return (p - q) & M32
    return 0


@stub("memchr")
def _memchr(m, a):
    data = bytes(m.read_mem(a[0], _len_ok(a[2])))
    i = data.find(bytes([a[1] & 0xFF]))
    return 0 if i < 0 else a[0] + i


def _cstr(m, addr: int, limit: int = 1 << 16) -> bytes:
    out = bytearray()
    while len(out) < limit:
        chunk = bytes(m.read_mem(addr + len(out), 16 - ((addr + len(out)) & 15)))
        i = chunk.find(b"\0")
        if i >= 0:
            out += chunk[:i]
            return bytes(out)
        out += chunk
    raise Fault("unterminated string")


@stub("strlen")
def _strlen(m, a):
    return len(_cstr(m, a[0]))


@stub("strcmp")
def _strcmp(m, a):
    x, y = _cstr(m, a[0]), _cstr(m, a[1])
    return (x > y) - (x < y) & M32


@stub("strncmp")
def _strncmp(m, a):
    _len_ok(a[2])
    x, y = _cstr(m, a[0], a[2])[:a[2]], _cstr(m, a[1], a[2])[:a[2]]
    return (x > y) - (x < y) & M32


@stub("strcasecmp", "stricmp")
def _strcasecmp(m, a):
    x, y = _cstr(m, a[0]).lower(), _cstr(m, a[1]).lower()
    return (x > y) - (x < y) & M32


@stub("strcpy")
def _strcpy(m, a):
    s = _cstr(m, a[1])
    m.write_mem(a[0], s + b"\0")
    return a[0]


@stub("strncpy")
def _strncpy(m, a):
    _len_ok(a[2])
    s = _cstr(m, a[1], a[2])[:a[2]]
    m.write_mem(a[0], s + bytes(a[2] - len(s)))
    return a[0]


@stub("strcat")
def _strcat(m, a):
    d = _cstr(m, a[0])
    m.write_mem(a[0] + len(d), _cstr(m, a[1]) + b"\0")
    return a[0]


@stub("strchr")
def _strchr(m, a):
    s = _cstr(m, a[0])
    c = a[1] & 0xFF
    if c == 0:
        return a[0] + len(s)
    i = s.find(bytes([c]))
    return 0 if i < 0 else a[0] + i


@stub("strrchr")
def _strrchr(m, a):
    s = _cstr(m, a[0])
    c = a[1] & 0xFF
    if c == 0:
        return a[0] + len(s)
    i = s.rfind(bytes([c]))
    return 0 if i < 0 else a[0] + i


@stub("strstr")
def _strstr(m, a):
    i = _cstr(m, a[0]).find(_cstr(m, a[1]))
    return 0 if i < 0 else a[0] + i


@stub("toupper")
def _toupper(m, a):
    c = a[0] & M32
    return c - 32 if 97 <= c <= 122 else c


@stub("tolower")
def _tolower(m, a):
    c = a[0] & M32
    return c + 32 if 65 <= c <= 90 else c


@stub("abs", "labs")
def _abs(m, a):
    v = a[0] if a[0] < 0x80000000 else a[0] - (1 << 32)
    return abs(v) & M32


# ----- heap ------------------------------------------------------------------------------------

@stub("malloc", "_Znwj", "_Znaj", "_ZnwjRKSt9nothrow_t", "_ZnajRKSt9nothrow_t")
def _malloc(m, a):
    return m.heap_alloc(a[0])


@stub("calloc")
def _calloc(m, a):
    return m.heap_alloc(_len_ok(a[0] * a[1] & M32))


@stub("realloc")
def _realloc(m, a):
    new = m.heap_alloc(a[1])
    old_size = m.heap_sizes.get(a[0], 0)
    if a[0] and old_size:
        m.write_mem(new, bytes(m.read_mem(a[0], min(old_size, a[1]))))
    return new


@stub("free", "_ZdlPv", "_ZdaPv", "_ZdlPvj", "_ZdaPvj", "_ZdlPvRKSt9nothrow_t", "_ZdaPvRKSt9nothrow_t")
def _free(m, a):
    return None


# ----- process / runtime -------------------------------------------------------------------------

@stub("abort", "__cxa_pure_virtual", "__cxa_call_terminate", "__gnu_Unwind_Find_exidx", "_Unwind_Resume",
      "__cxa_throw", "__cxa_allocate_exception", "__cxa_begin_catch", "__cxa_end_catch", "__cxa_rethrow",
      "__gxx_personality_v0", "__cxa_bad_cast", "__cxa_bad_typeid")
def _abort(m, a):
    raise Fault(f"{m.current_stub}")


@stub("__stack_chk_fail")
def _stack_chk_fail(m, a):
    raise Fault("stack_chk_fail")


@stub("__cxa_atexit", "__aeabi_atexit", "atexit")
def _atexit(m, a):
    return 0


@stub("__cxa_guard_acquire")
def _guard_acquire(m, a):
    # first use: report "needs init" once; the guard byte is set by the matching release
    if m.read_u8(a[0]) & 1:
        return 0
    return 1


@stub("__cxa_guard_release")
def _guard_release(m, a):
    m.write_mem(a[0], b"\x01")
    return None


@stub("__cxa_guard_abort")
def _guard_abort(m, a):
    return None


@stub("__errno")
def _errno(m, a):
    return m.cell("errno", 4)


@stub("__android_log_print", "__android_log_write", "__android_log_vprint", "__android_log_assert")
def _alog(m, a):
    return 0


@stub("rand")
def _rand(m, a):
    m.rand_state = (m.rand_state * 1103515245 + 12345) & 0x7FFFFFFF
    return m.rand_state


@stub("srand")
def _srand(m, a):
    m.rand_state = a[0]
    return None


# ----- libm (float in/out in r0; double in r0:r1 and r2:r3) --------------------------------------

def _f1(fn):
    def model(m, a):
        try:
            return bits32(fn(f32(a[0])))
        except (ValueError, OverflowError):
            return 0x7FC00000
    return model


def _f2(fn):
    def model(m, a):
        try:
            return bits32(fn(f32(a[0]), f32(a[1])))
        except (ValueError, OverflowError, ZeroDivisionError):
            return 0x7FC00000
    return model


def _d1(fn):
    def model(m, a):
        try:
            return bits64(fn(f64(a[0], a[1])))
        except (ValueError, OverflowError):
            return bits64(float("nan"))
    return model


def _d2(fn):
    def model(m, a):
        try:
            return bits64(fn(f64(a[0], a[1]), f64(a[2], a[3])))
        except (ValueError, OverflowError, ZeroDivisionError):
            return bits64(float("nan"))
    return model


def _nan_to(fn):
    return lambda x: fn(x) if math.isfinite(x) else (x if not math.isnan(x) else x)


_FLOAT_FUNCS = {
    "sinf": math.sin, "cosf": math.cos, "tanf": math.tan, "asinf": math.asin, "acosf": math.acos, "atanf": math.atan,
    "sqrtf": math.sqrt, "expf": math.exp, "logf": math.log, "log10f": math.log10, "floorf": math.floor, "ceilf": math.ceil,
    "fabsf": math.fabs, "truncf": math.trunc, "sinhf": math.sinh, "coshf": math.cosh, "tanhf": math.tanh,
    "roundf": lambda x: math.floor(x + 0.5) if x >= 0 else -math.floor(-x + 0.5),
}
for _n, _fn in _FLOAT_FUNCS.items():
    MODELS[_n] = _f1(lambda x, _fn=_fn: float(_fn(x)) if math.isfinite(x) else (x if not math.isnan(x) or _fn is math.fabs else x))
MODELS["atan2f"] = _f2(math.atan2)
MODELS["powf"] = _f2(math.pow)
MODELS["fmodf"] = _f2(math.fmod)
for _n, _fn in {"sin": math.sin, "cos": math.cos, "tan": math.tan, "asin": math.asin, "acos": math.acos, "atan": math.atan,
                "sqrt": math.sqrt, "exp": math.exp, "log": math.log, "log10": math.log10, "floor": math.floor,
                "ceil": math.ceil, "fabs": math.fabs}.items():
    MODELS[_n] = _d1(lambda x, _fn=_fn: float(_fn(x)))
MODELS["atan2"] = _d2(math.atan2)
MODELS["pow"] = _d2(math.pow)
MODELS["fmod"] = _d2(math.fmod)


# ----- imported data ---------------------------------------------------------------------------------

def _ctype_table() -> bytes:
    # bionic <ctype.h>: _U 1, _L 2, _N 4, _S 8, _P 0x10, _C 0x20, _X 0x40, _B 0x80. Index -1..255 -> 257 bytes.
    t = bytearray(257)
    for c in range(256):
        f = 0
        ch = chr(c)
        if "A" <= ch <= "Z":
            f |= 1
        if "a" <= ch <= "z":
            f |= 2
        if "0" <= ch <= "9":
            f |= 4
        if ch in " \t\n\v\f\r":
            f |= 8
        if 33 <= c <= 126 and not ch.isalnum():
            f |= 0x10
        if c < 32 or c == 127:
            f |= 0x20
        if ch in "0123456789abcdefABCDEF":
            f |= 0x40
        if c == 32:
            f |= 0x80
        t[c + 1] = f
    return bytes(t)


DATA_SYMBOLS["__stack_chk_guard"] = (4, struct.pack("<I", 0x3C5A1D07))
DATA_SYMBOLS["_ctype_"] = (257, _ctype_table())
DATA_SYMBOLS["_tolower_tab_"] = (514, struct.pack("<257h", *([-1] + [c + 32 if 65 <= c <= 90 else c for c in range(256)])))
DATA_SYMBOLS["_toupper_tab_"] = (514, struct.pack("<257h", *([-1] + [c - 32 if 97 <= c <= 122 else c for c in range(256)])))
DATA_SYMBOLS["__sF"] = (3 * 84, bytes(3 * 84))
DATA_SYMBOLS["__dso_handle"] = (4, bytes(4))
DATA_SYMBOLS["_ZSt7nothrow"] = (4, bytes(4))
DATA_SYMBOLS["environ"] = (4, bytes(4))
