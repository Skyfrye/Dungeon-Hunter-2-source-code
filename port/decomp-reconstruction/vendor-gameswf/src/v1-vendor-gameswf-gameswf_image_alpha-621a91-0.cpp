// Batch v1-vendor-gameswf-gameswf_image_alpha-621a91-0 (gameswf::image_alpha, part 1 of 1).
//
// Gameloft class, not in upstream GameSWF r1714 (upstream has image::alpha in base/image.h, a different
// class and namespace). Rebuilt from the Hex-Rays pseudocode and checked against the ARM listings
// (tools/decomp_asm.py). Layout and declarations: vendor-gameswf/include/vendor-gameswf/image_alpha.hpp
// and image_base.hpp. The image_base bodies (constructors, destructors, gameswf::scanline) belong to
// another batch.

#include "vendor-gameswf/image_alpha.hpp"

#include <cstddef>
#include <cstring>

#include "core-platform/memory.hpp"  // ::operator new[](std::size_t, swf::MemHint), 0x752ba4

namespace gameswf {
namespace {

// The binary's hash step: h = 33 * h ^ byte, with the bytes taken from the highest index down to 0.
unsigned int hash_bytes_descending(const std::uint8_t* p, int n, unsigned int h) {
    while (n > 0) {
        --n;
        h = (33u * h) ^ p[n];
    }
    return h;
}

}  // namespace

// 0x7b5714 gameswf::image_alpha::image_alpha(int, int)   [C1]
// 0x7b5780 gameswf::image_alpha::image_alpha(int, int)   [C2, same body]
// The base constructor gets data 0, width, height, pitch = width and type ALPHA (3). The vptr is set by
// the compiler. The buffer size is m_pitch * m_height in 32-bit arithmetic (MUL in the binary). The
// buffer comes from operator new[](size, swf::MemHint) with hint 0 and is stored at +0x08.
image_alpha::image_alpha(int width, int height)
    : image_base(nullptr, width, height, width, image_base::ALPHA) {
    const unsigned int bytes = static_cast<unsigned int>(m_pitch) * static_cast<unsigned int>(m_height);
    m_data = static_cast<std::uint8_t*>(
        ::operator new[](static_cast<std::size_t>(bytes), swf::MEM_UNRECOVERED));
}

// 0x7b5a54 gameswf::image_alpha::~image_alpha()   [D1]
// 0x7b5a88 gameswf::image_alpha::~image_alpha()   [D2, same body]
// The vptr is set to this class's vtable, then gameswf::image_base::~image_base (0x7b5a08) runs. That
// base destructor releases m_data. This class frees nothing itself.
image_alpha::~image_alpha() {}

// 0x7b5c30 gameswf::image_alpha::~image_alpha()   [D0, deleting destructor]: not rebuilt.
// Compiler-generated: runs D1, then operator delete (LC_API_FREE_0). C++ delete produces it from the
// virtual destructor declared in image_alpha.hpp.

// 0x7b52c4 gameswf::image_alpha::set_pixel(int, int, unsigned char)
// The row is gameswf::scanline(this, y) (0x7b526c, m_data + m_pitch * y). The byte at column x is set
// to a. The Hex-Rays return of the row pointer is a register left over from the store, so this is void
// as in upstream image::alpha::set_pixel.
void image_alpha::set_pixel(int x, int y, std::uint8_t a) {
    std::uint8_t* row = scanline(this, y);
    row[x] = a;
}

// 0x7b5b8c gameswf::image_alpha::operator==(gameswf::image_alpha const&) const
// Widths (+0x0c) and heights (+0x10) must match, else the images differ. Then each row 0 .. m_height-1
// is compared for m_width bytes with memcmp, using the const gameswf::scanline. A zero-height image has
// no rows, so two such images with equal width are equal.
bool image_alpha::operator==(const image_alpha& other) const {
    if (m_width != other.m_width) {
        return false;
    }
    if (m_height != other.m_height) {
        return false;
    }
    for (int y = 0; y < m_height; ++y) {
        if (std::memcmp(scanline(this, y), scanline(&other, y), static_cast<std::size_t>(m_width)) != 0) {
            return false;
        }
    }
    return true;
}

// 0x7b52e0 gameswf::image_alpha::compute_hash() const
// Seed 5381. The bytes are fed in this order, each one as h = 33 * h ^ byte, highest byte of each field
// first (the listing's loops count down from 4 and from the row length):
//   1. the four bytes of m_width (+0x0c)
//   2. the four bytes of m_height (+0x10)
//   3. for each row y = 0 .. m_height-1, the m_width bytes of the row (const gameswf::scanline), from
//      the last byte down to the first.
// The same byte order as bernstein_hash() in base/utility.h, and the result is returned as an unsigned
// value (the binary returns the same 32 bits in r0).
unsigned int image_alpha::compute_hash() const {
    unsigned int h = 5381;
    h = hash_bytes_descending(reinterpret_cast<const std::uint8_t*>(&m_width), sizeof(m_width), h);
    h = hash_bytes_descending(reinterpret_cast<const std::uint8_t*>(&m_height), sizeof(m_height), h);
    for (int y = 0; y < m_height; ++y) {
        h = hash_bytes_descending(scanline(this, y), m_width, h);
    }
    return h;
}

}  // namespace gameswf
