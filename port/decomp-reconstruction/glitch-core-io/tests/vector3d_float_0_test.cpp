// Tests for the glitch::core::vector3d<float> batch e1-glitch-core-io-glitch_core_vector3d_float-0.
#include "glitch-core-io/deps/glitch_core.hpp"

#include <cmath>
#include <cstdio>

using glitch::core::vector3d;

static int failures = 0;

static void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

static bool near(float a, float b) { return std::fabs(a - b) < 1e-3f; }

int main() {
    // operator/ and operator/=
    vector3d<float> a{6.f, 9.f, -8.f}, b{3.f, 3.f, 4.f};
    vector3d<float> q = a / b;
    check(near(q.X, 2.f) && near(q.Y, 3.f) && near(q.Z, -2.f), "operator/");
    a /= b;
    check(near(a.X, 2.f) && near(a.Y, 3.f) && near(a.Z, -2.f), "operator/=");

    // rotateXYBy: 90 degrees about the origin maps (1,0,z) to (0,1,z)
    vector3d<float> p{1.f, 0.f, 5.f}, origin{0.f, 0.f, 0.f};
    p.rotateXYBy(90.0, origin);
    check(near(p.X, 0.f) && near(p.Y, 1.f) && near(p.Z, 5.f), "rotateXYBy 90");

    // rotateYZBy: 90 degrees about the X axis maps (x,0,1) to (x,-1,0)? (y,z)=(0,1) -> (-1,0)
    vector3d<float> r{2.f, 0.f, 1.f};
    r.rotateYZBy(90.0, origin);
    check(near(r.X, 2.f) && near(r.Y, -1.f) && near(r.Z, 0.f), "rotateYZBy 90");

    // rotateXZBy: 90 degrees about the Y axis maps (1,y,0) to (0,y,1)? (x,z)=(1,0) -> (0,1)
    vector3d<float> s{1.f, 7.f, 0.f};
    s.rotateXZBy(90.0, origin);
    check(near(s.X, 0.f) && near(s.Y, 7.f) && near(s.Z, 1.f), "rotateXZBy 90");

    // rotation about a non-origin centre
    vector3d<float> t{3.f, 0.f, 0.f}, c{2.f, 0.f, 0.f};
    t.rotateXYBy(180.0, c);
    check(near(t.X, 1.f) && near(t.Y, 0.f), "rotateXYBy 180 about (2,0)");

    // getHorizontalAngle: yaw from atan2(X, Z), pitch from the horizontal length
    vector3d<float> ang = vector3d<float>{0.f, 0.f, 1.f}.getHorizontalAngle();
    check(near(ang.Y, 0.f) && near(ang.X, 0.f) && near(ang.Z, 0.f), "getHorizontalAngle +Z");
    ang = vector3d<float>{1.f, 0.f, 0.f}.getHorizontalAngle();
    check(near(ang.Y, 90.f) && near(ang.X, 0.f), "getHorizontalAngle +X");

    std::printf(failures == 0 ? "vector3d_float_0 OK\n" : "vector3d_float_0 FAILED\n");
    return failures == 0 ? 0 : 1;
}
