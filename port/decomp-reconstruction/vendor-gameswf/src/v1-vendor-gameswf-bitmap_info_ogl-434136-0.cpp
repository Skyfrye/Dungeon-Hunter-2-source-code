// Batch v1-vendor-gameswf-bitmap_info_ogl-434136-0 (part 1 of 2): bitmap_info_ogl, the glitch texture backend of
// gameswf::bitmap_info. Class and layout: vendor-gameswf/include/vendor-gameswf/bitmap_info_ogl.hpp (shared with part 2,
// which is src/v1-vendor-gameswf-bitmap_info_ogl-434136-1.cpp). The filter steps are in bitmap_info_ogl_filter.hpp.
//
// Written against the canonical glitch-video classes: ITexture (width +0x20, height +0x24, packed state +0x38,
// mip count +0x3e, dirty word +0x40, lock and unlock), CImage (width +0x10, height +0x14).
//
// Status (ledger.d/gameswf-core-glitch.csv):
//   reconstructed  every function of this file: activate, set_writable, set_min_filter, set_mag_filter, get_width,
//                  get_height, is_layout, get_internal_width, get_internal_height, p2, unlock, lock and the (driver),
//                  (driver, membuf) and (driver, ITexture*) constructors (C1).
//   skipped        the C2 twins 0x7d4bfc, 0x7d4d30, 0x7d4e50 (same bodies as the C1 defined here), and 0x7d515c and
//                  0x7d5004 (the C2 of the (driver, int, int) and (driver, image_rgb) constructors; their C1 bodies,
//                  0x7d5294 and 0x7d5914, are in part 2).
//
// Constant read from the binary: s_filter_map (0x90c044, int32[6]) = {0, 1, 2, 3, 4, 5}; see bitmap_ogl_detail.
// The membuf the 0x7d4b3c constructor stores is the binary's gameswf::membuf const*; the header keeps the pointer as
// ::membuf* (membuf is global in the vendored base/membuf.h) and the constructor stores it with const_cast, the same
// pointer value the binary stores at +0x1c.

#include "vendor-gameswf/bitmap_info_ogl.hpp"

#include <cstdint>

#include "glitch-video/texture.hpp"                   // ITexture
#include "vendor-gameswf/bitmap_info_ogl_filter.hpp"  // min_filter_step, mag_filter_step

using namespace gameswf;  // bitmap_info_ogl is a global class in the binary; the gameswf helpers are found unqualified


// 0x7d3cbc _ZN15bitmap_info_ogl8activateEv
// Empty override (bx lr). Vtable slot +0x10.
void bitmap_info_ogl::activate() {
}

// 0x7d3cc0 _ZN15bitmap_info_ogl12set_writableEv
// m_writable = 1 (byte +0x0c). Vtable slot +0x14.
void bitmap_info_ogl::set_writable() {
    m_writable = true;
}

// 0x7d3ccc _ZN15bitmap_info_ogl14set_min_filterEN7gameswf11bitmap_info11filter_modeE
// The mode is stored at +0x2c first. When m_texture is set, the min step runs on the texture words: flags +0x38
// (min filter in bits 12..14), mip count +0x3e and dirty word +0x40 (bit 0x4). The step is
// bitmap_ogl_filter::min_filter_step. The binary also returns the flag word in r0; the override is void.
// Vtable slot +0x2c.
void bitmap_info_ogl::set_min_filter(filter_mode mode) {
    m_min_filter = static_cast<int>(mode);  // +0x2c
    if (m_texture) {
        glitch::video::ITexture* texture = m_texture.get();
        bitmap_ogl_filter::min_filter_step(texture->m_flags38, texture->m_dirtyFlags40, texture->m_mipCount3e,
                                           m_min_filter);
    }
}

// 0x7d3d34 _ZN15bitmap_info_ogl14set_mag_filterEN7gameswf11bitmap_info11filter_modeE
// Same as set_min_filter with the mag step (bits 15..17, dirty bit 0x8, no mip-count test) and the mag index at +0x30.
// Vtable slot +0x30.
void bitmap_info_ogl::set_mag_filter(filter_mode mode) {
    m_mag_filter = static_cast<int>(mode);  // +0x30
    if (m_texture) {
        glitch::video::ITexture* texture = m_texture.get();
        bitmap_ogl_filter::mag_filter_step(texture->m_flags38, texture->m_dirtyFlags40, m_mag_filter);
    }
}

// 0x7d3d84 _ZNK15bitmap_info_ogl9get_widthEv
// Returns m_width (+0x20). Vtable slot +0x24.
int bitmap_info_ogl::get_width() const {
    return m_width;
}

// 0x7d3d8c _ZNK15bitmap_info_ogl10get_heightEv
// Returns m_height (+0x24). Vtable slot +0x28.
int bitmap_info_ogl::get_height() const {
    return m_height;
}

