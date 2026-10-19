// Test for batch v1-vendor-gameswf-bitmap_info_ogl-434136-0 (part 1 of bitmap_info_ogl).
// Link line (run from the worktree root, $SP = a scratchpad with the glitch libraries built by cmake):
//   bash tools/trackb/check_tu.sh --test <this file> <part-1 .cpp> <part-2 .cpp> <gameswf_bitmap_info .cpp>
//     <gameswf_ref_counted .cpp> <pack15 .cpp (image_base constructor, image_rgb, image_rgba)>
//     <test-support/dh2_test_support.cpp> -Wl,--start-group libdh2_glitch_video.a
//     libdh2_glitch_core_io.a libdh2_core_platform.a -Wl,--end-group
//   (all sources under vendor-gameswf/src/; the libraries are the cmake targets dh2_glitch_video, dh2_glitch_core_io and
//   dh2_core_platform, linked after the sources).
//
// Checks: p2 (0x7d3fcc), the filter-bit steps and the member functions set_min_filter (0x7d3ccc) and set_mag_filter
// (0x7d3d34) on a real glitch::video::ITexture, the s_filter_map identity table (0x90c044), the accessors (get_width,
// get_height, is_layout, get_internal_width, get_internal_height) in all three states (texture, image, neither),
// lock/unlock (0x7d4050, 0x7d4048) through the texture's map count, and the constructed state of a bitmap built from a
// texture (0x7d4c74), from a membuf (0x7d4b3c) and from the driver alone (0x7d4dbc).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>

#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/bitmap_info_ogl.hpp"
#include "vendor-gameswf/bitmap_info_ogl_filter.hpp"
#include "bitmap_info_ogl_test_types.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

}  // namespace

