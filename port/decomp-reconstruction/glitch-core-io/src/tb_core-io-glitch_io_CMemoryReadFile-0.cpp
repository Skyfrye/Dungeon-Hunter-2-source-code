// Batch e1-glitch-core-io-glitch_io_CMemoryReadFile-0: accessors of glitch::io::CMemoryReadFile.
// Layout (see include/glitch-core-io/io/memory_read_file.hpp): +0x0c buffer, +0x18 size,
// +0x1c position. Functions that the ledger marks partial have no body here (see the notes in
// the ledger rows and the comments at the end of this file).
#include "glitch-core-io/io/memory_read_file.hpp"

namespace glitch::io {

// 0x56eb6c _ZN6glitch2io15CMemoryReadFile9getBufferEPl
// Hex-Rays and ARM agree: when the out-parameter is set, it receives the read position (+0x1c),
// not the size (+0x18). The base parameter is called "size"; the original writes position.
void* CMemoryReadFile::getBuffer(long* size) {
    if (size) *size = position;  // +0x1c
    return buffer;               // +0x0c
}

// 0x56eb80 _ZNK6glitch2io15CMemoryReadFile13isAllInMemoryEv
bool CMemoryReadFile::isAllInMemory() const { return true; }

// 0x56eb8c _ZNK6glitch2io15CMemoryReadFile7isValidEv
// Virtual or not in the original is not known yet (the base IReadFile has no slot for it here).
bool CMemoryReadFile::isValid() const { return buffer != nullptr && size >= 0; }

// 0x56ec3c _ZN6glitch2io15CMemoryReadFile4seekElb
// relative: the offset is added to the position first. Either way the target must not be past
// the end (offset > size fails). A negative target is accepted, as in the original.
bool CMemoryReadFile::seek(long offset, bool relative) {
    if (relative) offset += position;  // +0x1c
    if (offset > size) return false;   // +0x18
    position = offset;                 // +0x1c
    return true;
}

// 0x56ec78 _ZNK6glitch2io15CMemoryReadFile7getSizeEv
long CMemoryReadFile::getSize() const { return size; }  // +0x18

// 0x56ec80 _ZNK6glitch2io15CMemoryReadFile6getPosEv
long CMemoryReadFile::getPos() const { return position; }  // +0x1c

// 0x56ec88 _ZNK6glitch2io15CMemoryReadFile11getFileNameEv
// ldr r0, [r0, #0x34]: the name string at +0x20 has its begin pointer at +0x34 (the glitch string
// layout: end at +0x10, begin at +0x14, relative to the string). The original returns that character
// pointer, which is the name's c_str() here.
const char* CMemoryReadFile::getFileName() const { return name.c_str(); }

// 0x56ec90 _ZNK6glitch2io15CMemoryReadFile11getFullPathEv (same body: the full path is the name)
const char* CMemoryReadFile::getFullPath() const { return name.c_str(); }

// read (0x56ecc4) and the two readAsync forms (0x56ebac, 0x56ebe0) are in memory_read_file.cpp, now that the
// IReadFile::read slot returns the byte count (u1-core).

}  // namespace glitch::io
