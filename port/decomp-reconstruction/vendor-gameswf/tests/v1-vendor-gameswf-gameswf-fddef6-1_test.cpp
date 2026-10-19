// Test for batch v1-vendor-gameswf-gameswf-fddef6-1. Returns non-zero when a check fails.
//
// define_native_image_loader runs end to end now (it reads the tag, builds a membuf, asks the render backend for a bitmap, makes a
// bitmap_character and adds it to the movie definition), so the test gives it what it works on for real: a gameswf::stream over a
// memory tu_file, a movie_def_impl on a fake player (the batch sources and the upstream reader of the "core link set" of the pack4
// test, plus pack1 for bitmap_character), the membuf and tu_file::read_fully. Link-only or recording stand-ins, all weak where a
// library unit defines the real body: render::create_bitmap_info_native (pack6: a recording bitmap factory) and inflate_wrapper
// (upstream gameswf_impl.cpp: fills the buffer with a known pattern). The allocator of the hash checks is the test's own counting
// one (test-support/dh2_test_support.cpp is the weak default for everything else).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-1.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack1-607ee7-0.cpp
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
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <vector>

#include "base/jpeg.h"
#include "base/membuf.h"
#include "base/tu_file.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"
#include "vendor-gameswf/player_context.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

int g_malloc_calls = 0;
unsigned int g_last_malloc_size = 0;
int g_free_calls = 0;
unsigned int g_last_free_size = 0xffffffffu;

void dummy_loader(gameswf::stream*, int, gameswf::movie_definition_sub*) {}
void other_loader(gameswf::stream*, int, gameswf::movie_definition_sub*) {}

}  // namespace

// ---- link stubs ----

namespace gameswf {

void* malloc_internal(unsigned int size, swf::MemHint) {
	++g_malloc_calls;
	g_last_malloc_size = size;
	return std::malloc(size);
}

void free_internal(void* p, unsigned int size) {
	++g_free_calls;
	g_last_free_size = size;
	std::free(p);
}

// ---- the render backend and the zlib inflate of the native image loader (recording stand-ins) ----

struct fake_bitmap : bitmap_info {
	int m_w;
	int m_h;
	fake_bitmap(int w, int h) : m_w(w), m_h(h) {}
	int get_width() const override { return m_w; }
	int get_height() const override { return m_h; }
};

int g_native_calls = 0;
int g_native_width = -1;
int g_native_height = -1;
const membuf* g_native_data = nullptr;
std::vector<unsigned char> g_native_bytes;  // the membuf's contents when the factory was asked
fake_bitmap* g_native_bitmap = nullptr;

int g_inflate_calls = 0;
tu_file* g_inflate_file = nullptr;
void* g_inflate_buffer = nullptr;
int g_inflate_bytes = -1;
const unsigned char kInflated[6] = {9, 8, 7, 6, 5, 4};

namespace render {

// 0x7739dc render::create_bitmap_info_native (pack6) forwards to the current render handler; this is the recording factory.
bitmap_info* create_bitmap_info_native(int width, int height, const membuf* data) {
	++g_native_calls;
	g_native_width = width;
	g_native_height = height;
	g_native_data = data;
	g_native_bytes.assign(static_cast<const unsigned char*>(data->data()),
						  static_cast<const unsigned char*>(data->data()) + data->size());
	g_native_bitmap = new fake_bitmap(width, height);
	return g_native_bitmap;
}

}  // namespace render

// 0x75afb0: the zlib inflate of the tag's data into a buffer (upstream gameswf_impl.cpp, not linkable alone). It writes a known
// pattern so the test can tell the buffer reached the bitmap factory, and it leaves the file where it is.
void inflate_wrapper(::tu_file* in, void* buffer, int buffer_bytes) {
	++g_inflate_calls;
	g_inflate_file = in;
	g_inflate_buffer = buffer;
	g_inflate_bytes = buffer_bytes;
	std::memcpy(buffer, kInflated, static_cast<std::size_t>(buffer_bytes < 6 ? buffer_bytes : 6));
}

}  // namespace gameswf

// ---- a stream over bytes, and a movie definition on a fake player ----

