// Batch v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0 (vendor-gameswf, owner gameswf::shape_character_def).
//
// The constructor (C1 0x77b878, C2 0x77b900), the destructor (D2 0x77c570, D1 0x77c754), the five-argument display
// (0x77a990), display(character*) (0x77be78) and create_character_instance (0x77be00). Per-function status and notes
// are in ledger.d/gameswf-core-moviedef.csv.
//
// Upstream, no body here: sort_and_clean_meshes (0x779fd0) and point_test_local (0x77a570). They match gameswf r1714
// gameswf_shape.cpp. The sort calls sort_by_decreasing_error, which fddef6-2 defines (upstream declares it just before
// shape_character_def::sort_and_clean_meshes). point_test_local is rect::point_test on m_bound, then the path loop.
//
// Layout (0x88 bytes): character_def (0x20), the tesselating_shape vptr +0x20, m_fill_styles +0x24, m_line_styles
// +0x34, m_paths +0x44 (16 bytes each), m_bound +0x54, m_edge_bounds +0x64, the two stroke flags +0x74 and +0x75,
// m_cached_meshes +0x78. The arithmetic and selection rules of display are in vendor-gameswf/gameswf_shape_dh2_helpers.hpp
// and tested by tests/v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0_test.cpp.
//
// Where the DH2 bodies differ from upstream gameswf_shape.cpp:
//   - constructor: the binary does not write m_bound or m_edge_bounds (the rect constructor of this tree zeroes them,
//     which no code can tell apart from garbage); the arrays' flag byte at +0x0c is the array's own m_borrowed.
//   - destructor: each cached mesh is destroyed in place and freed with gameswf::free_internal, as the binary does.
//     Upstream uses delete.
//   - display: no bitmap_blend_mode argument, and display(character*) has no blend mode switch. mesh_set::display is the
//     four-argument overload, and the new mesh is allocated with operator new(size, MemHint) (binary: operator new(0x14, 0)).
//   - create_character_instance: the player makes the instance through its pool, not with new.
//
// The upstream definitions this file replaces are wrapped in #if 0 in upstream/gameswf-r1714/gameswf/gameswf_shape.cpp.

#include <new>

#include "vendor-gameswf/gameswf_alloc.hpp"            // gameswf::free_internal
#include "vendor-gameswf/gameswf_shape_dh2_helpers.hpp"  // selection and scale arithmetic

#include "core-platform/deps/swf_types.hpp"            // swf::MemHint
#include "core-platform/memory.hpp"                    // operator new(std::size_t, swf::MemHint)
#include "gameswf/gameswf.h"                           // get_curve_max_pixel_error()
#include "gameswf/gameswf_impl.h"                      // generic_character
#include "gameswf/gameswf_player.h"                    // player::create_generic_character
#include "gameswf/gameswf_shape.h"

