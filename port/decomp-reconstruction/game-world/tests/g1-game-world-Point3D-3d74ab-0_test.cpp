// Test for batch g1-game-world-Point3D-3d74ab-0: the Point3D<float> arithmetic of the batch.
//
// Links with the batch's source and with glitch-core-io/src/tb_core-io-glitch_core_CMatrix4_float-0.cpp, which defines
// CMatrix4<float>::multiplyWith1x4Matrix (0x312bf8) that transform calls. Returns non-zero on any failure.

#include <cmath>
#include <cstdio>
#include <cstring>
#include <limits>

#include "dh2/Point3D.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace {

int g_failures = 0;

void check(bool ok, const char* what, int line) {
    if (!ok) {
        std::printf("FAIL line %d: %s\n", line, what);
        ++g_failures;
    }
}

#define CHECK(cond) check((cond), #cond, __LINE__)

bool nearly(float a, float b, float tol) { return std::fabs(a - b) <= tol; }

Point3D<float> make(float x, float y, float z) { return Point3D<float>{x, y, z}; }

// 0x312b6c: each component within 0.0001, and a NaN component fails.
void testEquality() {
    CHECK(make(1, 2, 3) == make(1.00005f, 2, 3));
    CHECK(make(1, 2, 3) == make(1, 2, 3.00005f));
    CHECK(!(make(1, 2, 3) == make(1.00011f, 2, 3)));
    CHECK(!(make(1, 2, 3) == make(1, 2.001f, 3)));
    CHECK(!(make(1, 2, 3) == make(1, 2, 3.001f)));
    const float nan = std::numeric_limits<float>::quiet_NaN();
    CHECK(!(make(nan, 0, 0) == make(nan, 0, 0)));
}

// 0x34d04c, 0x34d0b0: division, aliasing of the divisor, and normalize returning the object.
void testDivideAndNormalize() {
    Point3D<float> v = make(2, 4, 6);
    Point3D<float>* same = &(v /= 2.0f);
    CHECK(same == &v);
    CHECK(v.X == 1.0f && v.Y == 2.0f && v.Z == 3.0f);

    // The divisor is one of the components: X becomes 4 / 4 = 1, and the divisor reads 1 from then on.
    Point3D<float> a = make(4, 8, 16);
    a /= a.X;
    CHECK(a.X == 1.0f && a.Y == 8.0f && a.Z == 16.0f);

    Point3D<float> n = make(3, 4, 0);
    Point3D<float>* r = &n.normalize();
    CHECK(r == &n);
    CHECK(nearly(n.X, 0.6f, 1e-6f) && nearly(n.Y, 0.8f, 1e-6f) && n.Z == 0.0f);

    Point3D<float> z = make(0, 0, 5);
    z.normalize();
    CHECK(z.X == 0.0f && z.Y == 0.0f && z.Z == 1.0f);
}

// 0x3a4118, 0x312f40, 0x313058: distance, cosine and angle.
void testDistanceAndAngle() {
    CHECK(nearly(make(1, 2, 2).distance(make(0, 0, 0)), 3.0f, 1e-6f));
    CHECK(nearly(make(1, 1, 1).distance(make(4, 5, 1)), 5.0f, 1e-6f));

    CHECK(nearly(make(1, 0, 0).angleCos(make(0, 1, 0)), 0.0f, 1e-6f));
    CHECK(nearly(make(1, 0, 0).angleCos(make(2, 0, 0)), 1.0f, 1e-6f));
    CHECK(nearly(make(1, 0, 0).angleCos(make(-1, 0, 0)), -1.0f, 1e-6f));

    CHECK(nearly(make(1, 0, 0).angle(make(0, 1, 0)), 1.5707963f, 1e-5f));
    CHECK(nearly(make(1, 0, 0).angle(make(1, 1, 0)), 0.7853982f, 1e-5f));
    CHECK(nearly(make(1, 0, 0).angle(make(-1, 0, 0)), 3.1415927f, 1e-5f));
}

// 0x3e5740 rotateXY, 0x418c48 rotateXYBy.
void testRotations() {
    Point3D<float> p = make(1, 0, 7);
    Point3D<float>* r = &p.rotateXY(1.5707963f);  // pi/2
    CHECK(r == &p);
    CHECK(nearly(p.X, 0.0f, 1e-6f) && nearly(p.Y, 1.0f, 1e-6f) && p.Z == 7.0f);

    Point3D<float> q = make(3, 4, 5);
    q.rotateXY(0.0f);
    CHECK(q.X == 3.0f && q.Y == 4.0f && q.Z == 5.0f);

    // (2, 1) about the pivot (1, 1), turned 90 degrees: the offset (1, 0) becomes (0, 1), so the point is (1, 2).
    Point3D<float> s = make(2, 1, 0);
    const float sy = s.rotateXYBy(90.0f, make(1, 1, 0));
    CHECK(nearly(s.X, 1.0f, 1e-5f) && nearly(s.Y, 2.0f, 1e-5f));
    CHECK(sy == s.Y);

    // (1, 2) about the origin, turned 180 degrees: (-1, -2). Z is untouched.
    Point3D<float> t = make(1, 2, 9);
    const float ty = t.rotateXYBy(180.0f, make(0, 0, 0));
    CHECK(nearly(t.X, -1.0f, 1e-5f) && nearly(t.Y, -2.0f, 1e-5f) && t.Z == 9.0f);
    CHECK(ty == t.Y);

    // The degrees-to-radians factor is the float nearest pi/180 (0x3c8efa35).
    const float k = 0.017453292519943295f;
    unsigned bits = 0;
    std::memcpy(&bits, &k, sizeof bits);
    CHECK(bits == 0x3c8efa35u);
}

// 0x312da8 transform: the row (X, Y, Z, 1) times the matrix; X, Y and Z are written back and W is returned.
void testTransform() {
    glitch::core::CMatrix4<float> translate(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
    translate.M[12] = 10.0f;
    translate.M[13] = 20.0f;
    translate.M[14] = 30.0f;
    Point3D<float> p = make(1, 2, 3);
    const float w = p.transform(translate);
    CHECK(p.X == 11.0f && p.Y == 22.0f && p.Z == 33.0f);  // Z takes the product too
    CHECK(w == 1.0f);

    glitch::core::CMatrix4<float> scale(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
    scale.M[0] = 2.0f;
    scale.M[5] = 3.0f;
    scale.M[10] = 4.0f;
    Point3D<float> q = make(1, 2, 3);
    const float w2 = q.transform(scale);
    CHECK(q.X == 2.0f && q.Y == 6.0f && q.Z == 12.0f);
    CHECK(w2 == 1.0f);

    // W scaled by 2: the product's W is 2 and X, Y, Z are not divided by it.
    glitch::core::CMatrix4<float> wscale(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
    wscale.M[15] = 2.0f;
    Point3D<float> r = make(1, 2, 3);
    const float w3 = r.transform(wscale);
    CHECK(r.X == 1.0f && r.Y == 2.0f && r.Z == 3.0f);
    CHECK(w3 == 2.0f);
}

}  // namespace

int main() {
    testEquality();
    testDivideAndNormalize();
    testDistanceAndAngle();
    testRotations();
    testTransform();
    if (g_failures == 0) {
        std::printf("g1-game-world-Point3D-3d74ab-0_test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-world-Point3D-3d74ab-0_test: %d failure(s)\n", g_failures);
    return 1;
}