namespace gameswf {

template <class T>
void destruct(const T* object) {
	delete const_cast<T*>(object);
}

template void destruct<ref_counted>(const ref_counted* object);

// image_base's destructor (0x7b5a08) and gameswf::scanline (0x7b526c) are bodies of the image_base batch, which is not
// among the sources linked here (the part 2 constructors call them). Weak, so the batch's own bodies win where linked.
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


int main() {
	namespace filt = gameswf::bitmap_ogl_filter;
	using bio_test::TestDriver;
	using bio_test::TestTexture;

	// 1. p2: the smallest power of two that holds the value, halved when the value fills under 0.6 of it.
	CHECK(bitmap_info_ogl::p2(0) == 0);
	CHECK(bitmap_info_ogl::p2(1) == 1);
	CHECK(bitmap_info_ogl::p2(2) == 2);
	CHECK(bitmap_info_ogl::p2(3) == 4);   // 3/4 = 0.75
	CHECK(bitmap_info_ogl::p2(4) == 4);
	CHECK(bitmap_info_ogl::p2(5) == 8);   // 5/8 = 0.625
	CHECK(bitmap_info_ogl::p2(6) == 8);
	CHECK(bitmap_info_ogl::p2(8) == 8);
	CHECK(bitmap_info_ogl::p2(9) == 8);   // 9/16 = 0.5625, halved
	CHECK(bitmap_info_ogl::p2(16) == 16);
	CHECK(bitmap_info_ogl::p2(17) == 16); // 17/32 = 0.53, halved
	CHECK(bitmap_info_ogl::p2(-5) == 0);  // value at most 1: i = 1, then halved because -5 < 0.6

	// 2. The filter table is the identity over its six entries (s_filter_map, binary 0x90c044).
	for (int i = 0; i < 6; ++i) {
		CHECK(gameswf::bitmap_ogl_detail::kFilterMap[i] == i);
	}

	// 3. min step: writes bits 12..14 when the value differs and (mip > 1 or value <= 1); sets dirty bit 0x4.
	{
		std::uint32_t flags = 0;
		std::uint16_t dirty = 0;
		filt::min_filter_step(flags, dirty, 2, 3);
		CHECK(flags == 0x3000u);
		CHECK(dirty == 0x4u);
	}
	{
		std::uint32_t flags = 0x3000u;  // already value 3
		std::uint16_t dirty = 0;
		filt::min_filter_step(flags, dirty, 2, 3);
		CHECK(flags == 0x3000u);
		CHECK(dirty == 0u);
	}
	{
		std::uint32_t flags = 0;  // one mip and value 3: the mip test fails
		std::uint16_t dirty = 0;
		filt::min_filter_step(flags, dirty, 1, 3);
		CHECK(flags == 0u);
		CHECK(dirty == 0u);
	}
	{
		std::uint32_t flags = 0;  // one mip and value 1: the value test passes
		std::uint16_t dirty = 0;
		filt::min_filter_step(flags, dirty, 1, 1);
		CHECK(flags == 0x1000u);
		CHECK(dirty == 0x4u);
	}
	{
		std::uint32_t flags = 0x10000u;  // mag bits set; the min step must keep them
		std::uint16_t dirty = 0x8u;
		filt::min_filter_step(flags, dirty, 2, 3);
		CHECK(flags == 0x13000u);
		CHECK(dirty == 0xCu);
	}

	// 4. mag step: writes bits 15..17 when the value differs; no mip test; sets dirty bit 0x8.
	{
		std::uint32_t flags = 0;
		std::uint16_t dirty = 0;
		filt::mag_filter_step(flags, dirty, 2);
		CHECK(flags == 0x10000u);
		CHECK(dirty == 0x8u);
	}
	{
		std::uint32_t flags = 0x38000u;  // mag = 7
		std::uint16_t dirty = 0;
		filt::mag_filter_step(flags, dirty, 4);
		CHECK(flags == 0x20000u);
		CHECK(dirty == 0x8u);
	}
	{
		std::uint32_t flags = 0x20000u;  // mag already 4
		std::uint16_t dirty = 0;
		filt::mag_filter_step(flags, dirty, 4);
		CHECK(flags == 0x20000u);
		CHECK(dirty == 0u);
	}
	{
		std::uint32_t flags = 0x1000u;  // min = 1; mag value 0 matches the empty mag field, nothing changes
		std::uint16_t dirty = 0;
		filt::mag_filter_step(flags, dirty, 0);
		CHECK(flags == 0x1000u);
		CHECK(dirty == 0u);
	}

	// 5. A bitmap without a texture: the constructed state, and the calls that need no texture.
	{
		bitmap_info_ogl* b = new bitmap_info_ogl(nullptr, 64, 32, static_cast<const ::membuf*>(nullptr));
		CHECK(b->get_width() == 64);
		CHECK(b->get_height() == 32);
		CHECK(b->is_layout() == 0);
		CHECK(b->m_writable == false);
		CHECK(b->m_texture_registered == false);
		CHECK(b->m_min_filter == 1);
		CHECK(b->m_mag_filter == 1);
		b->set_writable();
		CHECK(b->m_writable == true);
		b->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(3));
		CHECK(b->m_min_filter == 3);
		b->set_mag_filter(static_cast<gameswf::bitmap_info::filter_mode>(4));
		CHECK(b->m_mag_filter == 4);
		b->activate();
		// With no texture and no image the internal size is the plain size.
		CHECK(b->get_internal_width() == 64);
		CHECK(b->get_internal_height() == 32);
		delete b;
	}
	{
		bitmap_info_ogl* d = new bitmap_info_ogl(nullptr);
		CHECK(d->get_width() == 0);
		CHECK(d->get_height() == 0);
		CHECK(d->m_driver == nullptr);
		CHECK(!d->m_texture && !d->m_render_target && !d->m_image && d->m_membuf == nullptr);
		delete d;
	}

