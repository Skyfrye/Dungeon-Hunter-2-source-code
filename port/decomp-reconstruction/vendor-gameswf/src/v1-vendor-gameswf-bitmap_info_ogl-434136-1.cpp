// Batch v1-vendor-gameswf-bitmap_info_ogl-434136-1 (part 2 of 2): bitmap_info_ogl, the glitch texture backend of
// gameswf::bitmap_info. Class and layout: vendor-gameswf/include/vendor-gameswf/bitmap_info_ogl.hpp.
//
// Written against the canonical glitch-video classes: IVideoDriver (texture manager at +0xe0, option word +0x88,
// capability word +0x9c, setOption at vtable +0xa0, createRenderTarget at vtable +0x84), CTextureManager (createImage,
// addTexture, getTexture, removeTexture; the word at +0x74), ITexture, CImage (pixels at +0x08, format +0x20, mip flag
// +0x28), pixel_format::detail::PFDTable and glitch::io::createMemoryReadFile.
//
// Status of the 12 rows (ledger: ledger.d/gameswf-core-glitch.csv):
//   reconstructed  0x7d5294, 0x7d5404, 0x7d567c, 0x7d5914 (constructors), 0x7d5a9c release, 0x7d5b2c set_texture,
//                  0x7d5b80 unlayout (forwards to release), 0x7d5b84 D1, 0x7d5c20 layout
//   skipped        0x7d5564 and 0x7d57e0 (C2 constructors, same code as C1), 0x7d5c04 D0 (compiler-generated deleting
//                  destructor)
//
// The word at CTextureManager +0x74 (unk_74 in the glitch-video header) has bit 0x10 as the "writable textures"
// flag: layout() sets it from m_writable around the addTexture call and puts the old bit back afterwards. The header
// does not name the word, so this file reads it as unk_74.
//
// Constants read from the binary: s_filter_map (0x90c044) = {0, 1, 2, 3, 4, 5}, see bitmap_ogl_detail.

#include "vendor-gameswf/bitmap_info_ogl.hpp"

#include <cstdint>
#include <cstdio>

#include "glitch-core-io/io/memory_read_file.hpp"  // glitch::io::createMemoryReadFile
#include "glitch-video/pixel_format.hpp"           // pixel_format::detail::PFDTable
#include "glitch-video/texture_manager.hpp"        // CTextureManager
#include "glitch-video/video_driver.hpp"           // IVideoDriver

using namespace gameswf;  // bitmap_info_ogl is a global class in the binary; the gameswf helpers are found unqualified


