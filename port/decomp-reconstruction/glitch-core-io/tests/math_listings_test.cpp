// Checks for the math listings recovered in this pass: transformPlane, getScale, setRotationRadians,
// the aabbox3d slab clip and dual_quaternion::fromQuatAndTrans.
#include <cmath>
#include <cstdio>

#include "glitch-core-io/core/dual_quaternion.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"

#define CHECK(c)                                                     \
    do {                                                             \
        if (!(c)) {                                                  \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); \
            ++failures;                                              \
        }                                                            \
    } while (0)

static bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

int main() {
    using namespace glitch::core;
    int failures = 0;

    // Translation by (1, 2, 3): the plane x = 4 (normal (1,0,0), D = -4) moves to x = 5.
    CMatrix4<float> t(CMatrix4<float>::EM4CONST_IDENTITY);
    t.M[12] = 1.f;
    t.M[13] = 2.f;
    t.M[14] = 3.f;
    plane3d<float> p{{1.f, 0.f, 0.f}, -4.f};
    t.transformPlane(p);
    CHECK(near(p.Normal.X, 1.f) && near(p.Normal.Y, 0.f) && near(p.Normal.Z, 0.f));
    CHECK(near(p.D, -5.f));

    // Scale matrix: getScale returns the row lengths.
    CMatrix4<float> s(CMatrix4<float>::EM4CONST_IDENTITY);
    s.M[0] = 2.f;
    s.M[5] = 3.f;
    s.M[10] = 4.f;
    const vector3d<float> sc = s.getScale();
    CHECK(near(sc.X, 2.f) && near(sc.Y, 3.f) && near(sc.Z, 4.f));

    // Rotation about Z by 90 degrees: row 0 becomes (0, 1, 0).
    CMatrix4<float> r{};
    r.setRotationRadians({0.f, 0.f, 1.5707963f});
    CHECK(near(r.M[0], 0.f) && near(r.M[1], 1.f) && near(r.M[4], -1.f) && near(r.M[5], 0.f));
    CHECK(!r.flag);

    // Slab clip: the segment (-1,0.5,0.5)..(3,0.5,0.5) crosses the unit box over t in [0.25, 0.5].
    glitch::core::aabbox3d<float> box{{0.f, 0.f, 0.f}, {2.f, 1.f, 1.f}};
    line3d<float> seg{{-2.f, 0.5f, 0.5f}, {2.f, 0.5f, 0.5f}};
    float t0 = 0.f, t1 = 0.f;
    CHECK(box.intersectsWithSegment(seg, t0, t1));
    CHECK(near(t0, 0.5f) && near(t1, 1.f));
    line3d<float> miss{{-2.f, 5.f, 0.5f}, {2.f, 5.f, 0.5f}};
    CHECK(!box.intersectsWithSegment(miss, t0, t1));

    // Quaternion identity with translation (2, 0, 0): dual = -0.5 * (0,0,0,1) * t gives dual.W = 0,
    // dual.Y = -(x*t.Z...) = 0; the dual X = 0.5 * w * t.X = 1.
    dual_quaternion dq;
    dq.fromQuatAndTrans({0.f, 0.f, 0.f, 1.f}, {2.f, 0.f, 0.f});
    CHECK(near(dq.real.W, 1.f));
    CHECK(near(dq.dual.X, 1.f) && near(dq.dual.Y, -0.f) && near(dq.dual.W, 0.f));

    if (failures == 0) std::printf("math_listings_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
