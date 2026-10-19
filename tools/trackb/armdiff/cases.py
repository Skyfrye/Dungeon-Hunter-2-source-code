"""Seeded, reproducible input generation for one function.

A case is a set of register values, stack words and memory buffers that both sides receive byte for
byte. Types come from the reconstructed function's LLVM IR signature (the original has none): the
ARM calling convention view says exactly which registers hold what, how small integers are extended
(zeroext / signext) and how large `this` is (dereferenceable).

Buffers are laid out in the arena one after another with a gap. Pointer-valued words inside buffers
point at other buffers some of the time, at null some of the time, and are plain random otherwise.
Anything else a function dereferences is demand-paged garbage that is the same for both sides.

Two independent styles shape a case. The buffer style decides what the object memory looks like:
all zero, small counters, mixed random, pointer-rich, byte-sparse (flags that are mostly clear, a few
set) or word-sparse. The scalar style decides the argument registers: zero, small, mixed, boundary
values or a small range. The first cases are fixed combinations; later ones draw both at random.
"""
from __future__ import annotations

import random
import re
import struct
from dataclasses import dataclass, field

import abi
from machine import ARENA_BASE, ARENA_SIZE

M32 = 0xFFFFFFFF

INT_BOUNDARY = [0, 1, 2, 3, 4, 7, 8, 15, 16, 31, 32, 63, 64, 100, 127, 128, 255, 256, 1000, 1023, 1024, 4095, 4096, 65535, 65536,
                0x7FFFFFFF, 0x80000000, 0x80000001, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFF0, 0xFFFFFF80, 0xFFFF0000]
FLOAT_VALUES = [0.0, -0.0, 1.0, -1.0, 0.5, -0.5, 2.0, 0.1, 10.0, 100.0, 1000.0, -1000.0, 3.14159265, 1e-3, 1e-10, 1e10, 1e30, -1e30,
                255.0, 256.0, 0.999, 1.0001, float("inf"), float("-inf"), 16777216.0, 123456.789]
FLOAT_BITS_SPECIAL = [0x7FC00000, 0x7F800001, 0x00000001, 0x007FFFFF, 0x80000001, 0x7F7FFFFF, 0xFF7FFFFF, 0x00800000]

# buffer styles
B_ZERO, B_SMALL, B_MIXED, B_PTR, B_BYTE_SPARSE, B_WORD_SPARSE = range(6)
# scalar styles
S_ZERO, S_SMALL, S_MIXED, S_BOUNDARY, S_RANGE = range(5)

# fixed opening cases, then random draws
OPENING = [(B_ZERO, S_ZERO), (B_SMALL, S_SMALL), (B_PTR, S_MIXED), (B_BYTE_SPARSE, S_RANGE), (B_BYTE_SPARSE, S_SMALL),
           (B_WORD_SPARSE, S_MIXED), (B_MIXED, S_BOUNDARY), (B_PTR, S_RANGE)]


# sizes of the fundamental types the record layouts print, for the element size of a std::vector member
AUX_SIZE = 1024        # pointee blocks that pointer-valued words refer to (large enough for offsets of big game objects)
FUND_SIZE = {"_Bool": 1, "bool": 1, "char": 1, "signed char": 1, "unsigned char": 1, "uint8_t": 1, "std::uint8_t": 1, "int8_t": 1,
             "std::int8_t": 1, "short": 2, "unsigned short": 2, "int16_t": 2, "uint16_t": 2, "std::int16_t": 2, "std::uint16_t": 2,
             "int": 4, "unsigned int": 4, "float": 4, "long": 4, "unsigned long": 4, "int32_t": 4, "uint32_t": 4, "std::int32_t": 4,
             "std::uint32_t": 4, "double": 8, "long long": 8, "unsigned long long": 8, "int64_t": 8, "uint64_t": 8}


def _strip_kw(t: str) -> str:
    t = t.strip()
    for kw in ("class ", "struct ", "union ", "const "):
        while t.startswith(kw):
            t = t[len(kw):]
    return t.strip()


def f2b(x: float) -> int:
    try:
        return struct.unpack("<I", struct.pack("<f", x))[0]
    except OverflowError:
        return 0x7F800000 if x > 0 else 0xFF800000


@dataclass
class Region:
    name: str
    addr: int
    size: int


@dataclass
class Case:
    index: int
    seed: int
    args: list[int]                                  # r0..r3
    stack_words: list[int]
    buffers: list[tuple[int, bytes]]
    regions: list[Region]
    desc: str = ""
    garbage_seed: int = 0


