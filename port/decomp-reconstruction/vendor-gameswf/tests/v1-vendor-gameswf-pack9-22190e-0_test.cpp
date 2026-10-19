// Test for batch v1-vendor-gameswf-pack9-22190e-0 (gameswf::final_shape: add_curve, merge_segment, end_path,
// the segment push_back and the destructor).
// (the test-support file gives the containers their allocator: gameswf::malloc_internal and friends).
//
// The batch .cpp also holds triangle_intersector and flush. Those call the GLU tessellator and the
// tesselator_accepter bodies (another batch). This test supplies no-op stand-ins for exactly those symbols so the
// .cpp links. Only the final_shape logic runs for real; process and flush are not exercised. The curve body
// (0x786670) is in upstream gameswf_tesselate.cpp and is not linked here.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack9-22190e-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp

#include <cstdio>
#include <initializer_list>
#include <utility>

#include "gameswf/gameswf.h"
#include "vendor-gameswf/final_shape.hpp"
#include "vendor-gameswf/glu_tessellator.hpp"
#include "vendor-gameswf/tesselator_accepter.hpp"

// ---- stand-ins for the callees the batch .cpp references (not run by this test) ----

namespace gameswf {

tesselator_accepter::tesselator_accepter(bool, bool, bool) {}
tesselator_accepter::~tesselator_accepter() {}
tesselator_accepter* tesselator_accepter::init() { return this; }
void tesselator_accepter::add_point(point&) {}
void tesselator_accepter::end_shape(array<point>&, array<unsigned short>&) {}
void tesselator_accepter::end_shape(mesh_set*, int) {}

}  // namespace gameswf

void gluTessBeginPolygon(GLUtesselator*, void*) {}
void gluTessBeginContour(GLUtesselator*) {}
void gluTessEndContour(GLUtesselator*) {}

// gameswf.h's inline code references these tu_string members (base/container.h declares them). Their bodies are
// the tu_string batch's, which is partial in this tree, so they are not linked here. Stand-ins only; the test does
// not call them.
void tu_string::operator+=(const char*) {}
void tu_string::operator+=(const tu_string&) {}
bool tu_string::operator==(const tu_string&) const { return false; }
void tu_string::resize(int) {}
int tu_string::utf8_char_count(const char*, int) { return 0; }

// ---- helpers ----

using ::array;
using gameswf::final_shape;
using gameswf::point;

static int g_fail = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);              \
            ++g_fail;                                                        \
        }                                                                    \
    } while (0)

static final_shape::segment seg(std::initializer_list<std::pair<float, float>> pts) {
    final_shape::segment s;
    for (const auto& p : pts) {
        s.m_points.push_back(point(p.first, p.second));
    }
    return s;
}

static bool same(const array<point>& a, std::initializer_list<std::pair<float, float>> pts) {
    if (a.size() != static_cast<int>(pts.size())) {
        return false;
    }
    int i = 0;
    for (const auto& p : pts) {
        if (a[i].m_x != p.first || a[i].m_y != p.second) {
            return false;
        }
        ++i;
    }
    return true;
}

// ---- add_curve (0x786fac) ----

static void test_add_curve_flat() {
    final_shape fs{};
    fs.m_tolerance = 1.0f;
    // Control point on the chord: flatness 0, so the curve is one leaf and only the end point is stored.
    fs.add_curve(0.0f, 0.0f, 5.0f, 0.0f, 10.0f, 0.0f);
    CHECK(fs.m_cur.m_points.size() == 1);
    CHECK(same(fs.m_cur.m_points, {{10.0f, 0.0f}}));
    CHECK(fs.m_last.m_x == 10.0f && fs.m_last.m_y == 0.0f);
}

static void test_add_curve_curved() {
    final_shape fs{};
    fs.m_tolerance = 1.0f;
    // Bent control point: the curve is split, so several leaf end points are stored and the last is the end point.
    fs.add_curve(0.0f, 0.0f, 5.0f, 10.0f, 10.0f, 0.0f);
    CHECK(fs.m_cur.m_points.size() > 1);
    const int n = fs.m_cur.m_points.size();
    CHECK(fs.m_cur.m_points[n - 1].m_x == 10.0f && fs.m_cur.m_points[n - 1].m_y == 0.0f);
    CHECK(fs.m_last.m_x == 10.0f && fs.m_last.m_y == 0.0f);
}

