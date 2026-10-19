"""Function manifest: ledger rows joined with the original ELF symbols and a capstone call-shape census.

    py -3 tools/trackb/armdiff/manifest.py --category game-anim            # print a summary
    py -3 tools/trackb/armdiff/manifest.py --category game-anim --csv out.csv

The ledger of a category is `ledger.csv` overlaid with the not-yet-merged parts in `ledger.d/*.csv`
(the same rule merge_ledger.py applies). Status is taken as it stands; armdiff never edits ledgers.

Call shape of an original body (ARM mode, recursive-descent-free linear sweep that skips literal pools):
    none      no BL/BLX, no tail branch out of the function, no indirect branch other than return and jump tables
    imports   calls only through the PLT (libc, libm, soft-float helpers, operator new, ...)
    internal  calls or tail-branches to other code of the library
    indirect  at least one BLX register / `mov lr, pc` call / non-return `bx`
"""
from __future__ import annotations

import argparse
import csv
import re
import struct
import sys
from dataclasses import dataclass, field
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import elf32  # noqa: E402

ROOT = Path(__file__).resolve().parents[3]
DR = ROOT / "port" / "decomp-reconstruction"
ORIG_DEFAULT = Path(__import__("os").path.expanduser("~") + r"/Documents/Projects/Dungeon Hunter 2 Recomp/lib/armeabi-v7a/ida/libDungeonHunter2.so")
ORIG_SHA_PREFIX = "36498eb8"


def ror(v: int, n: int) -> int:
    n &= 31
    return ((v >> n) | (v << (32 - n))) & 0xFFFFFFFF


def read_ledger(cat: str) -> dict[int, dict]:
    """address -> row, ledger.csv overlaid with ledger.d parts."""
    rows: dict[int, dict] = {}
    base = DR / cat
    files = []
    if (base / "ledger.csv").exists():
        files.append(base / "ledger.csv")
    files += sorted((base / "ledger.d").glob("*.csv")) if (base / "ledger.d").is_dir() else []
    for f in files:
        with f.open(encoding="utf-8", newline="") as fh:
            for r in csv.DictReader(fh):
                try:
                    a = int((r.get("elf_address") or "").strip(), 16)
                except ValueError:
                    continue
                r["_from"] = f.name
                rows[a] = r
    return rows


class Original:
    """The original library: ELF, PLT map, symbols by address, and memory image for disassembly."""

    def __init__(self, path: Path = ORIG_DEFAULT):
        self.path = Path(path)
        self.elf = elf32.Elf32(self.path)
        self.image = self.elf.build_image()
        self.symtab = self.elf.symbols(".symtab") or self.elf.symbols(".dynsym")
        self.by_addr: dict[int, elf32.Symbol] = {}
        self.by_name: dict[str, elf32.Symbol] = {}
        for s in self.symtab:
            if s.kind == elf32.STT_FUNC and s.defined and s.name:
                self.by_addr.setdefault(s.value & ~1, s)
                self.by_name.setdefault(s.name, s)
        self.thumb = {s.value & ~1 for s in self.symtab if s.kind == elf32.STT_FUNC and s.defined and s.value & 1}
        plt = self.elf.section(".plt")
        self.plt = (plt.addr, plt.addr + plt.size) if plt else (0, 0)
        # GOT slot -> imported name
        dyn = self.elf.symbols(".dynsym")
        self.got_name: dict[int, str] = {}
        for sec, r in self.elf.relocations():
            if r.rtype == elf32.R_ARM_JUMP_SLOT:
                self.got_name[r.offset] = dyn[r.sym].name
        self.plt_name: dict[int, str] = {}
        if plt:
            a = plt.addr + 20          # skip the PLT0 header
            while a + 12 <= plt.addr + plt.size:
                w = struct.unpack_from("<3I", self.image, a)
                if (w[0] & 0xFFFFF000) == 0xE28FC000 and (w[1] & 0xFFFFF000) == 0xE28CC000 and (w[2] & 0xFFFFF000) == 0xE5BCF000:
                    ip = a + 8 + ror(w[0] & 0xFF, 2 * ((w[0] >> 8) & 0xF))
                    ip += ror(w[1] & 0xFF, 2 * ((w[1] >> 8) & 0xF))
                    got = ip + (w[2] & 0xFFF)
                    nm = self.got_name.get(got)
                    if nm:
                        self.plt_name[a] = nm
                a += 12
        text = self.elf.section(".text")
        self.text = (text.addr, text.addr + text.size)

    def sha256(self) -> str:
        import hashlib
        return hashlib.sha256(self.elf.data).hexdigest()


