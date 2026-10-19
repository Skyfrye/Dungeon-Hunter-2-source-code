// Test for batch v1-vendor-gameswf-bitmap_info_ogl-434136-1 (bitmap_info_ogl, part 2 of 2).
// Link line (run from the worktree root; the libraries are the cmake targets dh2_glitch_video, dh2_glitch_core_io and
// dh2_core_platform, linked after the sources):
//   bash tools/trackb/check_tu.sh --test <this file> <part-1 .cpp> <part-2 .cpp> <gameswf_bitmap_info .cpp>
//     <gameswf_ref_counted .cpp> <pack15 .cpp (image_base constructor, image_rgb, image_rgba)>
//     <upstream/gameswf-r1714/base/membuf.cpp> <gameswf_membuf .cpp (membuf::capacity)>
//     <test-support/dh2_test_support.cpp> -Wl,--start-group libdh2_glitch_video.a libdh2_glitch_core_io.a
//     libdh2_core_platform.a -Wl,--end-group
//   (the sources are under vendor-gameswf/src/; the real membuf is linked)
//
// The texture manager's createImage, addTexture and getTexture(IReadFile*) are not reconstructed in glitch-video, so the
// doubles in bitmap_info_ogl_test_types.hpp stand in (weak) and record what bitmap_info_ogl asks of them. The test checks:
//   - the four constructors that use the manager (0x7d5294, 0x7d5404, 0x7d567c, 0x7d5914): the call made, the pixels
//     written to the CImage (alpha, RGBA and per-row RGB expansion), the size and the registered flag;
//   - release (0x7d5a9c), set_texture (0x7d5b2c), unlayout (0x7d5b80) and the destructor (0x7d5b84): when the texture
//     manager removes the texture, the counted references, the size copied from the new texture;
//   - layout (0x7d5c20): the early return, the texture-manager word (+0x74 bit 0x10) around addTexture, the driver option
//     bit 0x10 and the setOption calls, the layout argument of addTexture and its three conditions, the filter steps on the
//     made texture, and the image released afterwards; the membuf branch: a memory read file over the buffer (size, name,
//     bytes), getTexture(file, nullptr, false), the filter steps, the file dropped and the membuf freed;
//   - the pixel loops and filter-bit update factored out in bitmap_info_ogl_pixels.hpp.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

#include "base/membuf.h"
#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/bitmap_info_ogl.hpp"
#include "vendor-gameswf/bitmap_info_ogl_pixels.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"
#include "glitch-video/pixel_format.hpp"
#include "bitmap_info_ogl_test_types.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

namespace detail = gameswf::bitmap_ogl_detail;
using bio_test::g_manager_log;
using bio_test::TestDriver;
using bio_test::TestTexture;
using glitch::video::CImage;
using glitch::video::CTextureManager;
using glitch::video::ITexture;

}  // namespace

namespace gameswf {

template <class T>
void destruct(const T* object) {
    delete const_cast<T*>(object);
}

template void destruct<ref_counted>(const ref_counted* object);

// image_base's destructor (0x7b5a08) and gameswf::scanline (0x7b526c) are bodies of the image_base batch, which is not
// among the sources linked here (the constructor is in pack15). Weak, so the batch's own bodies win where they are linked.
__attribute__((weak)) image_base::~image_base() {
    if (m_data != nullptr) {
        free_internal(m_data, 0);
        m_data = nullptr;
    }
}

__attribute__((weak)) std::uint8_t* scanline(image_base* surf, int y) {
    return surf->m_data + surf->m_pitch * y;
}

}  // namespace gameswf


