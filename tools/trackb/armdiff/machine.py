"""One Unicorn ARM32 address space holding the original library, a reconstructed shared object and
a runtime of compiler-rt helpers.

Address map (all 32-bit):
    0x00000000-0x0000ffff  never mapped (null access is a fault)
    0x10000000  original libDungeonHunter2.so, relocated as a dynamic loader would
    0x20000000  the reconstructed shared object under test (one translation unit)
    0x28000000  libarmdiff_rt.so: compiler-rt builtins (__aeabi_fadd, __aeabi_idiv, ...), run natively
    0x30000000  import stubs (8 bytes each: `bx lr`), a Python model runs when one is entered
    0x30100000  data cells for imported objects (stack guard, ctype tables, ...)
    0x38000000  poison: addresses given to unresolved data symbols; never mapped
    0x40000000  heap (bump allocator; operator new, malloc)
    0x50000000  case arena (input objects and buffers)
    0x7e800000  stack (8 MiB)
Any other address is demand-paged: the first touch maps a page filled from a seed derived from
the case seed and the page address, so both runs of a case see identical content and identical
wild-pointer behaviour.

The runner calls `Machine.call()`, which returns a RunResult: the registers, the stub-call trace,
and the final content of every page the callee wrote (with the content it started from).
"""
from __future__ import annotations

import bisect
import random
import struct
import subprocess
from dataclasses import dataclass, field
from pathlib import Path

from unicorn import (UC_HOOK_BLOCK, UC_HOOK_MEM_READ, UC_MEM_FETCH_UNMAPPED, UC_MEM_READ_UNMAPPED, UC_MEM_WRITE_UNMAPPED, Uc, UcError, UC_ARCH_ARM, UC_MODE_ARM, UC_HOOK_CODE, UC_HOOK_MEM_WRITE,
                     UC_HOOK_MEM_READ_UNMAPPED, UC_HOOK_MEM_WRITE_UNMAPPED, UC_HOOK_MEM_FETCH_UNMAPPED,
                     UC_HOOK_INSN_INVALID, UC_HOOK_INTR, UC_PROT_ALL, UC_PROT_READ, UC_PROT_WRITE, UC_PROT_EXEC,
                     UC_ERR_READ_UNMAPPED, UC_ERR_WRITE_UNMAPPED, UC_ERR_FETCH_UNMAPPED, UC_ERR_WRITE_PROT,
                     UC_ERR_READ_PROT, UC_ERR_FETCH_PROT, UC_ERR_INSN_INVALID, UC_ERR_EXCEPTION, UC_ERR_READ_UNALIGNED,
                     UC_ERR_WRITE_UNALIGNED, UC_ERR_FETCH_UNALIGNED)
from unicorn.arm_const import (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_R4, UC_ARM_REG_R5,
                               UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
                               UC_ARM_REG_R12, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_PC, UC_ARM_REG_CPSR,
                               UC_ARM_REG_C1_C0_2, UC_ARM_REG_FPEXC)

import build_arm
import elf32
import stubs

M32 = 0xFFFFFFFF
PAGE = 0x1000

ORIG_BASE = 0x10000000
RECON_BASE = 0x20000000
RT_BASE = 0x28000000
STUB_BASE = 0x30000000
STUB_SIZE = 0x40000
RET_ADDR = STUB_BASE + STUB_SIZE - 8          # `bx lr`; the call returns here
CELL_BASE = 0x30100000
CELL_SIZE = 0x100000
POISON_BASE = 0x38000000
POISON_SIZE = 0x1000000
HEAP_BASE = 0x40000000
HEAP_SIZE = 0x2000000
ARENA_BASE = 0x50000000
ARENA_SIZE = 0x1000000
STACK_LOW = 0x7E800000
STACK_TOP = 0x7F000000

REGS = [UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6,
        UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11, UC_ARM_REG_R12, UC_ARM_REG_SP,
        UC_ARM_REG_LR, UC_ARM_REG_PC]
BX_LR = 0xE12FFF1E


def _cond_table() -> list[list[bool]]:
    """For each ARM condition code (0..13), whether it passes for each value of the CPSR flag nibble NZCV."""
    t = []
    for cond in range(14):
        row = []
        for nzcv in range(16):
            n, z, c, v = bool(nzcv & 8), bool(nzcv & 4), bool(nzcv & 2), bool(nzcv & 1)
            row.append([z, not z, c, not c, n, not n, v, not v, c and not z, (not c) or z, n == v, n != v,
                        (not z) and n == v, z or n != v][cond])
        t.append(row)
    return t


