"""Minimal ELF32 little-endian reader for armdiff.

Reads exactly what the loader needs: program headers, section headers, the symbol tables
(.dynsym and .symtab), and REL relocation tables with their implicit addends. No third-party
dependency, and nothing here is shared with Track A.
"""
from __future__ import annotations

import struct
from dataclasses import dataclass, field
from pathlib import Path

PT_LOAD = 1
PT_DYNAMIC = 2

SHT_SYMTAB = 2
SHT_STRTAB = 3
SHT_REL = 9
SHT_DYNSYM = 11
SHT_NOBITS = 8

STT_NOTYPE, STT_OBJECT, STT_FUNC, STT_SECTION, STT_FILE, STT_TLS = 0, 1, 2, 3, 4, 6
STB_LOCAL, STB_GLOBAL, STB_WEAK = 0, 1, 2
SHN_UNDEF = 0

# ARM relocation types seen in Android shared objects (AAELF32).
R_ARM_NONE = 0
R_ARM_ABS32 = 2
R_ARM_REL32 = 3
R_ARM_COPY = 20
R_ARM_GLOB_DAT = 21
R_ARM_JUMP_SLOT = 22
R_ARM_RELATIVE = 23
R_ARM_TLS_DTPMOD32 = 17
R_ARM_TLS_DTPOFF32 = 18
R_ARM_TLS_TPOFF32 = 19
R_ARM_IRELATIVE = 160
R_ARM_NAMES = {
    0: "NONE", 2: "ABS32", 3: "REL32", 17: "TLS_DTPMOD32", 18: "TLS_DTPOFF32", 19: "TLS_TPOFF32",
    20: "COPY", 21: "GLOB_DAT", 22: "JUMP_SLOT", 23: "RELATIVE", 160: "IRELATIVE",
}


@dataclass
class Segment:
    p_type: int
    offset: int
    vaddr: int
    filesz: int
    memsz: int
    flags: int  # 1=X 2=W 4=R


@dataclass
class Section:
    name: str
    sh_type: int
    flags: int
    addr: int
    offset: int
    size: int
    link: int
    info: int
    entsize: int


@dataclass
class Symbol:
    name: str
    value: int
    size: int
    kind: int      # STT_*
    bind: int      # STB_*
    shndx: int
    index: int = 0

    @property
    def defined(self) -> bool:
        return self.shndx != SHN_UNDEF


@dataclass
class Reloc:
    offset: int
    rtype: int
    sym: int       # symbol table index (0 = none)


@dataclass
class Elf32:
    path: Path
    data: bytes = field(repr=False, default=b"")
    segments: list[Segment] = field(default_factory=list)
    sections: list[Section] = field(default_factory=list)

    def __post_init__(self) -> None:
        self.path = Path(self.path)
        self.data = self.path.read_bytes()
        d = self.data
        if d[:4] != b"\x7fELF" or d[4] != 1 or d[5] != 1:
            raise ValueError(f"{self.path}: not an ELF32 little-endian file")
        (self.e_type, self.e_machine, _v, self.e_entry, phoff, shoff, self.e_flags, _eh, phentsize, phnum,
         shentsize, shnum, shstrndx) = struct.unpack_from("<HHIIIIIHHHHHH", d, 16)
        if self.e_machine != 40:
            raise ValueError(f"{self.path}: not an ARM ELF (machine {self.e_machine})")
        for i in range(phnum):
            t, off, va, _pa, fsz, msz, fl, _al = struct.unpack_from("<8I", d, phoff + i * phentsize)
            self.segments.append(Segment(t, off, va, fsz, msz, fl))
        raw = []
        for i in range(shnum):
            raw.append(struct.unpack_from("<10I", d, shoff + i * shentsize))
        shstr = raw[shstrndx] if raw else None
        for (nm, t, fl, ad, off, sz, lk, inf, _al, es) in raw:
            name = self._cstr(shstr[4] + nm) if shstr else ""
            self.sections.append(Section(name, t, fl, ad, off, sz, lk, inf, es))
        self._sym_cache: dict[str, list[Symbol]] = {}

    def _cstr(self, off: int) -> str:
        end = self.data.index(b"\0", off)
        return self.data[off:end].decode("utf-8", "replace")

    def section(self, name: str) -> Section | None:
        for s in self.sections:
            if s.name == name:
                return s
        return None

    def symbols(self, table: str = ".dynsym") -> list[Symbol]:
        """All symbols of .dynsym or .symtab, in table order (index = list index)."""
        if table in self._sym_cache:
            return self._sym_cache[table]
        sec = self.section(table)
        out: list[Symbol] = []
        if sec is not None:
            strtab = self.sections[sec.link]
            d = self.data
            base = strtab.offset
            n = sec.size // 16
            unpack = struct.Struct("<IIIBBH").unpack_from
            for i in range(n):
                name_off, value, size, info, _other, shndx = unpack(d, sec.offset + i * 16)
                a = base + name_off
                e = d.index(b"\0", a)
                out.append(Symbol(d[a:e].decode("utf-8", "replace"), value, size, info & 15, info >> 4, shndx, i))
        self._sym_cache[table] = out
        return out

    def relocations(self) -> list[tuple[str, Reloc]]:
        """(section name, Reloc) for every SHT_REL section, in file order."""
        out = []
        for s in self.sections:
            if s.sh_type != SHT_REL:
                continue
            for i in range(s.size // 8):
                off, info = struct.unpack_from("<II", self.data, s.offset + i * 8)
                out.append((s.name, Reloc(off, info & 0xFF, info >> 8)))
        return out

    # -- image helpers ------------------------------------------------------------------------
    def load_segments(self) -> list[Segment]:
        return [s for s in self.segments if s.p_type == PT_LOAD]

    def image_size(self) -> int:
        top = max(s.vaddr + s.memsz for s in self.load_segments())
        return (top + 0xFFF) & ~0xFFF

    def build_image(self) -> bytearray:
        """The memory image of all PT_LOAD segments, laid out at their virtual addresses (base 0)."""
        img = bytearray(self.image_size())
        for s in self.load_segments():
            img[s.vaddr:s.vaddr + s.filesz] = self.data[s.offset:s.offset + s.filesz]
        return img

    def section_for(self, vaddr: int) -> Section | None:
        for s in self.sections:
            if s.addr and s.flags & 2 and s.addr <= vaddr < s.addr + s.size:
                return s
        return None
