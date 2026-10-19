// Test for batch v1-vendor-gameswf-pack7-2f63b3-0: gameswf::edge, path, mesh, mesh_set and line_strip.
//
// The allocator is replaced by a counting one that remembers every live block, so the test also checks that everything the
// mesh classes allocate (operator new with a MemHint for meshes, line strips and mesh sets; the container blocks) is released
// through free_internal and that nothing foreign is freed.
//
// Covers: mesh::add_triangle / set_triangles growth (reserve new + new / 2 only above the capacity, never shrinking, contents),
// the implicit destructor releasing the three arrays; mesh::set_tri_strip; mesh_set styles and layers (expand_styles_to_include
// through get_mutable_mesh and set_tri_strip, add_line_strip); mesh::display, line_strip::display and both mesh_set::display
// overloads against a recording render handler; the cached-data round trip of a mesh_set; the mesh_set(tesselating_shape*, float)
// constructor's pointer adjustment; edge and path basics.
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
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_styles.h"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/player_context.hpp"

using namespace gameswf;

static int g_failures = 0;

#define CHECK(cond)                                                    \
	do {                                                               \
		if (!(cond)) {                                                 \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
			++g_failures;                                              \
		}                                                              \
	} while (0)

// ---------------------------------------------------------------------------------------------------------------------
// The counting allocator.

namespace {

// Leaked on purpose: allocations happen during static initialisation and after main.
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

// The mesh_set(tesselating_shape*, float) constructor hands its shape to execute_tesselate.
static int g_tesselate_calls = 0;
static mesh_set* g_tesselate_set = nullptr;
static const shape_character_def* g_tesselate_shape = nullptr;
static float g_tesselate_error = -1.0f;

void execute_tesselate(mesh_set* ms, const shape_character_def* sh, float error_tolerance)
{
	++g_tesselate_calls;
	g_tesselate_set = ms;
	g_tesselate_shape = sh;
	g_tesselate_error = error_tolerance;
}

}  // namespace gameswf

// The morph styles have no bodies in the tree (the morph classes are not in the binary; only mesh_set::display names them). The
// morph display overload walks them through the base interface, so these stand-ins record the ratio it passes.
static std::vector<std::string>* g_morph_log = nullptr;

namespace gameswf {

morph_fill_style::morph_fill_style() {}
morph_fill_style::~morph_fill_style() {}
void morph_fill_style::apply(int fill_side, float morph) const
{
	if (g_morph_log) {
		g_morph_log->push_back("mfill " + std::to_string(fill_side) + " " + std::to_string(static_cast<int>(morph * 100)));
	}
}

morph_line_style::morph_line_style() {}
void morph_line_style::apply(float morph) const
{
	if (g_morph_log) {
		g_morph_log->push_back("mline " + std::to_string(static_cast<int>(morph * 100)));
	}
}

}  // namespace gameswf

