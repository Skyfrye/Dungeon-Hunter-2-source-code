// gameswf::filter: one element of the filter array of a gameswf::effect (Gameloft addition).
//
// read_filter_list (0x758ca8) appends these 44-byte (0x2c) elements to the array<filter> at
// effect+4, with the count at effect+8, and effect::~effect (0x758af8) zeroes them. The element holds
// only 32-bit words and bytes, so its layout does not depend on the host pointer width.
//
// Only the fields that the filter_engine passes and the glyph cache read are declared. Offsets are
// the 32-bit ones from the binary (comments). The fields at +0x10..+0x17 and +0x1c..+0x1f are not
// recovered. gameswf::effect itself (20 bytes, array<filter> at +0x04) is not declared here; its
// owner (the pack1 batch, effect::~effect) declares it.
#pragma once

#include <cstddef>
#include <cstdint>

namespace gameswf {

struct filter {
    // +0x00: filter kind. 0 drop shadow, 1 blur, 2 glow. prepare and apply switch on it.
    int type = 0;
    // +0x04: shadow colour, red, green, blue and alpha bytes (apply_shadow reads all four).
    std::uint8_t color[4] = {};
    // +0x08: shadow angle in radians (cosf and sinf).
    float angle = 0.0f;
    // +0x0c: shadow distance in pixels.
    float distance = 0.0f;
    // +0x10..+0x17: not recovered (read_filter_list writes a float at +0x10 and bit flags at +0x14).
    std::uint8_t pad_0010[8] = {};
    // +0x18: flags. Bit 0x20 composites the source raster over the shadow.
    int flags = 0;
    // +0x1c..+0x1f: not recovered (read_filter_list writes a 5-bit count here).
    std::uint8_t pad_001c[4] = {};
    // +0x20: horizontal blur radius (apply_blur_h, prepare).
    float blur_x = 0.0f;
    // +0x24: vertical blur radius (apply_blur_v, prepare).
    float blur_y = 0.0f;
    // +0x28: written as 1 by glyph_texture_cache::add_glyph_region (vendor-gameswf/src/v1-vendor-gameswf-pack21-d2e85b-0.cpp).
    // read_filter_list also writes a value here. Meaning not recovered.
    std::int32_t unk_28 = 0;
};

static_assert(sizeof(filter) == 0x2c, "gameswf::filter is 44 bytes (0x2c) in the binary");
static_assert(offsetof(filter, type) == 0x00, "filter::type is at +0x00");
static_assert(offsetof(filter, color) == 0x04, "filter::color is at +0x04");
static_assert(offsetof(filter, angle) == 0x08, "filter::angle is at +0x08");
static_assert(offsetof(filter, distance) == 0x0c, "filter::distance is at +0x0c");
static_assert(offsetof(filter, flags) == 0x18, "filter::flags is at +0x18");
static_assert(offsetof(filter, blur_x) == 0x20, "filter::blur_x is at +0x20");
static_assert(offsetof(filter, blur_y) == 0x24, "filter::blur_y is at +0x24");
static_assert(offsetof(filter, unk_28) == 0x28, "filter::unk_28 is at +0x28");

}  // namespace gameswf