namespace {

void reset_log() { g_manager_log = bio_test::ManagerLog(); }

void test_filter_table() {
    // s_filter_map read from the binary at 0x90c044: {0, 1, 2, 3, 4, 5}.
    CHECK(detail::kFilterMapCount == 6);
    for (int i = 0; i < detail::kFilterMapCount; ++i) {
        CHECK(detail::kFilterMap[i] == i);
    }
}

void test_alpha_expansion() {
    const std::uint8_t src[2] = {0x10, 0x80};
    std::uint8_t dst[8] = {};
    detail::expand_alpha8_to_argb(dst, src, 2);
    const std::uint8_t expected[8] = {0x10, 0xff, 0xff, 0xff, 0x80, 0xff, 0xff, 0xff};
    for (int i = 0; i < 8; ++i) {
        CHECK(dst[i] == expected[i]);
    }

    // A count of zero or less writes nothing.
    std::uint8_t untouched[4] = {1, 2, 3, 4};
    detail::expand_alpha8_to_argb(untouched, src, 0);
    CHECK(untouched[0] == 1 && untouched[3] == 4);
}

void test_rgba_expansion() {
    // RGBA in memory: R G B A. The binary writes A R G B.
    const std::uint8_t src[8] = {1, 2, 3, 4, 0x50, 0x60, 0x70, 0x80};
    std::uint8_t dst[8] = {};
    detail::expand_rgba_to_argb(dst, src, 2);
    const std::uint8_t expected[8] = {4, 1, 2, 3, 0x80, 0x50, 0x60, 0x70};
    for (int i = 0; i < 8; ++i) {
        CHECK(dst[i] == expected[i]);
    }
}

void test_rgb_expansion() {
    // RGB in memory: R G B. The binary writes 0xff then R G B.
    const std::uint8_t src[6] = {1, 2, 3, 0x40, 0x50, 0x60};
    std::uint8_t dst[8] = {};
    detail::expand_rgb_to_argb(dst, src, 2);
    const std::uint8_t expected[8] = {0xff, 1, 2, 3, 0xff, 0x40, 0x50, 0x60};
    for (int i = 0; i < 8; ++i) {
        CHECK(dst[i] == expected[i]);
    }
}

void test_filter_bits_defaults() {
    // Defaults: min index 1, mag index 1, one mip. Both words start at zero.
    std::uint32_t flags = 0;
    std::uint16_t dirty = 0;
    detail::apply_filter_bits(flags, dirty, 1, 1, 1);
    CHECK(flags == 0x9000u);  // min in bits 12..14 = 1, mag in bits 15..17 = 1
    CHECK(dirty == 0x0c);     // 0x4 min changed, 0x8 mag changed
}

void test_filter_bits_min_test_mips() {
    // Min index 2 with one mip: the min step needs mips > 1 or value <= 1, so it does not apply.
    std::uint32_t flags = 0;
    std::uint16_t dirty = 0;
    detail::apply_filter_bits(flags, dirty, 1, 2, 1);
    CHECK((flags & 0x7000u) == 0u);
    CHECK(dirty == 0x08);     // only the mag step

    // Same index with three mips: the min step applies.
    flags = 0;
    dirty = 0;
    detail::apply_filter_bits(flags, dirty, 3, 2, 1);
    CHECK(flags == 0xa000u);  // min 2 in bits 12..14, mag 1 in bits 15..17
    CHECK(dirty == 0x0c);
}

void test_filter_bits_already_set() {
    // Flags already hold min 1 and mag 1: nothing changes, no dirty bits are set.
    std::uint32_t flags = 0x9000u;
    std::uint16_t dirty = 0;
    detail::apply_filter_bits(flags, dirty, 1, 1, 1);
    CHECK(flags == 0x9000u);
    CHECK(dirty == 0);
}

void test_filter_bits_keep_other_fields() {
    // Bits outside the two filter fields are kept, and the dirty bits already set are kept.
    std::uint32_t flags = 0x1u | (0x3u << 3);
    std::uint16_t dirty = 0x10;
    detail::apply_filter_bits(flags, dirty, 1, 1, 1);
    CHECK((flags & 0x7u) == 0x1u);
    CHECK((flags & (0x3u << 3)) == (0x3u << 3));
    CHECK(dirty == 0x1c);
}

// 0x7d5294: the render-target constructor.
void test_target_constructor() {
    reset_log();
    TestDriver driver;
    CTextureManager manager;
    driver.m_textureManager = &manager;
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver, 64, 32);
    CHECK(g_manager_log.addTargetCalls == 1);
    CHECK(g_manager_log.targetSize.Width == 64 && g_manager_log.targetSize.Height == 32);
    CHECK(g_manager_log.targetName == "gameswf_target");
    CHECK(g_manager_log.targetFormat == 14);
    CHECK(g_manager_log.targetFlag == true);
    CHECK(b->m_texture.get() == g_manager_log.lastTexture);
    CHECK(b->m_texture_registered == true);
    CHECK(b->m_writable == false);
    CHECK(!b->m_image && b->m_membuf == nullptr);
    CHECK(b->m_min_filter == 1 && b->m_mag_filter == 1);
    CHECK(b->get_width() == 64 && b->get_height() == 32);
    CHECK(b->m_driver == &driver);
    // The render target comes from the driver's slot +0x84 with the texture and flags 0.
    CHECK(driver.renderTargetCalls == 1);
    CHECK(driver.lastRenderTargetTexture == g_manager_log.lastTexture);
    CHECK(driver.lastRenderTargetFlags == 0);
    CHECK(b->m_render_target.get() != nullptr);
    // The manager's use and the bitmap's use.
    ITexture* texture = g_manager_log.lastTexture;
    CHECK(texture->referenceCounter == 2);
    // The texture is registered, so release() asks the manager to remove it; the manager here has it in its list.
    manager.m_textures.push_back(texture);
    delete b;
    CHECK(manager.m_textures.empty());
    CHECK(texture->referenceCounter == 1);
    texture->drop();
}

