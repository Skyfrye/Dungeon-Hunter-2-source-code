// Checks plane3d<float>::getIntersectionWithPlane and getIntersectionWithPlanes on axis-aligned planes
// (the expected values follow the listing: lineVect = N2 x N1).
#include "glitch-core-io/deps/glitch_core.hpp"

#include <cmath>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace core = glitch::core;

static bool near(float a, float b) { return std::fabs(a - b) < 1e-5f; }
static bool nearV(const core::vector3d<float>& v, float x, float y, float z) {
    return near(v.X, x) && near(v.Y, y) && near(v.Z, z);
}

int main() {
    // x = 0 and y = 0 meet on the z axis through the origin.
    {
        core::plane3d<float> px{{1.f, 0.f, 0.f}, 0.f};
        core::plane3d<float> py{{0.f, 1.f, 0.f}, 0.f};
        core::vector3d<float> point{}, dir{};
        CHECK(px.getIntersectionWithPlane(py, point, dir));
        CHECK(nearV(point, 0.f, 0.f, 0.f));
        CHECK(nearV(dir, 0.f, 0.f, -1.f));  // N2 x N1 = (0,1,0) x (1,0,0)
    }

    // x = 1 and y = 2: the line (1, 2, t). Point must lie on both planes.
    {
        core::plane3d<float> px{{1.f, 0.f, 0.f}, -1.f};
        core::plane3d<float> py{{0.f, 1.f, 0.f}, -2.f};
        core::vector3d<float> point{}, dir{};
        CHECK(px.getIntersectionWithPlane(py, point, dir));
        CHECK(nearV(point, 1.f, 2.f, 0.f));
    }

    // Parallel planes (x = 0 and x = 3) give no intersection.
    {
        core::plane3d<float> px{{1.f, 0.f, 0.f}, 0.f};
        core::plane3d<float> px3{{1.f, 0.f, 0.f}, -3.f};
        core::vector3d<float> point{}, dir{};
        CHECK(!px.getIntersectionWithPlane(px3, point, dir));
    }

    // x = 0, y = 0 and z = 1 meet at (0, 0, 1).
    {
        core::plane3d<float> px{{1.f, 0.f, 0.f}, 0.f};
        core::plane3d<float> py{{0.f, 1.f, 0.f}, 0.f};
        core::plane3d<float> pz{{0.f, 0.f, 1.f}, -1.f};
        core::vector3d<float> out{};
        CHECK(px.getIntersectionWithPlanes(py, pz, out));
        CHECK(nearV(out, 0.f, 0.f, 1.f));
    }

    // Two of the planes parallel: getIntersectionWithPlanes fails.
    {
        core::plane3d<float> px{{1.f, 0.f, 0.f}, 0.f};
        core::plane3d<float> px3{{1.f, 0.f, 0.f}, -3.f};
        core::plane3d<float> pz{{0.f, 0.f, 1.f}, -1.f};
        core::vector3d<float> out{};
        CHECK(!px.getIntersectionWithPlanes(px3, pz, out));
    }

    if (failures == 0) std::printf("plane3d_float_0_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