// ---- merge_segment (0x78956c): one case per branch, plus the no-join and empty-segment cases ----

static void test_merge_case_a() {
    // s starts where cur ends: cur's last point is dropped and s is appended to cur; the result replaces s.
    final_shape fs{};
    fs.m_segments.push_back(seg({{2.0f, 0.0f}, {3.0f, 0.0f}}));
    fs.m_cur = seg({{0.0f, 0.0f}, {2.0f, 0.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 1);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {2.0f, 0.0f}, {3.0f, 0.0f}}));
}

static void test_merge_case_b() {
    // Both end at the same point: cur drops its last point, is reversed, and is appended to s.
    final_shape fs{};
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{5.0f, 0.0f}, {1.0f, 0.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 1);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {1.0f, 0.0f}, {5.0f, 0.0f}}));
}

static void test_merge_case_c() {
    // s ends where cur starts: s drops its last point and cur is appended to it.
    final_shape fs{};
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{1.0f, 0.0f}, {2.0f, 0.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 1);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {1.0f, 0.0f}, {2.0f, 0.0f}}));
}

static void test_merge_case_d() {
    // Both start at the same point: cur is reversed, drops its old first point, and s is appended to it.
    final_shape fs{};
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{0.0f, 0.0f}, {5.0f, 0.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 1);
    CHECK(same(fs.m_segments[0].m_points, {{5.0f, 0.0f}, {0.0f, 0.0f}, {1.0f, 0.0f}}));
}

static void test_merge_no_join() {
    final_shape fs{};
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{7.0f, 7.0f}, {8.0f, 8.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 0);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {1.0f, 0.0f}}));
}

static void test_merge_no_segments() {
    final_shape fs{};
    fs.m_cur = seg({{0.0f, 0.0f}, {1.0f, 0.0f}});
    CHECK(fs.merge_segment(&fs.m_cur) == 0);
}

// ---- end_path (0x789cfc) and the segment push_back (0x787eec) ----

static void test_end_path_keep() {
    final_shape fs{};
    fs.m_keep_segments = true;
    fs.m_cur = seg({{0.0f, 0.0f}, {1.0f, 0.0f}});
    fs.end_path();
    CHECK(fs.m_segments.size() == 1);
    CHECK(fs.m_cur.m_points.size() == 0);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {1.0f, 0.0f}}));
}

static void test_end_path_merges() {
    final_shape fs{};
    fs.m_keep_segments = false;
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{1.0f, 0.0f}, {2.0f, 0.0f}});
    fs.end_path();
    CHECK(fs.m_segments.size() == 1);
    CHECK(fs.m_cur.m_points.size() == 0);
    CHECK(same(fs.m_segments[0].m_points, {{0.0f, 0.0f}, {1.0f, 0.0f}, {2.0f, 0.0f}}));
}

static void test_end_path_no_merge_pushes() {
    final_shape fs{};
    fs.m_keep_segments = false;
    fs.m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs.m_cur = seg({{7.0f, 7.0f}, {8.0f, 8.0f}});
    fs.end_path();
    CHECK(fs.m_segments.size() == 2);
    CHECK(same(fs.m_segments[1].m_points, {{7.0f, 7.0f}, {8.0f, 8.0f}}));
}

static void test_end_path_empty_is_noop() {
    final_shape fs{};
    fs.end_path();
    CHECK(fs.m_segments.size() == 0);
}

// ---- destructor (0x787fc8) ----

static void test_destructor_clears() {
    final_shape* fs = new final_shape{};
    fs->m_segments.push_back(seg({{0.0f, 0.0f}, {1.0f, 0.0f}}));
    fs->m_cur = seg({{2.0f, 0.0f}});
    delete fs;  // runs ~final_shape; the test passes if it returns without a fault
}

int main() {
    test_add_curve_flat();
    test_add_curve_curved();
    test_merge_case_a();
    test_merge_case_b();
    test_merge_case_c();
    test_merge_case_d();
    test_merge_no_join();
    test_merge_no_segments();
    test_end_path_keep();
    test_end_path_merges();
    test_end_path_no_merge_pushes();
    test_end_path_empty_is_noop();
    test_destructor_clears();
    std::printf("pack9-22190e-0 test: %d failure(s)\n", g_fail);
    return g_fail ? 1 : 0;
}