// 0x7d5404: the alpha constructor.
void test_alpha_constructor() {
    reset_log();
    TestDriver driver;
    CTextureManager manager;
    driver.m_textureManager = &manager;
    const unsigned char alpha[6] = {0x10, 0x20, 0x30, 0x40, 0x50, 0x60};
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver, 3, 2, const_cast<unsigned char*>(alpha));
    CHECK(g_manager_log.createImageCalls == 1);
    CHECK(g_manager_log.imageFormat == 12);
    CHECK(g_manager_log.imageSize.Width == 3 && g_manager_log.imageSize.Height == 2);
    CHECK(b->m_image && b->m_image->m_data != nullptr);
    CHECK(!b->m_texture && b->m_texture_registered == false);
    CHECK(b->get_width() == 3 && b->get_height() == 2);
    const std::uint8_t* px = b->m_image->m_data;
    for (int i = 0; i < 6; ++i) {
        CHECK(px[4 * i] == alpha[i]);
        CHECK(px[4 * i + 1] == 0xff && px[4 * i + 2] == 0xff && px[4 * i + 3] == 0xff);
    }
    // The internal size is the image's while there is no texture.
    CHECK(b->get_internal_width() == 3 && b->get_internal_height() == 2);
    delete b;

    // A null alpha leaves the pixels as the manager made them.
    reset_log();
    b = new bitmap_info_ogl(&driver, 2, 2, static_cast<unsigned char*>(nullptr));
    CHECK(g_manager_log.createImageCalls == 1);
    CHECK(b->m_image->m_data[0] == 0 && b->m_image->m_data[3] == 0);
    delete b;
}

// 0x7d567c: the RGBA constructor.
void test_rgba_constructor() {
    reset_log();
    TestDriver driver;
    CTextureManager manager;
    driver.m_textureManager = &manager;
    gameswf::image_rgba image(2, 2);
    for (int i = 0; i < 16; ++i) {
        image.m_data[i] = static_cast<std::uint8_t>(0x10 + i);
    }
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver, &image);
    CHECK(g_manager_log.createImageCalls == 1);
    CHECK(g_manager_log.imageFormat == 12);
    CHECK(g_manager_log.imageSize.Width == 2 && g_manager_log.imageSize.Height == 2);
    CHECK(b->get_width() == 2 && b->get_height() == 2);
    const std::uint8_t* px = b->m_image->m_data;
    for (int p = 0; p < 4; ++p) {
        // RGBA in, ARGB out
        CHECK(px[4 * p + 0] == image.m_data[4 * p + 3]);
        CHECK(px[4 * p + 1] == image.m_data[4 * p + 0]);
        CHECK(px[4 * p + 2] == image.m_data[4 * p + 1]);
        CHECK(px[4 * p + 3] == image.m_data[4 * p + 2]);
    }
    delete b;
}

