// Checks for the <global> batch r1-core-platform-global-f216b6-1: the segment clip
// (ClipSegmentToLine, 0x7f5038), the two-point projection (ProcessTwo, 0x7f89e0) and the
// three-point projection (ProcessThree, 0x7f8018), all in src/w7_global_03.cpp. That file
// also refers to the gameswf parse helper, the gameswf file constructor and operator new with
// a swf::MemHint, which this test supplies.
#include <cfloat>
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <limits>
#include <new>

#include "core-platform/deps/swf_types.hpp"
#include "core-platform/tb/tu_file.hpp"
#include "core-platform/w7_global_03.hpp"

namespace gameswf {
int get_verbose_parse() { return 0; }
tu_file::tu_file(const char*, const char*) {}
}  // namespace gameswf

void* operator new(std::size_t size, swf::MemHint) { return std::malloc(size); }

using w7g3::ClipVertex;
using w7g3::Vec2;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static bool Near(float a, float b) { return std::fabs(a - b) < 1e-5f; }

// 0x7f5038: the line is x = 0 (normal (1, 0), offset 0). Vertices with x <= 0 are kept, and a
// crossing is added where the sign changes. The crossing takes id in[1].id when d0 <= 0, else
// in[0].id.
static void TestClipSegmentToLine() {
    const Vec2 normal{1.0f, 0.0f};
    ClipVertex in[2];
    ClipVertex out[3];

    // Both ends on the far side: nothing is kept.
    in[0] = {{2.0f, 0.0f}, 1};
    in[1] = {{3.0f, 0.0f}, 2};
    CHECK(ClipSegmentToLine(out, in, normal, 0.0f) == 0);

    // Both ends inside: both kept, no crossing.
    in[0] = {{-1.0f, 0.0f}, 3};
    in[1] = {{-2.0f, 0.0f}, 4};
    CHECK(ClipSegmentToLine(out, in, normal, 0.0f) == 2);
    CHECK(out[0].id == 3 && out[1].id == 4);

    // in[0] inside, in[1] outside: in[0] kept, then the crossing at x = 0 with id in[1].id.
    in[0] = {{-1.0f, 0.0f}, 7};
    in[1] = {{2.0f, 0.0f}, 9};
    CHECK(ClipSegmentToLine(out, in, normal, 0.0f) == 2);
    CHECK(out[0].id == 7 && Near(out[0].v.x, -1.0f));
    CHECK(Near(out[1].v.x, 0.0f) && Near(out[1].v.y, 0.0f) && out[1].id == 9);

    // in[0] outside, in[1] inside: in[1] kept first, then the crossing at x = 0 with id in[0].id.
    in[0] = {{3.0f, 0.0f}, 1};
    in[1] = {{-1.0f, 0.0f}, 2};
    CHECK(ClipSegmentToLine(out, in, normal, 0.0f) == 2);
    CHECK(out[0].id == 2 && Near(out[0].v.x, -1.0f));
    CHECK(Near(out[1].v.x, 0.0f) && Near(out[1].v.y, 0.0f) && out[1].id == 1);

    // in[0] on the line (d0 == 0) is kept, and no crossing is added since d0 * d1 == 0.
    in[0] = {{0.0f, 5.0f}, 6};
    in[1] = {{1.0f, 0.0f}, 8};
    CHECK(ClipSegmentToLine(out, in, normal, 0.0f) == 1);
    CHECK(out[0].id == 6);
}

