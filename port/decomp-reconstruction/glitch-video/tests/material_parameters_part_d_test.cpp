// Host check for glitch::video::detail::rparams (wave 4 slice 1d). Returns non-zero on failure.
#include <cstdio>
#include <cstdint>
#include <cstring>
#include <map>

#include "glitch-video/material_parameters_part_d.hpp"

using namespace glitch::video;
using namespace glitch::video::detail::rparams;

namespace {
int failures = 0;
#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            ++failures;                                                \
            std::fprintf(stderr, "line %d: %s\n", __LINE__, #cond);    \
        }                                                              \
    } while (0)

template <class V>
V at(const uint8_t* p) {
    V v;
    std::memcpy(&v, p, sizeof v);
    return v;
}
}  // namespace

int main() {
    uint8_t values[64] = {};
    glitch::video::detail::SParameterEntry entries[4];
    // 0: int x3 at 0
    entries[0].type = 1; entries[0].count = 3; entries[0].valueOffset = 0;
    const int32_t ints[3] = {10, 20, 30};
    std::memcpy(values + 0, ints, sizeof ints);
    // 1: float x2 at 12
    entries[1].type = 5; entries[1].count = 2; entries[1].valueOffset = 12;
    const float floats[2] = {1.5f, 2.5f};
    std::memcpy(values + 12, floats, sizeof floats);
    // 2: SColorf x1 at 20
    entries[2].type = 17; entries[2].count = 1; entries[2].valueOffset = 20;
    const float sc[4] = {1.0f, 0.0f, 0.5f, 1.0f};
    std::memcpy(values + 20, sc, sizeof sc);
    // 3: SColor x1 at 40
    entries[3].type = 16; entries[3].count = 1; entries[3].valueOffset = 40;
    values[40] = 255; values[41] = 128; values[42] = 0; values[43] = 255;

    SRendererValueTable t;
    t.count = 4;
    t.entries = entries;
    t.values = values;
    std::map<uint32_t, glitch::core::CMatrix4<float>*> matrices;
    t.matrices = &matrices;

    // Array read with contiguous and strided output.
    int32_t out[3] = {};
    CHECK(getParameter(t, 0, out, 0) == 1 && out[0] == 10 && out[1] == 20 && out[2] == 30);
    uint8_t strided[24] = {};
    CHECK(getParameter(t, 0, reinterpret_cast<int32_t*>(strided), 8) == 1);
    CHECK(at<int32_t>(strided) == 10 && at<int32_t>(strided + 8) == 20 && at<int32_t>(strided + 16) == 30);

    // Id out of range and wrong type.
    CHECK(getParameter(t, 9, out, 0) == 0);
    CHECK(getParameter(t, 1, out, 0) == 0);

    // Indexed Cvt read: float entry converted to int with f2iz.
    int32_t iv = -1;
    CHECK(getParameterCvt(t, 1, 1u, iv) == 1 && iv == 1);  // index 1 reads the first element (no index offset), f2iz(1.5) = 1
    CHECK(getParameterCvt(t, 9, 0u, iv) == 0);

    // Array Cvt read of a float entry: same type copies, stride 0 contiguous.
    float fo[2] = {};
    CHECK(getParameterCvt(t, 1, fo, 0) == 1 && fo[0] == 1.5f && fo[1] == 2.5f);

    // SColorf stored, read as SColor: 1,0,0.5,1 -> 255,0,127,255.
    uint8_t cbytes[4] = {};
    CHECK(getParameterCvt(t, 2, reinterpret_cast<SColor*>(cbytes), 4) == 1);  // stride 0 writes nothing for SColorf->SColor
    CHECK(cbytes[0] == 255 && cbytes[1] == 0 && cbytes[2] == 127 && cbytes[3] == 255);

    // SColor stored, read as SColorf (bytes * 1/255). Stride 0 writes nothing for type 16.
    SColorf cf{};
    CHECK(getParameterCvt(t, 3, reinterpret_cast<SColorf*>(&cf), 0) == 1 && cf.r == 0.0f);
    CHECK(getParameterCvt(t, 3, reinterpret_cast<SColorf*>(&cf), 16) == 1);
    CHECK(cf.r == 1.0f && cf.a == 1.0f && cf.b == 0.0f && cf.g > 0.50f && cf.g < 0.51f);

    // Element write (float, matrix-free entry): entry 1 index 1 element 0 -> offset 12 + 4 * 1.
    CHECK(setParameterElement(t, 1, 1u, 0u, 7.0f) == 1);
    CHECK(at<float>(values + 16) == 7.0f);

    // Plain set with stride 0 on the int entry, then Cvt set of a float into an int slot.
    const int32_t nints[3] = {4, 5, 6};
    CHECK(setParameter(t, 0, nints, 0) == 1 && at<int32_t>(values) == 4 && at<int32_t>(values + 8) == 6);
    const float fsrc[3] = {3.9f, 0.0f, 0.0f};
    CHECK(setParameterCvt(t, 0, fsrc, 0) == 1 && at<int32_t>(values) == 4);  // stride 0: stored int, float source does nothing
    CHECK(setParameterCvt(t, 0, fsrc, 4) == 1 && at<int32_t>(values) == 3);  // f2iz(3.9) = 3

    // SColorf written into an SColor slot (stored type 16): 1,0,0.5,1 -> 255,0,127,255.
    const SColorf src{1.0f, 0.0f, 0.5f, 1.0f};
    CHECK(setParameterCvt(t, 3, &src, 16) == 1);
    CHECK(values[40] == 255 && values[41] == 0 && values[42] == 127 && values[43] == 255);

    return failures == 0 ? 0 : 1;
}
