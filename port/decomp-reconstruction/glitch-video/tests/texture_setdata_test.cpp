// ITexture::setData (0x5fdf74): pointer replacement, the owned bit, the range bit and the dirty bitmap reset.
#include "glitch-video/texture.hpp"
#include "video_test_types.hpp"

#include <cstdint>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Level sizes for 3 mips: mipCount + 1 words, then a bitmap of at least one word.
    int32_t levels[16] = {};
    glitch::video::test::TestTexture tex;
    tex.m_levelSizes = levels;
    tex.m_mipCount3e = 3;

    // Owned data on a fresh texture: the pointer is stored and bit 0 is set.
    uint8_t* first = new uint8_t[16];
    tex.setData(first, true, false);
    CHECK(tex.m_data == first);
    CHECK((tex.m_flags3f & 1) != 0);
    CHECK((tex.m_flags3f & 2) == 0);

    // Replacing owned data frees the old pointer (ASan would flag a leak or double free here).
    uint8_t* second = new uint8_t[16];
    tex.setData(second, false, true);
    CHECK(tex.m_data == second);
    CHECK((tex.m_flags3f & 1) == 0);
    CHECK((tex.m_flags3f & 2) != 0);  // range bit set: more than one mip
    CHECK((tex.m_dirtyFlags40 & 1) != 0);  // setDataDirty(false) ran for a new non-null pointer

    // Same pointer again: no dirty refresh, the range bit follows the flag.
    tex.m_dirtyFlags40 = 0;
    tex.setData(second, false, false);
    CHECK(tex.m_data == second);
    CHECK((tex.m_flags3f & 2) == 0);
    CHECK(tex.m_dirtyFlags40 == 0);

    // Null data: the pointer is cleared, bit 0 is set and the dirty word loses bit 0x2.
    tex.m_dirtyFlags40 = 0x3;
    tex.setData(nullptr, false, false);
    CHECK(tex.m_data == nullptr);
    CHECK((tex.m_flags3f & 1) != 0);
    CHECK((tex.m_dirtyFlags40 & 2) == 0);

    delete[] second;  // borrowed in this test (owned == false), so the test frees it
    if (failures == 0) {
        std::printf("texture_setdata_test: OK\n");
    }
    return failures == 0 ? 0 : 1;
}
