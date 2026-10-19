// Batch v1-vendor-gameswf-gameswf_tesselator_accepter-d2b877-0: gameswf::tesselator_accepter.
//
// Gameloft class, not in upstream gameswf r1714. Declared in
// vendor-gameswf/include/vendor-gameswf/tesselator_accepter.hpp; the GLU calls go to the tessellator
// declared in glu_tessellator.hpp. The mesh_set and mesh calls use the upstream declarations in
// gameswf/gameswf_shape.h, plus mesh::set_triangles (a DH2 addition marked there). Every function of the batch is complete.
// The returns of the listings (add_point, the callbacks) are the register left over by the last operation, not values: the
// functions are void, as in upstream.
//
// Vertex pool. The binary's static gameswf::s_tesselator_accepter_allocator (196616 bytes, LOCAL) is a
// block of 24-byte vertex slots: x, y, z as doubles, which is the layout GLU reads for a vertex
// (double[3]). The slot count dword_A2C9F0 sits at byte 196608, just after the 8192 slots. add_point
// stores its point in the same slots (the binary's gameswf::tesselate_new::s_accepter symbol is a
// 4-byte pointer 24 bytes before the block; &s_accepter[6] is the block's first slot). The pool is
// process-wide, so GLU vertex data and point storage share it.
//
// The pool has no bounds check, as in the binary: more than 8192 slots between init() calls overruns it.

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_shape.h"  // mesh_set, mesh
#include "vendor-gameswf/glu_tessellator.hpp"
#include "vendor-gameswf/tesselator_accepter.hpp"

