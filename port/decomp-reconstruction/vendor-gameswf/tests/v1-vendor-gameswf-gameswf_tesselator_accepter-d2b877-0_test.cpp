// Test for batch v1-vendor-gameswf-gameswf_tesselator_accepter-d2b877-0 (gameswf::tesselator_accepter).
//   bash tools/trackb/check_tu.sh --test <this file> <tesselator_accepter .cpp> <tu_string .cpp>
//   (the tu_string source provides the tu_string members that gameswf.h references)
//
// GLU is not in this tree. This file defines recording stand-ins for the GLU entry points the batch
// calls (gluNewTess, gluDeleteTess, gluTessProperty, gluTessCallback, gluTessVertex, gluTessEndPolygon).
// The GLU callbacks are driven directly, the way GLU would call them. The mesh_set functions that
// end_shape(mesh_set*, int) calls (add_line_strip, set_tri_strip, get_mutable_mesh, mesh::set_triangles)
// are recording stand-ins as well.

#include <cstdio>
#include <cstdlib>

#include "gameswf/gameswf_shape.h"
#include "vendor-gameswf/tesselator_accepter.hpp"

// Stand-in tessellator object (the header only forward-declares GLUtesselator).
struct GLUtesselator {
    int unused;
};

namespace {

GLUtesselator g_tess;
int g_failures = 0;
int g_tess_created = 0;
int g_tess_deleted = 0;
int g_vertex_calls = 0;
int g_end_polygon_calls = 0;
double g_winding = -1.0;
double g_boundary = -1.0;
void (*g_callbacks[16])() = {};

#define CHECK(cond)                                                        \
    do {                                                                   \
        if (!(cond)) {                                                     \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
            ++g_failures;                                                  \
        }                                                                  \
    } while (0)

using gameswf::point;
using gameswf::tesselator_accepter;

void reset_stubs() {
    g_tess_created = 0;
    g_tess_deleted = 0;
    g_vertex_calls = 0;
    g_end_polygon_calls = 0;
    g_winding = -1.0;
    g_boundary = -1.0;
    for (auto& cb : g_callbacks) {
        cb = nullptr;
    }
}

template <class F>
void (*as_cb(F f))() {
    return reinterpret_cast<void (*)()>(f);
}

// Feeds n vertices with x = 0 .. n-1 through the GLU vertex callback.
void feed(tesselator_accepter& acc, int n) {
    for (int i = 0; i < n; ++i) {
        double v[3] = {static_cast<double>(i), 0.0, 0.0};
        tesselator_accepter::callback_vertex(v, &acc);
    }
}

bool indices_equal(const array<unsigned short>& idx, const unsigned short* want, int n) {
    if (idx.size() != n) {
        return false;
    }
    for (int i = 0; i < n; ++i) {
        if (idx[i] != want[i]) {
            return false;
        }
    }
    return true;
}

bool x_equal(const array<point>& pts, const float* want, int n) {
    if (pts.size() != n) {
        return false;
    }
    for (int i = 0; i < n; ++i) {
        if (pts[i].m_x != want[i]) {
            return false;
        }
    }
    return true;
}

}  // namespace

// ---- GLU stand-ins ------------------------------------------------------------------------------

GLUtesselator* gluNewTess() {
    ++g_tess_created;
    return &g_tess;
}

void gluDeleteTess(GLUtesselator*) {
    ++g_tess_deleted;
}

void gluTessProperty(GLUtesselator*, int which, double value) {
    if (which == 100140) {  // GLU_TESS_WINDING_RULE
        g_winding = value;
    } else if (which == 100141) {  // GLU_TESS_BOUNDARY_ONLY
        g_boundary = value;
    }
}

void gluTessCallback(GLUtesselator*, int which, void (*callback)()) {
    g_callbacks[which - 100100] = callback;
}

void gluTessVertex(GLUtesselator*, double*, void*) {
    ++g_vertex_calls;
}

