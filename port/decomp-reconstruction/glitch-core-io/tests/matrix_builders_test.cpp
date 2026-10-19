// Checks for buildTextureTransform, buildShadowMatrix and triangle3d::isPointInsideFast.
#include "glitch-core-io/core/matrix_builders.hpp"

#include <cmath>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace core = glitch::core;

static bool near(float a, float b) { return std::fabs(a - b) < 1e-5f; }

int main() {
    // Row-vector convention: out[j] = sum_i v[i] * M[i][j].
    // Shadow of a point light at (0,10,0) on the plane y = 0 (normal (0,1,0), D = 0).
    {
        core::plane3d<float> plane{{0.f, 1.f, 0.f}, 0.f};
        core::vector3d<float> light{0.f, 10.f, 0.f};
        core::CMatrix4<float> m = core::buildShadowMatrix(light, plane, 1.f);
        const float v[4] = {1.f, 5.f, 1.f, 1.f};
        float out[4] = {0.f, 0.f, 0.f, 0.f};
        for (int j = 0; j < 4; ++j)
            for (int i = 0; i < 4; ++i) out[j] += v[i] * m.M[i * 4 + j];
        CHECK(near(out[0] / out[3], 2.f));
        CHECK(near(out[1] / out[3], 0.f));  // projected onto y = 0
        CHECK(near(out[2] / out[3], 2.f));
        CHECK(!m.flag);
    }

    // Texture transform: identity for zero angle, unit scale and no offsets.
    {
        core::vector2d<float> zero{0.f, 0.f}, one{1.f, 1.f};
        core::CMatrix4<float> m = core::buildTextureTransform(0.f, zero, zero, one);
        CHECK(near(m.M[0], 1.f));
        CHECK(near(m.M[5], 1.f));
        CHECK(near(m.M[10], 1.f));
        CHECK(near(m.M[15], 1.f));
        CHECK(near(m.M[8], 0.f));
        CHECK(near(m.M[9], 0.f));
    }

    // Texture transform: pure translation adds to the offset row.
    {
        core::vector2d<float> zero{0.f, 0.f}, t{3.f, 4.f}, one{1.f, 1.f};
        core::CMatrix4<float> m = core::buildTextureTransform(0.f, zero, t, one);
        CHECK(near(m.M[8], 3.f));
        CHECK(near(m.M[9], 4.f));
    }

    // Point-in-triangle with the fast test.
    {
        core::triangle3d<float> tri{{0.f, 0.f, 0.f}, {1.f, 0.f, 0.f}, {0.f, 1.f, 0.f}};
        CHECK(tri.isPointInsideFast({0.2f, 0.2f, 0.f}));
        CHECK(!tri.isPointInsideFast({0.8f, 0.8f, 0.f}));
        CHECK(!tri.isPointInsideFast({-0.1f, 0.2f, 0.f}));
    }

    if (failures == 0) std::printf("matrix_builders_test: ok\n");
    return failures == 0 ? 0 : 1;
}
