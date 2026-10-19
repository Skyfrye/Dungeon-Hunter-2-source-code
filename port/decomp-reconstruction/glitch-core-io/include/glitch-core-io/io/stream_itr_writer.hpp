// glitch::io::SStreamItrWriter: writes one run of fixed-size elements to a write file, optionally
// byte-swapped per element (big-endian output), and then advances the source pointer by the stride.
// Layout: the 8-byte swap buffer at +0x00 is the first member, the rest follow the original offsets.
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

struct SStreamItrWriter {
    std::uint8_t swapBuffer[8];   // +0x00: scratch for one element (the original writes through it)
    const std::uint8_t* data;     // +0x10: current element run; advanced by stride after each call
    std::uint16_t count;          // +0x14: number of elements to write
    std::uint16_t elementSize;    // +0x16: bytes per element (0, 1, 2, 4 or 8 are meaningful)
    std::uint16_t stride;         // +0x18: bytes to advance data after the write

    // 0x6b5990 _ZN6glitch2io16SStreamItrWriter15writeAndAdvanceEPNS0_10IWriteFileEb
    // swapBytes is taken as in the original: 0 writes the run as one block; 1 writes it element by
    // element, byte-reversing elements of 2, 4 and 8 bytes (other sizes are not written by the swap
    // path). Elements of size 0 or 1 are always written as one block. The value returned is the
    // result of the last write call (0 when the swap path wrote nothing, because the original's
    // register holds the object pointer there but the caller ignores it). The stride is added to
    // data on every path.
    std::size_t writeAndAdvance(IWriteFile* file, bool swapBytes);
};

}  // namespace glitch::io