void gluTessEndPolygon(GLUtesselator*) {
    ++g_end_polygon_calls;
}

// ---- mesh_set stand-ins (upstream gameswf_shape.cpp is not linked) ---------------------------------------------

namespace {

struct MeshLog {
    int line_strips = 0;
    int line_style = -1;
    int line_count = 0;
    float line_first_x = 0.0f;
    int tri_strips = 0;
    int strip_style = -1;
    int strip_count = 0;
    int meshes = 0;
    int mesh_style = -1;
    int triangle_calls = 0;
    int float_count = 0;
    int index_count = 0;
    float first_float = 0.0f;
    unsigned short last_index = 0;
    void clear() { *this = MeshLog(); }
};
MeshLog g_mesh_log;
alignas(16) unsigned char g_mesh_storage[64];  // the stand-in functions never touch the mesh_set or the mesh

}  // namespace

void gameswf::mesh_set::add_line_strip(int style, const point coords[], int coord_count) {
    ++g_mesh_log.line_strips;
    g_mesh_log.line_style = style;
    g_mesh_log.line_count = coord_count;
    g_mesh_log.line_first_x = coord_count > 0 ? coords[0].m_x : -1.0f;
}

void gameswf::mesh_set::set_tri_strip(int style, const point pts[], int count) {
    (void)pts;
    ++g_mesh_log.tri_strips;
    g_mesh_log.strip_style = style;
    g_mesh_log.strip_count = count;
}

gameswf::mesh* gameswf::mesh_set::get_mutable_mesh(int style) {
    ++g_mesh_log.meshes;
    g_mesh_log.mesh_style = style;
    return reinterpret_cast<gameswf::mesh*>(g_mesh_storage);
}

void gameswf::mesh::set_triangles(const float* verts, int float_count, const unsigned short* indices, int index_count) {
    ++g_mesh_log.triangle_calls;
    g_mesh_log.float_count = float_count;
    g_mesh_log.index_count = index_count;
    g_mesh_log.first_float = float_count > 0 ? verts[0] : -1.0f;
    g_mesh_log.last_index = index_count > 0 ? indices[index_count - 1] : 0;
}


// ---- tests --------------------------------------------------------------------------------------

