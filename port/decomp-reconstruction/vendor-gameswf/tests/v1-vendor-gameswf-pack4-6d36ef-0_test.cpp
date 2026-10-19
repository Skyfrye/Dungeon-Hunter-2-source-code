// Test for batch v1-vendor-gameswf-pack4-6d36ef-0: gameswf::fill_style, line_style, array<line_style>::push_back<line_style>,
// morph2_character_def and movie_def_impl (the loader's definition object).
//
// Real code runs for the classes under test, the upstream reader (stream, tu_file, matrix, rect, rgba), the DH2 buffered file and
// the permanent string cache. The player is a block of zeroed memory with a player_context behind it (the batch only reads the
// context's counter, the permanent string cache and the weak proxy of the player). Everything else gameswf is stubbed in
// test-support/dh2_core_stubs.cpp, and the tag loaders, the bitmap factory and the logging are replaced below.
//
// Covers: the array<T>::push_back<U> growth helpers and template; fill_style defaults, copy, assignment and reference
// counting; fill_style::apply and line_style::apply against a recording render handler; fill_style::read for every type
// (solid rgb and rgba, linear and radial gradients, bitmap fills, the focal gradient the DH2 reader consumes differently, and an
// unknown type); the movie_def_impl constructor (unique ids, flags, defaults), has_init_actions / add_init_action, the frame label
// table, export_resource, read / read_tags on a small SWF (header, frame rectangle, rate and count, tag loop, loader dispatch, the
// end tag and the unknown-tag log, a bad signature), the destructor releasing its tags; morph2_character_def construction and
// destruction and its read of a DefineMorphShape record.
//
// Returns non-zero on failure.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack5-64b2da-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack7-2f63b3-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_movie_def.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_styles.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_shape.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_morph2.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_types.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_stream.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/tu_file.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/membuf.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack15-a0a47d-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-5.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-6.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_render_handler-1ca9d1-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_membuf-3351d8-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_image_alpha-621a91-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_core_stubs.cpp

#include <cmath>
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>
#include <vector>

// The tests look at private members of the classes under test (layout, counters).
#define private public
#define protected public

#include "base/tu_file.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_morph2.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_styles.h"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_array_grow_dh2_helpers.hpp"
#include "vendor-gameswf/player_context.hpp"

using gameswf::dh2::array_push_needs_reserve;
using gameswf::dh2::array_push_reserve_size;
using namespace gameswf;

static int g_failures = 0;

#define CHECK(cond)                                                    \
	do {                                                               \
		if (!(cond)) {                                                 \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
			++g_failures;                                              \
		}                                                              \
	} while (0)

#define CHECK_NEAR(a, b)                                                                              \
	do {                                                                                              \
		if (std::fabs(static_cast<double>(a) - static_cast<double>(b)) > 1e-5) {                      \
			std::printf("FAIL line %d: %s = %g, want %g\n", __LINE__, #a, static_cast<double>(a),     \
						static_cast<double>(b));                                                      \
			++g_failures;                                                                             \
		}                                                                                             \
	} while (0)

// ---------------------------------------------------------------------------------------------------------------------
// Reference-counted objects are made the way the binary makes them (operator new with a MemHint): drop_ref destroys them in place and
// frees the block with free_internal.

template <class T, class... A>
T* heap_new(A... args)
{
	void* mem = operator new(sizeof(T), static_cast<swf::MemHint>(0));
	return new (mem) T(args...);
}

// ---------------------------------------------------------------------------------------------------------------------
// Stand-ins: logging, the tag loader table, the bitmap factory.

static std::string g_log;
static std::string g_errors;

namespace gameswf {

void log_msg(const char* fmt, ...)
{
	char buf[512];
	va_list ap;
	va_start(ap, fmt);
	std::vsnprintf(buf, sizeof(buf), fmt, ap);
	va_end(ap);
	g_log += buf;
}

void log_error(const char* fmt, ...)
{
	char buf[512];
	va_list ap;
	va_start(ap, fmt);
	std::vsnprintf(buf, sizeof(buf), fmt, ap);
	va_end(ap);
	g_errors += buf;
}

}  // namespace gameswf

static int g_loader_calls = 0;
static int g_loader_tag = -1;
static int g_loader_frame = -1;
static int g_loader_body[3] = {0, 0, 0};

static void test_loader(stream* in, int tag_type, movie_definition_sub* m)
{
	++g_loader_calls;
	g_loader_tag = tag_type;
	g_loader_frame = m->get_loading_frame();
	for (int i = 0; i < 3; i++) {
		g_loader_body[i] = in->read_u8();
	}
}

namespace gameswf {

bool get_tag_loader(int tag_type, loader_function* lf)
{
	if (tag_type == 77) {
		*lf = test_loader;
		return true;
	}
	return false;
}

}  // namespace gameswf

namespace {

// A bitmap_info with an identity, so the tests can tell which bitmap reached the render handler.
struct fake_bitmap_info : bitmap_info {
	static int s_alive;
	int m_id;
	explicit fake_bitmap_info(int id) : m_id(id) { ++s_alive; }
	~fake_bitmap_info() override { --s_alive; }
};
int fake_bitmap_info::s_alive = 0;

int g_bitmaps_made = 0;

}  // namespace