_COND_TABLE = _cond_table()


def _round_up(v: int, a: int) -> int:
    return (v + a - 1) & ~(a - 1)


def _variant_names(name: str) -> list[str]:
    """Itanium C2/D2 (base object) and C1/D1 (complete object) are the same code without virtual bases; the
    original's compiler emitted one of them as an alias, so a call to the other may not have a symbol."""
    out = []
    for a, b in (("C2E", "C1E"), ("C1E", "C2E"), ("D2E", "D1E"), ("D1E", "D2E")):
        if a in name:
            out.append(name.replace(a, b, 1))
    return out


# ----- images ------------------------------------------------------------------------------------

class Image:
    """A loaded ELF: base, symbol tables (absolute addresses) and lookups by address."""

    def __init__(self, name: str, elf: elf32.Elf32, base: int):
        self.name = name
        self.elf = elf
        self.base = base
        self.size = elf.image_size()
        self.end = base + self.size
        self.syms: dict[str, int] = {}           # name -> absolute address (functions and objects)
        self.sym_kind: dict[str, int] = {}
        self.sym_size: dict[str, int] = {}
        self.thumb: set[str] = set()                 # names of Thumb functions (a jump to them must keep bit 0 set)
        starts: list[tuple[int, int, str]] = []
        seen_global: set[str] = set()
        tables = [elf.symbols(".symtab"), elf.symbols(".dynsym")]
        for tab in tables:
            for s in tab:
                if not s.defined or s.kind not in (elf32.STT_FUNC, elf32.STT_OBJECT, elf32.STT_NOTYPE) or not s.name:
                    continue
                if s.kind == elf32.STT_NOTYPE and s.name.startswith("$"):
                    continue
                if s.name.startswith("$"):
                    continue
                addr = base + (s.value & ~1 if s.kind == elf32.STT_FUNC else s.value)
                if s.kind == elf32.STT_FUNC and s.value & 1:
                    self.thumb.add(s.name)
                is_global = s.bind != elf32.STB_LOCAL
                if s.name in self.syms and (s.name in seen_global or not is_global):
                    continue
                self.syms[s.name] = addr
                self.sym_kind[s.name] = s.kind
                self.sym_size[s.name] = s.size
                if is_global:
                    seen_global.add(s.name)
                if s.kind in (elf32.STT_FUNC, elf32.STT_OBJECT) and s.size:
                    starts.append((addr, s.size, s.name))
        starts.sort()
        self._starts = starts
        self._start_addrs = [s[0] for s in starts]
        # undefined symbols of .dynsym (index -> Symbol), for relocations
        self.dynsyms = elf.symbols(".dynsym")

    def contains(self, addr: int) -> bool:
        return self.base <= addr < self.end

    def sym_at(self, addr: int) -> tuple[str, int] | None:
        i = bisect.bisect_right(self._start_addrs, addr) - 1
        while i >= 0:
            a, sz, nm = self._starts[i]
            if a <= addr < a + max(sz, 1):
                return nm, addr - a
            if addr - a > 0x10000:
                break
            i -= 1
        return None


@dataclass
class RunResult:
    status: str = "ok"                 # ok | fault | budget | unmodeled
    detail: str = ""
    regs: list[int] = field(default_factory=list)      # r0..r12, sp, lr, pc
    trace: list[tuple] = field(default_factory=list)
    pages_final: dict[int, bytes] = field(default_factory=dict)
    pages_initial: dict[int, bytes] = field(default_factory=dict)
    sp_entry: int = 0
    insns: int = 0
    local_touch: list[str] = field(default_factory=list)   # reconstruction-local .data/.bss touched (no counterpart)
    watch_max: int = -1                                    # highest offset read in the watched buffer

    @property
    def r0(self) -> int:
        return self.regs[0]

    @property
    def r1(self) -> int:
        return self.regs[1]


