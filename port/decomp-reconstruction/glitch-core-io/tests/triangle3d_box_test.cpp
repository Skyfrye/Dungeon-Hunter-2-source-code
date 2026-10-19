// Checks for triangle3d<float>::isTotalInsideBox and the inline line tests of triangle3d.
#include "glitch-core-io/deps/glitch_core.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace core = glitch::core;

int main() {
    core::aabbox3d<float> box{{0.f, 0.f, 0.f}, {10.f, 10.f, 10.f}};

    // All corners inside.
    core::triangle3d<float> inside{{1.f, 1.f, 1.f}, {5.f, 1.f, 1.f}, {1.f, 5.f, 9.f}};
    CHECK(inside.isTotalInsideBox(box));

    // Inclusive bounds: a corner exactly on a face still counts.
    core::triangle3d<float> onFace{{0.f, 0.f, 0.f}, {10.f, 2.f, 2.f}, {2.f, 10.f, 10.f}};
    CHECK(onFace.isTotalInsideBox(box));

    // One corner outside on each axis (A, B, C in turn) rejects the triangle.
    CHECK((!core::triangle3d<float>{{-1.f, 1.f, 1.f}, {5.f, 1.f, 1.f}, {1.f, 5.f, 5.f}}.isTotalInsideBox(box)));
    CHECK((!core::triangle3d<float>{{1.f, 1.f, 1.f}, {11.f, 1.f, 1.f}, {1.f, 5.f, 5.f}}.isTotalInsideBox(box)));
    CHECK((!core::triangle3d<float>{{1.f, 1.f, 1.f}, {5.f, 1.f, 1.f}, {1.f, 5.f, 11.f}}.isTotalInsideBox(box)));
    CHECK((!core::triangle3d<float>{{1.f, 1.f, 1.f}, {5.f, -0.5f, 1.f}, {1.f, 5.f, 5.f}}.isTotalInsideBox(box)));

    // Plane hit and inside test on a triangle in the z = 0 plane.
    core::triangle3d<float> tri{{0.f, 0.f, 0.f}, {4.f, 0.f, 0.f}, {0.f, 4.f, 0.f}};
    core::vector3d<float> out{};
    CHECK(tri.getIntersectionWithLine({1.f, 1.f, 5.f}, {0.f, 0.f, -1.f}, out));
    CHECK(out.X == 1.f && out.Y == 1.f && out.Z == 0.f);
    // Hit outside the triangle (past the hypotenuse) is rejected.
    CHECK(!tri.getIntersectionWithLine({3.f, 3.f, 5.f}, {0.f, 0.f, -1.f}, out));
    // Line parallel to the plane gives no intersection.
    CHECK(!tri.getIntersectionOfPlaneWithLine({1.f, 1.f, 5.f}, {1.f, 0.f, 0.f}, out));

    if (failures == 0) std::printf("triangle3d_box_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
