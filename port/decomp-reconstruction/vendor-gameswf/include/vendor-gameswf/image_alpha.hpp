// gameswf::image_alpha (Gameloft, not in upstream GameSWF r1714). An 8-bit alpha surface. Upstream has
// the same surface as image::alpha in base/image.h. The binary's class is in gameswf::, its buffer
// comes from operator new[](size, swf::MemHint), and it has no assert calls.
//
// Layout: the image_base part (24 bytes, see image_base.hpp) and no members of its own. Row y starts at
// m_data + m_pitch * y and holds m_width used bytes. The buffer is m_pitch * m_height bytes. The vtable
// has only the two destructor slots.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf_image_alpha-621a91-0.cpp

#ifndef VENDOR_GAMESWF_IMAGE_ALPHA_HPP
#define VENDOR_GAMESWF_IMAGE_ALPHA_HPP

#include <cstdint>

#include "vendor-gameswf/image_base.hpp"

namespace gameswf {

struct image_alpha : image_base {
    // 0x7b5714 (C1), 0x7b5780 (C2). Base constructor with data 0, width, height, pitch = width and type
    // ALPHA. Then the buffer for m_pitch * m_height bytes is allocated into m_data.
    image_alpha(int width, int height);

    // 0x7b5a54 (D1), 0x7b5a88 (D2). Nothing in the body. The base destructor releases m_data.
    // 0x7b5c30 (D0) is compiler-generated.
    ~image_alpha() override;

    // 0x7b52c4. Stores a at column x of row y.
    void set_pixel(int x, int y, std::uint8_t a);

    // 0x7b5b8c. Equal when the width and the height match and every row's m_width bytes match.
    bool operator==(const image_alpha& other) const;

    // 0x7b52e0. Hash of the width, the height and the pixel rows (see the .cpp).
    unsigned int compute_hash() const;
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_IMAGE_ALPHA_HPP