namespace gameswf {
namespace {

struct vertex_pool {
    static constexpr int kSlots = 8192;
    double slot[kSlots][3];  // +0x00, 24 bytes per slot
    int count;               // +0x30000, dword_A2C9F0
};

vertex_pool s_pool{};

// Copies src into dst: dst takes src's size and elements (the binary's end_shape copy).
template <class T>
void copy_array(array<T>& dst, const array<T>& src) {
    dst.resize(src.size());
    for (int i = 0; i < src.size(); ++i) {
        dst[i] = src[i];
    }
}

// Appends every element of src to dst the way the listing does: the array is resized to the new size (growing by one and a
// half times above the capacity) and the elements are copied.
template <class T>
void append_array(array<T>& dst, const array<T>& src) {
    const int count = src.size();
    if (count > 0) {
        const int old_size = dst.size();
        dst.resize(old_size + count);
        for (int i = 0; i < count; ++i) {
            dst[old_size + i] = src[i];
        }
    }
}

}  // namespace

// 0x7854f8 gameswf::tesselator_accepter::callback_combine(double*, void**, float*, void**, gameswf::tesselator_accepter*)
//   Takes the next pool slot, zeroes it, then copies the three doubles of the new vertex into it and
//   returns the slot as the output vertex pointer. data, weight and the polygon data are not read.
//   The Hex-Rays return value (the coords pointer in r0) is not reproduced: GLU ignores callback returns.
void tesselator_accepter::callback_combine(double* coords, void** data, float* weight, void** out_data,
                                           tesselator_accepter* self) {
    (void)data;
    (void)weight;
    (void)self;
    const int v5 = s_pool.count;
    double* slot = s_pool.slot[v5];
    slot[0] = 0.0;
    slot[1] = 0.0;
    slot[2] = 0.0;
    s_pool.count = v5 + 1;
    slot[0] = coords[0];
    slot[1] = coords[1];
    slot[2] = coords[2];
    *out_data = slot;
}

// 0x78558c gameswf::tesselator_accepter::callback_error(int, gameswf::tesselator_accepter*)
//   Empty (4 bytes, bx lr). Errors from GLU are dropped.
void tesselator_accepter::callback_error(int error, tesselator_accepter* self) {
    (void)error;
    (void)self;
}

// 0x7859a0 gameswf::tesselator_accepter::tesselator_accepter(bool, bool, bool)   [C1]
//   The first argument is the strip flag (+0x35), the second the direct flag (+0x34). The third selects
//   GLU_TESS_WINDING_ABS_GEQ_TWO (100134) when set, GLU_TESS_WINDING_ODD (100130) when clear. The
//   boundary-only property is the direct flag as 1.0 or 0.0. Callbacks: BEGIN_DATA, VERTEX_DATA,
//   COMBINE_DATA, ERROR_DATA, then END_DATA, which is callback_end_strip for the strip flag and
//   callback_end_tris otherwise. The vertex and output arrays and the two padding bytes are zeroed; the
//   type at +0x00 is not set by the constructor and is left at 0 here.
tesselator_accepter::tesselator_accepter(bool strip, bool direct, bool winding_abs_geq_two)
    : m_type(0),
      m_vertices(),
      m_points(),
      m_indices(),
      m_direct(direct),
      m_strip(strip),
      m_tess(nullptr) {
    m_tess = gluNewTess();
    gluTessProperty(m_tess, glu::TESS_WINDING_RULE,
                    winding_abs_geq_two ? glu::TESS_WINDING_ABS_GEQ_TWO : glu::TESS_WINDING_ODD);
    gluTessProperty(m_tess, glu::TESS_BOUNDARY_ONLY, direct ? 1.0 : 0.0);
    gluTessCallback(m_tess, glu::TESS_BEGIN_DATA,
                    reinterpret_cast<void (*)()>(&tesselator_accepter::callback_begin));
    gluTessCallback(m_tess, glu::TESS_VERTEX_DATA,
                    reinterpret_cast<void (*)()>(&tesselator_accepter::callback_vertex));
    gluTessCallback(m_tess, glu::TESS_COMBINE_DATA,
                    reinterpret_cast<void (*)()>(&tesselator_accepter::callback_combine));
    gluTessCallback(m_tess, glu::TESS_ERROR_DATA,
                    reinterpret_cast<void (*)()>(&tesselator_accepter::callback_error));
    gluTessCallback(m_tess, glu::TESS_END_DATA,
                    reinterpret_cast<void (*)()>(strip ? &tesselator_accepter::callback_end_strip
                                                       : &tesselator_accepter::callback_end_tris));
}

// 0x786cc8 gameswf::tesselator_accepter::callback_vertex(void const*, gameswf::tesselator_accepter*)
//   Appends the vertex's x and y, as floats, to the vertex array (+0x04). The Hex-Rays return value
//   (float y in r0) is not reproduced; GLU ignores callback returns.
void tesselator_accepter::callback_vertex(const void* vertex, tesselator_accepter* self) {
    const double* v = static_cast<const double*>(vertex);
    self->m_vertices.push_back(point(static_cast<float>(v[0]), static_cast<float>(v[1])));
}

// 0x7871f4 gameswf::tesselator_accepter::callback_begin(int, gameswf::tesselator_accepter*)
//   Stores the primitive mode at +0x00 and empties the vertex array.
void tesselator_accepter::callback_begin(int type, tesselator_accepter* self) {
    self->m_type = type;
    self->m_vertices.clear();
}

// 0x787578 gameswf::tesselator_accepter::init()
//   Resets the pool count (dword_A2C9F0) and empties the vertex, output and index arrays. Returns this.
//   The binary's loops that zero entries for a negative count are not reproduced: a count is never
//   negative.
tesselator_accepter* tesselator_accepter::init() {
    s_pool.count = 0;
    m_vertices.clear();
    m_points.clear();
    m_indices.clear();
    return this;
}

// 0x78810c gameswf::tesselator_accepter::~tesselator_accepter()   [D1]
//   Deletes the GLU tessellator, then empties the index, output and vertex arrays (freeing their
//   buffers), in the binary's order.
tesselator_accepter::~tesselator_accepter() {
    gluDeleteTess(m_tess);
    m_indices.clear();
    m_points.clear();
    m_vertices.clear();
}

// 0x788264 gameswf::tesselator_accepter::add_point(gameswf::point&)
//   Stores the point in the next pool slot (x, y as doubles, z = 0) and advances the count. Without the
//   direct flag, the slot is passed to GLU as both location and vertex data. With it, the point is
//   appended to the vertex array as floats.
//   The listing's float return is the register left over by the last operation: gluTessVertex's r0 on the GLU path, the y
//   coordinate on the direct path (loaded last, as the value of the append). Nothing in the tree reads it; the function is void.
void tesselator_accepter::add_point(point& p) {
    const int v5 = s_pool.count;
    s_pool.count = v5 + 1;
    double* slot = s_pool.slot[v5];
    slot[0] = p.m_x;
    slot[1] = p.m_y;
    slot[2] = 0.0;
    if (!m_direct) {
        gluTessVertex(m_tess, slot, slot);
        return;
    }
    m_vertices.push_back(point(static_cast<float>(slot[0]), static_cast<float>(slot[1])));
}

// 0x788360 gameswf::tesselator_accepter::callback_end_strip(gameswf::tesselator_accepter*)
//   Strip-mode END callback. Does nothing when the vertex array is empty. Otherwise, when the output
//   is not empty, it repeats the last output point (a degenerate join), then expands the vertices by
//   primitive mode:
//     5 (strip):  if output is non-empty, appends vertex 0; then appends every vertex.
//     6 (fan):    if output is non-empty, appends vertex 1; with more than 3 vertices, appends
//                 1, 0, 2, 3, then for k = 4.. appends 0, k.
//     4 (tris):   if output is non-empty, appends vertex 0; then for each triangle g (step 3) appends
//                 g, g+1, g+2, and when another triangle follows, appends g+2 and g+3 (the next
//                 triangle's first vertex is written again by its own pass).
//   Other modes append nothing.
//   The binary reads vertex entries past the end when the vertex count is not a multiple of 3 (tris) and, in fan mode with
//   output present, when there is a single vertex. GLU never ends a triangle batch that way (it gives whole triangles and fans
//   of at least three vertices), and those reads are stale memory; this body reads only valid entries in those cases.
void tesselator_accepter::callback_end_strip(tesselator_accepter* self) {
    array<point>& in = self->m_vertices;
    array<point>& out = self->m_points;
    if (in.size() == 0) {
        return;
    }

    // Repeat the last output point so the new primitive starts with a degenerate join.
    if (out.size() > 0) {
        point last = out.back();
        out.push_back(last);
    }

    switch (self->m_type) {
    case gl_prim::TRIANGLE_STRIP:  // 5
        if (out.size() > 0) {
            out.push_back(in[0]);
        }
        append_array(out, in);
        break;

    case gl_prim::TRIANGLE_FAN:  // 6
        if (out.size() > 0 && in.size() > 1) {
            out.push_back(in[1]);
        }
        if (in.size() > 3) {
            out.push_back(in[1]);
            out.push_back(in[0]);
            out.push_back(in[2]);
            out.push_back(in[3]);
            for (int k = 4; k < in.size(); ++k) {
                out.push_back(in[0]);
                out.push_back(in[k]);
            }
        }
        break;

    case gl_prim::TRIANGLES:  // 4
        if (out.size() > 0) {
            out.push_back(in[0]);
        }
        for (int g = 0; g < in.size(); g += 3) {
            for (int k = 0; k < 3 && g + k < in.size(); ++k) {
                out.push_back(in[g + k]);
            }
            if (g + 3 < in.size()) {
                out.push_back(in[g + 2]);  // repeat the triangle's last point (the binary copies it from the output)
                out.push_back(in[g + 3]);  // the next triangle's first point; its own pass writes it again
            }
        }
        break;

    default:
        break;
    }
}

// 0x7887a8 gameswf::tesselator_accepter::end_shape(gameswf::array<gameswf::point>&, gameswf::array<unsigned short>&)
//   Calls gluTessEndPolygon, copies the output points into out_points and, unless strip, the indices
//   into out_indices, then empties the output points.
void tesselator_accepter::end_shape(array<point>& out_points, array<unsigned short>& out_indices) {
    gluTessEndPolygon(m_tess);
    copy_array(out_points, m_points);
    if (!m_strip) {
        copy_array(out_indices, m_indices);
    }
    m_points.clear();
}

// 0x788cac gameswf::tesselator_accepter::callback_end_tris(gameswf::tesselator_accepter*)
//   Triangle-list END callback (also used for direct mode). The index base is the output count on
//   entry, truncated to 16 bits. By primitive mode:
//     2 (line loop): appends every vertex, then vertex 0.
//     3 (line strip): appends every vertex.
//     4 (tris):      appends every vertex and an index base+i for each.
//     5 (strip):     appends every vertex; for k = 0 .. n-3 indices base+k, base+k+1, base+k+2.
//     6 (fan):       appends every vertex; for k = 0 .. n-3 indices base, base+1+k, base+2+k.
//   Other modes do nothing.
//   A line loop with no vertices makes the binary append whatever it finds at vertex buffer[0] (stale memory, or a null
//   read); GLU never ends an empty loop, and this body appends nothing in that case.
void tesselator_accepter::callback_end_tris(tesselator_accepter* self) {
    array<point>& in = self->m_vertices;
    array<point>& out = self->m_points;
    array<unsigned short>& idx = self->m_indices;
    const unsigned short base = static_cast<unsigned short>(out.size());

    switch (self->m_type) {
    case gl_prim::LINE_LOOP:  // 2
        append_array(out, in);
        if (in.size() > 0) {
            out.push_back(in[0]);
        }
        break;

    case gl_prim::LINE_STRIP:  // 3
        append_array(out, in);
        break;

    case gl_prim::TRIANGLES:  // 4
        append_array(out, in);
        for (int i = 0; i < in.size(); ++i) {
            idx.push_back(static_cast<unsigned short>(base + i));
        }
        break;

    case gl_prim::TRIANGLE_STRIP:  // 5
        append_array(out, in);
        for (int k = 0; k + 2 < in.size(); ++k) {
            idx.push_back(static_cast<unsigned short>(base + k));
            idx.push_back(static_cast<unsigned short>(base + k + 1));
            idx.push_back(static_cast<unsigned short>(base + k + 2));
        }
        break;

    case gl_prim::TRIANGLE_FAN:  // 6
        append_array(out, in);
        for (int k = 0; k + 2 < in.size(); ++k) {
            idx.push_back(base);
            idx.push_back(static_cast<unsigned short>(base + 1 + k));
            idx.push_back(static_cast<unsigned short>(base + 2 + k));
        }
        break;

    default:
        break;
    }
}

// 0x789298 gameswf::tesselator_accepter::end_shape(gameswf::mesh_set*, int)
//   Calls gluTessEndPolygon, then:
//     direct flag:  callback_end_tris, then the output as a line strip for style when it has more
//                   than one point.
//     strip flag:   the output points as a triangle strip for style, when there are any.
//     otherwise:    the output points (two floats each) and the indices as a triangle list in
//                   get_mutable_mesh(style), when there are any points.
//   The output points are emptied in every case.
//   mesh_set::add_line_strip, mesh_set::set_tri_strip, mesh_set::get_mutable_mesh and mesh::set_triangles come from
//   gameswf/gameswf_shape.h.
void tesselator_accepter::end_shape(mesh_set* out, int style) {
    gluTessEndPolygon(m_tess);
    if (m_direct) {
        callback_end_tris(this);
        if (m_points.size() > 1) {
            out->add_line_strip(style, m_points.begin(), m_points.size());
        }
    } else if (m_strip) {
        if (m_points.size() > 0) {
            out->set_tri_strip(style, m_points.begin(), m_points.size());
        }
    } else if (m_points.size() > 0) {
        mesh* target = out->get_mutable_mesh(style);
        target->set_triangles(reinterpret_cast<const float*>(m_points.begin()), 2 * m_points.size(),
                              m_indices.begin(), m_indices.size());
    }
    m_points.clear();
}

}  // namespace gameswf