namespace gameswf {
namespace render {

bitmap_info* create_bitmap_info_rgba(image_rgba* im)
{
	(void) im;
	++g_bitmaps_made;
	return heap_new<fake_bitmap_info>(1000 + g_bitmaps_made);
}

bitmap_info* create_bitmap_info_empty()
{
	++g_bitmaps_made;
	return heap_new<fake_bitmap_info>(2000 + g_bitmaps_made);
}

}  // namespace render
}  // namespace gameswf

namespace {

// A bitmap character that hands out a given bitmap.
struct fake_bitmap_character : bitmap_character_def {
	bitmap_info* m_bi;
	fake_bitmap_character(player* p, bitmap_info* bi) : bitmap_character_def(p), m_bi(bi) {}
	bitmap_info* get_bitmap_info() override { return m_bi; }
};

// An execute_tag that counts its destructions. It overrides every virtual so the test needs no body of the base class but the
// destructor.
int g_tag_dtors = 0;
struct counting_tag : execute_tag {
	~counting_tag() override { ++g_tag_dtors; }
	void execute(character*) override {}
	void execute_state(character*) override {}
	void execute_state_reverse(character*, int) override {}
	bool is_remove_tag() const override { return false; }
	bool is_action_tag() const override { return false; }
	std::uint32_t get_depth_id_of_replace_or_add_tag() const override { return 0; }
	int get_depth() const override { return -1; }
	int get_action_offset() const override { return -1; }
	bool is_place_tag() const override { return false; }
};

// ---- the player ----

// Each call makes a fresh player (never freed: the tests are short). The blocks are zeroed, which is a valid state for the members
// the batch touches (ref_counted, the permanent string cache's empty hash).
player* fake_player(int first_id)
{
	player* p = static_cast<player*>(std::calloc(1, sizeof(player)));
	player_context* c = static_cast<player_context*>(std::calloc(1, sizeof(player_context)));
	c->unk_24 = first_id;
	p->m_context = c;
	return p;
}

// ---- the render handler: records the calls that fill_style::apply and line_style::apply make ----

struct recorder : gameswf::render_handler {
	std::vector<std::string> calls;
	bitmap_info* last_bitmap = nullptr;
	matrix last_matrix;
	bitmap_wrap_mode last_wrap = WRAP_REPEAT;
	rgba last_color;
	int last_side = -1;
	float last_width = -1;

	bitmap_info* create_bitmap_info_empty() override { return nullptr; }
	bitmap_info* create_bitmap_info_alpha(int, int, unsigned char*) override { return nullptr; }
	bitmap_info* create_bitmap_info_rgb(image_rgb*) override { return nullptr; }
	bitmap_info* create_bitmap_info_rgba(image_rgba*) override { return nullptr; }
	bitmap_info* create_bitmap_info_texture(glitch::video::ITexture*) override { return nullptr; }
	bitmap_info* create_bitmap_info_native(int, int, const membuf*) override { return nullptr; }
	bitmap_info* create_bitmap_info_target(int, int) override { return nullptr; }
	video_handler* create_video_handler() override { return nullptr; }
	void begin_display(rgba, int, int, int, int, float, float, float, float) override {}
	void end_display() override {}
	void set_blend_mode(blend_mode::id) override {}
	void set_target(bitmap_info*) override {}
	void clear_frame_buffer() override {}
	void read_frame_buffer(int, int, int, int, unsigned char*) override {}
	void set_wire_frame(bool) override {}
	void set_buffer_capacity(buffer_mode, int) override {}
	void set_context(player_context*) override {}
	void set_render_cache(render_cache*) override {}
	void set_matrix(const matrix&) override {}
	void set_cxform(const cxform&) override {}
	void draw_mesh_strip(const void*, int) override {}
	void draw_triangle_list(const void*, int, const unsigned short*, int) override {}
	void draw_line_strip(const void*, int) override {}
	void draw(render_cache*) override {}
	void fill_style_disable(int) override {}
	void fill_style_color(int side, const rgba& color) override
	{
		calls.push_back("fill_color");
		last_side = side;
		last_color = color;
	}
	bool fill_style_bitmap(int side, bitmap_info* bi, const matrix& m, bitmap_wrap_mode wm) override
	{
		calls.push_back("fill_bitmap");
		last_side = side;
		last_bitmap = bi;
		last_matrix = m;
		last_wrap = wm;
		return true;
	}
	void line_style_disable() override {}
	void line_style_color(rgba color) override
	{
		calls.push_back("line_color");
		last_color = color;
	}
	void line_style_width(float width) override
	{
		calls.push_back("line_width");
		last_width = width;
	}
	void draw_bitmap(const matrix&, bitmap_info*, const rect&, const rect&, rgba) override {}
	void set_antialiased(bool) override {}
	void begin_submit_mask() override {}
	void end_submit_mask() override {}
	void disable_mask() override {}
	bool is_visible(const rect&) override { return false; }
	void open() override {}
};

// ---- bytes ----

struct bit_writer {
	std::vector<unsigned char> bytes;
	int used = 0;  // bits used in the last byte