class Machine:
    def __init__(self, orig_path: str | Path, callee: str = "original", rt_path: str | Path | None = None,
                 track_writes: bool = True):
        self.callee = callee                     # 'original' | 'recon': who answers calls that leave the unit
        self.uc = Uc(UC_ARCH_ARM, UC_MODE_ARM)
        uc = self.uc
        uc.reg_write(UC_ARM_REG_CPSR, 0x10)      # user mode first: a mode switch swaps the banked sp/lr
        # VFP/NEON enable (the reconstruction is soft-float, but original code may use VFP)
        uc.reg_write(UC_ARM_REG_C1_C0_2, uc.reg_read(UC_ARM_REG_C1_C0_2) | (0xF << 20))
        uc.reg_write(UC_ARM_REG_FPEXC, 0x40000000)
        uc.mem_map(STUB_BASE, STUB_SIZE, UC_PROT_READ | UC_PROT_EXEC)
        uc.mem_write(STUB_BASE, struct.pack("<I", BX_LR) * 2 * (STUB_SIZE // 8))
        uc.mem_map(CELL_BASE, CELL_SIZE, UC_PROT_READ | UC_PROT_WRITE)
        uc.mem_map(HEAP_BASE, HEAP_SIZE, UC_PROT_READ | UC_PROT_WRITE)
        uc.mem_map(ARENA_BASE, ARENA_SIZE, UC_PROT_READ | UC_PROT_WRITE)
        uc.mem_map(STACK_LOW, STACK_TOP - STACK_LOW, UC_PROT_READ | UC_PROT_WRITE)
        self.stub_names: list[str] = []
        self.stub_addr: dict[str, int] = {}
        self.cell_addr: dict[str, int] = {}
        self.cell_ptr = CELL_BASE
        self.poison_names: list[str] = []
        self.poison_addr: dict[str, int] = {}
        self.unresolved: set[str] = set()
        # per-case state
        self.case_seed = 0
        self.fault = ""
        self.fault_kind = ""
        self.trace: list[tuple] = []
        self.current_stub = ""
        self.heap_ptr = HEAP_BASE
        self.heap_sizes: dict[int, int] = {}
        self.rand_state = 1
        self.in_run = False
        self.restore_log: dict[int, bytes] = {}
        self.run_pristine: dict[int, bytes] = {}
        self.garbage_pages: set[int] = set()
        self.func_hooks: dict[int, str] = {}
        self.recon: Image | None = None
        self._recon_maps: list[tuple[int, int]] = []
        self.global_pairs: list[tuple[int, int, int, str]] = []
        self._recon_hooks: list = []
        self.local_touch: list[int] = []
        self.watch_max = -1
        self._watch_hook = None
        self._watch_lo = 0
        self.cover_exec: set[int] = set()
        self._cover_hook = None
        self._cover_conds: dict[int, int] = {}
        self._cover_count = 0

        self.orig = self._load_image("orig", elf32.Elf32(orig_path), ORIG_BASE, rt=None)
        rt_path = Path(rt_path) if rt_path else ensure_rt()
        self.rt = self._load_image("rt", elf32.Elf32(rt_path), RT_BASE, rt=None)
        self._relocate(self.rt)
        self._relocate(self.orig)
        self._install_overrides()

        uc.hook_add(UC_HOOK_CODE, self._on_stub, begin=STUB_BASE, end=STUB_BASE + STUB_SIZE - 1)
        if track_writes:                          # the chain harness restores memory itself and runs without this per-store callback
            uc.hook_add(UC_HOOK_MEM_WRITE, self._on_write)
        uc.hook_add(UC_HOOK_MEM_READ_UNMAPPED | UC_HOOK_MEM_WRITE_UNMAPPED | UC_HOOK_MEM_FETCH_UNMAPPED, self._on_unmapped)
        uc.hook_add(UC_HOOK_INTR, self._on_intr)
        uc.hook_add(UC_HOOK_INSN_INVALID, self._on_invalid)

    # ----- loading ----------------------------------------------------------------------------

    def _load_image(self, name: str, elf: elf32.Elf32, base: int, rt) -> Image:
        img = Image(name, elf, base)
        data = elf.build_image()
        img.data = data               # patched in place by _relocate, then mapped
        img.mapped = False
        return img

    def _map_image(self, img: Image) -> list[tuple[int, int]]:
        """Map the (relocated) image page by page with the union of the segment permissions."""
        perms: dict[int, int] = {}
        for s in img.elf.load_segments():
            p = 0
            if s.flags & 4:
                p |= UC_PROT_READ
            if s.flags & 2:
                p |= UC_PROT_WRITE
            if s.flags & 1:
                p |= UC_PROT_EXEC
            first = s.vaddr & ~(PAGE - 1)
            last = _round_up(s.vaddr + s.memsz, PAGE)
            for pg in range(first, last, PAGE):
                perms[pg] = perms.get(pg, 0) | p
        runs: list[tuple[int, int, int]] = []
        for pg in sorted(perms):
            if runs and runs[-1][0] + runs[-1][1] == pg and runs[-1][2] == perms[pg]:
                runs[-1] = (runs[-1][0], runs[-1][1] + PAGE, perms[pg])
            else:
                runs.append((pg, PAGE, perms[pg]))
        maps = []
        for start, size, p in runs:
            self.uc.mem_map(img.base + start, size, p)
            maps.append((img.base + start, size))
        # host writes ignore page permissions
        for s in img.elf.load_segments():
            if s.filesz:
                self.uc.mem_write(img.base + s.vaddr, bytes(img.data[s.vaddr:s.vaddr + s.filesz]))
        img.mapped = True
        return maps

    def stub_for(self, name: str) -> int:
        """Address of the import stub for `name` (allocated on first use)."""
        a = self.stub_addr.get(name)
        if a is None:
            if len(self.stub_names) >= (STUB_SIZE // 8) - 2:
                raise RuntimeError("out of import stubs")
            a = STUB_BASE + 8 * len(self.stub_names)
            self.stub_names.append(name)
            self.stub_addr[name] = a
        return a

    def cell(self, name: str, size: int = 4, init: bytes | None = None) -> int:
        a = self.cell_addr.get(name)
        if a is None:
            a = self.cell_ptr
            self.cell_ptr = _round_up(a + max(size, 4), 16)
            if self.cell_ptr > CELL_BASE + CELL_SIZE:
                raise RuntimeError("out of data cells")
            self.cell_addr[name] = a
            if init:
                self.uc.mem_write(a, init)
        return a

    def poison_for(self, name: str) -> int:
        a = self.poison_addr.get(name)
        if a is None:
            a = POISON_BASE + PAGE * len(self.poison_names)
            self.poison_names.append(name)
            self.poison_addr[name] = a
        return a + 0  # callers add an addend if the relocation has one

    def _resolve(self, img: Image, sym: elf32.Symbol, rtype: int) -> int:
        """Address a relocation against `sym` should receive."""
        name = sym.name
        if sym.defined and (img.name != "recon" or self.callee in ("recon", "chain") or name not in self.orig.syms):
            return img.base + sym.value
        # undefined, or a reconstructed symbol that exists in the original and callee == original
        if img.name == "recon" and self.callee in ("original", "chain"):
            if name in self.orig.syms:
                return self.orig.syms[name] | (1 if name in self.orig.thumb else 0)
            for alt in _variant_names(name):
                if alt in self.orig.syms:
                    return self.orig.syms[alt] | (1 if alt in self.orig.thumb else 0)
        if name in stubs.MODELS:
            return self.stub_for(name)
        if name in stubs.DATA_SYMBOLS:
            size, init = stubs.DATA_SYMBOLS[name]
            return self.cell(name, size, init)
        if img is not self.rt and name in self.rt.syms and self.rt.sym_kind.get(name) == elf32.STT_FUNC:
            return self.rt.syms[name]
        if sym.defined:
            return img.base + sym.value
        if rtype == elf32.R_ARM_JUMP_SLOT or sym.kind == elf32.STT_FUNC:
            return self.stub_for(name)
        if sym.kind == elf32.STT_OBJECT or rtype in (elf32.R_ARM_GLOB_DAT, elf32.R_ARM_ABS32):
            self.unresolved.add(name)
            return self.poison_for(name)
        return self.stub_for(name)

    def _relocate(self, img: Image) -> None:
        data = img.data
        base = img.base
        pack, unpack = struct.pack_into, struct.unpack_from
        dynsyms = img.dynsyms
        skipped: dict[int, int] = {}
        for _sec, r in img.elf.relocations():
            t = r.rtype
            off = r.offset
            if t == elf32.R_ARM_RELATIVE:
                pack("<I", data, off, (unpack("<I", data, off)[0] + base) & M32)
            elif t in (elf32.R_ARM_ABS32, elf32.R_ARM_GLOB_DAT, elf32.R_ARM_JUMP_SLOT):
                sym = dynsyms[r.sym]
                addend = unpack("<I", data, off)[0] if t == elf32.R_ARM_ABS32 else 0
                v = (self._resolve(img, sym, t) + addend) & M32
                pack("<I", data, off, v)
            elif t == elf32.R_ARM_NONE:
                pass
            else:
                skipped[t] = skipped.get(t, 0) + 1
        img.skipped_relocs = skipped
        img.maps = self._map_image(img)

    def load_recon(self, so_path: str | Path) -> Image:
        self.unload_recon()
        elf = elf32.Elf32(so_path)
        img = Image("recon", elf, RECON_BASE)
        img.data = elf.build_image()
        self.recon = img
        self._relocate(img)
        self._recon_maps = img.maps
        try:
            self.uc.ctl_flush_tb()
        except (AttributeError, UcError):
            pass
        # Data the reconstruction keeps in its own image but the original has under the same name (anonymous
        # namespace globals, internal statics): the runner copies the original's bytes in before the run and
        # compares the two afterwards.
        self.global_pairs = []
        for name, a in img.syms.items():
            if img.sym_kind.get(name) != elf32.STT_OBJECT or name.startswith(("_ZTV", "_ZTI", "_ZTS", "_ZTT")):
                continue
            oa = self.orig.syms.get(name)
            sz = img.sym_size.get(name, 0)
            if oa is None or self.orig.sym_kind.get(name) != elf32.STT_OBJECT or not sz or sz != self.orig.sym_size.get(name) \
                    or sz > 0x10000:
                continue
            self.global_pairs.append((oa, a, sz, name))
        # Writable data of the reconstruction with no counterpart in the original (state the original keeps under
        # another name): any access makes the case inconclusive, because the two sides then hold different state.
        for h in self._recon_hooks:
            self.uc.hook_del(h)
        self._recon_hooks = []
        for sec in elf.sections:
            if sec.name in (".data", ".bss") and sec.size:
                lo, hi = img.base + sec.addr, img.base + sec.addr + sec.size - 1
                self._recon_hooks.append(self.uc.hook_add(UC_HOOK_MEM_READ | UC_HOOK_MEM_WRITE, self._on_local_data, begin=lo, end=hi))
        return img

    def _on_local_data(self, uc, access, address, size, value, user):
        for _oa, ra, sz, _n in self.global_pairs:
            if ra <= address < ra + sz:
                return
        if len(self.local_touch) < 4:
            self.local_touch.append(address)

    def sync_globals(self) -> None:
        for oa, ra, sz, _name in self.global_pairs:
            self.write_mem(ra, bytes(self.uc.mem_read(oa, sz)))

    def unload_recon(self) -> None:
        for h in self._recon_hooks:
            self.uc.hook_del(h)
        self._recon_hooks = []
        if self.recon is not None:
            for start, size in self._recon_maps:
                self.uc.mem_unmap(start, size)
            self.recon = None
            self._recon_maps = []

    def _install_overrides(self) -> None:
        # compiler-rt's division by zero helpers return quietly; Android's libgcc raises SIGFPE
        for nm in ("__aeabi_idiv0", "__aeabi_ldiv0", "__div0"):
            if nm in self.rt.syms:
                self.func_hooks[self.rt.syms[nm]] = "div_by_zero"
                self.uc.hook_add(UC_HOOK_CODE, self._on_func_hook, begin=self.rt.syms[nm], end=self.rt.syms[nm])

    def _on_func_hook(self, uc, address, size, user):
        self.fault = f"division by zero ({self.func_hooks.get(address, '')})"
        self.fault_kind = "fault"
        uc.emu_stop()

    # ----- memory helpers (host side) ---------------------------------------------------------------

    def _page_ok(self, page: int) -> bool:
        """Make sure `page` is mapped (demand-paging a garbage page if allowed)."""
        try:
            self.uc.mem_read(page, 1)
            return True
        except UcError:
            pass
        if page < 0x10000 or page >= 0xFFFF0000:
            raise stubs.Fault(f"null_access@{page:#x}")
        if POISON_BASE <= page < POISON_BASE + POISON_SIZE:
            raise stubs.Fault(f"unresolved_symbol:{self._poison_name(page)}")
        self._map_garbage(page)
        return True

    def _poison_name(self, addr: int) -> str:
        i = (addr - POISON_BASE) // PAGE
        return self.poison_names[i] if 0 <= i < len(self.poison_names) else "?"

    def _map_garbage(self, page: int) -> None:
        page &= ~(PAGE - 1)
        rng = random.Random((self.case_seed * 0x9E3779B97F4A7C15 + page) & 0xFFFFFFFFFFFFFFFF)
        raw = bytearray(rng.randbytes(PAGE))
        sel = rng.randbytes(PAGE // 4)
        for i, s in enumerate(sel):
            if s < 150:
                raw[4 * i:4 * i + 4] = b"\0\0\0\0"
            elif s < 190:
                raw[4 * i:4 * i + 4] = struct.pack("<I", s - 150)
        self.uc.mem_map(page, PAGE, UC_PROT_READ | UC_PROT_WRITE)
        self.uc.mem_write(page, bytes(raw))
        self.garbage_pages.add(page)

    def read_mem(self, addr: int, n: int) -> bytes:
        addr &= M32
        if n <= 0:
            return b""
        for pg in range(addr & ~(PAGE - 1), _round_up(addr + n, PAGE), PAGE):
            self._page_ok(pg)
        return bytes(self.uc.mem_read(addr, n))

    def read_u8(self, addr: int) -> int:
        return self.read_mem(addr, 1)[0]

    def read_u32(self, addr: int) -> int:
        return struct.unpack("<I", self.read_mem(addr, 4))[0]

    def write_mem(self, addr: int, data: bytes) -> None:
        addr &= M32
        if not data:
            return
        for pg in range(addr & ~(PAGE - 1), _round_up(addr + len(data), PAGE), PAGE):
            self._page_ok(pg)
            self._touch(pg)
        self.uc.mem_write(addr, bytes(data))

    def _touch(self, page: int) -> None:
        if page not in self.restore_log:
            self.restore_log[page] = bytes(self.uc.mem_read(page, PAGE))
        if self.in_run and page not in self.run_pristine:
            self.run_pristine[page] = bytes(self.uc.mem_read(page, PAGE))

    def heap_alloc(self, n: int) -> int:
        n = max(n, 1)
        p = self.heap_ptr + 8
        self.heap_ptr = p + _round_up(n, 8)
        if self.heap_ptr > HEAP_BASE + HEAP_SIZE:
            raise stubs.Fault("heap exhausted")
        self.heap_sizes[p] = n
        return p

    def stack_arg(self, n: int) -> int:
        sp = self.uc.reg_read(UC_ARM_REG_SP)
        return struct.unpack("<I", self.read_mem(sp + 4 * n, 4))[0]

    # ----- hooks --------------------------------------------------------------------------------

    def _on_stub(self, uc, address, size, user):
        if address == RET_ADDR:
            return
        idx = (address - STUB_BASE) >> 3
        if address & 7 or idx >= len(self.stub_names):
            return
        name = self.stub_names[idx]
        model = stubs.MODELS.get(name)
        a = [uc.reg_read(r) for r in (UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3)]
        self.current_stub = name
        self.trace.append((name, tuple(a)))
        if model is None:
            self.fault = f"unmodeled_import:{name}"
            self.fault_kind = "unmodeled"
            uc.emu_stop()
            return
        try:
            res = model(self, a)
        except stubs.Fault as e:
            self.fault = f"{name}: {e}"
            self.fault_kind = "fault"
            uc.emu_stop()
            return
        except stubs.Unmodeled as e:
            self.fault = f"{name}: {e}"
            self.fault_kind = "unmodeled"
            uc.emu_stop()
            return
        except UcError as e:
            self.fault = f"{name}: memory error {e}"
            self.fault_kind = "fault"
            uc.emu_stop()
            return
        if res is None:
            return
        if isinstance(res, tuple):
            uc.reg_write(UC_ARM_REG_R0, res[0] & M32)
            uc.reg_write(UC_ARM_REG_R1, res[1] & M32)
        else:
            uc.reg_write(UC_ARM_REG_R0, res & M32)

    def _on_write(self, uc, access, address, size, value, user):
        first = address & ~(PAGE - 1)
        last = (address + size - 1) & ~(PAGE - 1)
        pg = first
        while True:
            if pg not in self.restore_log:
                self.restore_log[pg] = bytes(uc.mem_read(pg, PAGE))
            if self.in_run and pg not in self.run_pristine:
                self.run_pristine[pg] = bytes(uc.mem_read(pg, PAGE))
            if pg == last:
                break
            pg += PAGE

    def _on_unmapped(self, uc, access, address, size, value, user):
        what = {UC_MEM_READ_UNMAPPED: "read", UC_MEM_WRITE_UNMAPPED: "write", UC_MEM_FETCH_UNMAPPED: "fetch"}.get(access, "?")
        if POISON_BASE <= address < POISON_BASE + POISON_SIZE:
            self.fault = f"unresolved_symbol:{self._poison_name(address)} ({what})"
            self.fault_kind = "unmodeled"
            return False
        if address < 0x10000 or address >= 0xFFFF0000:
            self.fault = f"null_access:{what}@{address:#x}"
            self.fault_kind = "fault"
            return False
        if access == UC_MEM_FETCH_UNMAPPED:
            self.fault = f"fetch_unmapped@{address:#x}"
            self.fault_kind = "fault"
            return False
        for pg in range(address & ~(PAGE - 1), _round_up(address + size, PAGE), PAGE):
            try:
                uc.mem_read(pg, 1)
            except UcError:
                if POISON_BASE <= pg < POISON_BASE + POISON_SIZE:
                    self.fault = f"unresolved_symbol:{self._poison_name(pg)}"
                    self.fault_kind = "unmodeled"
                    return False
                self._map_garbage(pg)
        return True

    def _on_intr(self, uc, intno, user):
        self.fault = f"svc/interrupt {intno}"
        self.fault_kind = "fault"
        uc.emu_stop()

    def _on_invalid(self, uc, user):
        self.fault = f"undefined instruction at {uc.reg_read(UC_ARM_REG_PC):#x}"
        self.fault_kind = "fault"
        return False

    # ----- value canonicalisation (for traces and comparisons) -----------------------------------

    def canon(self, v: int):
        v &= M32
        if STACK_LOW <= v < STACK_TOP:
            return "<stack>"
        if self.orig.contains(v):
            return ("o", v - ORIG_BASE)
        if self.recon is not None and self.recon.contains(v):
            return ("r", v - RECON_BASE)
        if STUB_BASE <= v < STUB_BASE + STUB_SIZE:
            i = (v - STUB_BASE) >> 3
            return ("s", self.stub_names[i]) if i < len(self.stub_names) else v
        return v

    # ----- running -----------------------------------------------------------------------------

    def begin_case(self, seed: int) -> None:
        self.case_seed = seed
        self.fault = ""
        self.fault_kind = ""
        self.trace = []
        self.heap_ptr = HEAP_BASE
        self.heap_sizes = {}
        self.rand_state = 1
        self.in_run = False
        self.run_pristine = {}
        self.local_touch = []

    def end_case(self) -> None:
        """Undo every write of the case and drop demand-paged pages."""
        for pg in self.garbage_pages:
            try:
                self.uc.mem_unmap(pg, PAGE)
            except UcError:
                pass
            self.restore_log.pop(pg, None)
        self.garbage_pages = set()
        for pg, data in self.restore_log.items():
            self.uc.mem_write(pg, data)
        self.restore_log = {}
        self.run_pristine = {}

    def call(self, addr: int, args: list[int], stack_words: list[int], budget: int = 200000,
             preserve_regs: bool = True) -> RunResult:
        """Run the function at absolute address `addr` once. begin_case() must have been called and the
        inputs written with write_mem(); end_case() restores memory afterwards."""
        uc = self.uc
        sp = STACK_TOP - 0x100 - _round_up(4 * len(stack_words), 8)
        if stack_words:
            self.write_mem(sp, struct.pack(f"<{len(stack_words)}I", *[w & M32 for w in stack_words]))
        regs_in = list(args) + [0] * (4 - len(args))
        for i in range(4):
            uc.reg_write(REGS[i], regs_in[i] & M32)
        for i in range(4, 13):
            uc.reg_write(REGS[i], 0xA5A50000 + i)
        uc.reg_write(UC_ARM_REG_CPSR, 0x10)
        uc.reg_write(UC_ARM_REG_SP, sp)
        uc.reg_write(UC_ARM_REG_LR, RET_ADDR)
        self.in_run = True
        res = RunResult(sp_entry=sp)
        err = None
        try:
            uc.emu_start(addr, RET_ADDR, count=budget)
        except UcError as e:
            err = e
        self.in_run = False
        pc = uc.reg_read(UC_ARM_REG_PC)
        res.regs = [uc.reg_read(r) for r in REGS]
        res.trace = list(self.trace)
        if self.local_touch and self.recon is not None:
            res.local_touch = [self.describe(x) for x in self.local_touch]
        if self.fault:
            res.status = self.fault_kind or "fault"
            res.detail = self.fault
        elif err is not None:
            res.status = "fault"
            res.detail = _classify_uc_error(err, pc, self)
        elif pc != RET_ADDR:
            res.status = "budget"
            res.detail = f"stopped at {self.describe(pc)} after {budget} instructions"
        if res.status == "ok":
            if res.regs[13] != sp:
                res.status = "fault"
                res.detail = f"sp not restored ({res.regs[13]:#x} vs {sp:#x})"
        res.pages_initial = dict(self.run_pristine)
        res.pages_final = {pg: bytes(uc.mem_read(pg, PAGE)) for pg in self.run_pristine if self._mapped(pg)}
        res.watch_max = self.watch_max
        return res

    # Instructions of [lo, hi) that really executed (a predicated ARM instruction counts only when its condition held):
    # which part of the original function the generated inputs reach.
    def cover(self, lo: int, hi: int, conds: dict[int, int]) -> None:
        self.uncover()
        self._cover_conds = conds
        self._cover_count = 0
        self._cover_hook = self.uc.hook_add(UC_HOOK_CODE, self._on_cover_insn, begin=lo, end=hi - 1)

    def uncover(self) -> None:
        if getattr(self, "_cover_hook", None) is not None:
            self.uc.hook_del(self._cover_hook)
        self._cover_hook = None

    def _on_cover_insn(self, uc, address, size, user):
        c = self._cover_conds.get(address)
        if c is None:
            return
        if c >= 14 or _COND_TABLE[c][uc.reg_read(UC_ARM_REG_CPSR) >> 28]:
            self.cover_exec.add(address)
        self._cover_count += 1
        if self._cover_count > 30000 and self._cover_hook is not None:     # a long loop: stop paying for the hook
            uc.hook_del(self._cover_hook)
            self._cover_hook = None

    # Reads of one buffer (the object under test), so that a layout shift can be told apart from a logic difference.
    def watch_reads(self, lo: int, hi: int) -> None:
        self.unwatch()
        self.watch_max = -1
        self._watch_lo = lo
        self._watch_hook = self.uc.hook_add(UC_HOOK_MEM_READ, self._on_watch, begin=lo, end=hi - 1)

    def unwatch(self) -> None:
        if getattr(self, "_watch_hook", None) is not None:
            self.uc.hook_del(self._watch_hook)
        self._watch_hook = None

    def _on_watch(self, uc, access, address, size, value, user):
        off = address + size - 1 - self._watch_lo
        if off > self.watch_max:
            self.watch_max = off

    def _mapped(self, pg: int) -> bool:
        try:
            self.uc.mem_read(pg, 1)
            return True
        except UcError:
            return False

    def describe(self, addr: int) -> str:
        """Human-readable location of an absolute address."""
        for img in (self.recon, self.orig, self.rt):
            if img is not None and img.contains(addr):
                s = img.sym_at(addr)
                if s:
                    return f"{img.name}:{s[0]}+{s[1]:#x}"
                return f"{img.name}+{addr - img.base:#x}"
        if STUB_BASE <= addr < STUB_BASE + STUB_SIZE:
            i = (addr - STUB_BASE) >> 3
            return f"stub:{self.stub_names[i]}" if i < len(self.stub_names) else f"stub@{addr:#x}"
        return f"{addr:#x}"


def _classify_uc_error(e: UcError, pc: int, m: Machine) -> str:
    code = e.errno
    names = {
        UC_ERR_READ_UNMAPPED: "read_unmapped", UC_ERR_WRITE_UNMAPPED: "write_unmapped", UC_ERR_FETCH_UNMAPPED: "fetch_unmapped",
        UC_ERR_WRITE_PROT: "write_to_readonly", UC_ERR_READ_PROT: "read_protected", UC_ERR_FETCH_PROT: "exec_protected",
        UC_ERR_INSN_INVALID: "undefined_instruction", UC_ERR_EXCEPTION: "cpu_exception",
        UC_ERR_READ_UNALIGNED: "read_unaligned", UC_ERR_WRITE_UNALIGNED: "write_unaligned", UC_ERR_FETCH_UNALIGNED: "fetch_unaligned",
    }
    return f"{names.get(code, f'uc_error_{code}')} at pc={m.describe(pc)}"


# ----- runtime library (compiler-rt builtins) -----------------------------------------------------

def ensure_rt() -> Path:
    """Link compiler-rt's ARM builtins into a shared object once; the loader runs its __aeabi_* helpers natively."""
    out = build_arm.OUT_ROOT / "_rt" / "libarmdiff_rt.so"
    if out.exists():
        return out
    ndk = build_arm.find_ndk()
    cands = sorted((ndk / "toolchains" / "llvm" / "prebuilt").glob("*/lib/clang/*/lib/linux/libclang_rt.builtins-arm-android.a"))
    if not cands:
        raise SystemExit("compiler-rt builtins for ARM not found in the NDK")
    out.parent.mkdir(parents=True, exist_ok=True)
    r = subprocess.run([build_arm.exe("ld.lld"), "-shared", "-m", "armelf_linux_eabi", "--whole-archive", str(cands[-1]),
                        "--no-whole-archive", "--build-id=none", "-z", "norelro", "-o", str(out)], capture_output=True, text=True)
    if r.returncode != 0:
        raise SystemExit("linking the runtime failed: " + r.stderr[:500])
    return out
