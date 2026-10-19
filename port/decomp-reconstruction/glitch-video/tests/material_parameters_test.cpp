// IMaterialParameters: value conversions, colour/vector copies, and dirty marking
// for the CMaterial instance only.
#include "glitch-video/material_parameters.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;
using Tracked = detail::IMaterialParameters<CMaterial, true>;
using Plain = detail::IMaterialParameters<CGlobalMaterialParameterManager, false>;

int main() {
    // Tracking owner: a changed int marks both words; an unchanged store does not.
    Tracked tracked;
    int32_t i = 0;
    tracked.setParameterAt(&i, 2.7f);
    CHECK(i == 2);
    CHECK(tracked.dirtyWord0() == 0xffffffffu && tracked.dirtyWord1() == 0xffffffffu);

    Tracked t2;
    int32_t j = 5;
    t2.setParameterAt(&j, 5.0f);            // unchanged: no mark
    CHECK(t2.dirtyWord0() == 0 && t2.dirtyWord1() == 0);
    t2.setDirty();
    CHECK(t2.dirtyWord0() == 0xffffffffu);

    // Float from int, with the change test on the float compare.
    float f = 1.0f;
    tracked.setParameterAt(&f, 3);
    CHECK(f == 3.0f);

    // Non-tracking owner: stores only, setDirty does nothing.
    Plain plain;
    int32_t k = 0;
    plain.setParameterAt(&k, -4.9f);
    CHECK(k == -4);
    plain.setDirty();
    CHECK(plain.dirtyWord0() == 0 && plain.dirtyWord1() == 0);

    // Colour and vector copies in both directions.
    SColorf c{0.1f, 0.2f, 0.3f, 0.4f};
    glitch::core::vector4d<float> v{};
    plain.getParameterAt(&c, v);
    CHECK(v.X == 0.1f && v.Y == 0.2f && v.Z == 0.3f && v.W == 0.4f);
    glitch::core::vector4d<float> src{1.0f, 2.0f, 3.0f, 4.0f};
    SColorf out{};
    plain.setParameterAt(&out, src);
    CHECK(out.r == 1.0f && out.g == 2.0f && out.b == 3.0f && out.a == 4.0f);
    SColorf back{};
    plain.getParameterAt(&src, back);
    CHECK(back.r == 1.0f && back.a == 4.0f);

    // Int and float getters.
    float fv = 0;
    int32_t iv = 0;
    int32_t seven = 7;
    plain.getParameterAt(&seven, fv);
    CHECK(fv == 7.0f);
    float eight = 8.5f;
    plain.getParameterAt(&eight, iv);
    CHECK(iv == 8);

    if (failures == 0) {
        std::printf("material_parameters_test: all checks passed\n");
        return 0;
    }
    std::printf("material_parameters_test: %d failure(s)\n", failures);
    return 1;
}
