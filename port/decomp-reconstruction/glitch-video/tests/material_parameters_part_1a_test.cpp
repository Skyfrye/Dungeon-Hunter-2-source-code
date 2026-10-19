// Host checks for material_parameters_part_1a.cpp: exact and strided copies, the type gate, the
// Convertions gate, and the int/float and colour conversions. Returns non-zero on failure.
#include <cstdio>
#include <cstring>

#include "glitch-video/material_parameters_part_1a.hpp"

using namespace glitch::video::detail::part1a;

namespace {

int failures = 0;

#define CHECK(cond)                                                 \
    do {                                                            \
        if (!(cond)) {                                              \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);     \
            ++failures;                                             \
        }                                                           \
    } while (0)

}  // namespace

int main() {
    // Entry 0: three floats at offset 0. Entry 1: three SColor (4 bytes each) at offset 12.
    // Entry 2: two vector4d<float> at offset 24. Entry 3: undefined (ref 0).
    std::uint8_t values[64] = {};
    const float f3[3] = {1.5f, -2.0f, 4.25f};
    std::memcpy(values + 0, f3, sizeof f3);
    const std::uint8_t colours[12] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120};
    std::memcpy(values + 12, colours, sizeof colours);

    SParamEntry entries[4];
    entries[0] = SParamEntry{1, 0, 5, 0, 3, 0, 0};    // float x3
    entries[1] = SParamEntry{1, 0, 16, 0, 3, 12, 0};  // SColor x3
    entries[2] = SParamEntry{1, 0, 8, 0, 1, 24, 0};   // vector4d<float> x1
    entries[3] = SParamEntry{0, 0, 5, 0, 1, 40, 0};   // undefined
    GlobalParamTable t;
    t.entries = entries;
    t.entryCount = 4;
    t.values = values;

    // Exact array get, contiguous (stride 0 and stride 4).
    float out[3] = {};
    CHECK(getParameter(t, 0, out, 0) == 1);
    CHECK(out[0] == 1.5f && out[1] == -2.0f && out[2] == 4.25f);
    float out2[3] = {};
    CHECK(getParameter(t, 0, out2, 4) == 1);
    CHECK(out2[2] == 4.25f);

    // Strided get: the output steps by 8 bytes.
    float spaced[6] = {};
    CHECK(getParameter(t, 0, spaced, 8) == 1);
    CHECK(spaced[0] == 1.5f && spaced[2] == -2.0f && spaced[4] == 4.25f);

    // Type gate: a float entry is not read as int by the exact form; undefined ids return 0.
    int wrong[3] = {};
    CHECK(getParameter(t, 0, wrong, 0) == 0);
    CHECK(getParameter(t, 3, out, 0) == 0);
    CHECK(getParameter(t, 9, out, 0) == 0);

    // Index form: element 2 of the float entry; index past the count gives 0.
    float one = 0.0f;
    CHECK(getParameter(t, 0, 2u, one) == 1 && one == 4.25f);
    CHECK(getParameter(t, 0, 3u, one) == 0);

    // Cvt get: a float entry read as int through the Convertions gate (code 5 has bit 0x2).
    // Pointer int getCvt passes the gate (code 5 has bit 0x2) and writes nothing for a float entry.
    int asInt[3] = {7, 7, 7};
    CHECK(getParameterCvt(t, 0, asInt, 0) == 1);
    CHECK(asInt[0] == 7 && asInt[2] == 7);
    // Index int getCvt converts the first float: 1.5 -> 1.
    int idx = 0;
    CHECK(getParameterCvt(t, 0, 0u, idx) == 1 && idx == 1);

    // SColor entry read as SColorf through the gate (code 16 is in 0x20000): first element only.
    glitch::video::SColorf col{};
    CHECK(getParameterCvt(t, 1, 0u, col) == 1);
    CHECK(col.r > 0.0391f && col.r < 0.0393f);  // 10 * 0.0039216
    CHECK(col.a > 0.1568f && col.a < 0.1570f);  // 40 * 0.0039216

    // Cvt set: SColorf written as bytes into the SColor entry (code 16): 1.0 -> 255.
    glitch::video::SColorf white{1.0f, 0.0f, 0.0f, 1.0f};
    CHECK(setParameterCvt(t, 1, 0u, white) == 1);
    CHECK(values[12] == 255 && values[13] == 0 && values[15] == 255);
    return failures == 0 ? 0 : 1;
}
