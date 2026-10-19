// pixel_format conversion: the table-driven packed path, checked against PFDTable rows of the
// original binary (pixel_format_table.cpp). Expected values are derived from the listing:
//   converter ctor 0x5ee958 (replicate), 0x5ee790 (LUT), 0x5ee5e8 (alpha LUT),
//   per-pixel expressions in convertPackedImpl<uint,uint> 0x5eeef4 (replicate and plain terms),
//   the same-format copy 0x5ee40c (convert's srcFormat == dstFormat branch),
//   LUT bytes at 0x8e3694 / 0x8e3698 / 0x8e36a0.
//
// Rows used (PFDTable index): 0 L8 and 2 A8 (type 0), 5 RGB565, 6 ARGB4444, 8 A1R5G5B5 (type 1),
// 12 ARGB8888 (type 2, field17 == 4), 14 RGBA8888 (type 2), 17 a compressed block row.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "glitch-video/pixel_format.hpp"
#include "glitch-video/pixel_format_convert.hpp"

using namespace glitch::video;
namespace pf = glitch::video::pixel_format;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static const int kL8 = 0;
static const int kRGB565 = 5;
static const int kARGB4444 = 6;
static const int kA1R5G5B5 = 8;
static const int kARGB8888 = 12;
static const int kCompressed = 17;