// ---------------------------------------------------------------------------------------------------------------
// 0x7d5294 _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEii
// 0x7d515c (C2): skipped, same body.
// The fields are the header defaults except m_texture_registered (+0x0d) = 1, the size and the driver. The texture is
// the render-target texture "gameswf_target", pixel format 14, made by the driver's texture manager (driver +0xe0)
// with addTexture(size, name, 14, true); the render target comes from the driver's vtable slot +0x84,
// createRenderTarget(m_texture, 0).
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height)
    : m_texture_registered(true), m_width(width), m_height(height), m_driver(driver) {
    const glitch::core::dimension2d<int32_t> size{width, height};
    m_texture = driver->m_textureManager->addTexture(size, "gameswf_target", 14, true);  // +0x10
    m_render_target = driver->createRenderTarget(m_texture, 0);                           // +0x14
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5404 _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEiiPh
// 0x7d5564 (C2): skipped, same body.
// m_image is a CImage of pixel format 12 and the given size, from the texture manager. When alpha is set, the pixels
// are written as ARGB (white colour, the alpha byte first): dst[4i] = alpha[i], dst[4i+1..3] = 0xff for i < w*h.
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height, unsigned char* alpha)
    : m_width(width), m_height(height), m_driver(driver) {
    const glitch::core::dimension2d<int32_t> size{width, height};
    m_image = driver->m_textureManager->createImage(12, size);  // +0x18
    if (alpha) {
        bitmap_ogl_detail::expand_alpha8_to_argb(m_image->m_data, alpha, width * height);
    }
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d567c _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPN7gameswf10image_rgbaE
// 0x7d57e0 (C2): skipped, same body.
// The width and height come from the image (+0x0c, +0x10). m_image is a CImage of pixel format 12 and that size. The
// RGBA bytes of the image are copied to ARGB: dst = {A, R, G, B} from src = {R, G, B, A}, width * height pixels.
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, gameswf::image_rgba* image)
    : m_width(image->m_width), m_height(image->m_height), m_driver(driver) {
    const glitch::core::dimension2d<int32_t> size{image->m_width, image->m_height};
    m_image = driver->m_textureManager->createImage(12, size);  // +0x18
    bitmap_ogl_detail::expand_rgba_to_argb(m_image->m_data, image->m_data, image->m_width * image->m_height);
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5914 _ZN15bitmap_info_oglC1EPN6glitch5video12IVideoDriverEPN7gameswf9image_rgbE
// 0x7d5004 (C2): skipped, same body.
// As the RGBA constructor, with the copy done per row: row y comes from gameswf::scanline(image, y) (pitch based),
// each row is an RGB to ARGB expansion of width pixels with alpha 0xff, and the destination advances contiguously,
// width * 4 bytes per row.
bitmap_info_ogl::bitmap_info_ogl(glitch::video::IVideoDriver* driver, gameswf::image_rgb* image)
    : m_width(image->m_width), m_height(image->m_height), m_driver(driver) {
    const glitch::core::dimension2d<int32_t> size{image->m_width, image->m_height};
    m_image = driver->m_textureManager->createImage(12, size);  // +0x18
    std::uint8_t* dst = m_image->m_data;
    for (int y = 0; y < image->m_height; ++y) {
        const std::uint8_t* src = scanline(image, y);
        if (image->m_width > 0) {
            bitmap_ogl_detail::expand_rgb_to_argb(dst, src, image->m_width);
            dst += image->m_width * 4;
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5a9c _ZN15bitmap_info_ogl7releaseEv
// Not virtual. When m_texture is set: if m_texture_registered, the texture manager (driver +0xe0) removes it with
// removeTexture(m_texture), which also clears the pointer; then the slot is cleared and the old reference dropped.
// Then m_image is cleared and dropped, and the membuf is destroyed, freed with free_internal(m, 0) and cleared.
void bitmap_info_ogl::release() {
    if (m_texture) {
        if (m_texture_registered) {
            m_driver->m_textureManager->removeTexture(m_texture);
        }
        m_texture = nullptr;  // binary: the slot is cleared, then the old reference is dropped
    }
    if (m_image) {
        m_image = nullptr;  // binary: the slot is cleared, then the old reference is dropped
    }
    if (m_membuf) {
        m_membuf->~membuf();
        free_internal(m_membuf, 0);
        m_membuf = nullptr;
    }
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5b2c _ZN15bitmap_info_ogl11set_textureEPN6glitch5video8ITextureE
// release(), then the texture pointer is replaced with a counted reference (old reference dropped), then the width and
// height are copied from the texture (+0x20, +0x24). The binary dereferences the texture with no null test.
// Virtual override of bitmap_info::set_texture (vtable +0x20).
void bitmap_info_ogl::set_texture(glitch::video::ITexture* texture) {
    release();
    m_texture = texture;
    m_width = static_cast<int>(m_texture->m_width);    // +0x20 <- texture +0x20
    m_height = static_cast<int>(m_texture->m_height);  // +0x24 <- texture +0x24
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5b80 _ZN15bitmap_info_ogl8unlayoutEv
// Thunk: a tail jump to release(). Forwarded, not reimplemented.
void bitmap_info_ogl::unlayout() {
    release();
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5b84 _ZN15bitmap_info_oglD1Ev
// 0x7d5c04 (D0): skipped, the compiler-generated deleting destructor.
// The binary sets the vptr, calls release(), drops m_image, m_render_target and m_texture (the member destructors, in
// reverse order of declaration), then sets the bitmap_info vptr and runs the ref_counted destructor.
bitmap_info_ogl::~bitmap_info_ogl() {
    release();
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7d5c20 _ZN15bitmap_info_ogl6layoutEv
// Makes the glitch texture from the pending image or membuf. Steps, in the binary's order:
//   1. return when m_texture is set.
//   2. name = sprintf("bitmap_info_ogl_0x%x", this). The pointer is printed at host width.
//   3. driver option bit 0x10 (driver +0x88): when it is set, the binary clears it through the driver's vtable +0xa0
//      (setOption(16, false)) and remembers that it did. The driver pointer is tested here only.
//   4. texture manager (driver +0xe0) word +0x74, bit 0x10: set from m_writable; the old bit is kept for step 9. With no
//      texture manager the old bit is 0 and nothing is written.
//   5. m_image set: the texture is addTexture(name, m_image, false, layout). The layout is 1 only when m_writable is set,
//      the driver capability word (+0x9c) has both bits of 0x6000, PFDTable[image format] flag 8 is clear and the image
//      has no mip chain (byte +0x28); otherwise 0. Then m_texture_registered = 1, the filter steps run on the texture,
//      and the image is released.
//   6. otherwise m_membuf set: file = createMemoryReadFile(membuf data, membuf size, name, false), m_texture =
//      manager->getTexture(file, nullptr, false), the filter steps, m_texture_registered = 1, file dropped, the membuf
//      destroyed and freed, m_membuf cleared.
//   7. the filter steps, min then mag: bitmap_ogl_detail::apply_filter_bits on the texture words (flags +0x38, dirty
//      +0x40, mip count +0x3e).
//   9. the texture manager bit and the driver option bit saved in steps 3 and 4 are put back. The driver call is
//      setOption(16, saved) with the saved bit as the third argument (register r2 holds it when the binary calls
//      slot +0xa0; the decompiler drops it).
void bitmap_info_ogl::layout() {
    if (m_texture) {
        return;
    }
    char name[64];
    std::snprintf(name, sizeof name, "bitmap_info_ogl_0x%llx",
                  static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(this)));

    glitch::video::IVideoDriver* driver = m_driver;
    bool driver_option_was_set = false;
    if (driver && (driver->m_options & 0x10) != 0) {
        driver->setOption(16, false);
        driver_option_was_set = true;
    }

    glitch::video::CTextureManager* manager = m_driver->m_textureManager;
    int manager_bit = m_writable;
    if (manager) {
        const unsigned int word = manager->unk_74;
        const int old_bit = (word >> 4) & 1;
        if (manager_bit != old_bit) {
            if (m_writable) {
                manager->unk_74 = word | 0x10;
            } else {
                manager->unk_74 = word & 0xFFFFFFEFu;
            }
            manager_bit = old_bit;
        }
    } else {
        manager_bit = 0;
    }

    if (m_image) {
        glitch::video::E_TEXTURE_LAYOUT texture_layout = 0;
        if (m_writable && (m_driver->m_capabilities & 0x6000) == 0x6000 &&
            (glitch::video::pixel_format::detail::PFDTable[m_image->m_format].flags & 8) == 0 &&
            !m_image->m_hasMipmaps) {
            texture_layout = 1;
        }
        m_texture = manager->addTexture(name, m_image, false, texture_layout);
        m_texture_registered = true;
        glitch::video::ITexture* texture = m_texture.get();
        bitmap_ogl_detail::apply_filter_bits(texture->m_flags38, texture->m_dirtyFlags40, texture->m_mipCount3e,
                                             m_min_filter, m_mag_filter);
        m_image = nullptr;
    } else if (m_membuf) {
        const ::membuf* buffer = m_membuf;
        glitch::io::CMemoryReadFile* file =
            glitch::io::createMemoryReadFile(const_cast<void*>(buffer->data()), buffer->size(), name, false);
        m_texture = m_driver->m_textureManager->getTexture(file, nullptr, false);
        glitch::video::ITexture* texture = m_texture.get();
        bitmap_ogl_detail::apply_filter_bits(texture->m_flags38, texture->m_dirtyFlags40, texture->m_mipCount3e,
                                             m_min_filter, m_mag_filter);
        m_texture_registered = true;
        file->drop();
        if (m_membuf) {
            m_membuf->~membuf();
            free_internal(m_membuf, 0);
        }
        m_membuf = nullptr;
    }

    if (manager) {
        const unsigned int word = manager->unk_74;
        if (manager_bit != static_cast<int>((word >> 4) & 1)) {
            if (manager_bit) {
                manager->unk_74 = word | 0x10;
            } else {
                manager->unk_74 = word & 0xFFFFFFEFu;
            }
        }
    }
    if (driver) {
        if (driver_option_was_set != static_cast<bool>((driver->m_options >> 4) & 1)) {
            driver->setOption(16, driver_option_was_set);
        }
    }
}
