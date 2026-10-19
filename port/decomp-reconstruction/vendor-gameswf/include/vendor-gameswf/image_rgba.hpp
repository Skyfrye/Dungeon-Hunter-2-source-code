// gameswf::image_rgba (Gameloft class in namespace gameswf). A 32-bit packed RGBA surface, red byte first.
// Upstream has the same surface as image::rgba in base/image.h (rgba::rgba in base/image.cpp), on the
// upstream image::image_base. The binary's constructors call gameswf::image_base (image_base.hpp), so this
// class derives from that base, as gameswf::image_alpha does.
//
// Layout: the image_base part (24 bytes, see image_base.hpp) and no members of its own. Row y starts at
// m_data + m_pitch * y. The pitch is 4 * width, so each pixel is four bytes r, g, b, a. The buffer is
// m_pitch * m_height bytes.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack15-a0a47d-0.cpp

#ifndef VENDOR_GAMESWF_IMAGE_RGBA_HPP
#define VENDOR_GAMESWF_IMAGE_RGBA_HPP

#include <cstdint>

#include "vendor-gameswf/image_base.hpp"

namespace gameswf {

struct image_rgba : image_base {
    // 0x7b57ec (C1), 0x7b585c (C2). Base constructor with data 0, width, height, pitch = 4 * width and type
    // RGBA (2). Then m_data = operator new[](m_pitch * m_height, swf::MemHint 0).
    image_rgba(int width, int height);

    // 0x7b5abc (D1), 0x7b5af0 (D2). Nothing in the body. The base destructor (image_base, 0x7b5a08) releases
    // m_data. 0x7b5c4c (D0) is the compiler-generated deleting destructor.
    ~image_rgba() override;

    // 0x7b528c. Stores r, g, b, a at column x of row y: bytes 0, 1, 2, 3 of the pixel, row from
    // gameswf::scanline(this, y) (0x7b526c). Void, as in upstream image::rgba::set_pixel.
    void set_pixel(int x, int y, std::uint8_t r, std::uint8_t g, std::uint8_t b, std::uint8_t a);
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_IMAGE_RGBA_HPP