// 0x7d5914: the RGB constructor, which copies row by row through gameswf::scanline (the source rows are padded).
void test_rgb_constructor() {
    reset_log();
    TestDriver driver;
    CTextureManager manager;
    driver.m_textureManager = &manager;
    gameswf::image_rgb image(3, 2);  // pitch (3 * (3 + 1)) & ~3 = 12: 9 bytes of pixels and 3 of padding per row
    CHECK(image.m_pitch == 12);
    for (int y = 0; y < 2; ++y) {
        std::uint8_t* row = gameswf::scanline(&image, y);
        for (int x = 0; x < 3; ++x) {
            row[3 * x + 0] = static_cast<std::uint8_t>(0x10 * (y + 1) + x);
            row[3 * x + 1] = static_cast<std::uint8_t>(0x20 * (y + 1) + x);
            row[3 * x + 2] = static_cast<std::uint8_t>(0x30 * (y + 1) + x);
        }
        row[9] = row[10] = row[11] = 0xee;  // padding must not reach the image
    }
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver, &image);
    CHECK(g_manager_log.createImageCalls == 1);
    CHECK(g_manager_log.imageFormat == 12);
    CHECK(g_manager_log.imageSize.Width == 3 && g_manager_log.imageSize.Height == 2);
    CHECK(b->get_width() == 3 && b->get_height() == 2);
    const std::uint8_t* px = b->m_image->m_data;
    for (int y = 0; y < 2; ++y) {
        for (int x = 0; x < 3; ++x) {
            const std::uint8_t* d = px + 4 * (3 * y + x);  // the destination rows are contiguous, width * 4 bytes each
            CHECK(d[0] == 0xff);
            CHECK(d[1] == 0x10 * (y + 1) + x);
            CHECK(d[2] == 0x20 * (y + 1) + x);
            CHECK(d[3] == 0x30 * (y + 1) + x);
        }
    }
    delete b;
}

// 0x7d5a9c, 0x7d5b2c, 0x7d5b80: release, set_texture, unlayout.
void test_release_and_set_texture() {
    reset_log();
    TestDriver driver;
    CTextureManager manager;
    driver.m_textureManager = &manager;

    // release() asks the manager to remove the texture only when it is registered.
    TestTexture* first = new TestTexture(8, 8);
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver, first);  // not registered
    manager.m_textures.push_back(first);
    b->release();
    CHECK(!b->m_texture);
    CHECK(manager.m_textures.size() == 1);  // untouched: the texture was not registered
    CHECK(first->referenceCounter == 1);
    manager.m_textures.clear();

    // set_texture: release(), then the counted new texture and its size.
    TestTexture* second = new TestTexture(32, 16);
    b->m_texture_registered = true;
    b->set_texture(second);
    CHECK(b->m_texture.get() == second);
    CHECK(second->referenceCounter == 2);
    CHECK(b->get_width() == 32 && b->get_height() == 16);

    // set_texture again with the texture registered: the old texture leaves the manager's list.
    TestTexture* third = new TestTexture(4, 2);
    manager.m_textures.push_back(second);
    b->set_texture(third);
    CHECK(manager.m_textures.empty());
    CHECK(second->referenceCounter == 1);
    CHECK(b->get_width() == 4 && b->get_height() == 2);
    CHECK(third->referenceCounter == 2);

    // unlayout forwards to release(): the registered texture is removed and dropped.
    manager.m_textures.push_back(third);
    b->unlayout();
    CHECK(!b->m_texture);
    CHECK(manager.m_textures.empty());
    CHECK(third->referenceCounter == 1);
    CHECK(b->is_layout() == 0);

    // release() also drops the image and destroys the membuf (free_internal(m, 0), pointer cleared).
    b->m_image = boost::intrusive_ptr<CImage>(new CImage(2, 2));
    b->m_membuf = new (gameswf::malloc_internal(sizeof(::membuf), swf::MemHint(0))) ::membuf("abc", 3);
    b->release();
    CHECK(!b->m_image);
    CHECK(b->m_membuf == nullptr);

    delete b;
    first->drop();
    second->drop();
    third->drop();
}