	// 6. The constructor from a texture (0x7d4c74): counted, the size is the texture's.
	{
		TestDriver driver;
		TestTexture* texture = new TestTexture(8, 16);  // one use from the "manager"
		CHECK(texture->referenceCounter == 1);
		bitmap_info_ogl* b = new bitmap_info_ogl(&driver, texture);
		CHECK(texture->referenceCounter == 2);
		CHECK(b->m_texture.get() == texture);
		CHECK(b->m_driver == &driver);
		CHECK(b->get_width() == 8);
		CHECK(b->get_height() == 16);
		CHECK(b->is_layout() == 1);
		CHECK(b->m_writable == false && b->m_texture_registered == false);
		CHECK(b->m_min_filter == 1 && b->m_mag_filter == 1);
		CHECK(!b->m_render_target && !b->m_image && b->m_membuf == nullptr);

		// 7. The internal size is the texture's, whatever m_width and m_height say.
		b->m_width = 3;
		b->m_height = 5;
		CHECK(b->get_width() == 3);
		CHECK(b->get_height() == 5);
		CHECK(b->get_internal_width() == 8);
		CHECK(b->get_internal_height() == 16);

		// 8. set_min_filter and set_mag_filter run the steps on the texture words (flags +0x38, dirty +0x40, mips +0x3e).
		//    A new texture has min = 1 and mag = 1 and the data-dirty bits; take the dirty word to zero first.
		CHECK(((texture->m_flags38 >> 12) & 7) == 1);
		CHECK(((texture->m_flags38 >> 15) & 7) == 1);
		texture->m_dirtyFlags40 = 0;
		b->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(1));  // same value: no write
		CHECK(texture->m_dirtyFlags40 == 0);
		b->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(0));  // one mip, value 0 <= 1: written
		CHECK(((texture->m_flags38 >> 12) & 7) == 0);
		CHECK((texture->m_dirtyFlags40 & 0x4) == 0x4);
		CHECK(b->m_min_filter == 0);
		texture->m_dirtyFlags40 = 0;
		b->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(3));  // one mip, value 3: refused, index kept
		CHECK(((texture->m_flags38 >> 12) & 7) == 0);
		CHECK(texture->m_dirtyFlags40 == 0);
		CHECK(b->m_min_filter == 3);
		texture->m_mipCount3e = 4;
		b->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(3));  // four mips: written
		CHECK(((texture->m_flags38 >> 12) & 7) == 3);
		CHECK((texture->m_dirtyFlags40 & 0x4) == 0x4);
		texture->m_dirtyFlags40 = 0;
		b->set_mag_filter(static_cast<gameswf::bitmap_info::filter_mode>(2));  // mag has no mip test
		CHECK(((texture->m_flags38 >> 15) & 7) == 2);
		CHECK((texture->m_dirtyFlags40 & 0x8) == 0x8);
		CHECK(b->m_mag_filter == 2);
		texture->m_mipCount3e = 0;

		// 9. lock (0x7d4050): layout() returns at once with a texture; lock(false) maps level 0 of face 0. unlock (0x7d4048)
		//    releases the map.
		CHECK(texture->m_lockCount42 == 0);
		std::uint8_t* pixels = static_cast<std::uint8_t*>(b->lock());
		CHECK(pixels != nullptr);
		CHECK(pixels == texture->m_data);
		CHECK((texture->m_lockCount42 & 0x1f) == 1);
		b->unlock();
		CHECK(texture->m_lockCount42 == 0);

		delete b;
		CHECK(texture->referenceCounter == 1);  // release() and the member destructors gave the use back
		texture->drop();
	}

	// 10. get_internal_width and get_internal_height fall back to the CImage when there is no texture.
	{
		TestDriver driver;
		bitmap_info_ogl* b = new bitmap_info_ogl(&driver, 9, 9, static_cast<const ::membuf*>(nullptr));
		b->m_image = boost::intrusive_ptr<glitch::video::CImage>(new glitch::video::CImage(32, 64));
		CHECK(b->get_internal_width() == 32);
		CHECK(b->get_internal_height() == 64);
		TestTexture* texture = new TestTexture(2, 4);
		b->m_texture = texture;  // the texture wins over the image
		CHECK(b->get_internal_width() == 2);
		CHECK(b->get_internal_height() == 4);
		texture->drop();
		delete b;
	}

	if (g_failures != 0) {
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("bitmap_info_ogl part 1: all checks passed\n");
	return 0;
}