namespace gameswf {

// 0x77b878 gameswf::shape_character_def::shape_character_def(gameswf::player*)   [C1, complete object]
// 0x77b900 gameswf::shape_character_def::shape_character_def(gameswf::player*)   [C2, base object]
// Binary order: character_def(player), the borrowed byte at +0x84, the vptrs at +0 and +0x20, then the arrays at +0x24,
// +0x34, +0x44 and +0x78 cleared (buffer, size, capacity and the borrowed byte, which the 16-byte array constructor
// writes), and the two stroke flags at +0x74 and +0x75. m_bound and m_edge_bounds are not written by the binary; the rect
// default constructor used here zeroes them.
shape_character_def::shape_character_def(player* p)
	: character_def(p),
	  m_uses_nonscaling_strokes(false),
	  m_uses_scaling_strokes(false)
{
}

// 0x77c570 gameswf::shape_character_def::~shape_character_def()   [D2, base object]
// 0x77c754 gameswf::shape_character_def::~shape_character_def()   [D1, complete object]
// The explicit part frees each cached mesh_set with ~mesh_set and gameswf::free_internal (the binary passes one
// argument; the size is ignored, so 0 is passed). The compiler then destroys the members in reverse declaration order,
// as the binary does: m_cached_meshes (size 0, buffer freed), m_paths (resize 0 each path, buffer freed), m_line_styles,
// m_fill_styles. Then the tesselating_shape subobject, then character_def::~character_def.
// The binary also has a branch for a negative size. A size is never negative, so it is not reproduced.
shape_character_def::~shape_character_def()
{
	for (int i = 0; i < m_cached_meshes.size(); ++i)
	{
		mesh_set* v = m_cached_meshes[i];
		if (v != nullptr)
		{
			v->~mesh_set();
			free_internal(v, 0);
		}
	}
}

// 0x77a990 gameswf::shape_character_def::display(gameswf::matrix const&, gameswf::cxform const&, float,
//          gameswf::array<gameswf::fill_style> const&, gameswf::array<gameswf::line_style> const&) const
// A DH2 body (r1714 has a blend mode argument). Binary steps: scale from the basis (inlined get_max_scale), stop if |scale| < 1e-6, the error
// ((20 / scale) / pixel_scale) * curve error, reuse a cached mesh_set if one fits (display it and return),
// else build one at 0.75 of the error, add it to the cache, display it and sort the cache.
void shape_character_def::display(const matrix& mat, const cxform& cx, float pixel_scale,
                                  const array<fill_style>& fill_styles,
                                  const array<line_style>& line_styles) const
{
	const float max_scale =
		dh2::shape_matrix_max_scale(mat.m_[0][0], mat.m_[0][1], mat.m_[1][0], mat.m_[1][1]);
	if (!dh2::shape_scale_is_drawable(max_scale))
	{
		return;
	}

	const float object_space_error =
		dh2::shape_object_space_error(max_scale, pixel_scale, get_curve_max_pixel_error());
	const int hit = dh2::shape_select_cached_mesh(
		m_cached_meshes.size(), object_space_error,
		[this](int i) { return m_cached_meshes[i]->get_error_tolerance(); });
	if (hit >= 0)
	{
		m_cached_meshes[hit]->display(mat, cx, fill_styles, line_styles);
		return;
	}

	// The binary calls operator new(0x14, 0) and then the constructor, with no null check.
	void* mem = operator new(sizeof(mesh_set), static_cast<swf::MemHint>(0));
	mesh_set* m = new (mem) mesh_set(this, dh2::shape_new_mesh_tolerance(object_space_error));
	m_cached_meshes.push_back(m);
	m->display(mat, cx, fill_styles, line_styles);
	sort_and_clean_meshes();
}

// 0x77be78 gameswf::shape_character_def::display(gameswf::character*)
// Draws the shape with its own styles: the instance's world matrix and colour transform, and the pixel scale of its parent
// (a virtual call on the parent, +0x78, which the binary makes through the inlined weak pointer read of the parent
// without a null test). The five-argument display does the rest. r1714 switches on the instance's blend mode here;
// the binary has no blend mode.
void shape_character_def::display(character* inst)
{
	const matrix* mat = inst->get_world_matrix();
	const cxform* cx = inst->get_world_cxform();
	float pixel_scale = inst->get_parent()->get_pixel_scale();
	display(*mat, *cx, pixel_scale, m_fill_styles, m_line_styles);
}

// 0x77be00 gameswf::shape_character_def::create_character_instance(gameswf::character*, int)
// Overrides character_def::create_character_instance, whose
// upstream body is new generic_character. Binary: the inlined weak-pointer read of m_player (a dead proxy
// is dropped, the pointer and proxy are cleared, NULL is returned), then the result of
// player::create_generic_character(def, parent, id) on that player is returned. The binary makes the call even when
// the player is NULL, and so does this.
character* shape_character_def::create_character_instance(character* parent, int id)
{
	return get_player()->create_generic_character(this, parent, id);
}

}  // namespace gameswf


// 0x779fd0 gameswf::shape_character_def::sort_and_clean_meshes() const
//   upstream gameswf_shape.cpp, shape_character_def::sort_and_clean_meshes. Binary: if the cache is not empty (size > 0), qsort it with
//   sort_by_decreasing_error, four bytes per element. The upstream debug-only assert loop is not in the binary.
//
// 0x77a570 gameswf::shape_character_def::point_test_local(float, float)
//   upstream gameswf_shape.cpp, shape_character_def::point_test_local. Binary: the m_bound early-out (rect::point_test, inlined), then
//   path::point_test over m_paths (40-byte stride), return 1 on the first hit. An empty path list returns 0
//   before the loop, which is the same result as the upstream loop.