// A bitmap whose pending image is in place, driven through layout() with a texture manager in the driver.
struct LayoutRig {
    TestDriver driver;
    CTextureManager manager;
    bitmap_info_ogl* bitmap = nullptr;

    LayoutRig() {
        reset_log();
        driver.m_textureManager = &manager;
        bitmap = new bitmap_info_ogl(&driver, 4, 4, static_cast<unsigned char*>(nullptr));  // an image, no texture
    }
    ~LayoutRig() {
        // A texture made by layout() is registered: release() asks the manager to remove it. The manager's own use of
        // the texture (the double hands out a count of one) is dropped after the bitmap is gone.
        ITexture* made = g_manager_log.lastTexture;
        delete bitmap;
        if (made != nullptr) {
            made->drop();
        }
    }
};

void test_layout_basic() {
    LayoutRig rig;
    bitmap_info_ogl* b = rig.bitmap;
    TestDriver& driver = rig.driver;
    CHECK(driver.m_options == 16);  // CNullDriver default: option bit 0x10 set
    CHECK(rig.manager.unk_74 == 67);
    b->m_min_filter = 0;
    b->m_mag_filter = 2;
    CImage* image = b->m_image.get();
    b->layout();

    // Option bit 0x10: cleared before the texture is made and put back afterwards.
    CHECK(driver.optionCalls.size() == 2);
    CHECK(driver.optionCalls[0].option == 16 && driver.optionCalls[0].enable == false);
    CHECK(driver.optionCalls[1].option == 16 && driver.optionCalls[1].enable == true);
    CHECK((driver.m_options & 0x10) == 0x10);

    // addTexture(name, image, false, 0): not writable.
    CHECK(g_manager_log.addImageCalls == 1);
    CHECK(g_manager_log.imageName.compare(0, 18, "bitmap_info_ogl_0x") == 0);
    CHECK(g_manager_log.imageArg == image);
    CHECK(g_manager_log.imageFlag == false);
    CHECK(g_manager_log.imageLayout == 0);
    CHECK((g_manager_log.word74AtCall & 0x10) == 0);
    CHECK(rig.manager.unk_74 == 67);

    CHECK(b->m_texture.get() == g_manager_log.lastTexture);
    CHECK(b->m_texture_registered == true);
    CHECK(!b->m_image);  // released at the end of the image path
    CHECK(b->is_layout() == 1);

    // The made texture starts with min 1 and mag 1. Min index 0 is applied (one mip, value <= 1); mag index 2 as well.
    ITexture* texture = g_manager_log.lastTexture;
    CHECK(((texture->m_flags38 >> 12) & 7) == 0);
    CHECK(((texture->m_flags38 >> 15) & 7) == 2);
    CHECK((texture->m_dirtyFlags40 & 0xc) == 0xc);

    // A second layout() returns at once.
    b->layout();
    CHECK(g_manager_log.addImageCalls == 1);
    CHECK(driver.optionCalls.size() == 2);
}