// 0x7f89e0: the copy branch (return 1) when the projection is not positive or the segment is
// degenerate; otherwise the points move along the first segment (return 2).
static void TestProcessTwo() {
    Vec2 a1[2], a2[2], a5[2];
    Vec2 a3[2] = {{4.0f, 0.0f}, {2.0f, 0.0f}};
    Vec2 a4[2] = {{0.0f, 4.0f}, {0.0f, 2.0f}};

    // a5[1] projects to 0 on the normalized (1, 0): the copy branch keeps the second points.
    a5[0] = {1.0f, 0.0f};
    a5[1] = {0.0f, 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 1);
    CHECK(Near(a1[0].x, 2.0f) && Near(a1[0].y, 0.0f));
    CHECK(Near(a2[0].x, 0.0f) && Near(a2[0].y, 2.0f));
    CHECK(Near(a3[0].x, 2.0f) && Near(a3[0].y, 0.0f));
    CHECK(Near(a4[0].x, 0.0f) && Near(a4[0].y, 2.0f));
    CHECK(Near(a5[0].x, 0.0f) && Near(a5[0].y, 0.0f));

    // a5 = {(1, 0), (-1, 0)}: the segment length is 2 and the projection of a5[1] is 1, so the
    // parameter is t = 0.5 and a1 = a3[1] + 0.5 * (a3[0] - a3[1]) = (3, 0).
    a3[0] = {4.0f, 0.0f};
    a3[1] = {2.0f, 0.0f};
    a4[0] = {0.0f, 4.0f};
    a4[1] = {0.0f, 2.0f};
    a5[0] = {1.0f, 0.0f};
    a5[1] = {-1.0f, 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 2);
    CHECK(Near(a1[0].x, 3.0f) && Near(a1[0].y, 0.0f));
    CHECK(Near(a2[0].x, 0.0f) && Near(a2[0].y, 3.0f));

    // Degenerate segment (length 0): the copy branch, return 1.
    a5[0] = {1.0f, 1.0f};
    a5[1] = {1.0f, 1.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 1);
}

// 0x7e5524 (Normalize, via ProcessTwo): the length threshold is FLT_EPSILON (0x34000000, 2^-23).
// The segment is (0, 0) to (-L, 0), so the length is L, the normalized projection is 1, and t = 1
// (a1 = a3[0]) whenever the segment is normalized. The copy branch is return 1.
static void TestProcessTwoThreshold() {
    const float eps = FLT_EPSILON;
    Vec2 a1[2], a2[2];
    Vec2 a3[2], a4[2], a5[2];
    // The copy branch overwrites slot 0 of a3, a4 and a5, so every case starts from these inputs.
    auto reset = [&]() {
        a3[0] = {4.0f, 0.0f};
        a3[1] = {2.0f, 0.0f};
        a4[0] = {0.0f, 4.0f};
        a4[1] = {0.0f, 2.0f};
        a5[0] = {0.0f, 0.0f};
    };

    // Below FLT_EPSILON: Normalize returns 0, so the copy branch (return 1) is taken.
    reset();
    a5[1] = {-0.5f * eps, 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 1);

    // Exactly FLT_EPSILON (0x34000000): not below the threshold, so it normalizes and returns 2.
    reset();
    a5[1] = {-eps, 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 2);
    CHECK(Near(a1[0].x, 4.0f) && Near(a1[0].y, 0.0f));

    // Inside the range that the wrong 0.00000011921 threshold (0x34000032) would reject:
    // 25 ulps above FLT_EPSILON. The listing normalizes it and returns 2.
    const float inside = eps + 25.0f * eps * eps;
    reset();
    a5[1] = {-inside, 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 2);
    CHECK(Near(a1[0].x, 4.0f) && Near(a1[0].y, 0.0f));

    // A NaN length is not below the threshold (fcmplt is false), so the listing falls through to
    // the normalize path and returns 2.
    reset();
    a5[1] = {std::numeric_limits<float>::quiet_NaN(), 0.0f};
    CHECK(ProcessTwo(a1, a2, a3, a4, a5) == 2);
}

