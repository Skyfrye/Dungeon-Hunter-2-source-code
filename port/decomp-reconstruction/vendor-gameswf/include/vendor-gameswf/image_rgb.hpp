// gameswf::image_rgb (Gameloft class in namespace gameswf). A 24-bit packed RGB surface, red byte first.
// Upstream has the same surface as image::rgb in base/image.h (rgb::rgb in base/image.cpp), on the
// upstream image::image_base. The binary's constructors call gameswf::image_base (image_base.hpp), so
// this class derives from that base, as gameswf::image_alpha does.
//
// Layout: the image_base part (24 bytes, see image_base.hpp) and no members of its own. Row y starts at
// m_data + m_pitch * y. The pitch is (3 * (width + 1)) & ~3 in 32-bit arithmetic, so each row is at least
// 3 * width bytes and a multiple of 4. The buffer is m_pitch * m_height bytes.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack15-a0a47d-0.cpp

#ifndef VENDOR_GAMESWF_IMAGE_RGB_HPP
#define VENDOR_GAMESWF_IMAGE_RGB_HPP

#include "vendor-gameswf/image_base.hpp"

namespace gameswf {

struct image_rgb : image_base {
    // 0x7b58cc (C1), 0x7b5944 (C2). Base constructor with data 0, width, height, the padded pitch and type
    // RGB (1). Then m_data = operator new[](m_pitch * m_height, swf::MemHint 0), listing calls
    // _ZnajN3swf7MemHintE with hint 0.
    image_rgb(int width, int height);

    // 0x7b5b24 (D1), 0x7b5b58 (D2). Nothing in the body. The base destructor (image_base, 0x7b5a08) releases
    // m_data. 0x7b5c68 (D0) is the compiler-generated deleting destructor.
    ~image_rgb() override;
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_IMAGE_RGB_HPP
