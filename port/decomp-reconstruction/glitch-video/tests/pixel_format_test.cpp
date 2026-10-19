// pixel_format size helpers, run over rows written into PFDTable.
// The table holds the real bytes now, so the rows used here are cleared first and
// then set to made-up values.
#include <cstdio>

#include "glitch-video/pixel_format.hpp"

using namespace glitch::video;
namespace pf = glitch::video::pixel_format;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    auto& t = pf::detail::PFDTable;
    for (auto& e : t) e = pf::detail::SFormatEntry{};

    // Row 0: 32 bpp, uncompressed. Pitch 4*w, size h * pitch.
    t[0].bitsPerPixel = 32;
    t[0].blockWidth = 1;
    t[0].blockHeight = 1;
    // Row 1: 8-byte blocks of 4x4 pixels, minimum 8 bytes.
    t[1].key[0] = 1; t[1].key[1] = 2; t[1].key[2] = 3; t[1].key[3] = 4;
    t[1].bytesPerBlock = 8;
    t[1].blockWidth = 4;
    t[1].blockHeight = 4;
    t[1].minSize = 8;

    // Plain 2-D and depth sizes.
    CHECK(pf::computePitch(0, 8) == 32);
    CHECK(pf::computeSizeInBytes(0, 8, 8) == 256);
    CHECK(pf::computeSizeInBytes(0, 8, 8, 3) == 768);

    // Block path: w = 10 gives 3 blocks, h = 10 gives 3 block rows.
    CHECK(pf::computePitch(1, 10) == 24);
    CHECK(pf::computeSizeInBytes(1, 10, 10) == 72);
    // The minimum applies when the plane is smaller than 8 bytes.
    CHECK(pf::computeSizeInBytes(1, 2, 2) == 8);

    // getFormat: first row whose four key words match; 39 when none does.
    CHECK(pf::getFormat(1, 2, 3, 4) == 1);
    CHECK(pf::getFormat(9, 9, 9, 9) == 39);

    // getPackedType over the rule set.
    t[2].flags = 0x40; t[2].packedType = 5;   // flag 0x40: stored value kept
    CHECK(pf::getPackedType(2) == 5);
    t[3].packedType = 0; t[3].field17 = 1;    // field17 == 1: stored value
    CHECK(pf::getPackedType(3) == 0);
    t[4].packedType = 0; t[4].field17 = 2;    // packedType 0, field17 < 3: 1
    CHECK(pf::getPackedType(4) == 1);
    t[5].packedType = 1; t[5].field17 = 2;    // packedType 1, field17 == 2: 2
    CHECK(pf::getPackedType(5) == 2);
    t[6].packedType = 1; t[6].field17 = 3;    // inconsistent: -1
    CHECK(pf::getPackedType(6) == -1);
    t[7].packedType = 0; t[7].field17 = 3;    // packedType 0, field17 >= 3: 2
    CHECK(pf::getPackedType(7) == 2);

    // Mip levels: the width is shifted only when the flag is false; height and
    // depth are always shifted, and a shifted zero becomes 1.
    CHECK(pf::computeMipmapSizeInBytes(0, 8, 8, 1, false) == 64);    // 4x4
    CHECK(pf::computeMipmapSizeInBytes(0, 8, 8, 1, true) == 128);    // 8 wide, 4 high
    CHECK(pf::computeMipmapSizeInBytes(0, 1, 1, 5, false) == 4);     // clamps to 1x1
    CHECK(pf::computeMipmapSizeInBytes(0, 8, 8, 2, 1, false) == 64); // depth 1, 4x4

    // Mip chain sums: 6-argument form with levels 0..levels-1 at depth d.
    CHECK(pf::computeSizeInBytes(0, 8, 8, 1, 0, false) == 0);
    CHECK(pf::computeSizeInBytes(0, 8, 8, 1, 1, false) == 256);      // level 0 only
    CHECK(pf::computeSizeInBytes(0, 8, 8, 1, 3, false) == 336);      // 16 + 64 + 256
    // 5-argument form uses depth 1.
    CHECK(pf::computeSizeInBytes(0, 8, 8, 2, false) == 320);         // 64 + 256

    if (failures == 0) {
        std::printf("pixel_format_test: all checks passed\n");
        return 0;
    }
    std::printf("pixel_format_test: %d failure(s)\n", failures);
    return 1;
}
