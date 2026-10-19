// bitmap_info_ogl (Gameloft, not in upstream GameSWF r1714): the glitch texture backend of gameswf::bitmap_info.
// The class is in the global namespace, like render_handler_glitch (the binary's symbols are _ZN15bitmap_info_ogl...).
// It is written against the canonical glitch-video classes (ITexture, CImage, IRenderTarget, IVideoDriver and
// CTextureManager). The bodies are in vendor-gameswf/src/v1-vendor-gameswf-bitmap_info_ogl-434136-0.cpp (part 1) and
// -1.cpp (part 2).
//
// Layout, 32-bit offsets (the comments are for checking against the binary; the code uses names only):
//   +0x00..+0x0b  gameswf::bitmap_info, which is gameswf::ref_counted (vptr, count, weak proxy)
//   +0x0c         m_writable            set_writable; layout() copies it to the texture manager flag 0x10
//   +0x0d         m_texture_registered  texture was added to the driver's texture manager; release() removes it
//   +0x10         m_texture             glitch::video::ITexture (counted)
//   +0x14         m_render_target       IVideoDriver::createRenderTarget(m_texture, 0) (driver vtable +0x84), counted;
//                                       render_handler_glitch::set_target pushes it with pushRenderTarget (+0x8c)
//   +0x18         m_image               CTextureManager::createImage result (CImage, counted); pixels at CImage +0x08
//   +0x1c         m_membuf              encoded texture bytes waiting for layout() (gameswf::membuf, owned)
//   +0x20         m_width               texture width (set by the constructors and by set_texture)
//   +0x24         m_height              texture height
//   +0x28         m_driver              glitch::video::IVideoDriver
//   +0x2c         m_min_filter          index into s_filter_map (default 1)
//   +0x30         m_mag_filter          index into s_filter_map (default 1)

#ifndef VENDOR_GAMESWF_BITMAP_INFO_OGL_HPP
#define VENDOR_GAMESWF_BITMAP_INFO_OGL_HPP

#include <cstdint>

#include "vendor-gameswf/image_rgb.hpp"                // gameswf::image_rgb (the binary's constructors take the Gameloft image classes)
#include "vendor-gameswf/image_rgba.hpp"               // gameswf::image_rgba
#include "base/membuf.h"                          // membuf (global in upstream, as the membuf batch uses it)
#include "glitch-core-io/boost/intrusive_ptr.hpp" // boost::intrusive_ptr (counting form, canonical)
#include "glitch-core-io/core/reference_counted.hpp"  // glitch::IReferenceCounted
#include "glitch-video/image.hpp"                 // glitch::video::CImage (canonical)
#include "glitch-video/render_target.hpp"         // glitch::video::IRenderTarget (canonical)
#include "glitch-video/texture.hpp"               // glitch::video::ITexture (canonical)
#include "gameswf/gameswf.h"                      // gameswf::bitmap_info, free_internal (via ref_counted.hpp)
#include "vendor-gameswf/bitmap_info_ogl_pixels.hpp"  // pixel loops and filter-bit helpers (bitmap_ogl_detail)

namespace glitch::video {
class IVideoDriver;  // glitch-video/include/glitch-video/video_driver.hpp
}  // namespace glitch::video

// DH2: the binary's symbols are _ZN15bitmap_info_ogl... (the class is in the global namespace, like render_handler_glitch).
class bitmap_info_ogl : public gameswf::bitmap_info {
public:
    // 0x7d5294 (C1). C2 is 0x7d515c (same body). The count is set by the base constructor. Makes a render-target texture
    // ("gameswf_target", pixel format 14) and its render target.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height);
    // 0x7d5404 (C1), 0x7d5564 (C2). Alpha-only texture; alpha may be null.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height, unsigned char* alpha);
    // 0x7d567c (C1), 0x7d57e0 (C2). From a 32-bit RGBA image.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, gameswf::image_rgba* image);
    // 0x7d5914 (C1). C2 is 0x7d5004 (same body). From a 24-bit RGB image.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, gameswf::image_rgb* image);

    // 0x7d5b84 (D1). 0x7d5c04 (D0) is the compiler-generated deleting destructor.
    ~bitmap_info_ogl() override;

    // 0x7d5a9c. Not virtual. Removes the texture from the manager, drops the texture, the image and the membuf.
    void release();
    // 0x7d5b2c. Virtual override of bitmap_info::set_texture (vtable +0x20).
    void set_texture(glitch::video::ITexture* texture) override;
    // 0x7d5b80. Forwards to release(). Virtual override of bitmap_info::unlayout (vtable +0x0c).
    void unlayout() override;
    // 0x7d5c20. Virtual override of bitmap_info::layout (vtable +0x08).
    void layout() override;

    // The C2 twins of the constructors below (0x7d4bfc, 0x7d4d30, 0x7d4e50) have the same bodies and are not defined
    // again.
    // 0x7d4b3c (C1). The membuf is borrowed by the binary's const pointer; release() frees it (see the batch notes).
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, int width, int height, const ::membuf* buf);
    // 0x7d4c74 (C1). From a glitch texture; the size is the texture's.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver, glitch::video::ITexture* texture);
    // 0x7d4dbc (C1). Size 0, no texture.
    bitmap_info_ogl(glitch::video::IVideoDriver* driver);

    // Virtual overrides, with the bitmap_info vtable slot of each: activate +0x10,
    // set_writable +0x14, lock +0x18, unlock +0x1c, get_width +0x24, get_height +0x28, set_min_filter +0x2c,
    // set_mag_filter +0x30, is_layout +0x34, get_internal_width +0x38, get_internal_height +0x3c.
    void activate() override;                        // 0x7d3cbc
    void set_writable() override;                    // 0x7d3cc0
    void set_min_filter(filter_mode mode) override;  // 0x7d3ccc
    void set_mag_filter(filter_mode mode) override;  // 0x7d3d34
    int get_width() const override;                  // 0x7d3d84
    int get_height() const override;                 // 0x7d3d8c
    int is_layout() const override;                  // 0x7d3d94 (the binary returns a bool in r0; the base returns int)
    int get_internal_width() const override;         // 0x7d3da4
    int get_internal_height() const override;        // 0x7d3dcc
    void dh2_keep_declared_size(int width, int height) override;  // port addition (remaster), see gameswf.h
    void* lock() override;                           // 0x7d4050
    void unlock() override;                          // 0x7d4048

    // 0x7d3fcc. The smallest power of two that holds value, halved when value is under 0.6 of it. The binary passes
    // this in r0 and never reads it, so it is declared static here.
    static int p2(int value);

    bool m_writable = false;                                                     // +0x0c
    bool m_texture_registered = false;                                           // +0x0d
    boost::intrusive_ptr<glitch::video::ITexture> m_texture;                    // +0x10
    boost::intrusive_ptr<glitch::video::IRenderTarget> m_render_target;         // +0x14
    boost::intrusive_ptr<glitch::video::CImage> m_image;                        // +0x18
    ::membuf* m_membuf = nullptr;                                                // +0x1c
    int m_width = 0;                                                             // +0x20
    int m_height = 0;                                                            // +0x24
    glitch::video::IVideoDriver* m_driver = nullptr;                             // +0x28
    int m_min_filter = 1;                                                        // +0x2c
    int m_mag_filter = 1;                                                        // +0x30
};

#endif  // VENDOR_GAMESWF_BITMAP_INFO_OGL_HPP
