// Batch v1-vendor-gameswf-pack7-2f63b3-0: gameswf::edge, gameswf::mesh, gameswf::mesh_set, gameswf::line_strip and
// gameswf::path (gameswf r1714 with the DH2 changes). Status and notes of each row: ledger.d/gameswf-core-moviedef.csv.
//
// Upstream rows, no body here (the binary matches the gameswf r1714 source under upstream/gameswf-r1714):
//   0x773d34 tu_mutex::~tu_mutex             gameswf_mutex.h, single-thread branch (TU_CONFIG_LINK_TO_THREAD == 0)
//   0x779034 tesselating_shape::~tesselating_shape   gameswf_shape.h, inline virtual destructor
//   0x7790a0, 0x7790b8 edge::edge()          gameswf_shape.cpp
//   0x7790d0, 0x7791d8 edge::edge(float, float, float, float)  gameswf_shape.cpp (upstream clamp, same compares)
//   0x779388, 0x7793c0 mesh::mesh()          gameswf_shape.cpp (the arrays default-construct to zero)
//   0x77956c, 0x77958c mesh_set::mesh_set()  gameswf_shape.cpp
//   0x77c230, 0x77c544 mesh_set::~mesh_set() gameswf_shape.cpp (implicit member destruction clears m_layers)
//   0x779ff4 path::point_test(float, float)  gameswf_shape.cpp (same algorithm, same float operations)
// Skipped: 0x77a948 (deleting destructor) and 0x779a64 (path copy constructor), both compiler-generated.
//
// Bodies in this file (the upstream definitions are wrapped in #if 0 in gameswf_shape.cpp):
//   mesh::add_triangle, mesh::set_triangles, mesh::~mesh, mesh_set::mesh_set(tesselating_shape const*, float),
//   mesh::display (0x7793f8), line_strip::display (0x779508), the two mesh_set::display overloads (0x7795ac,
//   0x7796c8). The binary calls the render handler directly in all three display functions (there is no
//   gameswf::render forwarder) and none of them has a blend mode.
// edge::edge(float, float, float, float) is not replaced: its binary body matches upstream, so the upstream
// definition stays active and this file does not define it.
//
// Layouts (32-bit offsets). The DH2 gameswf::array<T> is 16 bytes: buffer +0, size +4, capacity +8, and the borrowed
// flag byte at +0x0c that reserve() checks (binary 0x7616b0); container.h models it. mesh (0x30 bytes):
// m_triangle_strip +0x00, m_triangle_list +0x10 (float, DH2), m_triangle_indices +0x20 (DH2). mesh_set (0x14 bytes):
// m_error_tolerance +0x00, m_layers +0x04 (layer is 32 bytes: m_meshes +0x00, m_line_strips +0x10). path (40 bytes):
// upstream member order. line_strip (0x14 bytes): m_style +0x00, m_coords +0x04.

#include "gameswf/gameswf.h"
#include "vendor-gameswf/counted_buffer.hpp"  // DH2 replacement for the #if 0 counted_buffer in gameswf_action.h
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_shape.h"

