// Host check for the owner R typed rows: IMaterialParametersTyped<IMaterialParameters<CMaterialRenderer, false>>
// (material_parameters_bind_r.cpp). Returns non-zero on failure.
//
// The texture pointer rows of R are not bound, so the pointer-type check uses vector4d<float> instead.
#include <cstdint>
#include <cstdio>

#include "glitch-video/material_parameters.hpp"

using namespace glitch::video;
using glitch::core::vector4d;
using glitch::video::detail::IMaterialParameters;
using glitch::video::detail::SParameterBlockHeader;
using glitch::video::detail::SParameterEntry;

namespace {
int failures = 0;
#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            ++failures;                                                \
            std::fprintf(stderr, "line %d: %s\n", __LINE__, #cond);    \
        }                                                              \
    } while (0)
}  // namespace

int main() {
    IMaterialParameters<CMaterialRenderer, false> r;

    // Table: 0 = int x2 at +0, 1 = float x3 at +8, 2 = vector4d<float> x2 at +32.
    uint8_t values[128] = {};
    SParameterEntry entries[3];
    entries[0].type = 1;
    entries[0].count = 2;
    entries[0].valueOffset = 0;
    entries[1].type = 5;
    entries[1].count = 3;
    entries[1].valueOffset = 8;
    entries[2].type = 8;
    entries[2].count = 2;
    entries[2].valueOffset = 32;
    SParameterBlockHeader& header = r.headerForTest();
    header.count = 3;
    header.entries = entries;
    r.setValueBuffer(values);

    // Int, index form: set then get the same element. Index 2 is past the count of 2 and is refused.
    CHECK(r.setParameter(0, 1u, 42) == true);
    int iv = 0;
    CHECK(r.getParameter(0, 1u, iv) == true && iv == 42);
    CHECK(r.setParameter(0, 2u, 7) == false);
    CHECK(r.getParameter(0, 2u, iv) == false);

    // Float array, pointer form with stride 4 (contiguous): round trip.
    const float fin[3] = {1.5f, 2.5f, 3.5f};
    float fout[3] = {};
    CHECK(r.setParameter(1, fin, 4) == true);
    CHECK(r.getParameter(1, fout, 4) == true);
    CHECK(fout[0] == 1.5f && fout[1] == 2.5f && fout[2] == 3.5f);

    // vector4d<float> array, pointer form (stride 16, contiguous): round trip. Stands in for the pointer check.
    const vector4d<float> vin[2] = {{1.0f, 2.0f, 3.0f, 4.0f}, {5.0f, 6.0f, 7.0f, 8.0f}};
    vector4d<float> vout[2];
    CHECK(r.setParameter(2, vin, 16) == true);
    CHECK(r.getParameter(2, vout, 16) == true);
    CHECK(vout[0].X == 1.0f && vout[0].W == 4.0f && vout[1].X == 5.0f && vout[1].W == 8.0f);

    // Undefined id: the typed getter and the dispatcher both return 0.
    int junk[2] = {-1, -1};
    CHECK(r.getParameter(9, junk, 4) == false && junk[0] == -1);
    CHECK(r.getParameter(9, shader_value_type::kInt, junk, 4) == 0);

    // Dispatcher for a valid id: value type int, index form, reads the stored element.
    int dv = 0;
    CHECK(r.getParameter(0, 1u, shader_value_type::kInt, &dv) == 1 && dv == 42);

    if (failures == 0) std::printf("material_parameters_bind_r_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