// 0x7f8018: the three branches of the listing.
static void TestProcessThree() {
    Vec2 a1[3], a2[3];
    Vec2 a3[3] = {{10.0f, 10.0f}, {20.0f, 20.0f}, {30.0f, 30.0f}};
    Vec2 a4[3] = {{40.0f, 40.0f}, {50.0f, 50.0f}, {60.0f, 60.0f}};
    Vec2 a5[3];

    // Vertex 2 at the origin: both projections are 0, so vertex 2 is copied into every slot.
    a5[0] = {1.0f, 0.0f};
    a5[1] = {0.0f, 1.0f};
    a5[2] = {0.0f, 0.0f};
    CHECK(ProcessThree(a1, a2, a3, a4, a5) == 1);
    CHECK(Near(a1[0].x, 30.0f) && Near(a1[0].y, 30.0f));
    CHECK(Near(a2[0].x, 60.0f) && Near(a2[0].y, 60.0f));
    CHECK(Near(a3[0].x, 30.0f) && Near(a4[0].x, 60.0f));
    CHECK(Near(a5[0].x, 0.0f) && Near(a5[0].y, 0.0f));

    // The triangle (1, 0), (0, 1), (-1, -1) contains the origin. Its barycentric weights for
    // the origin are 1/3 each, so the projected point is the origin and the attribute point
    // is the weighted average of a4: (0, 1). Return 3.
    a5[0] = {1.0f, 0.0f};
    a5[1] = {0.0f, 1.0f};
    a5[2] = {-1.0f, -1.0f};
    a3[0] = {1.0f, 0.0f};
    a3[1] = {0.0f, 1.0f};
    a3[2] = {-1.0f, -1.0f};
    a4[0] = {3.0f, 0.0f};
    a4[1] = {0.0f, 6.0f};
    a4[2] = {-3.0f, -3.0f};
    CHECK(ProcessThree(a1, a2, a3, a4, a5) == 3);
    CHECK(Near(a1[0].x, 0.0f) && Near(a1[0].y, 0.0f));
    CHECK(Near(a2[0].x, 0.0f) && Near(a2[0].y, 1.0f));

    // Inner edge reduction (return 2): the projection parameter is 8 / 10 = 0.8 on the edge
    // from vertex 0 to vertex 2, and vertices 1 and 2 are then shifted to vertex 2's slot.
    a5[0] = {-2.0f, -2.0f};
    a5[1] = {-2.0f, -1.0f};
    a5[2] = {-1.0f, 1.0f};
    a3[0] = {0.0f, 0.0f};
    a3[1] = {10.0f, 0.0f};
    a3[2] = {0.0f, 10.0f};
    a4[0] = {1.0f, 1.0f};
    a4[1] = {2.0f, 2.0f};
    a4[2] = {3.0f, 3.0f};
    CHECK(ProcessThree(a1, a2, a3, a4, a5) == 2);
    CHECK(Near(a1[0].x, 0.0f) && Near(a1[0].y, 8.0f));
    CHECK(Near(a2[0].x, 2.6f) && Near(a2[0].y, 2.6f));
    CHECK(Near(a3[1].x, 0.0f) && Near(a3[1].y, 10.0f));
    CHECK(Near(a4[1].x, 3.0f) && Near(a5[1].x, -1.0f) && Near(a5[1].y, 1.0f));

    // Outer else reduction (return 2): the parameter is 2 / 4 = 0.5 on the edge from vertex 1
    // to vertex 2, and vertex 2 is then copied into slot 0.
    a5[0] = {-2.0f, -2.0f};
    a5[1] = {-2.0f, -1.0f};
    a5[2] = {-2.0f, 1.0f};
    a3[0] = {0.0f, 0.0f};
    a3[1] = {0.0f, 10.0f};
    a3[2] = {0.0f, 20.0f};
    a4[0] = {1.0f, 0.0f};
    a4[1] = {1.0f, 10.0f};
    a4[2] = {1.0f, 20.0f};
    CHECK(ProcessThree(a1, a2, a3, a4, a5) == 2);
    CHECK(Near(a1[0].x, 0.0f) && Near(a1[0].y, 15.0f));
    CHECK(Near(a2[0].x, 1.0f) && Near(a2[0].y, 15.0f));
    CHECK(Near(a3[0].y, 20.0f) && Near(a4[0].y, 20.0f));
    CHECK(Near(a5[0].x, -2.0f) && Near(a5[0].y, 1.0f));
}

int main() {
    TestClipSegmentToLine();
    TestProcessTwo();
    TestProcessTwoThreshold();
    TestProcessThree();
    std::printf("r1-core-platform-global-f216b6-1: %s\n", failures ? "FAILED" : "ok");
    return failures != 0;
}