namespace gameswf {

// 0x7790d0 gameswf::edge::edge(float, float, float, float)  [C2]  upstream, see gameswf_shape.cpp
// 0x7791d8 gameswf::edge::edge(float, float, float, float)  [C1]  upstream, see gameswf_shape.cpp
// Binary per component: __aeabi_fcmpge(v, 0xFF7FFFFF) (v >= -FLT_MAX) and __aeabi_fcmple(v, 0x7F7FFFFF)
// (v <= FLT_MAX), both single precision. The value is stored only when both hold, else 0.0f. FLT_MAX and -FLT_MAX
// are kept; NaN and +/-inf become 0. This is the upstream expression, so no body is written here.

// 0x77b988 gameswf::mesh::add_triangle(float const*)
// Appends six floats to m_triangle_list (+0x10). The binary inlines the array growth: it reserves new + new / 2
// only when the new size is not 0 and is above the capacity, never shrinks, zero-fills the six new slots, and then
// stores the six floats. array::append does the same through resize (the DH2 growth rule in base/container.h).
void mesh::add_triangle(const float pts[6]) {
    m_triangle_list.append(pts, 6);
}

// 0x77bf20 gameswf::mesh::~mesh()
// The binary's body is the three array destructors in reverse member order: m_triangle_indices (+0x20),
// m_triangle_list (+0x10) and m_triangle_strip (+0x00) each get their size set to 0 and their buffer released
// (clear, reserve(0)); the loops it also has run only for a negative size. That is what the members' own
// destructors do after this empty body.
mesh::~mesh() {
}

// 0x77ca1c gameswf::mesh::set_triangles(float const*, int, unsigned short const*, int)
// Verts are appended to m_triangle_list (+0x10) and indices to m_triangle_indices (+0x20), each only when its count is
// above zero, with the same growth as add_triangle (zero-filled new slots, then the copy). The binary returns its last
// loop register; the declaration is void.
void mesh::set_triangles(const float* verts, int float_count, const unsigned short* indices, int index_count) {
    if (float_count > 0) {
        m_triangle_list.append(verts, float_count);
    }
    if (index_count > 0) {
        m_triangle_indices.append(indices, index_count);
    }
}

// 0x77a95c gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*, float)  [C1]
// 0x77abcc gameswf::mesh_set::mesh_set(gameswf::tesselate::tesselating_shape const*, float)  [C2]
// The binary stores the error tolerance, default-constructs m_layers and calls
// gameswf::execute_tesselate(this, sh, err, 0.0), where sh is the shape_character_def that the tesselating_shape
// subobject belongs to (a null argument stays null; the binary subtracts 32 from a non-null one). The static_cast
// below makes the same adjustment. execute_tesselate (0x789d98) is in vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-3.cpp.
// The binary's fourth argument, 0.0, is not in the callee's three-parameter signature and is dropped.
mesh_set::mesh_set(const tesselate::tesselating_shape* sh, float error_tolerance)
    : m_error_tolerance(error_tolerance) {
    execute_tesselate(this, static_cast<const shape_character_def*>(sh), error_tolerance);
}

// 0x7793f8 gameswf::mesh::display(gameswf::base_fill_style const&, float) const
// Passes the mesh to the render handler. A non-empty strip applies the style (fill side 0, the ratio) and draws the
// strip with half its coordinate count as the vertex count. A non-empty triangle list applies the style again and draws
// the list the same way, with the index array (+0x20) and its size (+0x24, the whole count, not halved). The handler
// is used directly and is skipped when it is null; the style is applied either way.
void mesh::display(const base_fill_style& style, float ratio) const {
    if (m_triangle_strip.size() > 0) {
        style.apply(0, ratio);
        if (s_render_handler != NULL) {
            s_render_handler->draw_mesh_strip(&m_triangle_strip[0], m_triangle_strip.size() >> 1);
        }
    }
    if (m_triangle_list.size() > 0) {
        style.apply(0, ratio);
        if (s_render_handler != NULL) {
            s_render_handler->draw_triangle_list(&m_triangle_list[0], m_triangle_list.size() >> 1,
                                                 m_triangle_indices.begin(), m_triangle_indices.size());
        }
    }
}

// 0x779508 gameswf::line_strip::display(gameswf::base_line_style const&, float) const
// Applies the line style with the ratio, then draws the coordinates (+0x04) with half their count as the vertex count.
void line_strip::display(const base_line_style& style, float ratio) const {
    style.apply(ratio);
    if (s_render_handler != NULL) {
        s_render_handler->draw_line_strip(&m_coords[0], m_coords.size() >> 1);
    }
}

// 0x7795ac gameswf::mesh_set::display(gameswf::matrix const&, gameswf::cxform const&,
//          gameswf::array<gameswf::fill_style> const&, gameswf::array<gameswf::line_style> const&) const
// Sets the matrix and then the colour transform on the render handler (each guarded by its own null test, as the two
// inlined forwarders were), then walks the layers: each non-null mesh of a layer is displayed with the fill style of
// its index and ratio 1.0, then each line strip with the line style it names and ratio 1.0. The fill style table is
// indexed by the mesh's slot (84-byte stride), the line style table by the strip's style (108-byte stride).
void mesh_set::display(const matrix& mat, const cxform& cx, const array<fill_style>& fills,
                       const array<line_style>& line_styles) const {
    if (s_render_handler != NULL) {
        s_render_handler->set_matrix(mat);
    }
    if (s_render_handler != NULL) {
        s_render_handler->set_cxform(cx);
    }

    for (int j = 0; j < m_layers.size(); j++) {
        const layer& l = m_layers[j];

        // Dump meshes into renderer, one mesh per style.
        for (int i = 0; i < l.m_meshes.size(); i++) {
            if (l.m_meshes[i]) {
                l.m_meshes[i]->display(fills[i], 1.0f);
            }
        }

        // Dump line-strips into renderer.
        for (int i = 0; i < l.m_line_strips.size(); i++) {
            int style = l.m_line_strips[i]->get_style();
            l.m_line_strips[i]->display(line_styles[style], 1.0f);
        }
    }
}

// 0x7796c8 gameswf::mesh_set::display(gameswf::matrix const&, gameswf::cxform const&,
//          gameswf::array<gameswf::morph_fill_style> const&, gameswf::array<gameswf::morph_line_style> const&, float) const
// The same walk with the morph style tables (156-byte fill stride, 16-byte line stride) and the morph ratio instead
// of 1.0. This overload is in r1714's mesh_set; this copy of gameswf_shape.h did not declare it.
void mesh_set::display(const matrix& mat, const cxform& cx, const array<morph_fill_style>& fills,
                       const array<morph_line_style>& line_styles, float ratio) const {
    if (s_render_handler != NULL) {
        s_render_handler->set_matrix(mat);
    }
    if (s_render_handler != NULL) {
        s_render_handler->set_cxform(cx);
    }

    for (int j = 0; j < m_layers.size(); j++) {
        const layer& l = m_layers[j];

        for (int i = 0; i < l.m_meshes.size(); i++) {
            if (l.m_meshes[i]) {
                l.m_meshes[i]->display(fills[i], ratio);
            }
        }

        for (int i = 0; i < l.m_line_strips.size(); i++) {
            int style = l.m_line_strips[i]->get_style();
            l.m_line_strips[i]->display(line_styles[style], ratio);
        }
    }
}

}  // namespace gameswf
