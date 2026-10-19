// Host checks for core/quantize.hpp and vector2d::getAngle. Returns non-zero on failure.
#include <cmath>
#include <cstdio>

#include "glitch-core-io/core/quantize.hpp"

int main() {
    int failures = 0;
    auto check = [&](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAIL: %s\n", what);
            ++failures;
        }
    };

    using glitch::core::vector2d;
    check(vector2d<float>{1.f, 0.f}.getAngle() == 0.f, "angle with zero Y is 0");
    // 0x420060: X == 0 gives 90 for Y < 0 and 270 otherwise (double constants 0x4056800000000000 / 0x4070E00000000000).
    check(vector2d<float>{0.f, 1.f}.getAngle() == 270.0, "angle with zero X and Y > 0 is 270");
    check(vector2d<float>{0.f, -1.f}.getAngle() == 90.0, "angle with zero X and Y < 0 is 90");
    check(std::fabs(vector2d<float>{1.f, 1.f}.getAngle() - 315.f) < 1e-3f, "angle of (1,1) is 315");

    glitch::core::CMatrix4<float> a{};
    for (int i = 0; i < 16; ++i) a.M[i] = static_cast<float>(i);
    const float ident[16] = {1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1};
    glitch::core::CMatrix4<float> out{};
    glitch::core::rowMatrixProduct34(out, a, ident);
    bool same = true;
    for (int i = 0; i < 16; ++i) same = same && out.M[i] == (i == 3 || i == 7 || i == 11 ? 0.f : i == 15 ? 1.f : a.M[i]);
    check(same, "rowMatrixProduct34 with identity keeps the affine part");
    check(out.M[15] == 1.f && !out.flag, "rowMatrixProduct34 sets last row and clears flag");

    vector2d<std::int16_t> q[2] = {};
    const vector2d<float> pts[2] = {{0.f, 0.f}, {65535.f, 65535.f}};
    vector2d<float> scale{}, offset{};
    glitch::core::quantizeScaleOffset(q, sizeof(vector2d<std::int16_t>), pts, sizeof(vector2d<float>), 2, scale, offset);
    check(q[0].X == -32767 && q[1].X == 32767, "quantize 2D x extremes");
    check(q[0].Y == -32767 && q[1].Y == 32767, "quantize 2D y extremes");
    check(std::fabs(scale.X - 1.f) < 1e-4f, "quantize 2D scale");

    std::printf(failures ? "quantize_test: %d failure(s)\n" : "quantize_test: ok\n", failures);
    return failures ? 1 : 0;
}
