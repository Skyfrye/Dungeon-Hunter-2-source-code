// Host check of material_parameters_part_1b.cpp: index forms, Cvt conversions, array strides and the
// M dirty markers. Returns non-zero on failure. The ITexture / CLight hooks are stubbed here.
#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material_parameters_part_1a.hpp"
#include "glitch-video/material_parameters.hpp"

namespace glitch::video {
class CLight;
class ITexture;
}  // namespace glitch::video


using namespace glitch::video::detail::part1b;
using glitch::core::vector2d;
using glitch::core::vector3d;
using glitch::video::SColor;
using glitch::video::SColorf;

static int failures = 0;
#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
            ++failures;                                                \
        }                                                              \
    } while (0)

// Record builders: G entries are part1a::SParamEntry (ref = set flag), M entries are detail::SParameterEntry.
glitch::video::detail::part1a::SParamEntry gEntry(bool set, std::uint8_t type, std::uint32_t count, std::uint32_t offset) {
    glitch::video::detail::part1a::SParamEntry e;
    e.ref = set ? 1u : 0u;
    e.type = type;
    e.count = count;
    e.offset = offset;
    return e;
}

glitch::video::detail::SParameterEntry mEntry(std::uint8_t type, std::uint32_t count, std::uint32_t valueOffset) {
    glitch::video::detail::SParameterEntry e;
    e.type = type;
    e.count = count;
    e.valueOffset = valueOffset;
    return e;
}

template <class T>
T rd(const std::vector<std::uint8_t>& b, std::size_t pos) {
    T v;
    std::memcpy(&v, b.data() + pos, sizeof v);
    return v;
}

