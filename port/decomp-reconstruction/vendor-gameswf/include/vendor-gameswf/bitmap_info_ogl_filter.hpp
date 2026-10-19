// Texture filter-bit steps of gameswf::bitmap_info_ogl::set_min_filter (0x7d3ccc) and set_mag_filter (0x7d3d34).
// Batch v1-vendor-gameswf-bitmap_info_ogl-434136-0. The class is in bitmap_info_ogl.hpp.
//
// Each step runs on three words of the texture: flags at +0x38 (min filter in bits 12..14, mag filter in bits
// 15..17), mip count at +0x3e (a byte) and the dirty word at +0x40 (bit 0x4 for min, bit 0x8 for mag). The new
// filter value is kFilterMap[mode], where kFilterMap is s_filter_map (binary 0x90c044, int32[6] = {0..5}).
//
// They are written against plain words so that the test can run them without a texture. set_min_filter and
// set_mag_filter call them on the words of the glitch::video::ITexture (m_flags38, m_dirtyFlags40, m_mipCount3e).

#ifndef VENDOR_GAMESWF_BITMAP_INFO_OGL_FILTER_HPP
#define VENDOR_GAMESWF_BITMAP_INFO_OGL_FILTER_HPP

#include <cstdint>

#include "vendor-gameswf/bitmap_info_ogl_pixels.hpp"  // bitmap_ogl_detail::kFilterMap

namespace gameswf {
namespace bitmap_ogl_filter {

// set_min_filter, texture part (0x7d3ccc). The new value is written only when it differs from bits 12..14, and
// only when the mip count is above 1 or the value is at most 1 (the value is compared as a signed int). Sets dirty
// bit 0x4 when it writes. The index is the filter_mode value, assumed to be 0..5 (the binary does not check).
inline void min_filter_step(std::uint32_t& flags, std::uint16_t& dirty, int mip_count, int index) {
    const int value = bitmap_ogl_detail::kFilterMap[index];
    if (value != static_cast<int>((flags >> 12) & 7u) && (mip_count > 1 || value <= 1)) {
        flags = (flags & ~0x7000u) | ((static_cast<std::uint32_t>(value) & 7u) << 12);
        dirty = static_cast<std::uint16_t>(dirty | 0x4u);
    }
}

// set_mag_filter, texture part (0x7d3d34). Same as the min step for bits 15..17, with no mip-count test. Sets dirty
// bit 0x8 when it writes.
inline void mag_filter_step(std::uint32_t& flags, std::uint16_t& dirty, int index) {
    const int value = bitmap_ogl_detail::kFilterMap[index];
    if (value != static_cast<int>((flags >> 15) & 7u)) {
        flags = (flags & ~0x38000u) | ((static_cast<std::uint32_t>(value) & 7u) << 15);
        dirty = static_cast<std::uint16_t>(dirty | 0x8u);
    }
}

}  // namespace bitmap_ogl_filter
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BITMAP_INFO_OGL_FILTER_HPP
