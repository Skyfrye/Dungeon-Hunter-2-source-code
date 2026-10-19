// Pixel loops and the texture filter-bit update of gameswf::bitmap_info_ogl (Gameloft). Inline helpers, no
// dependency on gameswf.h, so a test can include this header without linking the engine.
//
// They are factorings of loops in the binary, not functions of the binary: the constructors and layout() that run
// them are in vendor-gameswf/src/v1-vendor-gameswf-bitmap_info_ogl-434136-1.cpp.
#ifndef VENDOR_GAMESWF_BITMAP_INFO_OGL_PIXELS_HPP
#define VENDOR_GAMESWF_BITMAP_INFO_OGL_PIXELS_HPP

#include <cstdint>

namespace gameswf {

namespace bitmap_ogl_detail {

// s_filter_map (binary 0x90c044, static const int[6] in .rodata, read from the binary: {0, 1, 2, 3, 4, 5}).
inline constexpr int kFilterMapCount = 6;
inline constexpr int kFilterMap[kFilterMapCount] = {0, 1, 2, 3, 4, 5};

// Loop of the constructor at 0x7d5404 / 0x7d5564: one alpha byte per pixel becomes ARGB with white colour.
// dst[0] = src[i]; dst[1..3] = 0xff. count <= 0 does nothing (the binary tests the count first).
inline void expand_alpha8_to_argb(std::uint8_t* dst, const std::uint8_t* src, int count) {
    for (int i = 0; i < count; ++i) {
        dst[0] = src[i];
        dst[1] = 0xff;
        dst[2] = 0xff;
        dst[3] = 0xff;
        dst += 4;
    }
}

// Loop of the constructor at 0x7d567c / 0x7d57e0: RGBA source (R G B A) becomes ARGB in memory (A R G B).
inline void expand_rgba_to_argb(std::uint8_t* dst, const std::uint8_t* src, int count) {
    for (int i = 0; i < count; ++i) {
        dst[0] = src[3];
        dst[1] = src[0];
        dst[2] = src[1];
        dst[3] = src[2];
        src += 4;
        dst += 4;
    }
}

// Loop of the constructor at 0x7d5914, once per row: RGB source (R G B) becomes ARGB with alpha 0xff.
inline void expand_rgb_to_argb(std::uint8_t* dst, const std::uint8_t* src, int count) {
    for (int i = 0; i < count; ++i) {
        dst[0] = 0xff;
        dst[1] = src[0];
        dst[2] = src[1];
        dst[3] = src[2];
        src += 3;
        dst += 4;
    }
}

// Filter update of layout() (0x7d5d7c..0x7d5e0c, the same code at 0x7d5f4c..0x7d5fd8). flags is the texture
// word at +0x38 (format and wrap bits, min filter at bits 12..14, mag filter at bits 15..17), dirty is the word
// at +0x40 (bit 0x4: min filter changed, bit 0x8: mag filter changed), mip_count is the byte at +0x3e.
// The min step applies only when the mip count is above 1 or the new value is at most 1. The mag step has no
// such test. The min step's result is what the mag step compares against, as in the binary.
inline void apply_filter_bits(std::uint32_t& flags, std::uint16_t& dirty, int mip_count, int min_index,
                              int mag_index) {
    const int min_value = kFilterMap[min_index];
    if (min_value != static_cast<int>((flags >> 12) & 7) && (mip_count > 1 || min_value <= 1)) {
        flags = (flags & ~0x7000u) | ((static_cast<std::uint32_t>(min_value) & 7u) << 12);
        dirty = static_cast<std::uint16_t>(dirty | 4u);
    }
    const int mag_value = kFilterMap[mag_index];
    if (mag_value != static_cast<int>((flags >> 15) & 7)) {
        flags = (flags & ~0x38000u) | ((static_cast<std::uint32_t>(mag_value) & 7u) << 15);
        dirty = static_cast<std::uint16_t>(dirty | 8u);
    }
}

}  // namespace bitmap_ogl_detail

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BITMAP_INFO_OGL_PIXELS_HPP