int main() {
    // ---- G: int entry (2 elements at offset 0), float entry (1 element at offset 8), unset entry.
    GlobalParameterStore g;
    g.entries.resize(3);
    g.entries[0] = gEntry(true, 1, 2, 0);
    g.entries[1] = gEntry(true, 5, 1, 8);
    g.entries[2] = gEntry(false, 1, 1, 12);
    g.values.assign(32, 0);

    CHECK(setParameter(g, 0, 1, 7) == 1);            // index form, element 1 at +4
    CHECK(rd<int>(g.values, 4) == 7);
    CHECK(setParameter(g, 0, 2, 7) == 0);            // index beyond count
    CHECK(setParameter(g, 2, 0, 7) == 0);            // unset entry
    CHECK(setParameter(g, 9, 0, 7) == 0);            // id beyond the table
    CHECK(setParameterCvt(g, 1, 0, 2) == 1);         // int into float slot: stored as float
    CHECK(rd<float>(g.values, 8) == 2.0f);
    CHECK(setParameterCvt(g, 0, 0, 3.7f) == 1);      // float into int slot: f2iz
    CHECK(rd<int>(g.values, 0) == 3);
    CHECK(setParameterCvt(g, 0, 0, -1e30f) == 1);
    CHECK(rd<int>(g.values, 0) == static_cast<int>(0x80000000u));

    // Cvt setter for a vector type with a different stored type: gate fails, nothing written.
    GlobalParameterStore g2;
    g2.entries.resize(1);
    g2.entries[0] = gEntry(true, 1, 1, 0);
    g2.values.assign(16, 0);
    vector2d<float> v2{1.5f, -2.0f};
    CHECK(setParameterCvt(g2, 0, 0, v2) == 0);

    // ---- M: block with an SColor entry (2 elements at +0) and a vector2d<int> entry (1 element at +8).
    MaterialParameterBlock block;
    block.count = 2;
    block.entries.resize(2);
    block.entries[0] = mEntry(16, 2, 0);
    block.entries[1] = mEntry(2, 1, 8);
    MaterialParameterStore m;
    m.block = &block;
    m.values.assign(32, 0);
    m.dirtyFirst = 0;
    m.dirtyLast = 0;

    SColor c0{};
    c0.color = 0x80402010u;
    CHECK(setParameter(m, 0, 1, c0) == 1);           // changed (was zero): dirty markers reset
    CHECK(m.dirtyFirst == -1 && m.dirtyLast == -1);
    CHECK(rd<std::uint32_t>(m.values, 4) == 0x80402010u);
    m.dirtyFirst = 0;
    m.dirtyLast = 0;
    CHECK(setParameter(m, 0, 1, c0) == 1);           // same value: markers kept
    CHECK(m.dirtyFirst == 0 && m.dirtyLast == 0);

    vector2d<int> pv{11, 12};
    CHECK(setParameter(m, 1, 0, pv) == 1);
    vector2d<int> got{};
    CHECK(getParameter(m, 1, 0, got) == 1 && got.X == 11 && got.Y == 12);
    CHECK(setParameter(m, 5, 0, pv) == 0);           // id beyond the block count
    m.block = nullptr;
    CHECK(getParameter(m, 1, 0, got) == 0);          // no block
    m.block = &block;

    // Cvt getter: SColor packed into SColorf (code 16 -> bytes * 1/255).
    SColorf cf{};
    // The Cvt index form reads element 0, which is still zero; element 1 holds c0.
    CHECK(getParameterCvt(m, 0, 1, cf) == 1);
    CHECK(cf.r == 0.0f && cf.a == 0.0f);

    // Array getter: SColor (code 16) into SColorf with stride 16, then 0 (contiguous) for SColor own type.
    SColorf arr[2]{};
    CHECK(getParameterArrayCvt(m, 0, arr, 16) == 1);
    CHECK(arr[0].r == 0.0f && arr[0].a == 0.0f);               // element 0 is zero
    CHECK(std::fabs(arr[1].r - 16.0f / 255.0f) < 1e-6f);      // byte 0x10
    CHECK(std::fabs(arr[1].g - 32.0f / 255.0f) < 1e-6f);      // byte 0x20
    CHECK(std::fabs(arr[1].b - 64.0f / 255.0f) < 1e-6f);      // byte 0x40
    CHECK(std::fabs(arr[1].a - 128.0f / 255.0f) < 1e-6f);     // byte 0x80
    SColor own[2]{};
    CHECK(getParameterArrayCvt(m, 0, own, 0) == 1);
    CHECK(own[1].color == 0x80402010u);

    // Array getter: a vector2d<int> stored, asked as vector3d<float> (gate fails) returns 0.
    vector3d<float> v3[1]{};
    CHECK(getParameterArrayCvt(m, 1, v3, 12) == 0);

    // Setting SColorf into an SColor element through the Cvt setter is not in this row set; check the
    // stored-as-float conversion of getParameterArrayCvt<SColor> instead: write floats into the block.
    SColorf src[2] = {{1.0f, 0.0f, 0.5f, 0.25f}, {0.0f, 1.0f, 0.0f, 1.0f}};
    std::memcpy(m.values.data() + 0, &src[0], sizeof src[0]);  // entry 0 now holds SColorf layout
    // Reset entry 0 to type 17 (SColorf, 2 elements) to exercise the float-to-byte conversion.
    block.entries[0] = mEntry(17, 2, 0);
    SColor fromFloats[2]{};
    CHECK(getParameterArrayCvt(m, 0, fromFloats, 4) == 1);
    CHECK((fromFloats[0].color & 0xFFu) == 255u);             // 1.0 -> 255 (r)
    CHECK(((fromFloats[0].color >> 8) & 0xFFu) == 0u);         // 0.0
    CHECK(((fromFloats[0].color >> 16) & 0xFFu) == 127u);      // 0.5 * 255 = 127.5 -> 127
    CHECK(((fromFloats[0].color >> 24) & 0xFFu) == 63u);       // 0.25 * 255 = 63.75 -> 63

    // Pointer-form int getter from a float-stored entry: no conversion (code 5 writes nothing).
    block.entries[1] = mEntry(5, 1, 8);
    const float fl = 9.0f;
    std::memcpy(m.values.data() + 8, &fl, sizeof fl);
    int ints[1] = {-5};
    CHECK(getParameterArrayCvt(m, 1, ints, 4) == 1);
    CHECK(ints[0] == -5);
    CHECK(getParameterCvt(m, 1, 0, ints[0]) == 1 && ints[0] == 9);   // index form converts

    // Non-Cvt array getter needs the exact type; stride 0 copies contiguously.
    vector2d<float> pts[1]{};
    block.entries[1] = mEntry(6, 1, 8);
    std::memset(m.values.data() + 8, 0, 8);
    CHECK(getParameterArray(m, 1, pts, 0) == 1);

    if (failures == 0) std::printf("material_parameters_part_1b_test: ok\n");
    return failures == 0 ? 0 : 1;
}