namespace {

void test_constructor() {
    reset_stubs();
    {
        tesselator_accepter acc(false, true, true);
        CHECK(g_tess_created == 1);
        CHECK(g_winding == 100134.0);
        CHECK(g_boundary == 1.0);
        CHECK(g_callbacks[6] == as_cb(&tesselator_accepter::callback_begin));     // BEGIN_DATA 100106
        CHECK(g_callbacks[7] == as_cb(&tesselator_accepter::callback_vertex));    // VERTEX_DATA 100107
        CHECK(g_callbacks[8] == as_cb(&tesselator_accepter::callback_end_tris));  // END_DATA, strip clear
        CHECK(g_callbacks[9] == as_cb(&tesselator_accepter::callback_error));     // ERROR_DATA 100109
        CHECK(g_callbacks[11] == as_cb(&tesselator_accepter::callback_combine));  // COMBINE_DATA 100111
        CHECK(g_tess_deleted == 0);
    }
    CHECK(g_tess_deleted == 1);

    reset_stubs();
    {
        tesselator_accepter acc(true, false, false);
        CHECK(g_winding == 100130.0);
        CHECK(g_boundary == 0.0);
        CHECK(g_callbacks[8] == as_cb(&tesselator_accepter::callback_end_strip));
    }
    CHECK(g_tess_deleted == 1);
}

void test_init_returns_this() {
    reset_stubs();
    tesselator_accepter acc(false, false, false);
    CHECK(acc.init() == &acc);
}

// Triangle-list path: GLU begin/vertex/end callbacks, then end_shape copies the output.
void run_tris(int mode, int n, array<point>& pts, array<unsigned short>& idx) {
    tesselator_accepter acc(false, false, false);
    acc.init();
    tesselator_accepter::callback_begin(mode, &acc);
    feed(acc, n);
    tesselator_accepter::callback_end_tris(&acc);
    acc.end_shape(pts, idx);
}

void test_tris_modes() {
    reset_stubs();
    {
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::TRIANGLES, 6, pts, idx);
        const unsigned short want[6] = {0, 1, 2, 3, 4, 5};
        const float wx[6] = {0, 1, 2, 3, 4, 5};
        CHECK(pts.size() == 6);
        CHECK(x_equal(pts, wx, 6));
        CHECK(indices_equal(idx, want, 6));
        CHECK(g_end_polygon_calls == 1);
    }
    {
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::TRIANGLE_STRIP, 5, pts, idx);
        const unsigned short want[9] = {0, 1, 2, 1, 2, 3, 2, 3, 4};
        CHECK(pts.size() == 5);
        CHECK(indices_equal(idx, want, 9));
    }
    {
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::TRIANGLE_FAN, 5, pts, idx);
        const unsigned short want[9] = {0, 1, 2, 0, 2, 3, 0, 3, 4};
        CHECK(pts.size() == 5);
        CHECK(indices_equal(idx, want, 9));
    }
    {
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::LINE_LOOP, 3, pts, idx);
        const float wx[4] = {0, 1, 2, 0};
        CHECK(x_equal(pts, wx, 4));
        CHECK(idx.size() == 0);
    }
    {
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::LINE_STRIP, 3, pts, idx);
        const float wx[3] = {0, 1, 2};
        CHECK(x_equal(pts, wx, 3));
        CHECK(idx.size() == 0);
    }
    {
        // An unknown mode (POINTS) emits nothing.
        array<point> pts;
        array<unsigned short> idx;
        run_tris(gl_prim::POINTS, 3, pts, idx);
        CHECK(pts.size() == 0);
        CHECK(idx.size() == 0);
    }
}

// Strip path: several primitives feed one output before end_shape reads it.
void test_strip_modes() {
    reset_stubs();
    {
        tesselator_accepter acc(true, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLES, &acc);
        feed(acc, 6);
        tesselator_accepter::callback_end_strip(&acc);
        array<point> pts;
        array<unsigned short> idx;
        acc.end_shape(pts, idx);
        const float want[8] = {0, 1, 2, 2, 3, 3, 4, 5};
        CHECK(x_equal(pts, want, 8));
        CHECK(idx.size() == 0);  // strip mode copies no indices
        CHECK(g_end_polygon_calls == 1);
    }
    {
        // Second primitive joins onto the first: last output point repeated, then its first point.
        tesselator_accepter acc(true, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLE_STRIP, &acc);
        feed(acc, 3);
        tesselator_accepter::callback_end_strip(&acc);
        tesselator_accepter::callback_begin(gl_prim::TRIANGLE_STRIP, &acc);
        double a[3] = {10.0, 0.0, 0.0};
        double b[3] = {11.0, 0.0, 0.0};
        tesselator_accepter::callback_vertex(a, &acc);
        tesselator_accepter::callback_vertex(b, &acc);
        tesselator_accepter::callback_end_strip(&acc);
        array<point> pts;
        array<unsigned short> idx;
        acc.end_shape(pts, idx);
        const float want[7] = {0, 1, 2, 2, 10, 10, 11};
        CHECK(x_equal(pts, want, 7));
    }
    {
        tesselator_accepter acc(true, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLE_FAN, &acc);
        feed(acc, 5);
        tesselator_accepter::callback_end_strip(&acc);
        array<point> pts;
        array<unsigned short> idx;
        acc.end_shape(pts, idx);
        const float want[6] = {1, 0, 2, 3, 0, 4};
        CHECK(x_equal(pts, want, 6));
    }
    {
        // An empty vertex array leaves the output alone.
        tesselator_accepter acc(true, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLE_STRIP, &acc);
        tesselator_accepter::callback_end_strip(&acc);
        array<point> pts;
        array<unsigned short> idx;
        acc.end_shape(pts, idx);
        CHECK(pts.size() == 0);
    }
}

