// Test for batch v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0 (gameswf::shape_character_def).
//
// Two parts. The arithmetic and selection rules of shape_character_def::display (0x77a990) through the pure helpers in
// vendor-gameswf/gameswf_shape_dh2_helpers.hpp. Then the class itself against a recording render handler and a counting
// allocator: construction and destruction (the cached mesh sets are destroyed in place and freed with free_internal),
// display() building, reusing and refining the cached meshes (the mesh sets are made with operator new and the tesselator
// entry execute_tesselate is a recording stand-in that gives each set one triangle strip), the curve error setting,
// flush_cache, create_character_instance going to the player's pool, and read() of a DefineShape record with its styles.
// Returns non-zero when any check fails.
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
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <vector>

#define private public
#define protected public

#include "base/tu_file.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_styles.h"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_shape_dh2_helpers.hpp"
#include "vendor-gameswf/player_context.hpp"

namespace {

int g_failures = 0;

void check(bool ok, const char* what)
{
	if (!ok)
	{
		++g_failures;
		std::printf("FAIL: %s\n", what);
	}
}

void check_near(float got, float want, const char* what)
{
	check(std::fabs(got - want) <= 1e-5f * (std::fabs(want) + 1.0f), what);
}

void test_max_scale()
{
	using gameswf::dh2::shape_matrix_max_scale;
	check_near(shape_matrix_max_scale(3.0f, 4.0f, 0.0f, 0.0f), 5.0f, "max scale, first basis dominates");
	check_near(shape_matrix_max_scale(1.0f, 0.0f, 0.0f, 2.0f), 2.0f, "max scale, second basis dominates");
	check_near(shape_matrix_max_scale(0.0f, 0.0f, 0.0f, 0.0f), 0.0f, "max scale, zero matrix");
	check_near(shape_matrix_max_scale(2.0f, 0.0f, 0.0f, 2.0f), 2.0f, "max scale, tie");
	check_near(shape_matrix_max_scale(0.0f, 1.0f, 1.0f, 0.0f), 1.0f, "max scale, rotation has unit scale");
	// tu_fmax(s1, s2) = (s1 < s2) ? s2 : s1: a NaN first basis is kept, a NaN second basis is ignored.
	check(std::isnan(shape_matrix_max_scale(std::nanf(""), 0.0f, 0.0f, 2.0f)), "max scale, NaN first basis propagates");
	check_near(shape_matrix_max_scale(1.0f, 0.0f, 0.0f, std::nanf("")), 1.0f, "max scale, NaN second basis is ignored");
}

void test_drawable()
{
	using gameswf::dh2::shape_scale_is_drawable;
	check(!shape_scale_is_drawable(0.0f), "scale 0 is not drawable");
	check(!shape_scale_is_drawable(1e-7f), "scale below 1e-6 is not drawable");
	check(!shape_scale_is_drawable(std::nextafter(1e-6f, 0.0f)), "scale just below 1e-6f is not drawable");
	check(shape_scale_is_drawable(1e-6f), "scale 1e-6f is drawable (the binary returns only when less than 1e-6f)");
	check(shape_scale_is_drawable(0.5f), "scale 0.5 is drawable");
	check(shape_scale_is_drawable(-0.5f), "negative scale uses its magnitude");
	check(shape_scale_is_drawable(std::nanf("")), "NaN scale is drawable (fcmplt is false for NaN, so the binary keeps drawing)");
}

void test_error_and_tolerance()
{
	using namespace gameswf::dh2;
	check_near(shape_object_space_error(2.0f, 1.0f, 1.0f), 10.0f, "error at scale 2, pixel 1");
	check_near(shape_object_space_error(2.0f, 2.0f, 1.0f), 5.0f, "error halves with pixel scale");
	check_near(shape_object_space_error(2.0f, 1.0f, 3.0f), 30.0f, "error follows curve max pixel error");
	check_near(shape_new_mesh_tolerance(10.0f), 7.5f, "new mesh tolerance is 0.75 of the error");
}

// Cached meshes with tolerances 4, 2, 1 (highest error first), as the sort leaves them.
void test_select_from_array()
{
	using gameswf::dh2::shape_select_cached_mesh;
	const float tol[3] = {4.0f, 2.0f, 1.0f};
	auto at = [&tol](int i) { return tol[i]; };

	check(shape_select_cached_mesh(3, 100.0f, at) == -1, "error far above the first mesh builds a new mesh");
	check(shape_select_cached_mesh(3, 5.0f, at) == 0, "error above the first tolerance uses mesh 0");
	check(shape_select_cached_mesh(3, 3.0f, at) == 1, "error between tolerances uses mesh 1");
	check(shape_select_cached_mesh(3, 1.5f, at) == 2, "error above the finest tolerance uses mesh 2");
	check(shape_select_cached_mesh(3, 0.5f, at) == -1, "error below every tolerance builds a new mesh");
	check(shape_select_cached_mesh(0, 5.0f, at) == -1, "no cached meshes builds a new mesh");
	check(shape_select_cached_mesh(3, std::nanf(""), at) == -1, "NaN error builds a new mesh");

	// A NaN first tolerance makes both first-mesh tests false, so the binary moves on to mesh 1.
	const float nan_first[2] = {std::nanf(""), 2.0f};
	auto at_nan = [&nan_first](int i) { return nan_first[i]; };
	check(shape_select_cached_mesh(2, 5.0f, at_nan) == 1, "a NaN first tolerance is passed over, and mesh 1 is shown");
}

void test_select_stops_on_coarse_mesh()
{
	using gameswf::dh2::shape_select_cached_mesh;
	const float coarse_then_fine[2] = {10.0f, 1.0f};
	auto at = [&coarse_then_fine](int i) { return coarse_then_fine[i]; };
	// Mesh 0 (tol 10) is too coarse to show, but mesh 1 (tol 1) has 1 * 3 < 5: more than 3x finer than
	// needed, so the search stops there and a new mesh is built.
	check(shape_select_cached_mesh(2, 5.0f, at) == -1, "a mesh more than 3x finer than needed stops the search");

	const float single[1] = {1.0f};
	auto one = [&single](int i) { return single[i]; };
	check(shape_select_cached_mesh(1, 10.0f, one) == -1, "a first mesh more than 3x finer than needed is not reused");
}


// ---------------------------------------------------------------------------------------------------------------------
// The class.

// The counting allocator: every block the shapes allocate must come back through free_internal.
std::map<void*, std::size_t>& live()
{
	static std::map<void*, std::size_t>* m = new std::map<void*, std::size_t>;
	return *m;
}
int g_foreign_frees = 0;

void* counted_alloc(std::size_t size)
{
	void* p = std::malloc(size ? size : 1);
	live()[p] = size;
	return p;
}

void counted_free(void* p)
{
	if (p == nullptr) {
		return;
	}
	if (live().erase(p) == 0) {
		++g_foreign_frees;
		return;
	}
	std::free(p);
}

}  // namespace