class CaseGen:
    def __init__(self, sig: abi.IRSig, func_key: int, seed: int, *, this_size: int = 0, vptr_value: int | None = None,
                 layouts: dict | None = None, param_recs: dict | None = None):
        self.layouts = layouts or {}
        self.param_recs = param_recs or {}         # IR parameter index -> record layout of the object it points to
        self.sig = sig
        self.func_key = func_key
        self.seed = seed
        self.this_size = this_size
        self.vptr_value = vptr_value
        self.slots, self.nstack = abi.assign_args(sig)

    # -- scalar generators ---------------------------------------------------------------------
    def _int32(self, rng: random.Random, s: int) -> int:
        if s == S_ZERO:
            return 0
        if s == S_SMALL:
            return rng.choice([1, 2, 3, 4, 5])
        if s == S_RANGE:
            return rng.randrange(0, 17)
        if s == S_BOUNDARY:
            return rng.choice(INT_BOUNDARY)
        r = rng.random()
        if r < 0.30:
            return rng.randrange(0, 9)
        if r < 0.40:
            return (-rng.randrange(1, 9)) & M32
        if r < 0.65:
            return rng.choice(INT_BOUNDARY)
        return rng.getrandbits(32)

    def _float32(self, rng: random.Random, s: int) -> int:
        if s == S_ZERO:
            return 0
        if s == S_SMALL:
            return f2b(rng.choice([1.0, 2.0, 0.5, 10.0]))
        r = rng.random()
        if r < 0.55:
            return f2b(rng.choice(FLOAT_VALUES))
        if r < 0.80:
            return f2b(rng.uniform(-1000.0, 1000.0))
        if r < 0.88:
            return rng.choice(FLOAT_BITS_SPECIAL)
        return rng.getrandbits(32)

    def _ext(self, p: abi.IRParam, v: int, rng: random.Random, s: int) -> int:
        w = {"i1": 1, "i8": 8, "i16": 16}.get(p.ty)
        if w is None:
            return v & M32
        if w == 1:
            return 0 if s == S_ZERO else (1 if s == S_SMALL else rng.getrandbits(1))
        v &= (1 << w) - 1
        if p.signext and v & (1 << (w - 1)):
            v |= M32 & ~((1 << w) - 1)
        return v & M32

    # -- buffers --------------------------------------------------------------------------------
    def _word(self, rng: random.Random, b: int, ptr_pool: list[int]) -> int:
        if b == B_ZERO:
            return 0
        r = rng.random()
        if b == B_SMALL:
            return rng.choice([0, 0, 1, 2, 3]) if r < 0.8 else rng.getrandbits(32)
        if b == B_PTR:
            # pointer-rich: null, valid pointers, small counters
            if r < 0.30:
                return 0
            if r < 0.78 and ptr_pool:
                return rng.choice(ptr_pool)
            return rng.randrange(0, 9) if r < 0.9 else self._float32(rng, S_MIXED)
        if b == B_BYTE_SPARSE:
            # flags: every byte is clear most of the time, now and then a random value
            w = 0
            for k in range(4):
                if rng.random() < 0.15:
                    w |= rng.choice([1, 1, 1, 2, 0xFF, rng.getrandbits(8)]) << (8 * k)
            return w
        if b == B_WORD_SPARSE:
            if r < 0.75:
                return 0
            if r < 0.85 and ptr_pool:
                return rng.choice(ptr_pool)
            return rng.randrange(0, 33) if r < 0.93 else rng.getrandbits(32)
        if r < 0.22:
            return 0
        if r < 0.34 and ptr_pool:
            return rng.choice(ptr_pool)
        if r < 0.52:
            return rng.randrange(0, 17)
        if r < 0.64:
            return self._float32(rng, S_MIXED)
        if r < 0.74:
            return rng.choice(INT_BOUNDARY)
        return rng.getrandbits(32)

    def _fill(self, rng: random.Random, size: int, b: int, ptr_pool: list[int]) -> bytearray:
        n = (size + 3) // 4
        words = [self._word(rng, b, ptr_pool) for _ in range(n)]
        buf = bytearray(struct.pack(f"<{n}I", *words))
        # sometimes make the front a text string (for char* parameters)
        if b == B_MIXED and rng.random() < 0.25:
            ln = rng.randrange(0, min(size, 24))
            buf[:ln] = bytes(rng.choice(b"abcXYZ_019 ") for _ in range(ln))
            if ln < size:
                buf[ln] = 0
        return buf[:size]

    def _elem_size(self, t: str) -> int:
        t = _strip_kw(t)
        if t.endswith("*"):
            return 4
        if t in FUND_SIZE:
            return FUND_SIZE[t]
        rec = self.layouts.get(t)
        return max(1, rec["size"]) if rec and rec.get("size") else 4

    def _typed_fill(self, rng, buf: bytearray, rec: dict, base: int, depth: int, alloc, bstyle: int, ptr_pool) -> None:
        """Values the layout says must hold: bool members 0 or 1, std::vector members a valid begin/end/capacity triple,
        by-value members and base classes filled the same way. Everything else keeps the style's random bytes."""
        if depth > 4 or not rec:
            return
        for f in rec.get("fields", []):
            off, ty, name = f[0], f[1], f[2]
            at = base + off
            if ty == "base":
                self._typed_fill(rng, buf, self.layouts.get(_strip_kw(name)), at, depth + 1, alloc, bstyle, ptr_pool)
                continue
            if ty == "vptr" or len(f) > 3 or at >= len(buf):
                continue
            t = _strip_kw(ty)
            if t in ("_Bool", "bool"):
                buf[at] = 0 if bstyle == B_ZERO else rng.getrandbits(1)
            elif t.endswith("*") and "(" not in t and at + 4 <= len(buf):
                # a pointer member holds null or the address of a block, never a stray small integer
                v = 0 if (bstyle == B_ZERO or rng.random() < 0.25 or not ptr_pool) else rng.choice(ptr_pool)
                buf[at:at + 4] = struct.pack("<I", v)
            elif t.startswith("std::vector<") and at + 12 <= len(buf):
                inner = t[len("std::vector<"):]
                depth_a, j = 0, 0
                while j < len(inner):
                    ch = inner[j]
                    if ch == "<":
                        depth_a += 1
                    elif ch == ">":
                        if depth_a == 0:
                            break
                        depth_a -= 1
                    elif ch == "," and depth_a == 0:
                        break
                    j += 1
                es = self._elem_size(inner[:j])
                n = 0 if bstyle == B_ZERO else rng.choice([0, 0, 1, 2, 3, 4])
                n = min(n, 256 // max(es, 1))
                a = alloc(max(16, es * max(n, 1) + 16))
                if a:
                    end = a + es * n
                    buf[at:at + 12] = struct.pack("<III", a, end, end + es * rng.choice([0, 1, 2]))
            elif ty.startswith(("class ", "struct ")) and not ty.rstrip().endswith("*") and not t.startswith("std::"):
                self._typed_fill(rng, buf, self.layouts.get(t), at, depth + 1, alloc, bstyle, ptr_pool)
            else:
                # fixed arrays of bools or of records: `T[N]` and `std::array<T, N>`
                am = re.match(r"^(.*)\[(\d+)\]$", t) or re.match(r"^std::array<(.*),\s*(\d+)>$", t)
                if am:
                    et, cnt = _strip_kw(am.group(1).strip()), int(am.group(2))
                    esz = self._elem_size(et)
                    if et in ("_Bool", "bool"):
                        for k in range(min(cnt, 4096)):
                            if at + k < len(buf):
                                buf[at + k] = 0 if bstyle == B_ZERO else rng.getrandbits(1)
                    elif et in self.layouts and not et.startswith("std::") and esz > 1:
                        for k in range(min(cnt, 64)):
                            self._typed_fill(rng, buf, self.layouts.get(et), at + k * esz, depth + 1, alloc, bstyle, ptr_pool)

    def make(self, index: int) -> Case:
        rng = random.Random((self.seed * 1000003 + self.func_key * 7919 + index * 104729) & 0xFFFFFFFFFFFF)
        if index < len(OPENING):
            bstyle, sstyle = OPENING[index]
        else:
            bstyle = rng.choice([B_MIXED, B_PTR, B_BYTE_SPARSE, B_BYTE_SPARSE, B_WORD_SPARSE, B_SMALL, B_PTR])
            sstyle = rng.choice([S_MIXED, S_RANGE, S_SMALL, S_BOUNDARY, S_MIXED])
        cursor = ARENA_BASE + 0x100
        regions: list[Region] = []
        buffers: list[tuple[int, bytes]] = []
        params = self.sig.params

        # decide sizes first so pointer words can refer to every buffer
        plan: list[tuple[int, str, int]] = []      # (param index, role, size)
        for i, p in enumerate(params):
            if p.ty != "ptr":
                continue
            if p.sret:
                plan.append((i, "sret", max(p.deref, 64)))
            elif p.is_this:
                plan.append((i, "this", max(p.deref, self.this_size, 32) + 64))
            else:
                null_ok = (not p.nonnull) and p.deref == 0
                if null_ok and index >= 2 and rng.random() < 0.15:
                    continue
                plan.append((i, f"arg{i}", max(p.deref, 0) + 64 if p.deref else 192))
        addr_of: dict[int, int] = {}
        for i, role, size in plan:
            cursor = (cursor + 15) & ~15
            addr_of[i] = cursor
            regions.append(Region(role if role in ("this", "sret") else f"{role}({params[i].name or 'ptr'})", cursor, size))
            cursor += size + 32
        # extra pointed-to blocks for pointer-valued words
        pool_blocks = []
        for k in range(3):
            cursor = (cursor + 15) & ~15
            regions.append(Region(f"aux{k}", cursor, AUX_SIZE))
            pool_blocks.append(cursor)
            cursor += AUX_SIZE + 32
        ptr_pool = list(addr_of.values()) + pool_blocks
        assert cursor < ARENA_BASE + ARENA_SIZE

        vec_cursor = [cursor]

        def alloc(size: int) -> int:
            a = (vec_cursor[0] + 15) & ~15
            if a + size + 32 >= ARENA_BASE + ARENA_SIZE:
                return 0
            vec_cursor[0] = a + size + 16
            regions.append(Region("vec", a, size))
            buffers.append((a, bytes(self._fill(rng, size, bstyle, ptr_pool))))
            return a

        for i, role, size in plan:
            buf = self._fill(rng, size, bstyle, ptr_pool)
            rec = self.param_recs.get(i)
            if rec is not None:
                self._typed_fill(rng, buf, rec, 0, 0, alloc, bstyle, ptr_pool)
            if role == "this" and self.vptr_value is not None and size >= 4:
                buf[0:4] = struct.pack("<I", self.vptr_value)
            buffers.append((addr_of[i], bytes(buf)))
        for a in pool_blocks:
            buffers.append((a, bytes(self._fill(rng, AUX_SIZE, bstyle, ptr_pool))))

        # scalar and pointer parameters, then AAPCS placement
        values: list[list[int]] = []
        desc = [f"b{bstyle}s{sstyle}"]
        for i, p in enumerate(params):
            nm = p.name or "p%d" % i
            if p.ty == "ptr":
                v = addr_of.get(i, 0)
                values.append([v])
                desc.append(f"{nm}={v:#x}" if v else f"{nm}=null")
            elif p.ty in ("i32", "i1", "i8", "i16"):
                v = self._ext(p, self._int32(rng, sstyle), rng, sstyle)
                values.append([v])
                desc.append(f"{nm}={v:#x}")
            elif p.ty == "float":
                v = self._float32(rng, sstyle)
                values.append([v])
                desc.append(f"{nm}=f{v:#010x}")
            elif p.ty in ("i64", "double"):
                if p.ty == "double":
                    d = rng.choice(FLOAT_VALUES) if sstyle >= S_MIXED and rng.random() < 0.6 else (0.0 if sstyle == S_ZERO else rng.uniform(-100, 100))
                    lo, hi = struct.unpack("<II", struct.pack("<d", d))
                else:
                    lo = self._int32(rng, sstyle)
                    hi = self._int32(rng, sstyle) if sstyle >= S_MIXED and rng.random() < 0.5 else 0
                values.append([lo, hi])
                desc.append(f"{nm}={hi:#x}:{lo:#x}")
            elif p.ty.startswith("["):
                n, _ = abi._ty_words(p.ty)
                flo = rng.random() < 0.6
                vs = [self._float32(rng, sstyle) if flo else self._int32(rng, sstyle) for _ in range(n)]
                values.append(vs)
                desc.append(f"{nm}=[{','.join(f'{x:#x}' for x in vs)}]")
            else:
                raise ValueError(f"unsupported parameter type {p.ty}")
        regs = [0, 0, 0, 0]
        stack = [0] * self.nstack
        for slot, vs in zip(self.slots, values):
            k = 0
            for r in slot.reg_words:
                regs[r] = vs[k]
                k += 1
            for s in slot.stack_words:
                stack[s] = vs[k]
                k += 1
        return Case(index, rng.getrandbits(32), regs, stack, buffers, regions, " ".join(desc))