namespace {

// ---------------------------------------------------------------------------------------------------------------------
// A render handler that records the mesh and line calls.

struct call_log {
	std::vector<std::string> calls;
	void add(const std::string& s) { calls.push_back(s); }
};

struct recorder : gameswf::render_handler {
	call_log log;
	const void* last_strip = nullptr;
	const void* last_list = nullptr;
	const unsigned short* last_indices = nullptr;
	int last_index_count = -1;

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
	void set_matrix(const matrix& m) override { log.add("matrix " + std::to_string(static_cast<int>(m.m_[0][2]))); }
	void set_cxform(const cxform& cx) override { log.add("cxform " + std::to_string(static_cast<int>(cx.m_[0][1]))); }
	void draw_mesh_strip(const void* coords, int vertex_count) override
	{
		last_strip = coords;
		log.add("strip " + std::to_string(vertex_count));
	}
	void draw_triangle_list(const void* coords, int vertex_count, const unsigned short* indices, int index_count) override
	{
		last_list = coords;
		last_indices = indices;
		last_index_count = index_count;
		log.add("list " + std::to_string(vertex_count) + " " + std::to_string(index_count));
	}
	void draw_line_strip(const void* coords, int vertex_count) override { log.add("line " + std::to_string(vertex_count)); }
	void draw(render_cache*) override {}
	void fill_style_disable(int) override {}
	void fill_style_color(int side, const rgba& color) override
	{
		log.add("fill " + std::to_string(side) + " " + std::to_string(color.m_r));
	}
	bool fill_style_bitmap(int, bitmap_info*, const matrix&, bitmap_wrap_mode) override { return true; }
	void line_style_disable() override {}
	void line_style_color(rgba color) override { log.add("linecolor " + std::to_string(color.m_r)); }
	void line_style_width(float width) override { log.add("linewidth " + std::to_string(static_cast<int>(width))); }
	void draw_bitmap(const matrix&, bitmap_info*, const rect&, const rect&, rgba) override {}
	void set_antialiased(bool) override {}
	void begin_submit_mask() override {}
	void end_submit_mask() override {}
	void disable_mask() override {}
	bool is_visible(const rect&) override { return false; }
	void open() override {}
};

// A base style that records what mesh::display asks of it.
struct probe_fill : base_fill_style {
	mutable std::vector<std::pair<int, float> > applied;
	void apply(int fill_side, float ratio) const override { applied.push_back(std::make_pair(fill_side, ratio)); }
};

player* fake_player()
{
	player* p = static_cast<player*>(std::calloc(1, sizeof(player)));
	player_context* c = static_cast<player_context*>(std::calloc(1, sizeof(player_context)));
	p->m_context = c;
	return p;
}

// ---------------------------------------------------------------------------------------------------------------------

void test_mesh_arrays()
{
	const std::size_t before = live().size();
	{
		mesh m;
		CHECK(m.m_triangle_strip.size() == 0 && m.m_triangle_list.size() == 0 && m.m_triangle_indices.size() == 0);

		const float tri[6] = {1, 2, 3, 4, 5, 6};
		m.add_triangle(tri);
		CHECK(m.m_triangle_list.size() == 6);
		CHECK(m.m_triangle_list.m_buffer_size == 9);	// 6 + 6 / 2 (the first reserve)
		for (int i = 0; i < 6; i++) {
			CHECK(m.m_triangle_list[i] == tri[i]);
		}
		const float tri2[6] = {7, 8, 9, 10, 11, 12};
		m.add_triangle(tri2);
		CHECK(m.m_triangle_list.size() == 12);
		CHECK(m.m_triangle_list.m_buffer_size == 18);	// 12 + 6: above the old capacity of 9
		CHECK(m.m_triangle_list[6] == 7 && m.m_triangle_list[11] == 12 && m.m_triangle_list[0] == 1);
		m.add_triangle(tri);
		CHECK(m.m_triangle_list.size() == 18);
		CHECK(m.m_triangle_list.m_buffer_size == 18);	// 18 fits: no reserve

		// set_triangles: floats and indices, each only when its count is positive
		const float verts[4] = {0.5f, 1.5f, 2.5f, 3.5f};
		const unsigned short idx[3] = {0, 1, 2};
		m.set_triangles(verts, 4, idx, 3);
		CHECK(m.m_triangle_list.size() == 22);
		CHECK(m.m_triangle_list[18] == 0.5f && m.m_triangle_list[21] == 3.5f);
		CHECK(m.m_triangle_list.m_buffer_size == 33);	// 22 + 11
		CHECK(m.m_triangle_indices.size() == 3 && m.m_triangle_indices[2] == 2);
		CHECK(m.m_triangle_indices.m_buffer_size == 4);	// 3 + 1

		m.set_triangles(verts, 0, idx, 0);	// nothing to append
		CHECK(m.m_triangle_list.size() == 22 && m.m_triangle_indices.size() == 3);
		m.set_triangles(NULL, 0, idx, 1);	// indices only
		CHECK(m.m_triangle_list.size() == 22 && m.m_triangle_indices.size() == 4);
		CHECK(m.m_triangle_indices.m_buffer_size == 4);

		// the strip: two floats per point
		const point pts[3] = {point(1, 2), point(3, 4), point(5, 6)};
		m.set_tri_strip(pts, 3);
		CHECK(m.m_triangle_strip.size() == 6);
		CHECK(m.m_triangle_strip[0] == 1 && m.m_triangle_strip[5] == 6);
	}
	// the destructor of mesh (the implicit member destructors) released the three buffers
	CHECK(live().size() == before);
}

void test_mesh_set_structure()
{
	const std::size_t before = live().size();
	{
		mesh_set ms;
		CHECK(ms.m_layers.size() == 0);
		ms.new_layer();
		CHECK(ms.m_layers.size() == 1);

		// style 2 makes slots 0..2, only slot 2 gets a mesh
		mesh* m2 = ms.get_mutable_mesh(2);
		CHECK(m2 != NULL);
		CHECK(ms.m_layers[0].m_meshes.size() == 3);
		CHECK(ms.m_layers[0].m_meshes[0] == NULL && ms.m_layers[0].m_meshes[1] == NULL && ms.m_layers[0].m_meshes[2] == m2);
		CHECK(ms.get_mutable_mesh(2) == m2);	// the same mesh again

		const point pts[2] = {point(0, 0), point(1, 1)};
		ms.set_tri_strip(0, pts, 2);
		CHECK(ms.m_layers[0].m_meshes[0] != NULL);
		CHECK(ms.m_layers[0].m_meshes[0]->m_triangle_strip.size() == 4);

		ms.add_line_strip(1, pts, 2);
		CHECK(ms.m_layers[0].m_line_strips.size() == 1);
		CHECK(ms.m_layers[0].m_line_strips[0]->get_style() == 1);
		CHECK(ms.m_layers[0].m_line_strips[0]->m_coords.size() == 4);

		// a second layer takes the next requests
		ms.new_layer();
		CHECK(ms.m_layers.size() == 2);
		ms.get_mutable_mesh(0);
		CHECK(ms.m_layers[1].m_meshes.size() == 1);
		CHECK(ms.m_layers[0].m_meshes.size() == 3);
	}
	CHECK(live().size() == before);	// ~mesh_set -> ~layer destroyed and freed the meshes and line strips with free_internal
	CHECK(g_foreign_frees == 0);

	line_strip dflt;
	CHECK(dflt.get_style() == -1 && dflt.m_coords.size() == 0);
}

void test_display()
{
	const std::size_t before = live().size();
	recorder rec;
	gameswf::render_handler* saved = s_render_handler;
	s_render_handler = &rec;

	// mesh::display: strip then list; each applies the style with side 0 and the ratio first
	{
		mesh m;
		probe_fill style;
		m.display(style, 0.5f);	// empty: nothing at all
		CHECK(style.applied.empty() && rec.log.calls.empty());

		const point pts[3] = {point(1, 2), point(3, 4), point(5, 6)};
		m.set_tri_strip(pts, 3);
		m.display(style, 0.5f);
		CHECK(style.applied.size() == 1 && style.applied[0].first == 0 && style.applied[0].second == 0.5f);
		CHECK(rec.log.calls.size() == 1 && rec.log.calls[0] == "strip 3");
		CHECK(rec.last_strip == &m.m_triangle_strip[0]);

		const float tri[6] = {0, 0, 1, 0, 0, 1};
		m.add_triangle(tri);
		rec.log.calls.clear();
		style.applied.clear();
		m.display(style, 0.25f);
		CHECK(style.applied.size() == 2);
		CHECK(rec.log.calls.size() == 2 && rec.log.calls[0] == "strip 3" && rec.log.calls[1] == "list 3 0");
		CHECK(rec.last_list == &m.m_triangle_list[0]);
		CHECK(rec.last_index_count == 0);

		const unsigned short idx[3] = {2, 1, 0};
		m.set_triangles(NULL, 0, idx, 3);
		rec.log.calls.clear();
		m.display(style, 1.0f);
		CHECK(rec.log.calls.size() == 2 && rec.log.calls[1] == "list 3 3");
		CHECK(rec.last_indices == &m.m_triangle_indices[0]);

		// no handler: the style is still applied, nothing is drawn
		s_render_handler = NULL;
		style.applied.clear();
		rec.log.calls.clear();
		m.display(style, 1.0f);
		CHECK(style.applied.size() == 2 && rec.log.calls.empty());
		s_render_handler = &rec;
	}

	// mesh_set::display (four arguments): matrix, cxform, then per layer the meshes (fill style = slot) and the line strips
	{
		array<fill_style> fills;
		fills.resize(3);
		fills[0].m_color.set(10, 0, 0, 255);
		fills[1].m_color.set(11, 0, 0, 255);
		fills[2].m_color.set(12, 0, 0, 255);
		array<line_style> lines;
		lines.resize(2);
		lines[0].m_color.set(20, 0, 0, 255);
		lines[0].m_width = 30;
		lines[1].m_color.set(21, 0, 0, 255);
		lines[1].m_width = 40;

		mesh_set ms;
		ms.new_layer();
		const point pts[3] = {point(0, 0), point(1, 0), point(0, 1)};
		ms.set_tri_strip(1, pts, 3);	// slot 0 stays empty, slot 1 has a mesh
		ms.set_tri_strip(2, pts, 3);
		ms.add_line_strip(1, pts, 3);
		ms.new_layer();
		ms.set_tri_strip(0, pts, 3);
		ms.add_line_strip(0, pts, 2);

		matrix mat;
		mat.m_[0][2] = 7.0f;
		cxform cx;
		cx.m_[0][1] = 9.0f;
		rec.log.calls.clear();
		ms.display(mat, cx, fills, lines);
		const char* want[] = {"matrix 7", "cxform 9",
							  "fill 0 11", "strip 3", "fill 0 12", "strip 3",	// layer 0: meshes in slot order
							  "linecolor 21", "linewidth 40", "line 3",	// layer 0: its line strip uses line style 1
							  "fill 0 10", "strip 3",	// layer 1
							  "linecolor 20", "linewidth 30", "line 2"};
		CHECK(rec.log.calls.size() == sizeof(want) / sizeof(want[0]));
		for (std::size_t i = 0; i < rec.log.calls.size() && i < sizeof(want) / sizeof(want[0]); i++) {
			if (rec.log.calls[i] != want[i]) {
				std::printf("call %d: got '%s', want '%s'\n", static_cast<int>(i), rec.log.calls[i].c_str(), want[i]);
				++g_failures;
			}
		}

		// no handler: nothing is recorded
		s_render_handler = NULL;
		rec.log.calls.clear();
		ms.display(mat, cx, fills, lines);
		CHECK(rec.log.calls.empty());
		s_render_handler = &rec;

		// the morph overload: the same transform calls, then the morph styles of the meshes and strips get the morph ratio
		std::vector<std::string> morph_log;
		g_morph_log = &morph_log;
		array<morph_fill_style> morph_fills;
		morph_fills.resize(2);
		array<morph_line_style> morph_lines;
		morph_lines.resize(1);
		mesh_set morph_set;
		morph_set.new_layer();
		morph_set.set_tri_strip(1, pts, 3);
		morph_set.add_line_strip(0, pts, 3);
		rec.log.calls.clear();
		morph_set.display(mat, cx, morph_fills, morph_lines, 0.5f);
		const char* mwant[] = {"matrix 7", "cxform 9", "strip 3", "line 3"};
		CHECK(rec.log.calls.size() == 4);
		for (std::size_t i = 0; i < rec.log.calls.size() && i < 4; i++) {
			CHECK(rec.log.calls[i] == mwant[i]);
		}
		CHECK(morph_log.size() == 2 && morph_log[0] == "mfill 0 50" && morph_log[1] == "mline 50");
		g_morph_log = nullptr;
	}

	// line_strip::display applies the line style, then draws half the coordinate count
	{
		const point pts[4] = {point(0, 0), point(1, 1), point(2, 2), point(3, 3)};
		mesh_set ms;
		ms.new_layer();
		ms.add_line_strip(0, pts, 4);
		line_style ls;
		ls.m_color.set(33, 0, 0, 255);
		ls.m_width = 12;
		rec.log.calls.clear();
		ms.m_layers[0].m_line_strips[0]->display(ls, 1.0f);
		CHECK(rec.log.calls.size() == 3 && rec.log.calls[0] == "linecolor 33" && rec.log.calls[1] == "linewidth 12" && rec.log.calls[2] == "line 4");
	}

	s_render_handler = saved;
	CHECK(live().size() == before);
}

void test_cached_data()
{
	const std::size_t before = live().size();
	tu_file file(tu_file::memory_buffer);
	{
		mesh_set ms;
		ms.m_error_tolerance = 0.5f;
		ms.new_layer();
		const point pts[3] = {point(1, 2), point(3, 4), point(5, 6)};
		ms.set_tri_strip(1, pts, 3);
		const float tri[6] = {9, 8, 7, 6, 5, 4};
		ms.get_mutable_mesh(1)->add_triangle(tri);
		ms.add_line_strip(0, pts, 3);
		ms.new_layer();
		ms.get_mutable_mesh(0)->add_triangle(tri);
		ms.output_cached_data(&file);
	}
	file.set_position(0);
	{
		mesh_set back;
		back.input_cached_data(&file);
		CHECK(back.get_error_tolerance() == 0.5f);
		CHECK(back.m_layers.size() == 2);
		CHECK(back.m_layers[0].m_meshes.size() == 2);
		CHECK(back.m_layers[0].m_meshes[0] == NULL && back.m_layers[0].m_meshes[1] != NULL);
		CHECK(back.m_layers[0].m_meshes[1]->m_triangle_strip.size() == 6);
		CHECK(back.m_layers[0].m_meshes[1]->m_triangle_strip[4] == 5);
		CHECK(back.m_layers[0].m_meshes[1]->m_triangle_list.size() == 6);
		CHECK(back.m_layers[0].m_meshes[1]->m_triangle_list[0] == 9);
		CHECK(back.m_layers[0].m_line_strips.size() == 1 && back.m_layers[0].m_line_strips[0]->get_style() == 0);
		CHECK(back.m_layers[0].m_line_strips[0]->m_coords.size() == 6);
		CHECK(back.m_layers[1].m_meshes.size() == 1 && back.m_layers[1].m_meshes[0] != NULL);
		CHECK(back.m_layers[1].m_meshes[0]->m_triangle_list[5] == 4);
		CHECK(back.m_layers[1].m_line_strips.size() == 0);
	}
	// the tu_file buffer is the test's own; everything the mesh sets allocated is gone
	CHECK(live().size() <= before + 2);
}

void test_mesh_set_from_shape()
{
	player* p = fake_player();
	void* shape_mem = operator new(sizeof(shape_character_def), static_cast<swf::MemHint>(0));
	shape_character_def* shape = new (shape_mem) shape_character_def(p);
	shape->add_ref();
	tesselate::tesselating_shape* base = shape;	// the second base of the shape

	g_tesselate_calls = 0;
	{
		mesh_set ms(base, 0.125f);
		CHECK(g_tesselate_calls == 1);
		CHECK(g_tesselate_set == &ms);
		CHECK(g_tesselate_shape == shape);	// adjusted back to the whole object
		CHECK(g_tesselate_error == 0.125f);
		CHECK(ms.get_error_tolerance() == 0.125f);
	}
	{
		mesh_set ms(NULL, 2.0f);	// a null shape stays null
		CHECK(g_tesselate_calls == 2 && g_tesselate_shape == NULL && g_tesselate_error == 2.0f);
	}
	shape->drop_ref();
}

void test_edge_and_path()
{
	edge e;
	CHECK(e.m_cx == 0 && e.m_cy == 0 && e.m_ax == 0 && e.m_ay == 0);
	CHECK(e.is_straight());
	edge big(1e39f, -1e39f, 3.0f, 4.0f);	// beyond FLT_MAX is stored as 0
	CHECK(big.m_cx == 0 && big.m_cy == 0 && big.m_ax == 3.0f && big.m_ay == 4.0f);
	CHECK(!big.is_straight());
	edge nanedge(NAN, 1.0f, 2.0f, 3.0f);
	CHECK(nanedge.m_cx == 0);
	edge ok(1.0f, 2.0f, 1.0f, 2.0f);
	CHECK(ok.is_straight());

	path p;
	CHECK(p.is_empty() && p.m_fill0 == 0 && p.m_fill1 == 0 && p.m_line == 0 && p.m_ax == 0 && p.m_ay == 0 && !p.m_new_shape);
	path q(3.0f, 4.0f, 5, 6, 7);
	CHECK(q.m_ax == 3.0f && q.m_ay == 4.0f && q.m_fill0 == 5 && q.m_fill1 == 6 && q.m_line == 7 && q.is_empty());

	// a unit square of straight edges (0,0) -> (100,0) -> (100,100) -> (0,100) -> (0,0), filled on the left
	path sq(0, 0, 1, 0, 0);
	sq.m_edges.push_back(edge(100, 0, 100, 0));
	sq.m_edges.push_back(edge(100, 100, 100, 100));
	sq.m_edges.push_back(edge(0, 100, 0, 100));
	sq.m_edges.push_back(edge(0, 0, 0, 0));
	CHECK(!sq.is_empty());
	CHECK(sq.point_test(50, 50));
	CHECK(!sq.point_test(150, 50));
	CHECK(!sq.point_test(-10, 50));
	CHECK(!sq.point_test(50, 150));

	path copy(sq);	// the compiler-generated copy: styles, start and edges
	CHECK(copy.m_fill0 == 1 && copy.m_edges.size() == 4 && copy.m_edges[1].m_ay == 100);

	sq.reset(9, 8, 2, 3, 4);
	CHECK(sq.is_empty() && sq.m_ax == 9 && sq.m_ay == 8 && sq.m_fill0 == 2 && sq.m_fill1 == 3 && sq.m_line == 4);

	// a path with no fill on the left (fill0 < 0) is never "inside"
	path nofill(0, 0, -1, 0, 0);
	nofill.m_edges.push_back(edge(100, 0, 100, 0));
	CHECK(!nofill.point_test(50, 0));
}

}  // namespace

int main()
{
	test_mesh_arrays();
	test_mesh_set_structure();
	test_display();
	test_cached_data();
	test_mesh_set_from_shape();
	test_edge_and_path();
	CHECK(g_foreign_frees == 0);

	if (g_failures == 0) {
		std::printf("ok\n");
		return 0;
	}
	std::printf("%d failure(s)\n", g_failures);
	return 1;
}
