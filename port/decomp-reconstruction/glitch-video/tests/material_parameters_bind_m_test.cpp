// Host check of the owner M typed binding (material_parameters_bind_m.cpp): an int through the index forms (part 1b
// route, with the dirty words), a float array with a 4-byte stride (part 1c), an intrusive_ptr<ITexture> round trip
// through the index and array forms, the dispatchers, and the undefined-id result. The ITexture / CLight hooks of
// part 1b are stubbed here, as in material_parameters_part_1b_test.cpp. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <vector>

#include "glitch-video/material_parameters.hpp"
#include "glitch-video/texture.hpp"
#include "video_test_types.hpp"

namespace glitch::video {
class CLight;
}  // namespace glitch::video


using glitch::video::CMaterial;
using glitch::video::ITexture;
using glitch::video::detail::IMaterialParameters;
using glitch::video::detail::SParameterBlockHeader;
using glitch::video::detail::SParameterEntry;
using Owner = IMaterialParameters<CMaterial, true>;

static int failures = 0;
#define CHECK(cond)                                             \
    do {                                                        \
        if (!(cond)) {                                          \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond); \
            ++failures;                                         \
        }                                                       \
    } while (0)

int main() {
    // Block: id 0 is int x2 at +0, id 1 is float x3 at +8, id 2 is texture x2 with slots at +32 and +36.
    SParameterEntry entries[3];
    entries[0].type = 1;
    entries[0].count = 2;
    entries[0].valueOffset = 0;
    entries[1].type = 5;
    entries[1].count = 3;
    entries[1].valueOffset = 8;
    entries[2].type = 12;
    entries[2].count = 2;
    entries[2].valueOffset = 32;
    SParameterBlockHeader block;
    block.count = 3;
    block.entries = entries;
    std::vector<std::uint8_t> values(64, 0);

    // The texture outlives the parameter object, whose slot holds a use of it; it is on the stack with count 1.
    glitch::video::test::TestTexture tex;

    Owner m;
    m.setBlockForTest(&block);
    m.setValueBuffer(values.data());

    // Int through the index forms: a changed store marks both dirty words, and the value reads back.
    CHECK(m.setParameter(0, 1u, 42));
    CHECK(m.dirtyWord0() == 0xffffffffu && m.dirtyWord1() == 0xffffffffu);
    int v = 0;
    CHECK(m.getParameter(0, 1u, v) && v == 42);

    // Float array with a 4-byte stride (elements are contiguous): the round trip returns the same values.
    const float in[3] = {1.5f, -2.25f, 8.0f};
    CHECK(m.setParameter(1, in, 4));
    float out[3] = {};
    CHECK(m.getParameter(1, out, 4));
    CHECK(out[0] == 1.5f && out[1] == -2.25f && out[2] == 8.0f);

    // intrusive_ptr<ITexture>: the same pointer comes back through the index form and through the array form
    // (element 1 is the slot at +36; element 0 was never written and reads back null).
    boost::intrusive_ptr<ITexture> p(&tex, true);
    CHECK(m.setParameter(2, 1u, p));
    boost::intrusive_ptr<ITexture> got;
    CHECK(m.getParameter(2, 1u, got) && got.get() == &tex);
    boost::intrusive_ptr<ITexture> arr[2];
    CHECK(m.getParameter(2, arr, static_cast<int>(sizeof(arr[0]))));
    CHECK(arr[0].get() == nullptr && arr[1].get() == &tex);

    // Undefined id, and an index beyond the entry count: 0, and the caller's value is left alone.
    int u = 7;
    CHECK(!m.getParameter(9, 0u, u) && u == 7);
    CHECK(!m.setParameter(0, 2u, 5));
    CHECK(m.getParameter(0, 1u, v) && v == 42);

    // Dispatchers: the code selects the row. Code 9 is unmapped and returns 0.
    int d = 5;
    CHECK(m.setParameter(0, 1u, 1, &d) == 1);
    int back = 0;
    CHECK(m.getParameter(0, 1u, 1, &back) == 1 && back == 5);
    CHECK(m.getParameter(0, 1u, 9, &back) == 0);
    CHECK(m.getParameter(9, 0u, 1, &back) == 0);

    if (failures == 0) std::printf("material_parameters_bind_m_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
