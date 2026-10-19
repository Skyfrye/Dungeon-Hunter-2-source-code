// Batch r1-glitch-core-io-pack0-b8a439-0 (redo): plane3d::setPlane (0x561bdc, via the 3-point
// normal), the quaternion fromAngleAxis clone (0x410e48), quaternion::toEulerDegree (0x432e58) and
// the CFile constructor (0x56c960 / 0x56c9e8, separator set '/' and '\\').
// Build and run with: bash tools/trackb/check_tu.sh --test <this file>
//   glitch-core-io/src/tb_core-io-glitch_core_quaternion-0.cpp
//   glitch-core-io/src/tb_core-io-glitch_core_CMatrix4_float-0.cpp glitch-core-io/src/file.cpp
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <stdexcept>
#include <string>

#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/file.hpp"

namespace glitch::core {
namespace tb {
quaternion fromAngleAxisClone_0x410e48(const vector3d<float>& axis);
}  // namespace tb
}  // namespace glitch::core

static int failures = 0;
#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

namespace core = glitch::core;

static bool near(float a, float b, float eps = 1e-4f) { return std::fabs(a - b) < eps; }

static std::uint32_t bitsOf(float f) {
    std::uint32_t u;
    std::memcpy(&u, &f, sizeof u);
    return u;
}

// setPlane: Normal = (c - a) x (b - a), normalized; D = -(a . Normal).
static void testSetPlane() {
    {
        // a = origin, b = x axis, c = y axis: (c - a) x (b - a) = (0, 0, -1), D = 0.
        core::plane3d<float> p{};
        p.setPlane({0.f, 0.f, 0.f}, {1.f, 0.f, 0.f}, {0.f, 1.f, 0.f});
        CHECK(near(p.Normal.X, 0.f) && near(p.Normal.Y, 0.f) && near(p.Normal.Z, -1.f));
        CHECK(near(p.D, 0.f));
    }
    {
        // The plane z = 3 through (1,2,3), (2,2,3), (1,4,3): normal (0,0,-1), D = 3.
        core::plane3d<float> p{};
        p.setPlane({1.f, 2.f, 3.f}, {2.f, 2.f, 3.f}, {1.f, 4.f, 3.f});
        CHECK(near(p.Normal.X, 0.f) && near(p.Normal.Y, 0.f) && near(p.Normal.Z, -1.f));
        CHECK(near(p.D, 3.f));
        // Each corner lies on the plane: Normal . x + D == 0.
        const core::vector3d<float> corners[3] = {{1.f, 2.f, 3.f}, {2.f, 2.f, 3.f}, {1.f, 4.f, 3.f}};
        for (const auto& c : corners) {
            const float s = p.Normal.X * c.X + p.Normal.Y * c.Y + p.Normal.Z * c.Z + p.D;
            CHECK(near(s, 0.f));
        }
    }
    {
        // a = origin, b = (2,0,0), c = (0,0,3): normal (0,1,0) after normalization, D = 0.
        core::plane3d<float> p{};
        p.setPlane({0.f, 0.f, 0.f}, {2.f, 0.f, 0.f}, {0.f, 0.f, 3.f});
        CHECK(near(p.Normal.X, 0.f) && near(p.Normal.Y, 1.f) && near(p.Normal.Z, 0.f));
        CHECK(near(p.D, 0.f));
    }
    {
        // Oblique triangle: the normal must have unit length.
        core::plane3d<float> p{};
        p.setPlane({0.f, 0.f, 0.f}, {1.f, 2.f, 0.5f}, {-1.f, 0.f, 2.f});
        const float len = std::sqrt(p.Normal.X * p.Normal.X + p.Normal.Y * p.Normal.Y + p.Normal.Z * p.Normal.Z);
        CHECK(near(len, 1.f));
    }
    {
        // Degenerate (collinear) corners: the cross product is zero and normalize leaves it zero.
        core::plane3d<float> p{};
        p.setPlane({0.f, 0.f, 0.f}, {1.f, 0.f, 0.f}, {2.f, 0.f, 0.f});
        CHECK(near(p.Normal.X, 0.f) && near(p.Normal.Y, 0.f) && near(p.Normal.Z, 0.f));
    }
}