	void bits(unsigned value, int count)
	{
		for (int i = count - 1; i >= 0; i--) {
			if (used == 0) {
				bytes.push_back(0);
			}
			if ((value >> i) & 1u) {
				bytes.back() |= static_cast<unsigned char>(0x80 >> used);
			}
			used = (used + 1) & 7;
		}
	}
	void sbits(int value, int count) { bits(static_cast<unsigned>(value) & ((1u << count) - 1u), count); }
	void align() { used = 0; }
	void u8(int v) { align(); bytes.push_back(static_cast<unsigned char>(v)); }
	void u16(int v) { u8(v & 255); u8((v >> 8) & 255); }
	void u32(unsigned v) { u16(v & 0xffff); u16((v >> 16) & 0xffff); }
	void rect_twips(int x0, int x1, int y0, int y1, int nbits)
	{
		bits(nbits, 5);
		sbits(x0, nbits);
		sbits(x1, nbits);
		sbits(y0, nbits);
		sbits(y1, nbits);
		align();
	}
	void identity_matrix() { bits(0, 7); align(); }  // no scale, no rotate, 0 translate bits
};

// A memory file holding the bytes, positioned at the start. (The read-only memory constructor of the vendored tu_file trips an
// assert in membuf::data(), so the bytes are written into a read/write memory buffer.)
void fill_memory_file(tu_file* file, const std::vector<unsigned char>& bytes)
{
	file->write_bytes(bytes.data(), static_cast<int>(bytes.size()));
	file->set_position(0);
}

// Runs fn with a stream over the bytes. The stream is not inside a tag.
template <class Fn>
void with_stream(const std::vector<unsigned char>& bytes, Fn fn)
{
	tu_file file(tu_file::memory_buffer);
	fill_memory_file(&file, bytes);
	stream in(&file);
	fn(in);
}

// ---------------------------------------------------------------------------------------------------------------------

void test_push_back()
{
	// reserve size is new_size + new_size / 2
	CHECK(array_push_reserve_size(1) == 1);
	CHECK(array_push_reserve_size(2) == 3);
	CHECK(array_push_reserve_size(3) == 4);
	CHECK(array_push_reserve_size(4) == 6);
	CHECK(array_push_reserve_size(7) == 10);

	// reserve only when the new count is above the buffer size
	CHECK(array_push_needs_reserve(1, 0));
	CHECK(!array_push_needs_reserve(3, 3));
	CHECK(array_push_needs_reserve(4, 3));

	// ten line styles through the explicit specialization (0x7619b8): one copy each, the values survive the reallocations
	array<line_style> styles;
	for (int i = 0; i < 10; ++i) {
		line_style ls;
		ls.m_width = static_cast<Uint16>(10 + i);
		ls.m_miter_limit_factor = static_cast<Uint16>(i);
		styles.push_back<line_style>(ls);
	}
	CHECK(styles.size() == 10);
	CHECK(styles.m_buffer_size == 10);	// 1, 3, 6, 10
	for (int i = 0; i < 10; ++i) {
		CHECK(styles[i].get_width() == 10 + i);
		CHECK(styles[i].m_miter_limit_factor == i);
	}
}

void test_fill_style_basics()
{
	fill_style a;
	CHECK(a.get_type() == 0);
	CHECK(a.get_color().m_r == 255 && a.get_color().m_g == 255 && a.get_color().m_b == 255 && a.get_color().m_a == 255);
	CHECK(a.m_gradient_matrix == matrix::identity);
	CHECK(a.m_bitmap_matrix == matrix::identity);
	CHECK(a.m_gradients.size() == 0);
	CHECK(a.m_gradient_bitmap_info == NULL);
	CHECK(a.m_bitmap_character == NULL);

	a.m_type = 0x10;
	a.m_color.set(1, 2, 3, 4);
	a.m_gradient_matrix.m_[0][2] = 7.0f;
	a.m_bitmap_matrix.m_[1][2] = 9.0f;
	a.m_gradients.resize(2);
	a.m_gradients[0].m_ratio = 10;
	a.m_gradients[0].m_color.set(10, 20, 30, 40);
	a.m_gradients[1].m_ratio = 200;
	a.m_gradients[1].m_color.set(50, 60, 70, 80);
	fake_bitmap_info* bi = heap_new<fake_bitmap_info>(1);
	a.m_gradient_bitmap_info = bi;
	CHECK(bi->get_ref_count() == 1);

	{
		fill_style b(a);	// 0x761878
		CHECK(b.m_type == 0x10);
		CHECK(b.m_color.m_r == 1 && b.m_color.m_a == 4);
		CHECK(b.m_gradient_matrix.m_[0][2] == 7.0f);
		CHECK(b.m_bitmap_matrix.m_[1][2] == 9.0f);
		CHECK(b.m_gradients.size() == 2);
		CHECK(b.m_gradients[0].m_ratio == 10 && b.m_gradients[0].m_color.m_g == 20);
		CHECK(b.m_gradients[1].m_ratio == 200 && b.m_gradients[1].m_color.m_b == 70);
		CHECK(b.m_gradient_bitmap_info.get_ptr() == bi);
		CHECK(bi->get_ref_count() == 2);

		fill_style c;
		c.m_gradients.resize(5);
		c = b;	// 0x77a780
		CHECK(c.m_type == 0x10);
		CHECK(c.m_gradients.size() == 2);
		CHECK(c.m_gradients[1].m_ratio == 200);
		CHECK(c.m_gradient_bitmap_info.get_ptr() == bi);
		CHECK(bi->get_ref_count() == 3);

		fill_style d;
		d.m_gradient_bitmap_info = bi;
		CHECK(bi->get_ref_count() == 4);
		d = fill_style();	// assigning a default style drops the reference
		CHECK(bi->get_ref_count() == 3);
		CHECK(d.m_gradient_bitmap_info == NULL);
	}
	CHECK(bi->get_ref_count() == 1);	// ~fill_style released the references of b, c and d
	a.m_gradient_bitmap_info = NULL;
	CHECK(fake_bitmap_info::s_alive == 0);
}

void test_apply()
{
	recorder rec;
	gameswf::render_handler* saved = s_render_handler;

	// no handler: nothing happens, and a gradient still makes its bitmap
	s_render_handler = NULL;
	{
		fill_style fs;
		fs.apply(0, 0.0f);
		fs.m_type = 0x12;
		fs.m_gradients.resize(2);
		fs.m_gradients[0].m_ratio = 0;
		fs.m_gradients[1].m_ratio = 255;
		int before = g_bitmaps_made;
		fs.apply(0, 0.0f);
		CHECK(g_bitmaps_made == before + 1);
		CHECK(fs.m_gradient_bitmap_info != NULL);
	}

	s_render_handler = &rec;

	// solid
	{
		fill_style fs;
		fs.m_color.set(11, 22, 33, 44);
		fs.apply(1, 0.5f);
		CHECK(rec.calls.size() == 1 && rec.calls[0] == "fill_color");
		CHECK(rec.last_side == 1);
		CHECK(rec.last_color.m_r == 11 && rec.last_color.m_g == 22 && rec.last_color.m_b == 33 && rec.last_color.m_a == 44);
	}

	// gradient: the bitmap is made on first use (also after a morph reset it), set with clamp wrap and the gradient matrix
	{
		rec.calls.clear();
		fill_style fs;
		fs.m_type = 0x10;
		fs.m_gradients.resize(2);
		fs.m_gradients[0].m_ratio = 0;
		fs.m_gradients[0].m_color.set(255, 0, 0, 255);
		fs.m_gradients[1].m_ratio = 255;
		fs.m_gradients[1].m_color.set(0, 0, 255, 255);
		fs.m_gradient_matrix.m_[0][2] = 3.0f;
		int before = g_bitmaps_made;
		fs.apply(0, 0.0f);
		CHECK(g_bitmaps_made == before + 1);
		CHECK(rec.calls.size() == 1 && rec.calls[0] == "fill_bitmap");
		CHECK(rec.last_bitmap == fs.m_gradient_bitmap_info.get_ptr());
		CHECK(rec.last_wrap == gameswf::render_handler::WRAP_CLAMP);
		CHECK(rec.last_matrix.m_[0][2] == 3.0f);
		fs.apply(0, 0.0f);	// second time: the bitmap is kept
		CHECK(g_bitmaps_made == before + 1);
		CHECK(rec.calls.size() == 2);
	}

	// bitmap fills: the wrap is repeat for type 0x42 only
	{
		fake_bitmap_info* bi = heap_new<fake_bitmap_info>(7);
		fake_bitmap_character* bc = heap_new<fake_bitmap_character>(fake_player(500), bi);
		smart_ptr<bitmap_info> keep(bi);
		smart_ptr<bitmap_character_def> keep_character(bc);
		const int types[] = {0x40, 0x41, 0x42, 0x43};
		for (int t : types) {
			rec.calls.clear();
			fill_style fs;
			fs.m_type = t;
			fs.m_bitmap_character = bc;
			fs.m_bitmap_matrix.m_[1][2] = 5.0f;
			fs.apply(2, 0.0f);
			CHECK(rec.calls.size() == 1 && rec.calls[0] == "fill_bitmap");
			CHECK(rec.last_side == 2);
			CHECK(rec.last_bitmap == bi);
			CHECK(rec.last_matrix.m_[1][2] == 5.0f);
			CHECK(rec.last_wrap == (t == 0x42 ? gameswf::render_handler::WRAP_REPEAT : gameswf::render_handler::WRAP_CLAMP));
		}
		// no bitmap character: nothing is applied
		rec.calls.clear();
		fill_style none;
		none.m_type = 0x40;
		none.apply(0, 0.0f);
		CHECK(rec.calls.empty());
	}

	// line style: color, then width
	{
		rec.calls.clear();
		line_style ls;
		ls.m_width = 40;
		ls.m_color.set(9, 8, 7, 6);
		ls.apply(1.0f);
		CHECK(rec.calls.size() == 2 && rec.calls[0] == "line_color" && rec.calls[1] == "line_width");
		CHECK(rec.last_color.m_r == 9 && rec.last_color.m_a == 6);
		CHECK(rec.last_width == 40.0f);
	}

	s_render_handler = saved;
}

// A movie definition over the fake player, for the readers that look bitmaps up.
struct movie_fixture {
	player* p;
	movie_def_impl* def;
	explicit movie_fixture(int first_id = 100)
		: p(fake_player(first_id)), def(heap_new<movie_def_impl>(p, DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES))
	{
		def->add_ref();
	}
	~movie_fixture() { def->drop_ref(); }
};

void test_fill_style_read()
{
	movie_fixture mf;

	// solid, tag 2 (rgb) and tag 32 (rgba)
	with_stream({0x00, 10, 20, 30}, [&](stream& in) {
		fill_style fs;
		fs.read(&in, 2, mf.def);
		CHECK(fs.m_type == 0);
		CHECK(fs.m_color.m_r == 10 && fs.m_color.m_g == 20 && fs.m_color.m_b == 30 && fs.m_color.m_a == 255);
		CHECK(in.get_position() == 4);
	});
	with_stream({0x00, 10, 20, 30, 40}, [&](stream& in) {
		fill_style fs;
		fs.read(&in, 32, mf.def);
		CHECK(fs.m_color.m_r == 10 && fs.m_color.m_a == 40);
		CHECK(in.get_position() == 5);
	});

	// linear gradient: identity matrix byte, count 2 (the high bits of the count byte are ignored), two (ratio, rgba) records
	{
		std::vector<unsigned char> bytes = {0x10, 0x00, 0xF2, 0, 1, 2, 3, 4, 255, 5, 6, 7, 8, 0x7E};
		int bitmaps_before = g_bitmaps_made;
		int infos_before = mf.def->get_bitmap_info_count();
		with_stream(bytes, [&](stream& in) {
			fill_style fs;
			fs.read(&in, 32, mf.def);
			CHECK(fs.m_type == 0x10);
			CHECK(fs.m_gradients.size() == 2);
			CHECK(fs.m_gradients[0].m_ratio == 0 && fs.m_gradients[0].m_color.m_r == 1 && fs.m_gradients[0].m_color.m_a == 4);
			CHECK(fs.m_gradients[1].m_ratio == 255 && fs.m_gradients[1].m_color.m_b == 7);
			CHECK(fs.m_color.m_r == 1 && fs.m_color.m_g == 2 && fs.m_color.m_b == 3 && fs.m_color.m_a == 4);	// first gradient color
			CHECK_NEAR(fs.m_gradient_matrix.m_[0][0], 1.0 / 128.0);
			CHECK_NEAR(fs.m_gradient_matrix.m_[1][1], 1.0 / 128.0);
			CHECK_NEAR(fs.m_gradient_matrix.m_[0][2], 128.0);	// the translation (128, 0); the scale only touches the 2x2 part
			CHECK_NEAR(fs.m_gradient_matrix.m_[1][2], 0.0);
			CHECK(g_bitmaps_made == bitmaps_before + 1);	// DO_LOAD_BITMAPS: the gradient bitmap is built
			CHECK(fs.m_gradient_bitmap_info != NULL);
			CHECK(mf.def->get_bitmap_info_count() == infos_before + 1);
			CHECK(mf.def->get_bitmap_info(infos_before) == fs.m_gradient_bitmap_info.get_ptr());
			CHECK(in.read_u8() == 0x7E);	// exactly the record was consumed
		});
	}

	// radial gradient, one record, tag 2 (rgb records)
	with_stream({0x12, 0x00, 0x01, 128, 9, 8, 7}, [&](stream& in) {
		fill_style fs;
		fs.read(&in, 2, mf.def);
		CHECK(fs.m_type == 0x12);
		CHECK(fs.m_gradients.size() == 1);
		CHECK(fs.m_gradients[0].m_ratio == 128 && fs.m_gradients[0].m_color.m_r == 9 && fs.m_gradients[0].m_color.m_a == 255);
		CHECK_NEAR(fs.m_gradient_matrix.m_[0][0], 1.0 / 512.0);
		CHECK_NEAR(fs.m_gradient_matrix.m_[0][2], 32.0);
		CHECK_NEAR(fs.m_gradient_matrix.m_[1][2], 32.0);
	});

	// a movie that does not load bitmaps gets an empty bitmap_info for the gradient
	{
		movie_def_impl* skip = heap_new<movie_def_impl>(fake_player(300), DO_NOT_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
		skip->add_ref();
		int bitmaps_before = g_bitmaps_made;
		with_stream({0x10, 0x00, 0x01, 0, 1, 2, 3, 4}, [&](stream& in) {
			fill_style fs;
			fs.read(&in, 32, skip);
			CHECK(g_bitmaps_made == bitmaps_before + 1);
			CHECK(fs.m_gradient_bitmap_info != NULL);
			CHECK(static_cast<fake_bitmap_info*>(fs.m_gradient_bitmap_info.get_ptr())->m_id == 2000 + g_bitmaps_made);
			CHECK(skip->get_bitmap_info_count() == 1);
		});
		skip->drop_ref();
	}

	// bitmap fill 0x41: u16 character id, then the matrix, stored inverted
	{
		fake_bitmap_info* bi = heap_new<fake_bitmap_info>(11);
		smart_ptr<bitmap_info> keep(bi);
		fake_bitmap_character* bc = heap_new<fake_bitmap_character>(mf.p, bi);
		mf.def->add_bitmap_character(6, bc);
		// matrix: scale 2.0 (16.16 fixed, 18 bits), no rotation, translate (20, 40) in 7 bits
		bit_writer w;
		w.u8(0x41);
		w.u16(6);
		w.bits(1, 1);	// has scale
		w.bits(19, 5);
		w.sbits(2 * 65536, 19);
		w.sbits(2 * 65536, 19);
		w.bits(0, 1);	// no rotate
		w.bits(7, 5);
		w.sbits(20, 7);
		w.sbits(40, 7);
		w.align();
		w.u8(0x5A);
		with_stream(w.bytes, [&](stream& in) {
			fill_style fs;
			fs.read(&in, 32, mf.def);
			CHECK(fs.m_type == 0x41);
			CHECK(fs.m_bitmap_character.get_ptr() == bc);
			CHECK_NEAR(fs.m_bitmap_matrix.m_[0][0], 0.5);
			CHECK_NEAR(fs.m_bitmap_matrix.m_[1][1], 0.5);
			CHECK_NEAR(fs.m_bitmap_matrix.m_[0][2], -10.0);
			CHECK_NEAR(fs.m_bitmap_matrix.m_[1][2], -20.0);
			CHECK(in.read_u8() == 0x5A);
		});
	}

	// focal gradient (0x13): the DH2 reader takes a count byte, (ratio, rgba) pairs and one more byte, with no matrix
	with_stream({0x13, 0x02, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0x33, 0x44}, [&](stream& in) {
		fill_style fs;
		fs.read(&in, 83, mf.def);
		CHECK(fs.m_type == 0x13);
		CHECK(fs.m_gradients.size() == 0);	// parsed and dropped
		CHECK(in.get_position() == 1 + 1 + 2 * 5 + 1);
		CHECK(in.read_u8() == 0x44);
	});

	// an unknown type reads nothing more
	with_stream({0x55, 0x66}, [&](stream& in) {
		fill_style fs;
		fs.read(&in, 32, mf.def);
		CHECK(fs.m_type == 0x55);
		CHECK(in.get_position() == 1);
	});
}

// ---------------------------------------------------------------------------------------------------------------------

void test_movie_def_impl()
{
	player* p = fake_player(40);
	movie_def_impl* a = heap_new<movie_def_impl>(p, DO_LOAD_BITMAPS, DO_NOT_LOAD_FONT_SHAPES);
	movie_def_impl* b = heap_new<movie_def_impl>(p, DO_NOT_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	a->add_ref();
	b->add_ref();

	// the constructor: unique ids come from the context's counter (read and then incremented)
	CHECK(a->m_unique_id == 40);
	CHECK(b->m_unique_id == 41);
	CHECK(p->m_context->unk_24 == 42);

	CHECK(a->get_create_bitmaps() == DO_LOAD_BITMAPS);
	CHECK(a->get_create_font_shapes() == DO_NOT_LOAD_FONT_SHAPES);
	CHECK(b->get_create_bitmaps() == DO_NOT_LOAD_BITMAPS);
	CHECK(b->get_create_font_shapes() == DO_LOAD_FONT_SHAPES);
	CHECK(a->get_frame_rate() == 30.0f);
	CHECK(a->get_version() == 0);
	CHECK(a->get_loaded_bytes() == 0);
	CHECK(a->get_file_bytes() == 0);
	CHECK(a->get_frame_count() == 0);
	CHECK(a->get_loading_frame() == 0);
	CHECK(a->m_ss_id == -1 && a->m_ss_start == -1);
	CHECK(!a->m_has_metadata && !a->m_is_avm2 && !a->m_use_network);
	CHECK(!a->get_break_loading());
	CHECK(!a->is_multithread());
	CHECK(a->m_thread == NULL && a->m_instance == NULL && a->m_abc == NULL);
	CHECK(a->m_jpeg_in == NULL && a->m_str == NULL && a->m_zlib_in == NULL && a->m_origin_in == NULL);
	CHECK(a->m_playlist.size() == 0 && a->m_init_action_list.size() == 0 && a->m_imports.size() == 0 && a->m_bitmap_list.size() == 0);
	CHECK(a->m_abc_name.length() == 0);
	CHECK(a->m_depth_cxforms.size() == 0 && a->m_depth_matrices.size() == 0);
	CHECK(a->get_player() == p);
	CHECK(a->has_init_actions() == 0);

	// class ids: movie_def_impl answers for itself, the sub interface and the character definition
	CHECK(a->is(AS_MOVIE_DEF) && a->is(AS_MOVIE_DEF_SUB) && a->is(AS_CHARACTER_DEF));
	CHECK(!a->is(AS_SPRITE_DEF));

	// init actions: add_init_action goes to the frame being loaded, and sets the flag
	a->set_frame_count(3);
	a->m_playlist.resize(3);
	a->m_init_action_list.resize(3);
	a->inc_loading_frame();
	CHECK(a->get_loading_frame() == 1);
	counting_tag* t0 = new counting_tag;
	counting_tag* t1 = new counting_tag;
	counting_tag* t2 = new counting_tag;
	a->add_execute_tag(t0);
	a->add_init_action(5, t1);
	CHECK(a->has_init_actions() == 1);
	CHECK(a->get_playlist(1).size() == 1 && a->get_playlist(1)[0] == t0);
	CHECK(a->get_init_actions(1)->size() == 1 && (*a->get_init_actions(1))[0] == t1);
	CHECK(a->get_playlist(0).size() == 0);
	a->add_init_action(5, t2);
	CHECK(a->get_init_actions(1)->size() == 2);

	// frame labels: interned through the player's cache, matched without regard to case, the first assignment wins
	a->add_frame_name("Menu");
	a->inc_loading_frame();
	a->add_frame_name("other");
	a->add_frame_name("MENU");	// a second entry for the same label (the binary does not check)
	int frame = -1;
	CHECK(a->get_labeled_frame(tu_stringi("menu"), &frame) && frame == 1);
	CHECK(a->get_labeled_frame(tu_stringi("OTHER"), &frame) && frame == 2);
	CHECK(!a->get_labeled_frame(tu_stringi("missing"), &frame) && frame == 2);
	CHECK(a->get_labeled_frame(tu_stringi("other"), NULL));	// presence only

	// exports
	character_def* res = heap_new<fake_bitmap_character>(p, static_cast<bitmap_info*>(nullptr));
	a->export_resource(tu_string("Logo"), res);
	CHECK(a->get_exported_resource(tu_string("logo")) == res);
	CHECK(a->get_exported_resource(tu_string("nothing")) == NULL);
	CHECK(res->get_ref_count() == 1);	// the table holds the only reference

	// destruction destroys every tag of the playlist and the init action list
	g_tag_dtors = 0;
	b->drop_ref();
	CHECK(g_tag_dtors == 0);
	a->drop_ref();
	CHECK(g_tag_dtors == 3);
}

// A small SWF: header, frame rectangle, 24 fps, two frames, a custom tag (77) before the first show-frame, an unknown tag (99),
// two show-frames and the end tag.
std::vector<unsigned char> make_swf(const char* signature, int version)
{
	bit_writer body;
	body.rect_twips(0, 11000, 0, 8000, 15);
	body.u16(24 * 256);
	body.u16(2);
	body.u16((77 << 6) | 3);
	body.u8('a'); body.u8('b'); body.u8('c');
	body.u16((99 << 6) | 0);
	body.u16(1 << 6);
	body.u16(1 << 6);
	body.u16(0);

	bit_writer file;
	for (int i = 0; i < 3; i++) {
		file.u8(signature[i]);
	}
	file.u8(version);
	file.u32(static_cast<unsigned>(8 + body.bytes.size()));
	file.bytes.insert(file.bytes.end(), body.bytes.begin(), body.bytes.end());
	return file.bytes;
}

// The player opens a file with operator new(size, MemHint); the definition frees it with free_internal.
tu_file* open_memory_file(std::vector<unsigned char>& bytes)
{
	void* mem = operator new(sizeof(tu_file), static_cast<swf::MemHint>(0));
	tu_file* file = new (mem) tu_file(tu_file::memory_buffer);
	fill_memory_file(file, bytes);
	return file;
}

void test_read()
{
	std::vector<unsigned char> swf = make_swf("FWS", 8);
	player* p = fake_player(1);
	movie_def_impl* def = heap_new<movie_def_impl>(p, DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	def->add_ref();

	g_log.clear();
	g_errors.clear();
	g_loader_calls = 0;
	def->read(open_memory_file(swf));

	CHECK(g_errors.empty());
	CHECK(def->get_version() == 8);
	CHECK(def->get_file_bytes() == swf.size());
	CHECK(def->get_loaded_bytes() == swf.size());
	CHECK(def->m_frame_size.m_x_min == 0 && def->m_frame_size.m_x_max == 11000);
	CHECK(def->m_frame_size.m_y_min == 0 && def->m_frame_size.m_y_max == 8000);
	CHECK(def->get_frame_rate() == 24.0f);
	CHECK(def->get_frame_count() == 2);
	CHECK(def->m_playlist.size() == 2 && def->m_init_action_list.size() == 2);
	CHECK(def->get_loading_frame() == 2);	// two show-frame tags
	CHECK(def->get_width_pixels() == 550.0f && def->get_height_pixels() == 400.0f);
	CHECK(g_loader_calls == 1 && g_loader_tag == 77 && g_loader_frame == 0);
	CHECK(g_loader_body[0] == 'a' && g_loader_body[1] == 'b' && g_loader_body[2] == 'c');
	CHECK(g_log.find("*** no tag loader for type 99") != std::string::npos);
	CHECK(def->m_zlib_in != NULL);	// the buffered wrapper; destroyed and freed by read_tags, the pointer is left as it was

	// a bad signature: logged, nothing else happens
	std::vector<unsigned char> bad = make_swf("XWS", 8);
	movie_def_impl* def2 = heap_new<movie_def_impl>(fake_player(1), DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	def2->add_ref();
	g_errors.clear();
	tu_file* in2 = open_memory_file(bad);
	def2->read(in2);
	CHECK(g_errors.find("file does not start with a SWF header") != std::string::npos);
	CHECK(def2->m_zlib_in == NULL && def2->m_str == NULL);
	CHECK(def2->m_origin_in == in2);
	CHECK(def2->get_version() == 8);	// stored before the check
	CHECK(def2->get_frame_count() == 0);
	in2->~tu_file();
	free_internal(in2, 0);
	def2->m_origin_in = NULL;
	def2->drop_ref();

	// breaking the load stops the tag loop
	movie_def_impl* def3 = heap_new<movie_def_impl>(fake_player(1), DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	def3->add_ref();
	def3->break_loading();
	g_loader_calls = 0;
	def3->read(open_memory_file(swf));
	CHECK(g_loader_calls == 0);
	CHECK(def3->get_loading_frame() == 0);
	CHECK(def3->get_frame_count() == 2);
	def3->drop_ref();

	def->drop_ref();
}

// ---------------------------------------------------------------------------------------------------------------------

void test_morph2()
{
	player* p = fake_player(1);
	{
		morph2_character_def* m = heap_new<morph2_character_def>(p);
		CHECK(m->m_shape1 != NULL && m->m_shape2 != NULL && m->m_shape1 != m->m_shape2);
		CHECK(m->m_last_ratio == -1.0f);
		CHECK(m->m_mesh == NULL);
		CHECK(m->m_shape1->get_paths().size() == 0);
		m->add_ref();
		m->drop_ref();	// ~morph2_character_def destroys both shapes through destruct<shape_character_def>
	}

	// DefineMorphShape (tag 46): bounds, offset, one solid fill (start and end colors), one line style, then two shapes
	// with one path of one straight edge each.
	movie_def_impl* def = heap_new<movie_def_impl>(p, DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	def->add_ref();
	bit_writer w;
	w.rect_twips(0, 100, 0, 200, 9);	// shape 1 bound
	w.rect_twips(10, 300, 20, 400, 10);	// shape 2 bound
	w.u32(0x1234);	// offset
	w.u8(1);	// fill styles
	w.u8(0x00);
	w.u8(1); w.u8(2); w.u8(3); w.u8(4);	// start color
	w.u8(5); w.u8(6); w.u8(7); w.u8(8);	// end color
	w.u8(1);	// line styles
	w.u16(20);	// width 1
	w.u16(60);	// width 2
	w.u8(9); w.u8(8); w.u8(7); w.u8(6);	// color 1
	w.u8(1); w.u8(2); w.u8(3); w.u8(4);	// color 2
	for (int s = 0; s < 2; s++) {
		w.bits(1, 4);	// fill bits
		w.bits(1, 4);	// line bits
		// style change: move to (5, 6), fill0 = 1, line = 1
		w.bits(0, 1);	// not an edge
		w.bits(0x01 | 0x02 | 0x08, 5);
		w.bits(4, 5);
		w.sbits(5, 4);
		w.sbits(6, 4);
		w.bits(1, 1);	// fill0
		w.bits(1, 1);	// line
		// straight general edge, 4 bits: (3, -2)
		w.bits(1, 1);	// edge
		w.bits(1, 1);	// straight
		w.bits(2, 4);	// num_bits - 2
		w.bits(1, 1);	// general line
		w.sbits(3, 4);
		w.sbits(-2, 4);
		w.bits(0, 1);	// not an edge
		w.bits(0, 5);	// end of shape
		w.align();
	}
	w.u8(0x77);

	morph2_character_def* m = heap_new<morph2_character_def>(p);
	m->add_ref();
	with_stream(w.bytes, [&](stream& in) {
		m->read(&in, 46, true, def);
		CHECK(m->m_offset == 0x1234);
		CHECK(m->m_fill_style_count == 1);
		CHECK(m->m_line_style_count == 1);
		CHECK(m->m_shape1->m_bound.m_x_max == 100 && m->m_shape1->m_bound.m_y_max == 200);
		CHECK(m->m_shape2->m_bound.m_x_min == 10 && m->m_shape2->m_bound.m_x_max == 300 && m->m_shape2->m_bound.m_y_max == 400);
		CHECK(m->m_shape1->m_fill_styles.size() == 1 && m->m_shape2->m_fill_styles.size() == 1);
		CHECK(m->m_shape1->m_fill_styles[0].m_color.m_r == 1 && m->m_shape1->m_fill_styles[0].m_color.m_a == 4);
		CHECK(m->m_shape2->m_fill_styles[0].m_color.m_r == 5 && m->m_shape2->m_fill_styles[0].m_color.m_a == 8);
		CHECK(m->m_shape1->m_line_styles.size() == 1 && m->m_shape2->m_line_styles.size() == 1);
		CHECK(m->m_shape1->m_line_styles[0].get_width() == 20 && m->m_shape2->m_line_styles[0].get_width() == 60);
		CHECK(m->m_shape1->m_line_styles[0].get_color().m_r == 9 && m->m_shape2->m_line_styles[0].get_color().m_a == 4);
		CHECK(m->m_shape1->m_paths.size() == 1 && m->m_shape2->m_paths.size() == 1);
		CHECK(m->m_shape1->m_paths[0].m_edges.size() == 1);
		CHECK(m->m_shape1->m_paths[0].m_ax == 5 && m->m_shape1->m_paths[0].m_ay == 6);
		CHECK(m->m_shape1->m_paths[0].m_fill0 == 1 && m->m_shape1->m_paths[0].m_line == 1);
		CHECK(m->m_shape1->m_paths[0].m_edges[0].m_ax == 8 && m->m_shape1->m_paths[0].m_edges[0].m_ay == 4);
		// the morph's own tables are sized from the first shape
		CHECK(m->m_fill_styles.size() == 1 && m->m_line_styles.size() == 1 && m->m_paths.size() == 1);
		CHECK(m->m_paths[0].m_edges.size() == 1);
		CHECK(in.read_u8() == 0x77);
	});
	m->drop_ref();
	def->drop_ref();
}

}  // namespace

int main()
{
	test_push_back();
	test_fill_style_basics();
	test_apply();
	test_fill_style_read();
	test_movie_def_impl();
	test_read();
	test_morph2();

	if (g_failures == 0) {
		std::printf("ok\n");
		return 0;
	}
	std::printf("%d failure(s)\n", g_failures);
	return 1;
}