void test_layout_writable() {
    // Writable, capability bits 0x6000 set, format 12 (PFDTable flag 8 clear), no mip chain: layout 1. The manager's +0x74
    // bit 0x10 is set while addTexture runs and put back afterwards.
    {
        LayoutRig rig;
        rig.driver.m_capabilities |= 0x6000;
        CHECK((glitch::video::pixel_format::detail::PFDTable[12].flags & 8) == 0);
        rig.bitmap->set_writable();
        rig.bitmap->layout();
        CHECK(g_manager_log.imageLayout == 1);
        CHECK(g_manager_log.imageFlag == false);
        CHECK((g_manager_log.word74AtCall & 0x10) == 0x10);
        CHECK(g_manager_log.word74AtCall == (67u | 0x10u));
        CHECK(rig.manager.unk_74 == 67);
    }
    // Only one of the two capability bits: layout 0.
    {
        LayoutRig rig;
        rig.driver.m_capabilities |= 0x2000;
        rig.bitmap->set_writable();
        rig.bitmap->layout();
        CHECK(g_manager_log.imageLayout == 0);
        CHECK((g_manager_log.word74AtCall & 0x10) == 0x10);
        CHECK(rig.manager.unk_74 == 67);
    }
    // A format whose descriptor has flag 8 (a compressed format, row 17): layout 0.
    {
        LayoutRig rig;
        rig.driver.m_capabilities |= 0x6000;
        CHECK((glitch::video::pixel_format::detail::PFDTable[17].flags & 8) == 8);
        rig.bitmap->m_image->m_format = 17;
        rig.bitmap->set_writable();
        rig.bitmap->layout();
        CHECK(g_manager_log.imageLayout == 0);
    }
    // An image with a mip chain: layout 0.
    {
        LayoutRig rig;
        rig.driver.m_capabilities |= 0x6000;
        rig.bitmap->m_image->m_hasMipmaps = 1;
        rig.bitmap->set_writable();
        rig.bitmap->layout();
        CHECK(g_manager_log.imageLayout == 0);
    }
    // Not writable with every other condition met: layout 0, and the manager word is untouched.
    {
        LayoutRig rig;
        rig.driver.m_capabilities |= 0x6000;
        rig.bitmap->layout();
        CHECK(g_manager_log.imageLayout == 0);
        CHECK((g_manager_log.word74AtCall & 0x10) == 0);
    }
}

void test_layout_manager_bit_restore() {
    // The manager's bit is set when the layout starts and the bitmap is not writable: it is cleared while the texture is
    // made and set again afterwards.
    LayoutRig rig;
    rig.manager.unk_74 = 67u | 0x10u;
    rig.bitmap->layout();
    CHECK((g_manager_log.word74AtCall & 0x10) == 0);
    CHECK(g_manager_log.word74AtCall == 67u);
    CHECK(rig.manager.unk_74 == (67u | 0x10u));
}

void test_layout_driver_option_clear() {
    // The driver option bit 0x10 is clear: no setOption call is made.
    LayoutRig rig;
    rig.driver.m_options = 0;
    rig.bitmap->layout();
    CHECK(rig.driver.optionCalls.empty());
    CHECK(rig.driver.m_options == 0);
    CHECK(g_manager_log.addImageCalls == 1);
}

void test_layout_min_filter_needs_mips() {
    // The made texture has a mip chain: min index 3 is applied. Without a chain it is refused.
    {
        LayoutRig rig;
        g_manager_log.madeTextureHasMips = true;
        rig.bitmap->m_min_filter = 3;
        rig.bitmap->layout();
        CHECK(g_manager_log.lastTexture->m_mipCount3e > 1);
        CHECK(((g_manager_log.lastTexture->m_flags38 >> 12) & 7) == 3);
    }
    {
        LayoutRig rig;
        rig.bitmap->m_min_filter = 3;
        rig.bitmap->layout();
        CHECK(((g_manager_log.lastTexture->m_flags38 >> 12) & 7) == 1);  // refused: one mip and value 3
    }
}