# ----- call-shape census -------------------------------------------------------------------------

@dataclass
class Shape:
    kind: str = "none"                  # none | imports | internal | indirect
    imports: list[str] = field(default_factory=list)
    internal: list[str] = field(default_factory=list)   # callee/tail-target names (or hex addresses)
    indirect: int = 0
    svc: bool = False
    undecodable: int = 0
    data_bytes: int = 0                 # literal-pool bytes inside the function
    code_addrs: list[int] = field(default_factory=list)   # addresses of the decoded instructions (no literal pools)
    insns: int = 0
    notes: list[str] = field(default_factory=list)

    @property
    def n_calls(self) -> int:
        return len(self.imports) + len(self.internal) + self.indirect


_cs = None


def _capstone():
    global _cs
    if _cs is None:
        from capstone import Cs, CS_ARCH_ARM, CS_MODE_ARM
        _cs = Cs(CS_ARCH_ARM, CS_MODE_ARM)
        _cs.detail = True
        _cs.skipdata = True
    return _cs


def classify(orig: Original, start: int, size: int) -> Shape:
    from capstone.arm_const import ARM_OP_IMM, ARM_OP_REG, ARM_OP_MEM, ARM_REG_PC, ARM_REG_LR, ARM_GRP_CALL, ARM_GRP_JUMP
    cs = _capstone()
    code = bytes(orig.image[start:start + size])
    sh = Shape()
    end = start + size
    insns = list(cs.disasm(code, start))
    # pass 1: literal-pool words (targets of pc-relative loads / adr)
    data_words: set[int] = set()
    for ins in insns:
        if ins.mnemonic == ".byte" or not ins.operands:
            continue
        for op in ins.operands:
            if op.type == ARM_OP_MEM and op.mem.base == ARM_REG_PC and op.mem.index == 0:
                a = ins.address + 8 + op.mem.disp
                data_words.add(a & ~3)
                if ins.mnemonic.startswith(("ldrd", "vldr")):
                    data_words.add((a & ~3) + 4)   # two words
        if ins.mnemonic.startswith("adr") and ins.operands and ins.operands[-1].type == ARM_OP_IMM:
            data_words.add(ins.operands[-1].imm & ~3)
    sh.data_bytes = 4 * sum(1 for w in data_words if start <= w < end)
    prev = None
    for ins in insns:
        if ins.address in data_words or ins.mnemonic == ".byte":
            if ins.mnemonic == ".byte" and ins.address not in data_words:
                sh.undecodable += 1
            prev = ins
            continue
        sh.insns += 1
        sh.code_addrs.append(ins.address)
        mn = ins.mnemonic
        ops = ins.operands
        groups = set(ins.groups)
        calling = ARM_GRP_CALL in groups
        jumping = ARM_GRP_JUMP in groups
        if mn in ("svc", "swi"):
            sh.svc = True
        if calling and ops and ops[0].type == ARM_OP_IMM:
            tgt = ops[0].imm
            if orig.plt[0] <= tgt < orig.plt[1]:
                sh.imports.append(orig.plt_name.get(tgt, f"plt@{tgt:#x}"))
            else:
                sh.internal.append(_name(orig, tgt))
        elif calling:
            sh.indirect += 1
        elif jumping:
            if ops and ops[0].type == ARM_OP_IMM:
                tgt = ops[0].imm
                if not (start <= tgt < end):
                    if orig.plt[0] <= tgt < orig.plt[1]:
                        sh.imports.append(orig.plt_name.get(tgt, f"plt@{tgt:#x}") + " (tail)")
                    else:
                        sh.internal.append(_name(orig, tgt) + " (tail)")
            elif mn.startswith("bx") and ops and ops[0].type == ARM_OP_REG and ops[0].reg != ARM_REG_LR:
                # bx rN: a call when preceded by `mov lr, pc`, otherwise a computed jump
                if prev is not None and prev.mnemonic.startswith("mov") and "lr, pc" in prev.op_str:
                    sh.indirect += 1
                else:
                    sh.indirect += 1
                    sh.notes.append("bx reg")
        else:
            # mov pc, rN / ldr pc, [...] / add pc, ... : returns pop to pc, switch tables are fine
            writes_pc = bool(ops) and ops[0].type == ARM_OP_REG and ops[0].reg == ARM_REG_PC and mn.split(".")[0][:3] in ("mov", "ldr", "add", "sub", "bic", "orr")
            if writes_pc:
                if mn.startswith("ldr") and "[sp]" in ins.op_str.replace(" ", ""):
                    pass                                                # ldr pc, [sp], #4 : return
                elif mn.startswith("mov") and ins.op_str.replace(" ", "") == "pc,lr":
                    pass                                                # mov pc, lr : return
                elif prev is not None and prev.mnemonic.startswith("mov") and "lr, pc" in prev.op_str:
                    sh.indirect += 1                                    # old-style indirect call
                else:
                    sh.notes.append("computed jump")
        prev = ins
    if sh.indirect:
        sh.kind = "indirect"
    elif sh.internal:
        sh.kind = "internal"
    elif sh.imports:
        sh.kind = "imports"
    return sh