void test_direct_points() {
    reset_stubs();
    tesselator_accepter acc(false, true, false);
    acc.init();
    tesselator_accepter::callback_begin(gl_prim::LINE_STRIP, &acc);
    point p0(0.5f, -1.0f);
    point p1(1.5f, 2.0f);
    point p2(2.5f, 3.0f);
    acc.add_point(p0);
    acc.add_point(p1);
    acc.add_point(p2);
    CHECK(g_vertex_calls == 0);  // direct mode keeps the points itself
    tesselator_accepter::callback_end_tris(&acc);
    array<point> pts;
    array<unsigned short> idx;
    acc.end_shape(pts, idx);
    CHECK(pts.size() == 3);
    CHECK(pts.size() == 3 && pts[0].m_x == 0.5f && pts[0].m_y == -1.0f);
    CHECK(pts.size() == 3 && pts[2].m_x == 2.5f && pts[2].m_y == 3.0f);
}

void test_glu_points() {
    reset_stubs();
    tesselator_accepter acc(false, false, false);
    acc.init();
    point p(7.0f, 8.0f);
    acc.add_point(p);
    point q(9.0f, 10.0f);
    acc.add_point(q);
    CHECK(g_vertex_calls == 2);  // without direct mode every point goes to gluTessVertex
}

void test_pool_and_combine() {
    reset_stubs();
    tesselator_accepter acc(false, false, false);
    acc.init();
    double c1[3] = {1.0, 2.0, 3.0};
    double c2[3] = {4.0, 5.0, 6.0};
    void* o1 = nullptr;
    void* o2 = nullptr;
    tesselator_accepter::callback_combine(c1, nullptr, nullptr, &o1, &acc);
    tesselator_accepter::callback_combine(c2, nullptr, nullptr, &o2, &acc);
    const double* s1 = static_cast<const double*>(o1);
    const double* s2 = static_cast<const double*>(o2);
    CHECK(s1[0] == 1.0 && s1[1] == 2.0 && s1[2] == 3.0);
    CHECK(s2[0] == 4.0 && s2[1] == 5.0 && s2[2] == 6.0);
    CHECK(static_cast<const char*>(o2) - static_cast<const char*>(o1) == 24);  // 24-byte slots

    // init() resets the pool count, so the next combine reuses the first slot.
    acc.init();
    void* o3 = nullptr;
    tesselator_accepter::callback_combine(c2, nullptr, nullptr, &o3, &acc);
    CHECK(o3 == o1);
}

void test_vertex_and_begin() {
    reset_stubs();
    tesselator_accepter acc(false, false, false);
    acc.init();
    tesselator_accepter::callback_begin(gl_prim::LINE_STRIP, &acc);
    double v[3] = {1.5, -2.25, 0.0};
    tesselator_accepter::callback_vertex(v, &acc);
    tesselator_accepter::callback_end_tris(&acc);
    array<point> pts;
    array<unsigned short> idx;
    acc.end_shape(pts, idx);
    CHECK(pts.size() == 1);
    CHECK(pts.size() == 1 && pts[0].m_x == 1.5f && pts[0].m_y == -2.25f);

    // A begin callback empties the vertex array (vertices from before it are dropped).
    tesselator_accepter::callback_vertex(v, &acc);
    tesselator_accepter::callback_begin(gl_prim::LINE_STRIP, &acc);
    tesselator_accepter::callback_end_tris(&acc);
    array<point> pts2;
    array<unsigned short> idx2;
    acc.end_shape(pts2, idx2);
    CHECK(pts2.size() == 0);
}

}  // namespace