int main() {
    const auto& t = pf::detail::PFDTable;

    // Table facts the checks rely on (row bytes: widths +0x18..+0x1b, shifts +0x1c..+0x1f).
    CHECK(pf::getPackedType(kRGB565) == 1);
    CHECK(pf::getPackedType(kARGB4444) == 1);
    CHECK(pf::getPackedType(kA1R5G5B5) == 1);
    CHECK(pf::getPackedType(kL8) == 0);
    CHECK(pf::getPackedType(kARGB8888) == 2);  // field17 == 4
    CHECK(pf::getPackedType(kL8) == 0 && pf::getPackedType(2) == 0);
    CHECK(t[kRGB565].unknown18[4 + 0] == 11 && t[kRGB565].unknown18[4 + 1] == 5);
    CHECK(t[kARGB4444].unknown18[4 + 0] == 8 && t[kARGB4444].unknown18[4 + 3] == 12);
    CHECK(t[kA1R5G5B5].unknown18[3] == 1 && t[kA1R5G5B5].key[3] == 0x8000u);

    // Check 1: L8 -> A8 (uchar instance, key 0). Both formats have packed type 0. The destination
    // has the alpha flag and the source does not, so the fill (0xff) is the whole result.
    {
        uint8_t src[2] = {0x80, 0x12};
        uint8_t dst[2] = {0, 0};
        const int r = pf::convert(kL8, src, 2, 2, dst, 2, 2, 1, false);
        CHECK(r == 1);
        CHECK(dst[0] == 0xff);
        CHECK(dst[1] == 0xff);
    }

    // Check 2: RGB565 -> ARGB4444 (ushort instance, key 5). Reductions R 5->4, G 6->4, B 5->4,
    // and alpha filled with 0xf. Expected: top bits of each field.
    {
        uint16_t src[2] = {0xffff, 0x8000};
        uint16_t dst[2] = {0, 0};
        CHECK(pf::convert(kRGB565, src, 4, kARGB4444, dst, 4, 2, 1, false) == 1);
        CHECK(dst[0] == 0xffff);
        CHECK(dst[1] == 0xf800);
    }

    // Check 3: ARGB4444 -> RGB565 (key 5). G 4->6 and R 4->5 are upscales of up to 2x (line 681
    // path): (v << (db - sb)) | (v >> (2 sb - db)) per colour, and the alpha fill is absent.
    //   0x0f8f: R4=F, G4=8, B4=F -> R5=1F, G6=22 (0x22), B5=1F  -> 0xfc5f
    //   0x1234: R4=2, G4=3, B4=4 -> R5=04, G6=0c, B5=08         -> 0x2188
    {
        uint16_t src[2] = {0x0f8f, 0x1234};
        uint16_t dst[2] = {0, 0};
        CHECK(pf::convert(kARGB4444, src, 4, kRGB565, dst, 4, 2, 1, false) == 1);
        CHECK(dst[0] == 0xfc5f);
        CHECK(dst[1] == 0x2188);
    }

    // Check 4: A1R5G5B5 -> ARGB4444 (alpha-LUT path, SPackedConverter<0,2>): alpha 1 -> 0xf through the
    // 1-bit table (0x0000, 0xffff) shifted by 16 - 4; colours reduced by plain shifts.
    {
        uint16_t src[2] = {0xfc00, 0x7fff};
        uint16_t dst[2] = {0, 0};
        CHECK(pf::convert(kA1R5G5B5, src, 4, kARGB4444, dst, 4, 2, 1, false) == 1);
        CHECK(dst[0] == 0xff00);
        CHECK(dst[1] == 0x0fff);
    }

    // Flip: rows are written in reverse order (dst row r takes src row height - 1 - r).
    {
        uint16_t src[2] = {0xffff, 0x8000};
        uint16_t dst[2] = {0, 0};
        CHECK(pf::convert(kRGB565, src, 2, kARGB4444, dst, 2, 1, 2, true) == 1);
        CHECK(dst[0] == 0xf800);
        CHECK(dst[1] == 0xffff);
    }

    // In place with equal pitches (ARGB4444 -> RGB565 is 2 bytes per pixel on both sides).
    {
        uint16_t buf[2] = {0x0f8f, 0x1234};
        CHECK(pf::convert(kARGB4444, buf, 4, kRGB565, buf, 4, 2, 1, false) == 1);
        CHECK(buf[0] == 0xfc5f);
        CHECK(buf[1] == 0x2188);
    }

    // Refusals: a compressed destination is "Compressed destination format not supported" and leaves the destination untouched.
    {
        uint32_t src[1] = {0x11223344u};
        uint32_t dst[1] = {0xdeadbeefu};
        CHECK(pf::convert(kARGB8888, src, 4, kCompressed, dst, 4, 1, 1, false) == 0);
        CHECK(dst[0] == 0xdeadbeefu);
    }

    // The channel-swizzle arm of 0x5f95ac (same packed type, no alpha fill): RGBA8888 (format 14, bytes R G B A) to ARGB8888
    // (format 12, bytes A R G B) takes the source channel computeRelativeSwizzleTable names for each destination channel.
    {
        uint8_t src[4] = {0x44, 0x33, 0x22, 0x11};
        uint8_t dst[4] = {0, 0, 0, 0};
        CHECK(pf::convert(14, src, 4, 12, dst, 4, 1, 1, false) == 1);
        CHECK(dst[0] == 0x11 && dst[1] == 0x44 && dst[2] == 0x33 && dst[3] == 0x22);
        // Three channels out (R8G8B8, format 10): the alpha byte is dropped.
        uint8_t rgb[3] = {0, 0, 0};
        CHECK(pf::convert(14, src, 4, 10, rgb, 3, 1, 1, false) == 1);
        CHECK(rgb[0] == 0x44 && rgb[1] == 0x33 && rgb[2] == 0x22);
        // In place with a flip swaps the two rows while swizzling them.
        uint8_t two[8] = {0x44, 0x33, 0x22, 0x11, 0x88, 0x77, 0x66, 0x55};
        CHECK(pf::convert(14, two, 4, 12, two, 4, 1, 2, true) == 1);
        const uint8_t expectedTwo[8] = {0x55, 0x88, 0x77, 0x66, 0x11, 0x44, 0x33, 0x22};
        CHECK(std::memcmp(two, expectedTwo, 8) == 0);
    }

    // A 24-bit source (R8G8B8, format 10, the 0x5f9ebc arm): three bytes per pixel in, the alpha channel of the 32-bit destination
    // filled with ones. Format 14 stores R in the low byte, so the word is A B G R = ff 33 22 11.
    {
        uint8_t src[3] = {0x11, 0x22, 0x33};
        uint32_t dst[1] = {0};
        CHECK(pf::convert(10, src, 3, 14, dst, 4, 1, 1, false) == 1);
        CHECK(dst[0] == 0xff332211u);
    }

    // Alpha widening, the two converters the green-wider-than-source branch adds:
    //   ARGB4444 (6) -> RGBA8888 (14): every channel doubles, so the alpha is replicated (SAlphaUpscalePackedConverter).
    //   0xA5C3: A=A R=5 G=C B=3 -> A=AA R=55 G=CC B=33 -> word aa 33 cc 55.
    //   A1R5G5B5 (8) -> RGBA8888 (14): the 1-bit alpha goes through the table (SAlphaIndexedPackedConverter), the colours replicate.
    //   0xfc00: A=1 R=1f G=0 B=0 -> word ff 00 00 ff; 0x8320: A=1 R=0 G=19 B=0 -> G=ce, word ff 00 ce 00.
    {
        uint16_t src[1] = {0xA5C3};
        uint32_t dst[1] = {0};
        CHECK(pf::convert(kARGB4444, src, 2, 14, dst, 4, 1, 1, false) == 1);
        CHECK(dst[0] == 0xaa33cc55u);
        uint16_t src2[2] = {0xfc00, 0x8320};
        uint32_t dst2[2] = {0, 0};
        CHECK(pf::convert(kA1R5G5B5, src2, 4, 14, dst2, 8, 2, 1, false) == 1);
        CHECK(dst2[0] == 0xff0000ffu);
        CHECK(dst2[1] == 0xff00ce00u);
    }

    // The luminance arm (destination L8 with the luminance flag, source without it): RGB565 is a 16-bit source (class 1, key 4), the
    // weighted sum of the channels scaled by 255 and truncated: pure red 0xf800 is 0.3 * 255 = 76.
    {
        uint16_t src[2] = {0xf800, 0x0000};
        uint8_t dst[2] = {0xee, 0xee};
        CHECK(pf::convert(kRGB565, src, 4, kL8, dst, 2, 2, 1, false) == 1);
        CHECK(dst[0] == 76);
        CHECK(dst[1] == 0);
    }

    // The srcFormat == dstFormat branch of convert is copy() (0x5ee40c). Every expectation below is the
    // listing's: rows = height / row byte +0x25, pitch = computePitch(format, width), one memcpy of
    // rows * pitch when the pitch equals both sides' otherwise one memcpy per row, the flip destination
    // starting at the last row with a -dstPitch step, and for src == dst either the no-op (no flip), the
    // in-place row swap through one process-buffer row (flip) or the "Bad conversion parameters" refusal
    // (different pitch). Format 12 is 4 bytes per pixel, blockHeight 1.
    {
        // Same buffer shape on both sides: one whole-block memcpy.
        std::uint8_t from[16];
        std::uint8_t to[16] = {0};
        for (int i = 0; i < 16; ++i) from[i] = static_cast<std::uint8_t>(i + 1);
        CHECK(pf::convert(kARGB8888, from, 8, kARGB8888, to, 8, 2, 2, false) == 1);
        CHECK(std::memcmp(from, to, sizeof from) == 0);
    }
    {
        // Different pitches: one memcpy of pitch bytes per row, each side advancing by its own pitch.
        std::uint8_t from[32];
        std::uint8_t to[16] = {0};
        for (int i = 0; i < 32; ++i) from[i] = static_cast<std::uint8_t>(0x10 + i);
        CHECK(pf::convert(kARGB8888, from, 16, kARGB8888, to, 8, 2, 2, false) == 1);
        CHECK(std::memcmp(from, to, 8) == 0);
        CHECK(std::memcmp(from + 16, to + 8, 8) == 0);
    }
    {
        // Flip: the destination rows are written backwards.
        std::uint8_t from[16];
        std::uint8_t to[16] = {0};
        for (int i = 0; i < 8; ++i) from[i] = 0x11;
        for (int i = 8; i < 16; ++i) from[i] = 0x22;
        CHECK(pf::convert(kARGB8888, from, 8, kARGB8888, to, 8, 2, 2, true) == 1);
        for (int i = 0; i < 8; ++i) CHECK(to[i] == 0x22);
        for (int i = 8; i < 16; ++i) CHECK(to[i] == 0x11);
    }
    {
        // src == dst with an equal pitch and no flip is a no-op that returns 1.
        std::uint8_t buffer[16];
        std::memset(buffer, 0x5a, sizeof buffer);
        CHECK(pf::convert(kARGB8888, buffer, 8, kARGB8888, buffer, 8, 2, 2, false) == 1);
        for (int i = 0; i < 16; ++i) CHECK(buffer[i] == 0x5a);
    }
    {
        // src == dst with different pitches: logged and refused.
        std::uint8_t buffer[16];
        std::memset(buffer, 0x5a, sizeof buffer);
        CHECK(pf::convert(kARGB8888, buffer, 8, kARGB8888, buffer, 16, 2, 2, false) == 0);
        for (int i = 0; i < 16; ++i) CHECK(buffer[i] == 0x5a);
    }
    {
        // src == dst with flip and an equal pitch: the rows are swapped in place through the process buffer.
        std::uint8_t buffer[16];
        for (int i = 0; i < 8; ++i) buffer[i] = 0x33;
        for (int i = 8; i < 16; ++i) buffer[i] = 0x44;
        CHECK(pf::convert(kARGB8888, buffer, 8, kARGB8888, buffer, 8, 2, 2, true) == 1);
        for (int i = 0; i < 8; ++i) CHECK(buffer[i] == 0x44);
        for (int i = 8; i < 16; ++i) CHECK(buffer[i] == 0x33);
    }
    {
        // A compressed row (format 17, flag bit 8) refuses the flip; without it the same row copies, and
        // the row count is the height divided by the row's block height (+0x25 = 4 for row 17).
        std::uint8_t from[8] = {1, 2, 3, 4, 5, 6, 7, 8};
        std::uint8_t to[8] = {0};
        CHECK(pf::convert(kCompressed, from, 8, kCompressed, to, 8, 4, 4, true) == 0);
        CHECK(to[0] == 0);
        CHECK(pf::convert(kCompressed, from, 8, kCompressed, to, 8, 4, 4, false) == 1);
        CHECK(std::memcmp(from, to, sizeof from) == 0);
    }

    // 24-bit to 24-bit (format 11 to 10: the BMP loader's conversion) with a flip: two pixels, one row.
    {
        const unsigned char from[8] = {0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0, 0};
        unsigned char to[6] = {};
        CHECK(pf::convert(11, from, 8, 10, to, 6, 2, 1, true) == 1);
        const unsigned char expected[6] = {0x33, 0x22, 0x11, 0x66, 0x55, 0x44};  // red and blue swapped
        CHECK(std::memcmp(to, expected, sizeof to) == 0);
    }

    if (failures == 0) {
        std::printf("pixel_format_convert_test: all checks passed\n");
        return 0;
    }
    std::printf("pixel_format_convert_test: %d failure(s)\n", failures);
    return 1;
}