def _name(orig: Original, addr: int) -> str:
    s = orig.by_addr.get(addr & ~1)
    if s:
        return s.name
    # inside a function (tail jump into the middle, or a clone)
    return f"{addr:#x}"


# ----- rows -------------------------------------------------------------------------------------------

@dataclass
class Row:
    category: str
    addr: int
    symbol: str                  # ledger symbol
    status: str
    source_file: str
    notes: str
    elf_name: str = ""           # original symbol name at the address
    msym: str = ""               # the mangled name armdiff looks up: the ledger symbol, or the ELF name when the ledger holds a demangled one
    size: int = 0
    thumb: bool = False
    shape: Shape | None = None
    ledger_from: str = ""


ARMDIFF_NOTE = "armdiff mismatch:"


def is_armdiff_demoted(status: str, notes: str) -> bool:
    return status == "partial" and notes.strip().startswith(ARMDIFF_NOTE)


def build_rows(cat: str, orig: Original, only_status: str | None = "reconstructed", only_addrs: set[int] | None = None) -> list[Row]:
    out = []
    for addr, r in sorted(read_ledger(cat).items()):
        st = (r.get("status") or "").strip()
        if only_status and st != only_status:
            # a row armdiff itself demoted stays under test, so a fix can be seen to work
            if not (only_status == "reconstructed" and is_armdiff_demoted(st, r.get("notes") or "")):
                continue
        if only_addrs is not None and addr not in only_addrs:
            continue
        row = Row(cat, addr, (r.get("symbol") or "").strip(), st, (r.get("source_file") or "").strip(), (r.get("notes") or "").strip(),
                  ledger_from=r.get("_from", ""))
        sym = orig.by_addr.get(addr)
        row.msym = row.symbol
        if sym is not None:
            row.elf_name = sym.name
            if not row.symbol.startswith("_Z") and sym.name:
                row.msym = sym.name
            row.size = sym.size
            row.thumb = addr in orig.thumb
            if sym.size and not row.thumb:
                row.shape = classify(orig, addr, sym.size)
        out.append(row)
    return out


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--category", "-c", action="append", required=True)
    ap.add_argument("--library", default=str(ORIG_DEFAULT))
    ap.add_argument("--csv", help="write the manifest to this CSV")
    a = ap.parse_args()
    orig = Original(Path(a.library))
    sha = orig.sha256()
    print(f"library {orig.path} sha256 {sha[:16]}... ({'OK' if sha.startswith(ORIG_SHA_PREFIX) else 'UNEXPECTED'})")
    w = None
    if a.csv:
        fh = open(a.csv, "w", newline="", encoding="utf-8")
        w = csv.writer(fh)
        w.writerow(["category", "address", "symbol", "status", "source_file", "size", "shape", "imports", "internal", "indirect"])
    for cat in a.category:
        rows = build_rows(cat, orig)
        kinds: dict[str, int] = {}
        for r in rows:
            k = r.shape.kind if r.shape else ("thumb" if r.thumb else "nosym")
            kinds[k] = kinds.get(k, 0) + 1
            if w:
                sh = r.shape
                w.writerow([cat, f"0x{r.addr:x}", r.symbol, r.status, r.source_file, r.size, k,
                            ";".join(sh.imports) if sh else "", ";".join(sh.internal) if sh else "", sh.indirect if sh else ""])
        print(f"{cat}: {len(rows)} reconstructed rows; shapes: {kinds}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
