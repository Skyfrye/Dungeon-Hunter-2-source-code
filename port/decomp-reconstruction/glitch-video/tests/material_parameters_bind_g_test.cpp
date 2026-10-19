// Host check of the owner G typed binding (material_parameters_bind_g.cpp): pointer-form array round trips
// with byte strides, the index forms, and the undefined-id result. The ITexture / CLight hooks of part 1b
// are stubbed here, as in material_parameters_part_1b_test.cpp. Returns non-zero on failure.
#include <cstdio>
#include <cstring>

#include "glitch-video/material_parameters_bind_g.hpp"

namespace glitch::video {
class CLight;
class ITexture;
}  // namespace glitch::video


using glitch::video::detail::SGlobalParameterOwner;

namespace {

int failures = 0;

#define CHECK(cond)                                                \
    do {                                                           \
        if (!(cond)) {                                             \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);    \
            ++failures;                                            \
        }                                                          \
    } while (0)

}  // namespace

int main() {
    SGlobalParameterOwner g;
    // Entry 0: four floats at byte offset 0. Entry 1: two int at offset 16. Entry 3 stays undefined.
    g.defineEntry(0, 5, 4, 0);
    g.defineEntry(1, 1, 2, 16);
    g.defineEntry(2, 1, 1, 24);
    g.store().values.assign(64, 0);

    // Array round trip, contiguous (stride 4 is the element size).
    const float contiguous[4] = {1.0f, 2.0f, 3.0f, 4.0f};
    CHECK(g.setParameter(0, contiguous, 4) == 1);
    float back4[4] = {};
    CHECK(g.getParameter(0, back4, 4) == 1);
    CHECK(std::memcmp(back4, contiguous, sizeof contiguous) == 0);

    // Array round trip with an 8-byte stride: the source and the destination hold one float every 8 bytes.
    const float strided_src[7] = {5.0f, 0.0f, 6.0f, 0.0f, 7.0f, 0.0f, 8.0f};
    CHECK(g.setParameter(0, strided_src, 8) == 1);
    float strided_dst[7] = {};
    CHECK(g.getParameter(0, strided_dst, 8) == 1);
    CHECK(strided_dst[0] == 5.0f && strided_dst[2] == 6.0f && strided_dst[4] == 7.0f && strided_dst[6] == 8.0f);
    CHECK(strided_dst[1] == 0.0f && strided_dst[3] == 0.0f && strided_dst[5] == 0.0f);
    // The stored values read back contiguously after the strided write.
    float after[4] = {};
    CHECK(g.getParameter(0, after, 4) == 1);
    CHECK(after[0] == 5.0f && after[1] == 6.0f && after[2] == 7.0f && after[3] == 8.0f);

    // Type gate of the exact-type rows: an int entry is not read as float.
    float wrong[4] = {};
    CHECK(g.getParameter(1, wrong, 4) == 0);

    // Index forms. An undefined id gives 0 and writes nothing.
    float out = -1.0f;
    CHECK(g.getParameter(99, 0u, out) == 0);
    CHECK(g.getParameter(3, 0u, out) == 0);   // id 3 is past the defined entries, so it is undefined
    CHECK(out == -1.0f);

    // Typed index set, then typed index get. Element 2 of entry 0 is at byte 8.
    CHECK(g.setParameter(0, 2u, 7.5f) == 1);
    float got = 0.0f;
    CHECK(g.getParameter(0, 2u, got) == 1);
    CHECK(got == 7.5f);
    // The same element through the array form.
    float element2[4] = {};
    CHECK(g.getParameter(0, element2, 4) == 1);
    CHECK(element2[2] == 7.5f);

    // Index beyond the count fails.
    CHECK(g.setParameter(0, 4u, 1.0f) == 0);

    if (failures == 0) std::printf("material_parameters_bind_g_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
