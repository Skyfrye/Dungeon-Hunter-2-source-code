// Wave 4 part 1c: strided array copies, the Cvt conversions, the dirty words of CMaterial and the
// first-element rule of the indexed Cvt forms. Built with g++ into the scratch directory.
#include "glitch-video/material_parameters_part_1c.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

using namespace glitch::video;
using namespace glitch::video::detail::part1c;
using glitch::core::vector2d;
using glitch::video::detail::SParameterBlockHeader;
using glitch::video::detail::SParameterEntry;

namespace {

// Table with three entries: 0 float x3, 1 float x2 (after the floats), 2 SColor x1.
struct Fixture {
    SParameterEntry entries[3];
    SParameterBlockHeader header;
    alignas(8) std::uint8_t values[64] = {};
    std::int32_t dirty0 = 0;
    std::int32_t dirty1 = 0;

    Fixture() {
        entries[0].type = 5;
        entries[0].count = 3;
        entries[0].valueOffset = 0;
        entries[1].type = 5;
        entries[1].count = 2;
        entries[1].valueOffset = 12;
        entries[2].type = 16;
        entries[2].count = 1;
        entries[2].valueOffset = 20;
        header.count = 3;
        header.entries = entries;
    }
    SParameterTable table(bool tracked) {
        SParameterTable t;
        t.header = &header;
        t.values = values;
        t.dirtyFirst = tracked ? &dirty0 : nullptr;
        t.dirtyLast = tracked ? &dirty1 : nullptr;
        return t;
    }
};

float floatAt(const std::uint8_t* p, int i) {
    float f;
    std::memcpy(&f, p + 4 * i, sizeof f);
    return f;
}

}  // namespace

int main() {
    // Contiguous read of three floats, then a strided read (stride 8 keeps every second word).
    {
        Fixture fx;
        const float init[3] = {1.0f, 2.0f, 3.0f};
        std::memcpy(fx.values, init, sizeof init);
        SParameterTable t = fx.table(true);
        float out[3] = {};
        CHECK(getParameter<float>(t, 0, out, 0) == 1);
        CHECK(out[0] == 1.0f && out[1] == 2.0f && out[2] == 3.0f);

        float strided[6] = {};
        CHECK(getParameter<float>(t, 0, strided, 8) == 1);
        CHECK(strided[0] == 1.0f && strided[2] == 2.0f && strided[4] == 3.0f);

        // A type that does not match the entry fails and writes nothing.
        int wrong[3] = {9, 9, 9};
        CHECK(getParameter<int>(t, 0, wrong, 0) == 0);
        CHECK(wrong[0] == 9);
    }

    // Array write marks the dirty words on CMaterial; the renderer form (no dirty words) does not.
    {
        Fixture fx;
        SParameterTable t = fx.table(true);
        const float src[3] = {4.0f, 5.0f, 6.0f};
        CHECK(setParameter<float>(t, 0, src, 0) == 1);
        CHECK(fx.dirty0 == -1 && fx.dirty1 == -1);
        CHECK(floatAt(fx.values, 2) == 6.0f);

        Fixture rx;
        SParameterTable r = rx.table(false);
        CHECK(setParameter<float>(r, 0, src, 0) == 1);
        CHECK(rx.dirty0 == 0 && rx.dirty1 == 0);
    }

    // Cvt array write: an int source into a float entry converts each element (strided source).
    {
        Fixture fx;
        SParameterTable t = fx.table(true);
        const int src[4] = {7, 0, 8, 0};
        CHECK(setParameterCvt<int>(t, 1, src, 8) == 1);
        CHECK(floatAt(fx.values, 3) == 7.0f);
        CHECK(floatAt(fx.values, 4) == 8.0f);
        CHECK(fx.dirty0 == -1);

        // A zero stride with a different stored type does nothing (the source is not read).
        Fixture gx;
        SParameterTable g = gx.table(true);
        const vector2d<int> pair{1, 2};
        CHECK(setParameterCvt<vector2d<int>>(g, 1, &pair, 0) == 0);  // gate: entry 1 is float, no vector2d<int>
    }

    // Indexed Cvt write into a colour entry: the first element is written, the packed bytes are r,g,b,a.
    {
        Fixture fx;
        SParameterTable t = fx.table(true);
        const SColorf c{1.0f, 0.0f, 0.5f, 1.0f};
        CHECK(setParameterCvt<SColorf>(t, 2, 0u, c) == 1);
        CHECK(fx.values[20] == 255 && fx.values[21] == 0 && fx.values[22] == 127 && fx.values[23] == 255);
        CHECK(fx.dirty0 == -1);
        // Same value again: no change, so the dirty words stay as they were.
        fx.dirty0 = 0;
        CHECK(setParameterCvt<SColorf>(t, 2, 0u, c) == 1);
        CHECK(fx.dirty0 == 0);
    }

    // Indexed read and write of one element (index 1 of the float entry 0).
    {
        Fixture fx;
        SParameterTable t = fx.table(true);
        CHECK(setParameter<float>(t, 0, 1u, 2.5f) == 1);
        float v = 0.0f;
        CHECK(getParameter<float>(t, 0, 1u, v) == 1);
        CHECK(v == 2.5f);
        CHECK(getParameter<float>(t, 0, 3u, v) == 0);  // index past count
    }

    if (failures == 0) std::printf("material_parameters_part_1c_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
