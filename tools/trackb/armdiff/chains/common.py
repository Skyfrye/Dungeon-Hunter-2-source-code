"""Helpers shared by the chain scenarios: real pydata files, streams, object construction."""
from __future__ import annotations

import re
import struct
from pathlib import Path

import chain
from chain import World, ChainError

DR = chain.DR
PYDATA_DIR = chain.DATA_ROOT / "data" / "pydata"


def pydata_plan() -> list[tuple[str, list[str]]]:
    """[(file, [read function symbol, ...])] in the order PyDataArrays::Load opens the files (kLoadFiles) and the
    order addFuncsForFile registered the readers for each file (the same registration table as the original's)."""
    src = (DR / "pydata-accessors" / "src" / "w7_pydata12.cpp").read_text(encoding="utf-8")
    load = src[src.index("kLoadFiles[]"):]
    load = load[:load.index("};")]
    files = re.findall(r'"([^"]+\.bin)"', load)
    pairs = re.findall(r'addFuncsForFile\("([^"]+)",\s*&Arrays::(\w+)::(\w+),', src)
    by_file: dict[str, list[str]] = {}
    for f, cls, fn in pairs:
        by_file.setdefault(f, []).append(f"_ZN6Arrays{len(cls)}{cls}{len(fn)}{fn}EP11IStreamBase")
    plan = []
    seen = set()
    for f in files:
        if f in seen:
            continue
        seen.add(f)
        if f in by_file:
            plan.append((f, by_file[f]))
    return plan


def make_stream(w: World, data: bytes, tag: str = "StreamBuffer") -> int:
    """A StreamBuffer holding `data`, read position 0 (the stream a file hands the pydata readers)."""
    sb = w.heap(0x30, tag)
    w.call("_ZN12StreamBufferC1Ev", sb)
    # StreamBuffer::write(const void*, unsigned long long) is virtual; call the symbol directly
    src = w.alloc(len(data), data)
    n = w.call("_ZN12StreamBuffer5writeEPKvy", sb, src, ("u64", len(data)), ret="u64")
    if n != len(data):
        raise ChainError(f"StreamBuffer::write stored {n} of {len(data)} bytes")
    return sb


def load_pydata(w: World, files: list[str] | None = None) -> list[str]:
    """Read the real pydata files through the readers, in the original's order. Returns the files read."""
    done = []
    for f, readers in pydata_plan():
        if files is not None and f not in files:
            continue
        p = PYDATA_DIR / f
        if not p.exists():
            continue
        sb = make_stream(w, p.read_bytes())
        for sym in readers:
            w.call(sym, sb, ret="void")
        done.append(f)
    return done


def read_std_string(w: World, addr: int) -> str:
    """Contents of a std::string member: STLport's (24 bytes: 16-byte buffer, then finish and start pointers) on the original side, libc++'s
    (12 bytes, short-string flag in bit 0 of the first byte) on the reconstruction side."""
    if w.side == "orig":
        end = w.u32(addr + 0x10)          # _M_finish; _M_start_of_storage follows (+0x14); the 16-byte buffer comes first
        p = w.u32(addr + 0x14)
        n = max(0, end - p)
        return w.read(p, min(n, 4096)).decode("latin1") if p and n else ""
    b0 = w.u8(addr)
    if b0 & 1:
        n = w.u32(addr + 4)
        p = w.u32(addr + 8)
        return w.read(p, min(n, 4096)).decode("latin1") if p and n else ""
    n = b0 >> 1
    return w.read(addr + 1, n).decode("latin1") if n else ""


def stream_bytes(w: World, sb: int) -> bytes:
    """Everything written into a StreamBuffer (read from its block list: Buffer is at +0x18, block size +0x18,
    block vector begin +0x1c, byte count +0x28; the layout is the same on both sides)."""
    size = w.u32(sb + 0x28)
    bs = w.u32(sb + 0x18) or 0x800
    begin = w.u32(sb + 0x1c)
    out = bytearray()
    i = 0
    while len(out) < size:
        blk = w.u32(begin + 4 * i)
        if not blk:
            break
        out += w.read(blk, min(bs, size - len(out)))
        i += 1
    return bytes(out)


def new_stream(w: World) -> int:
    sb = w.heap(0x30, "@skip")
    w.call("_ZN12StreamBufferC1Ev", sb, ret="void")
    return sb