void* operator new(std::size_t size, swf::MemHint) { return counted_alloc(size); }
void* operator new[](std::size_t size, swf::MemHint) { return counted_alloc(size); }

namespace gameswf {

void free_internal(void* p, unsigned int) { counted_free(p); }
void* malloc_internal(unsigned int size, swf::MemHint) { return counted_alloc(size); }
void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint)
{
	void* block = counted_alloc(new_size);
	if (p != nullptr) {
		std::memcpy(block, p, old_size < new_size ? old_size : new_size);
		counted_free(p);
	}
	return block;
}

static int g_tesselate_calls = 0;
static float g_tesselate_error = -1.0f;
static const shape_character_def* g_tesselate_shape = nullptr;

// Stands in for the tesselator: each mesh set gets one layer with one triangle strip of three points in fill slot 0.
void execute_tesselate(mesh_set* ms, const shape_character_def* sh, float error_tolerance)
{
	++g_tesselate_calls;
	g_tesselate_error = error_tolerance;
	g_tesselate_shape = sh;
	ms->new_layer();
	const point pts[3] = {point(0, 0), point(1, 0), point(0, 1)};
	ms->set_tri_strip(0, pts, 3);
}

// player::create_generic_character is the player's pool; the test records the request.
static int g_generic_calls = 0;
static character_def* g_generic_def = nullptr;
static character* g_generic_parent = nullptr;
static int g_generic_id = -1;