// 0x7d3d94 _ZNK15bitmap_info_ogl9is_layoutEv
// Returns whether m_texture (+0x10) is set. The binary returns a bool in r0, and the base declares int, so the
// override returns int 0 or 1. Vtable slot +0x34.
int bitmap_info_ogl::is_layout() const {
    return m_texture.get() != nullptr ? 1 : 0;
}

// 0x7d3da4 _ZNK15bitmap_info_ogl18get_internal_widthEv
// The texture width (ITexture +0x20) when m_texture is set; else the CImage width (+0x10) when m_image is set; else
// m_width. Vtable slot +0x38.
int bitmap_info_ogl::get_internal_width() const {
    if (m_texture) {
        return static_cast<int>(m_texture->m_width);
    }
    if (m_image) {
        return static_cast<int>(m_image->m_width);
    }
    return m_width;
}

// 0x7d3dcc _ZNK15bitmap_info_ogl19get_internal_heightEv
// Same as get_internal_width with the heights: texture +0x24, CImage +0x14, else m_height. Vtable slot +0x3c.
int bitmap_info_ogl::get_internal_height() const {
    if (m_texture) {
        return static_cast<int>(m_texture->m_height);
    }
    if (m_image) {
        return static_cast<int>(m_image->m_height);
    }
    return m_height;
}

// Port addition (remaster, not in the binary): substitute_bitmap_character calls this with the size the SWF declares for the
// bitmap. set_texture copied the texture size into m_width/m_height; when the texture is the same picture at an integer scale
// (an upscaled atlas: both sides scaled by the same factor k >= 2) the declared size is kept, so the UVs (pixel rectangles
// divided by get_width/get_height) still address the same regions. With the original textures both sizes are equal: no change.
void bitmap_info_ogl::dh2_keep_declared_size(int width, int height) {
    if (width <= 0 || height <= 0 || m_width <= width || m_height <= height) {
        return;
    }
    if (m_width % width != 0 || m_height % height != 0 || m_width / width != m_height / height) {
        return;
    }
    m_width = width;
    m_height = height;
}

// 0x7d3fcc _ZN15bitmap_info_ogl2p2Ei
// The smallest power of two that holds value (1 for value <= 1). It is halved when value / power is under 0.6, so the
// result is the power of two nearest below value when value fills less than 60% of the next one. The binary reads
// float, then compares with the double constant 0.6, which C++ does by promoting the float.
int bitmap_info_ogl::p2(int value) {
    int i;
    if (value > 1) {
        for (i = 1; i < value; i *= 2) {
        }
    } else {
        i = 1;
    }
    if (static_cast<float>(value) / static_cast<float>(i) < 0.6) {
        i >>= 1;
    }
    return i;
}

// 0x7d4048 _ZN15bitmap_info_ogl6unlockEv
// A tail call to glitch::video::ITexture::unlock(m_texture) (0x5fdc84), with no null test. Vtable slot +0x1c.
void bitmap_info_ogl::unlock() {
    m_texture->unlock();
}

// 0x7d4050 _ZN15bitmap_info_ogl4lockEv
// Calls the virtual layout() through vtable slot +0x08 on this, then tail-calls
// glitch::video::ITexture::lock(m_texture, 0) (0x5fe300) and returns its result: the mapped pixel buffer of level 0.
// Vtable slot +0x18.
void* bitmap_info_ogl::lock() {
    layout();
    return m_texture->lock(false);
}

// 0x7d4b3c _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEiiPKN7gameswf6membufE
// 0x7d4bfc (C2): skipped, same body.
// Stores the membuf (+0x1c), the size (+0x20, +0x24) and the driver (+0x28). The other fields are the header defaults:
// m_writable 0, m_texture_registered 0, texture, render target and image null, filters 1 (+0x2c, +0x30).
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height, const ::membuf* buf)
    : m_membuf(const_cast<::membuf*>(buf)), m_width(width), m_height(height), m_driver(driver) {
}

// 0x7d4c74 _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPNS1_8ITextureE
// 0x7d4d30 (C2): skipped, same body.
// m_texture is the texture, counted (its reference count goes up when it is not null). The size is copied from the
// texture, width from +0x20 and height from +0x24, with no null test, as the binary does. The header defaults give the
// other fields: m_writable 0, m_texture_registered 0, membuf 0, render target and image null, filters 1.
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, glitch::video::ITexture* texture)
    : m_driver(driver) {
    m_texture = texture;  // +0x10, counted
    m_width = static_cast<int>(texture->m_width);    // +0x20 <- texture +0x20
    m_height = static_cast<int>(texture->m_height);  // +0x24 <- texture +0x24
}

// 0x7d4dbc _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverE
// 0x7d4e50 (C2): skipped, same body.
// Stores the driver (+0x28). The header defaults give the rest: size 0 (+0x20, +0x24), membuf 0 (+0x1c), texture,
// render target and image null, filters 1 (+0x2c, +0x30), writable 0 (+0x0c), texture_registered 0 (+0x0d).
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver) : m_driver(driver) {
}