namespace {

using namespace gameswf;

// A memory file holding the bytes, positioned at the start. (The read-only memory constructor of the vendored tu_file trips an
// assert in membuf::data(), so the bytes are written into a read/write memory buffer.)
void fill_memory_file(tu_file* file, const std::vector<unsigned char>& bytes) {
	file->write_bytes(bytes.data(), static_cast<int>(bytes.size()));
	file->set_position(0);
}

// Each call makes a fresh player (never freed: the test is short). The block is zeroed, which is a valid state for the members the
// loader touches (the weak proxy, the context's counter).
player* fake_player(int first_id) {
	player* p = static_cast<player*>(std::calloc(1, sizeof(player)));
	player_context* c = static_cast<player_context*>(std::calloc(1, sizeof(player_context)));
	c->unk_24 = first_id;
	p->m_context = c;
	return p;
}

movie_def_impl* make_definition() {
	void* mem = operator new(sizeof(movie_def_impl), static_cast<swf::MemHint>(0));
	return new (mem) movie_def_impl(fake_player(1), DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
}

void put_u16(std::vector<unsigned char>& v, unsigned x) {
	v.push_back(static_cast<unsigned char>(x & 0xff));
	v.push_back(static_cast<unsigned char>((x >> 8) & 0xff));
}

void put_u32(std::vector<unsigned char>& v, unsigned x) {
	put_u16(v, x & 0xffff);
	put_u16(v, x >> 16);
}

}  // namespace

// ---- access to the private hash::set_raw_capacity (test only) ----

namespace {

typedef hash<int, gameswf::loader_function, fixed_size_hash<int> > loader_hash;
typedef loader_hash::entry loader_entry;
// hash::table is private: two ints (entry count, size mask), no padding.
typedef int loader_table_header[2];

// An explicit instantiation may name private members, so the address of set_raw_capacity is captured by
// the explicit instantiation below and read back through a friend function found by argument-dependent lookup.
struct loader_set_raw_capacity_tag {
	typedef void (loader_hash::*type)(int);
	friend type get_loader_set_raw_capacity(loader_set_raw_capacity_tag);
};

template <loader_set_raw_capacity_tag::type M>
struct loader_set_raw_capacity_access {
	friend loader_set_raw_capacity_tag::type get_loader_set_raw_capacity(loader_set_raw_capacity_tag) {
		return M;
	}
};

template struct loader_set_raw_capacity_access<&loader_hash::set_raw_capacity>;

void loader_set_raw(loader_hash& h, int raw_size) {
	(h.*get_loader_set_raw_capacity(loader_set_raw_capacity_tag()))(raw_size);
}

}  // namespace

// ---- checks ----

static void test_verbose_flag() {
	gameswf::set_verbose_dlist(false);
	CHECK(gameswf::get_verbose_dlist() == false);
	gameswf::set_verbose_dlist(true);
	CHECK(gameswf::get_verbose_dlist() == true);
	gameswf::set_verbose_dlist(false);
	CHECK(gameswf::get_verbose_dlist() == false);
}

static void test_texture_loader_callback() {
	gameswf::register_texture_loader_callback(nullptr);
	CHECK(gameswf::s_texture_loader_callback == nullptr);
	// Any non-null function pointer is stored as given. It is not called here.
	gameswf::texture_loader_callback fn = nullptr;
	gameswf::register_texture_loader_callback(fn);
	CHECK(gameswf::s_texture_loader_callback == fn);
}

static void test_destruct_null_is_noop() {
	int before = g_free_calls;
	gameswf::destructp<unsigned char>(nullptr, 16);
	gameswf::destruct<gameswf::image_rgb>(nullptr);
	gameswf::destruct<gameswf::image_rgba>(nullptr);
	gameswf::destruct<gameswf::ref_counted>(nullptr);
	gameswf::destruct<jpeg::input>(nullptr);
	CHECK(g_free_calls == before);
}

static void test_destructp_frees_with_size_zero() {
	unsigned char* block = static_cast<unsigned char*>(std::malloc(32));
	if (block == nullptr) {
		++g_failures;
		return;
	}
	std::memset(block, 0, 32);
	int before = g_free_calls;
	gameswf::destructp<unsigned char>(block, 32);
	CHECK(g_free_calls == before + 1);
	CHECK(g_last_free_size == 0u);  // binary passes 0 as the size
}

static void test_video_loader_reads_one_u16() {
	// The thunk reads one u16 (the character id) and drops it: the stream moves by two bytes and nothing else is read.
	std::vector<unsigned char> bytes;
	put_u16(bytes, 0x1234);
	bytes.push_back(0xAA);
	bytes.push_back(0xBB);
	tu_file file(tu_file::memory_buffer);
	fill_memory_file(&file, bytes);
	gameswf::stream in(&file);
	CHECK(in.get_position() == 0);
	gameswf::define_video_loader(&in, 60, nullptr);
	CHECK(in.get_position() == 2);
	CHECK(in.read_u8() == 0xAA);  // the next byte is untouched
}

// The tag: u16 character id, u16 width, u16 height, u8 inflate flag, u32 data size, then the data (binary 0x75fbf8). The width and
// height are the two u16 values in the order they are read.
static std::vector<unsigned char> native_tag(unsigned id, unsigned w, unsigned h, unsigned flag, unsigned size,
											 const std::vector<unsigned char>& data) {
	std::vector<unsigned char> bytes;
	put_u16(bytes, id);
	put_u16(bytes, w);
	put_u16(bytes, h);
	bytes.push_back(static_cast<unsigned char>(flag));
	put_u32(bytes, size);
	bytes.insert(bytes.end(), data.begin(), data.end());
	return bytes;
}

static void test_native_image_loader_stored() {
	// Inflate flag clear: the data is read whole with tu_file::read_fully into a membuf sized to the data size, the membuf goes to
	// render::create_bitmap_info_native(width, height, membuf), and a bitmap_character holding that bitmap is added to the
	// definition under the character id.
	const std::vector<unsigned char> data = {1, 2, 3, 4, 5};
	std::vector<unsigned char> bytes = native_tag(7, 64, 32, 0, 5, data);
	bytes.push_back(0xEE);  // a byte after the tag, which the loader must leave alone
	tu_file file(tu_file::memory_buffer);
	fill_memory_file(&file, bytes);
	gameswf::stream in(&file);
	gameswf::movie_def_impl* def = make_definition();
	g_native_calls = 0;
	g_inflate_calls = 0;

	gameswf::define_native_image_loader(&in, 36, def);

	CHECK(g_native_calls == 1);
	CHECK(g_native_width == 64);
	CHECK(g_native_height == 32);
	CHECK(g_native_data != nullptr);
	CHECK(g_native_bytes == data);
	CHECK(g_inflate_calls == 0);
	CHECK(in.get_position() == 11 + 5);  // header (2 + 2 + 2 + 1 + 4) and the data, not the byte after

	gameswf::bitmap_character_def* ch = def->get_bitmap_character(7);
	CHECK(ch != nullptr);
	CHECK(def->get_bitmap_character(8) == nullptr);
	if (ch != nullptr) {
		CHECK(ch->get_bitmap_info() == g_native_bitmap);
		// the character's rectangle is the bitmap size in twips (20 to the pixel)
		gameswf::bitmap_character* bc = static_cast<gameswf::bitmap_character*>(ch);
		CHECK(bc->m_rect.m_x_min == 0.0f && bc->m_rect.m_y_min == 0.0f);
		CHECK(bc->m_rect.m_x_max == 64.0f * 20.0f);
		CHECK(bc->m_rect.m_y_max == 32.0f * 20.0f);
	}
	CHECK(in.read_u8() == 0xEE);
}

static void test_native_image_loader_inflated() {
	// Inflate flag set: the data is inflated by inflate_wrapper(file, membuf data, size) instead of being read.
	const std::vector<unsigned char> compressed = {0xC0, 0xC1, 0xC2};
	std::vector<unsigned char> bytes = native_tag(9, 16, 8, 1, 6, compressed);
	tu_file file(tu_file::memory_buffer);
	fill_memory_file(&file, bytes);
	gameswf::stream in(&file);
	gameswf::movie_def_impl* def = make_definition();
	g_native_calls = 0;
	g_inflate_calls = 0;

	gameswf::define_native_image_loader(&in, 36, def);

	CHECK(g_inflate_calls == 1);
	CHECK(g_inflate_file == &file);  // the stream's underlying file
	CHECK(g_inflate_bytes == 6);     // the data size, which is also the membuf size
	CHECK(g_native_calls == 1);
	CHECK(g_native_width == 16);
	CHECK(g_native_height == 8);
	CHECK(g_native_data != nullptr && g_inflate_buffer == g_native_data->data());
	CHECK(g_native_bytes == std::vector<unsigned char>(gameswf::kInflated, gameswf::kInflated + 6));
	CHECK(in.get_position() == 11);  // only the header was read by the loader: the inflater owns the rest
	CHECK(def->get_bitmap_character(9) != nullptr);
	CHECK(def->get_bitmap_character(7) == nullptr);
}

static void test_loader_hash_raw_capacity_table_sizes() {
	// Raw sizes 2^k + 1 are where the divisor matters. The binary's logf(2^k) / ln2 is exactly k, so the table
	// has 2^(k+1) entries. With a divisor 47 ulp too large (0.69315f) the quotient is k - 4e-6, and (int)(q + 1)
	// is k, not k + 1, so that build gives 2^k entries (5 -> 4, 9 -> 8, ...). Sizes 5, 17, 65 and 257 are not
	// reachable through set_capacity ((n * 3) / 2), so the private set_raw_capacity is called directly.
	struct raw_case {
		int raw;
		int entries;
	};
	const raw_case cases[] = {
		{1, 4}, {2, 4}, {3, 4}, {4, 4},    // 1, 2 and 3 clamp to the DH2 minimum of 4; 4 is 2^2
		{5, 8}, {8, 8}, {9, 16}, {16, 16}, // 5 = 2^2 + 1 -> 2^3
		{17, 32}, {33, 64}, {65, 128}, {129, 256}, {150, 256},
		{257, 512},
	};
	for (const raw_case& c : cases) {
		int failures_before = g_failures;
		loader_hash h;
		int mallocs = g_malloc_calls;
		loader_set_raw(h, c.raw);
		CHECK(g_malloc_calls == mallocs + 1);
		CHECK(g_last_malloc_size == sizeof(loader_table_header) + sizeof(loader_entry) * c.entries);
		if (g_failures != failures_before) {
			std::fprintf(stderr, "  (raw size %d, expected %d entries)\n", c.raw, c.entries);
		}
	}
}

static void test_loader_hash_capacity() {
	// set_capacity(n) reaches set_raw_capacity with raw size (n * 3) / 2 (public API).
	loader_hash h;
	int mallocs = g_malloc_calls;
	int frees = g_free_calls;

	// set_capacity(2) -> raw 3 -> DH2 minimum of 4 entries (upstream would give 16).
	h.set_capacity(2);
	CHECK(g_malloc_calls == mallocs + 1);
	CHECK(g_last_malloc_size == sizeof(loader_table_header) + sizeof(loader_entry) * 4);

	// Raw size 4 again: no reallocation.
	mallocs = g_malloc_calls;
	frees = g_free_calls;
	h.set_capacity(2);
	CHECK(g_malloc_calls == mallocs);
	CHECK(g_free_calls == frees);

	// Fill some entries, then grow: every entry must move.
	h.add(1, dummy_loader);
	h.add(2, other_loader);
	h.add(3, dummy_loader);
	CHECK(h.size() == 3);
	mallocs = g_malloc_calls;
	frees = g_free_calls;
	h.set_capacity(100);  // raw 150 -> 2^8 = 256 entries
	CHECK(g_malloc_calls == mallocs + 1);
	CHECK(g_free_calls == frees + 1);
	CHECK(g_last_malloc_size == sizeof(loader_table_header) + sizeof(loader_entry) * 256);
	// The old table was freed with sizeof(table) + sizeof(entry) * 4 (its mask plus one).
	CHECK(g_last_free_size == sizeof(loader_table_header) + sizeof(loader_entry) * 4);

	gameswf::loader_function out = nullptr;
	CHECK(h.get(1, &out) && out == dummy_loader);
	CHECK(h.get(2, &out) && out == other_loader);
	CHECK(h.get(3, &out) && out == dummy_loader);
	CHECK(!h.get(4, &out));
	CHECK(h.size() == 3);
}

static void test_loader_hash_set_capacity_raw_9() {
	// set_capacity(6) -> raw (6 * 3) / 2 = 9 -> 2^4 = 16 entries. The public path agrees with the direct call above.
	loader_hash h;
	int mallocs = g_malloc_calls;
	h.set_capacity(6);
	CHECK(g_malloc_calls == mallocs + 1);
	CHECK(g_last_malloc_size == sizeof(loader_table_header) + sizeof(loader_entry) * 16);
}

int main() {
	test_verbose_flag();
	test_texture_loader_callback();
	test_destruct_null_is_noop();
	test_destructp_frees_with_size_zero();
	test_video_loader_reads_one_u16();
	test_native_image_loader_stored();
	test_native_image_loader_inflated();
	test_loader_hash_raw_capacity_table_sizes();
	test_loader_hash_capacity();
	test_loader_hash_set_capacity_raw_9();

	if (g_failures != 0) {
		std::fprintf(stderr, "%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("all checks passed\n");
	return 0;
}