generic_character* player::create_generic_character(character_def* def, character* parent, int id)
{
	++g_generic_calls;
	g_generic_def = def;
	g_generic_parent = parent;
	g_generic_id = id;
	return reinterpret_cast<generic_character*>(0x1234);
}

}  // namespace gameswf

namespace {

struct recorder : gameswf::render_handler {
	std::vector<std::string> calls;

	gameswf::bitmap_info* create_bitmap_info_empty() override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_alpha(int, int, unsigned char*) override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_rgb(gameswf::image_rgb*) override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_rgba(gameswf::image_rgba*) override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_texture(glitch::video::ITexture*) override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_native(int, int, const membuf*) override { return nullptr; }
	gameswf::bitmap_info* create_bitmap_info_target(int, int) override { return nullptr; }
	gameswf::video_handler* create_video_handler() override { return nullptr; }
	void begin_display(gameswf::rgba, int, int, int, int, float, float, float, float) override {}
	void end_display() override {}
	void set_blend_mode(gameswf::blend_mode::id) override {}
	void set_target(gameswf::bitmap_info*) override {}
	void clear_frame_buffer() override {}
	void read_frame_buffer(int, int, int, int, unsigned char*) override {}
	void set_wire_frame(bool) override {}
	void set_buffer_capacity(buffer_mode, int) override {}
	void set_context(gameswf::player_context*) override {}
	void set_render_cache(gameswf::render_cache*) override {}
	void set_matrix(const gameswf::matrix&) override { calls.push_back("matrix"); }
	void set_cxform(const gameswf::cxform&) override { calls.push_back("cxform"); }
	void draw_mesh_strip(const void*, int vertex_count) override { calls.push_back("strip " + std::to_string(vertex_count)); }
	void draw_triangle_list(const void*, int, const unsigned short*, int) override {}
	void draw_line_strip(const void*, int) override {}
	void draw(gameswf::render_cache*) override {}
	void fill_style_disable(int) override {}
	void fill_style_color(int, const gameswf::rgba& color) override { calls.push_back("fill " + std::to_string(color.m_r)); }
	bool fill_style_bitmap(int, gameswf::bitmap_info*, const gameswf::matrix&, bitmap_wrap_mode) override { return true; }
	void line_style_disable() override {}
	void line_style_color(gameswf::rgba) override {}
	void line_style_width(float) override {}
	void draw_bitmap(const gameswf::matrix&, gameswf::bitmap_info*, const gameswf::rect&, const gameswf::rect&, gameswf::rgba) override {}
	void set_antialiased(bool) override {}
	void begin_submit_mask() override {}
	void end_submit_mask() override {}
	void disable_mask() override {}
	bool is_visible(const gameswf::rect&) override { return false; }
	void open() override {}
};

gameswf::player* fake_player()
{
	gameswf::player* p = static_cast<gameswf::player*>(std::calloc(1, sizeof(gameswf::player)));
	gameswf::player_context* c = static_cast<gameswf::player_context*>(std::calloc(1, sizeof(gameswf::player_context)));
	p->m_context = c;
	return p;
}

// Reference-counted objects are made like the binary makes them (operator new with a MemHint): drop_ref destroys them and
// frees the block with free_internal.
gameswf::shape_character_def* make_shape(gameswf::player* p)
{
	void* mem = operator new(sizeof(gameswf::shape_character_def), static_cast<swf::MemHint>(0));
	return new (mem) gameswf::shape_character_def(p);
}

gameswf::matrix scale_matrix(float s)
{
	gameswf::matrix m;
	m.m_[0][0] = s;
	m.m_[1][1] = s;
	return m;
}

// The cached tolerances in hundredths, in cache order.
std::string tolerances(const gameswf::shape_character_def& sd)
{
	std::string out;
	for (int i = 0; i < sd.m_cached_meshes.size(); i++) {
		out += std::to_string(static_cast<int>(sd.m_cached_meshes[i]->get_error_tolerance() * 100)) + " ";
	}
	return out;
}

void test_class_display()
{
	using namespace gameswf;
	const std::size_t before = live().size();
	recorder rec;
	gameswf::render_handler* saved = s_render_handler;
	s_render_handler = &rec;
	set_curve_max_pixel_error(1.0f);

	player* p = fake_player();
	{
		shape_character_def* sd = make_shape(p);
		sd->add_ref();

		// the constructor: empty arrays, no cached meshes, the flags clear
		check(sd->m_fill_styles.size() == 0 && sd->m_line_styles.size() == 0 && sd->m_paths.size() == 0, "constructor leaves the tables empty");
		check(sd->m_cached_meshes.size() == 0, "constructor leaves no cached mesh");
		check(!sd->m_uses_nonscaling_strokes && !sd->m_uses_scaling_strokes, "constructor clears the stroke flags");
		check(sd->get_player() == p, "the player is the one given to the constructor");
		check(sd->is(AS_CHARACTER_DEF), "a shape is a character definition");
		tesselate::tesselating_shape* base = sd;	// the second base
		check(static_cast<const shape_character_def*>(base) == sd, "the tesselating_shape subobject converts back");

		array<fill_style> fills;
		fills.resize(1);
		fills[0].m_color.set(77, 0, 0, 255);
		array<line_style> lines;

		// scale zero: nothing is drawn or built
		g_tesselate_calls = 0;
		sd->display(scale_matrix(0.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 0 && rec.calls.empty() && sd->m_cached_meshes.size() == 0, "a zero scale draws nothing");

		// scale 1, pixel scale 1: error 20 builds a mesh with tolerance 15, then displays it
		sd->display(scale_matrix(1.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 1, "the first display tesselates");
		check(g_tesselate_shape == sd, "the mesh set is built over this shape");
		check(std::fabs(g_tesselate_error - 15.0f) < 1e-4f, "the new mesh has 0.75 of the object space error");
		check(sd->m_cached_meshes.size() == 1, "the mesh set is cached");
		check(rec.calls.size() == 4 && rec.calls[0] == "matrix" && rec.calls[1] == "cxform" && rec.calls[2] == "fill 77" && rec.calls[3] == "strip 3",
			  "the new mesh is displayed with the fill styles given");

		// the same scale again reuses the mesh (error 20 is above its tolerance 15 and not above three times it)
		rec.calls.clear();
		sd->display(scale_matrix(1.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 1 && sd->m_cached_meshes.size() == 1, "the same scale reuses the cached mesh");
		check(rec.calls.size() == 4, "the cached mesh is displayed");

		// scale 10: error 2 is below the tolerance 15, so a finer mesh (tolerance 1.5) is built; the cache is sorted coarse first
		sd->display(scale_matrix(10.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 2 && sd->m_cached_meshes.size() == 2, "a finer scale builds a second mesh");
		check(tolerances(*sd) == "1500 150 ", "the cache is sorted from high error to low error");

		// scale 5: error 4 falls between the tolerances 15 and 1.5: the finer mesh is shown, nothing is built
		rec.calls.clear();
		sd->display(scale_matrix(5.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 2 && sd->m_cached_meshes.size() == 2, "an error between two tolerances reuses the finer mesh");

		// the curve error setting scales the error: 4 becomes 8, which is above three times the finest tolerance (4.5): a new mesh
		// (tolerance 6) is built between the two; with the pixel scale 0.1 the error is 80, above three times the coarsest (45):
		// a mesh coarser than all of them (tolerance 60)
		set_curve_max_pixel_error(2.0f);
		sd->display(scale_matrix(5.0f), cxform::identity, 1.0f, fills, lines);
		check(g_tesselate_calls == 3 && sd->m_cached_meshes.size() == 3, "a larger curve error needs a new mesh");
		check(tolerances(*sd) == "1500 600 150 ", "the new mesh is sorted between the two");
		sd->display(scale_matrix(5.0f), cxform::identity, 0.1f, fills, lines);
		check(g_tesselate_calls == 4 && sd->m_cached_meshes.size() == 4, "an error above three times every tolerance builds a coarser mesh");
		check(tolerances(*sd) == "6000 1500 600 150 ", "the coarsest mesh sorts first");
		set_curve_max_pixel_error(1.0f);

		// flush_cache destroys and frees the cached meshes
		const std::size_t with_cache = live().size();
		sd->flush_cache();
		check(sd->m_cached_meshes.size() == 0, "flush_cache empties the cache");
		check(live().size() < with_cache, "flush_cache frees the mesh sets");

		// the destructor frees whatever is cached
		sd->display(scale_matrix(1.0f), cxform::identity, 1.0f, fills, lines);
		check(sd->m_cached_meshes.size() == 1, "display builds a mesh again after the flush");

		// create_character_instance asks the player's pool
		character* parent = reinterpret_cast<character*>(0x5678);
		g_generic_calls = 0;
		character* made = sd->create_character_instance(parent, 9);
		check(made == reinterpret_cast<character*>(0x1234), "the instance is what the player's pool returns");
		check(g_generic_calls == 1 && g_generic_def == sd && g_generic_parent == parent && g_generic_id == 9, "the pool gets the definition, the parent and the id");

		sd->drop_ref();	// ~shape_character_def frees the cached mesh set and the arrays
	}
	s_render_handler = saved;
	check(live().size() <= before + 1, "nothing leaks (the weak proxy of the fake player is the one block that stays)");
	check(g_foreign_frees == 0, "nothing foreign is freed");
}

// A DefineShape record: bounds, one solid fill, one line style, then a path with a straight, a curved and a vertical edge, and a
// second path after a fill1 change.
void test_class_read()
{
	using namespace gameswf;
	player* p = fake_player();
	void* def_mem = operator new(sizeof(movie_def_impl), static_cast<swf::MemHint>(0));
	movie_def_impl* def = new (def_mem) movie_def_impl(p, DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	def->add_ref();

	std::vector<unsigned char> bytes;
	int used = 0;
	auto bits = [&](unsigned value, int count) {
		for (int i = count - 1; i >= 0; i--) {
			if (used == 0) {
				bytes.push_back(0);
			}
			if ((value >> i) & 1u) {
				bytes.back() |= static_cast<unsigned char>(0x80 >> used);
			}
			used = (used + 1) & 7;
		}
	};
	auto sbits = [&](int v, int n) { bits(static_cast<unsigned>(v) & ((1u << n) - 1u), n); };
	auto u8 = [&](int v) { used = 0; bytes.push_back(static_cast<unsigned char>(v)); };
	// bound (0, 400, 0, 300), 10 bits each
	bits(10, 5); sbits(0, 10); sbits(400, 10); sbits(0, 10); sbits(300, 10);
	used = 0;
	u8(1);	// one fill style
	u8(0); u8(10); u8(20); u8(30);	// solid rgb
	u8(1);	// one line style
	u8(0x14); u8(0x00);	// width 20
	u8(1); u8(2); u8(3);	// rgb
	// SHAPE: 1 fill bit, 1 line bit
	bits(1, 4); bits(1, 4);
	// record 1: move to (10, 20), fill0 = 1, line = 1
	bits(0, 1); bits(0x01 | 0x02 | 0x08, 5); bits(6, 5); sbits(10, 6); sbits(20, 6); bits(1, 1); bits(1, 1);
	// straight general edge (+5, +6)
	bits(1, 1); bits(1, 1); bits(2, 4); bits(1, 1); sbits(5, 4); sbits(6, 4);
	// curved edge: control (+1, +2), anchor (+3, +4)
	bits(1, 1); bits(0, 1); bits(2, 4); sbits(1, 4); sbits(2, 4); sbits(3, 4); sbits(4, 4);
	// vertical straight edge (0, +7): line flag 0, vertical flag 1
	bits(1, 1); bits(1, 1); bits(2, 4); bits(0, 1); bits(1, 1); sbits(7, 4);
	// style change with only a fill1 change: starts a new path
	bits(0, 1); bits(0x04, 5); bits(1, 1);
	// horizontal straight edge (+4, 0)
	bits(1, 1); bits(1, 1); bits(2, 4); bits(0, 1); bits(0, 1); sbits(4, 4);
	// end of shape
	bits(0, 1); bits(0, 5);
	used = 0;
	u8(0x6B);

	tu_file file(tu_file::memory_buffer);
	file.write_bytes(bytes.data(), static_cast<int>(bytes.size()));
	file.set_position(0);
	stream in(&file);
	shape_character_def* sd = make_shape(p);
	sd->add_ref();
	sd->read(&in, 2, true, def);

	check(sd->get_bound_local().m_x_max == 400 && sd->get_bound_local().m_y_max == 300, "read keeps the bound");
	check(sd->get_fill_styles().size() == 1 && sd->get_fill_styles()[0].m_color.m_r == 10 && sd->get_fill_styles()[0].m_color.m_b == 30, "read keeps the fill style");
	check(sd->get_line_styles().size() == 1 && sd->get_line_styles()[0].get_width() == 20 && sd->get_line_styles()[0].get_color().m_g == 2, "read keeps the line style");
	check(sd->get_paths().size() == 2, "a style change after edges starts a second path");
	if (sd->get_paths().size() == 2) {
		const path& a = sd->get_paths()[0];
		check(a.m_ax == 10 && a.m_ay == 20 && a.m_fill0 == 1 && a.m_line == 1 && a.m_edges.size() == 3, "first path: start, styles and edges");
		if (a.m_edges.size() == 3) {
			check(a.m_edges[0].m_ax == 15 && a.m_edges[0].m_ay == 26 && a.m_edges[0].is_straight(), "straight edge");
			check(a.m_edges[1].m_cx == 16 && a.m_edges[1].m_cy == 28 && a.m_edges[1].m_ax == 19 && a.m_edges[1].m_ay == 32 && !a.m_edges[1].is_straight(), "curved edge");
			check(a.m_edges[2].m_ax == 19 && a.m_edges[2].m_ay == 39, "vertical edge");
		}
		const path& b = sd->get_paths()[1];
		check(b.m_fill1 == 1 && b.m_edges.size() == 1 && b.m_ax == 19 && b.m_ay == 39, "second path starts where the first ended");
		check(b.m_edges.size() == 1 && b.m_edges[0].m_ax == 23 && b.m_edges[0].m_ay == 39, "horizontal edge");
	}
	check(in.read_u8() == 0x6B, "read stops at the end of the shape");

	// get_bound and compute_bound
	rect bound;
	sd->get_bound(&bound);
	check(bound.m_x_max == 400 && bound.m_y_min == 0, "get_bound copies the bound");
	rect computed;
	sd->compute_bound(&computed);
	check(computed.m_x_min == 10 && computed.m_x_max == 23 && computed.m_y_min == 20 && computed.m_y_max == 39, "compute_bound spans the anchors");

	sd->drop_ref();
	def->drop_ref();
}

}  // namespace

int main()
{
	test_max_scale();
	test_drawable();
	test_error_and_tolerance();
	test_select_from_array();
	test_select_stops_on_coarse_mesh();
	test_class_display();
	test_class_read();
	if (g_failures != 0)
	{
		std::printf("%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("shape_character_def: all checks passed\n");
	return 0;
}