void test_layout_membuf() {
    // The pending data is a membuf (an encoded image file): layout() wraps it in a memory read file, asks the manager for the
    // texture, applies the filter steps, drops the file and destroys the membuf. Not the image path: addTexture is not called.
    LayoutRig rig;
    bitmap_info_ogl* b = rig.bitmap;
    b->m_image = nullptr;  // the rig made an image; this bitmap holds a membuf instead
    const unsigned char bytes[7] = {0x89, 'P', 'N', 'G', 0x0d, 0x0a, 0x1a};
    b->m_membuf = new (gameswf::malloc_internal(sizeof(::membuf), swf::MemHint(0))) ::membuf(bytes, sizeof bytes);
    b->m_min_filter = 0;
    b->m_mag_filter = 2;
    b->layout();

    CHECK(g_manager_log.addImageCalls == 0);
    CHECK(g_manager_log.getFileCalls == 1);
    CHECK(g_manager_log.fileSize == 7);
    CHECK(g_manager_log.fileBytes.size() == 7 && std::memcmp(g_manager_log.fileBytes.data(), bytes, 7) == 0);
    CHECK(g_manager_log.fileName.compare(0, 18, "bitmap_info_ogl_0x") == 0);  // the name given to the file
    CHECK(g_manager_log.fileNameArg == nullptr);                               // getTexture gets no name of its own
    CHECK(g_manager_log.fileFlag == false);
    CHECK(g_manager_log.fileWasAllInMemory == true);

    CHECK(b->m_texture.get() == g_manager_log.lastTexture);
    CHECK(b->m_texture_registered == true);
    CHECK(b->m_membuf == nullptr);
    CHECK(b->is_layout() == 1);
    ITexture* texture = g_manager_log.lastTexture;
    CHECK(((texture->m_flags38 >> 12) & 7) == 0);
    CHECK(((texture->m_flags38 >> 15) & 7) == 2);
    CHECK((texture->m_dirtyFlags40 & 0xc) == 0xc);
    // The driver option bit and the manager word are put back as in the image path.
    CHECK(rig.driver.optionCalls.size() == 2);
    CHECK(rig.manager.unk_74 == 67);

    // The file made for the read was dropped: the double kept no pointer, so the texture is the only thing alive; a second
    // layout() returns at once.
    b->layout();
    CHECK(g_manager_log.getFileCalls == 1);
}

void test_layout_nothing_pending() {
    // No image and no membuf: nothing is made. The manager is absent here, and the driver bit is saved and put back.
    reset_log();
    TestDriver driver;
    driver.m_textureManager = nullptr;
    bitmap_info_ogl* b = new bitmap_info_ogl(&driver);
    b->layout();
    CHECK(g_manager_log.addImageCalls == 0);
    CHECK(!b->m_texture);
    CHECK(driver.optionCalls.size() == 2);
    CHECK(driver.optionCalls[0].enable == false && driver.optionCalls[1].enable == true);
    delete b;
}

void test_lock_through_layout() {
    // lock() runs layout() first: the pending image becomes a texture, then the texture is mapped.
    LayoutRig rig;
    void* pixels = rig.bitmap->lock();
    CHECK(g_manager_log.addImageCalls == 1);
    CHECK(pixels != nullptr);
    CHECK(pixels == g_manager_log.lastTexture->m_data);
    rig.bitmap->unlock();
    CHECK(g_manager_log.lastTexture->m_lockCount42 == 0);
}

}  // namespace

int main() {
    test_filter_table();
    test_alpha_expansion();
    test_rgba_expansion();
    test_rgb_expansion();
    test_filter_bits_defaults();
    test_filter_bits_min_test_mips();
    test_filter_bits_already_set();
    test_filter_bits_keep_other_fields();
    test_target_constructor();
    test_alpha_constructor();
    test_rgba_constructor();
    test_rgb_constructor();
    test_release_and_set_texture();
    test_layout_basic();
    test_layout_writable();
    test_layout_manager_bit_restore();
    test_layout_driver_option_clear();
    test_layout_min_filter_needs_mips();
    test_layout_membuf();
    test_layout_nothing_pending();
    test_lock_through_layout();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("bitmap_info_ogl part 2: all checks passed\n");
    return 0;
}
