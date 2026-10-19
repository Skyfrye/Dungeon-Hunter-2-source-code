// gameswf::image_base (Gameloft, not in upstream GameSWF r1714). Upstream has image::image_base in
// base/image.h. The binary moved it to gameswf:: and it is the base of gameswf::image_alpha.
//
// Layout, 24 bytes: vptr +0x00 (virtual destructor; the vtable has only the two destructor slots),
// m_type +0x04, m_data +0x08, m_width +0x0c, m_height +0x10, m_pitch +0x14 (bytes from one row to the
// next). The offsets from +0x08 on are read by the image_alpha batch. m_type is not read there; the constructor
// (0x7b5224) stores its last argument in the word at +0x04, so the position follows upstream's member order
// (confirmed from the constructor).
//
// Only the declarations are here. The constructors, the destructors and gameswf::scanline are bodies
// of the image_base batch in lib-gameswf (0x7b51dc, 0x7b5224, 0x7b526c, 0x7b527c, 0x7b59bc, 0x7b5a08,
// 0x7b5c14). The destructor (0x7b5a08) sets the vptr, and if m_data is set it calls
// gameswf::free_internal(m_data, 0) and clears m_data.

#ifndef VENDOR_GAMESWF_IMAGE_BASE_HPP
#define VENDOR_GAMESWF_IMAGE_BASE_HPP

#include <cstdint>

namespace gameswf {

struct image_base {
    enum id_image {
        INVALID,
        RGB,
        RGBA,
        ALPHA
    };

    // Argument order from the caller in image_alpha (0x7b5714): data, width, height, pitch, type.
    image_base(std::uint8_t* data, int width, int height, int pitch, id_image type);  // 0x7b5224 (C1), 0x7b51dc (C2)
    virtual ~image_base();  // 0x7b59bc (D1), 0x7b5a08 (D2); 0x7b5c14 (D0) is compiler-generated

    id_image m_type;      // +0x04
    std::uint8_t* m_data; // +0x08
    int m_width;          // +0x0c
    int m_height;         // +0x10
    int m_pitch;          // +0x14
};

// 0x7b526c: m_data + m_pitch * y. Not range-checked in the binary.
std::uint8_t* scanline(image_base* surf, int y);
// 0x7b527c (const overload): same address arithmetic.
const std::uint8_t* scanline(const image_base* surf, int y);

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_IMAGE_BASE_HPP