gameswf::mesh_set* fake_mesh_set() {
    return reinterpret_cast<gameswf::mesh_set*>(g_mesh_storage);
}

void test_end_shape_into_mesh_set() {
    // Direct mode (line strips): the output is flushed through callback_end_tris, then handed to add_line_strip for the
    // style when it has more than one point; the output is emptied.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(false, true, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::LINE_STRIP, &acc);
        point p0(0.5f, 0.0f), p1(1.5f, 1.0f), p2(2.5f, 2.0f);
        acc.add_point(p0);
        acc.add_point(p1);
        acc.add_point(p2);
        acc.end_shape(fake_mesh_set(), 7);
        CHECK(g_end_polygon_calls == 1);
        CHECK(g_mesh_log.line_strips == 1 && g_mesh_log.line_style == 7 && g_mesh_log.line_count == 3);
        CHECK(g_mesh_log.line_first_x == 0.5f);
        CHECK(g_mesh_log.tri_strips == 0 && g_mesh_log.meshes == 0);
        array<point> pts;
        array<unsigned short> idx;
        acc.end_shape(pts, idx);
        CHECK(pts.size() == 0);  // emptied by the mesh set path
    }
    // Direct mode with one point: no line strip.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(false, true, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::LINE_STRIP, &acc);
        point p0(0.5f, 0.0f);
        acc.add_point(p0);
        acc.end_shape(fake_mesh_set(), 1);
        CHECK(g_mesh_log.line_strips == 0 && g_mesh_log.tri_strips == 0 && g_mesh_log.meshes == 0);
    }
    // Strip mode: the points go to set_tri_strip.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(true, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLE_STRIP, &acc);
        feed(acc, 4);
        tesselator_accepter::callback_end_strip(&acc);
        acc.end_shape(fake_mesh_set(), 3);
        CHECK(g_mesh_log.tri_strips == 1 && g_mesh_log.strip_style == 3 && g_mesh_log.strip_count == 4);
        CHECK(g_mesh_log.line_strips == 0 && g_mesh_log.meshes == 0);
    }
    // Strip mode with nothing in the output: nothing.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(true, false, false);
        acc.init();
        acc.end_shape(fake_mesh_set(), 3);
        CHECK(g_mesh_log.tri_strips == 0 && g_mesh_log.meshes == 0 && g_mesh_log.line_strips == 0);
    }
    // Neither flag (triangle lists): the points as floats (two per point) and the indices go to the mesh of the style.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(false, false, false);
        acc.init();
        tesselator_accepter::callback_begin(gl_prim::TRIANGLES, &acc);
        feed(acc, 6);
        tesselator_accepter::callback_end_tris(&acc);
        acc.end_shape(fake_mesh_set(), 2);
        CHECK(g_mesh_log.meshes == 1 && g_mesh_log.mesh_style == 2);
        CHECK(g_mesh_log.triangle_calls == 1 && g_mesh_log.float_count == 12 && g_mesh_log.index_count == 6);
        CHECK(g_mesh_log.first_float == 0.0f && g_mesh_log.last_index == 5);
    }
    // Neither flag and no points: nothing is made.
    {
        reset_stubs();
        g_mesh_log.clear();
        tesselator_accepter acc(false, false, false);
        acc.init();
        acc.end_shape(fake_mesh_set(), 2);
        CHECK(g_mesh_log.meshes == 0 && g_mesh_log.triangle_calls == 0);
    }
}

int main() {
    test_end_shape_into_mesh_set();
    test_constructor();
    test_init_returns_this();
    test_tris_modes();
    test_strip_modes();
    test_direct_points();
    test_glu_points();
    test_pool_and_combine();
    test_vertex_and_begin();
    if (g_failures == 0) {
        std::printf("tesselator_accepter: all checks passed\n");
        return 0;
    }
    std::printf("tesselator_accepter: %d failure(s)\n", g_failures);
    return 1;
}