// The clone takes the axis only; the constants are the half-angle sine (0x3F59D4D0) and cosine
// (0x3F067B80) that the listing stores in W and multiplies into X, Y and Z.
static void testFromAngleAxisClone() {
    const core::quaternion q = core::tb::fromAngleAxisClone_0x410e48({1.f, 0.f, 0.f});
    CHECK(bitsOf(q.X) == 0x3F59D4D0u);
    CHECK(q.Y == 0.f);
    CHECK(q.Z == 0.f);
    CHECK(bitsOf(q.W) == 0x3F067B80u);

    const core::quaternion r = core::tb::fromAngleAxisClone_0x410e48({0.f, 2.f, -1.f});
    CHECK(near(r.X, 0.f));
    CHECK(near(r.Y, 2.f * 0.8509035f));
    CHECK(near(r.Z, -1.f * 0.8509035f));
    CHECK(bitsOf(r.W) == 0x3F067B80u);

    // sin^2 + cos^2 of the half angle is 1 to within the rounding of the two constants.
    const float norm = q.X * q.X + q.W * q.W;
    CHECK(near(norm, 1.f, 1e-4f));
}

// toEulerDegree copies getRotationDegrees of the matrix built by getMatrix. The identity quaternion
// gives the identity matrix and zero angles.
static void testToEulerDegree() {
    {
        const core::quaternion identity{0.f, 0.f, 0.f, 1.f};
        core::vector3d<float> out{7.f, 7.f, 7.f};
        identity.toEulerDegree(out);
        CHECK(near(out.X, 0.f) && near(out.Y, 0.f) && near(out.Z, 0.f));
    }
    {
        const core::quaternion q = core::tb::fromAngleAxisClone_0x410e48({0.f, 1.f, 0.f});
        core::CMatrix4<float> m;
        q.getMatrix(m);
        const core::vector3d<float> expected = m.getRotationDegrees();
        core::vector3d<float> out{};
        q.toEulerDegree(out);
        CHECK(bitsOf(out.X) == bitsOf(expected.X));
        CHECK(bitsOf(out.Y) == bitsOf(expected.Y));
        CHECK(bitsOf(out.Z) == bitsOf(expected.Z));
    }
}

static void testCFileBaseName() {
    {
        // "dir/sub\file.txt": the last separator is the backslash at index 7, so the base name starts at 8.
        glitch::io::CFile f(nullptr, "dir/sub\\file.txt", true);
        CHECK(f.baseNameOffset == 8);
        CHECK(f.obfuscated);
        CHECK(f.name == "dir/sub\\file.txt");
        CHECK(f.m_refCount == 0);
    }
    {
        // Mixed separators: the forward slash at index 6 is the last one, so the base name is at 7.
        glitch::io::CFile f(nullptr, "C:\\dir/file", false);
        CHECK(f.baseNameOffset == 7);
        CHECK(!f.obfuscated);
    }
    {
        // A name that ends in a separator has the empty base name (STLport's substr(pos) throws only for pos > size,
        // never for pos == size): a directory that fopen opened on Android reaches this and must not throw.
        bool threw = false;
        try {
            glitch::io::CFile f(nullptr, "trailing\\", false);
            CHECK(f.baseNameOffset == 9);
        } catch (const std::out_of_range&) {
            threw = true;
        }
        CHECK(!threw);
    }
}

int main() {
    testSetPlane();
    testFromAngleAxisClone();
    testToEulerDegree();
    testCFileBaseName();
    if (failures == 0) std::printf("r1-glitch-core-io-pack0-b8a439-0 tests: all passed\n");
    return failures == 0 ? 0 : 1;
}
