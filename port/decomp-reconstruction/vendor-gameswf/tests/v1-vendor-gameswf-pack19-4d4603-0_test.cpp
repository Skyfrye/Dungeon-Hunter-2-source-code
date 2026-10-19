// Test for batch v1-vendor-gameswf-pack19-4d4603-0 (default_bitmap_font_entity::get_char_image's decoding).
// The decode helpers in vendor-gameswf/bitmap_glyph_decode.hpp are the arithmetic that get_char_image runs on the font
// file: big-endian fields, the packed pixel runs (with and without the repeat bit), and the scaled advance. The test
// needs no engine and no file: each case builds the bytes it decodes.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cstdint>
#include <cstdio>

#include "vendor-gameswf/bitmap_glyph_decode.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                             \
	do {                                                                        \
		if (!(cond)) {                                                          \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
			++g_failures;                                                       \
		}                                                                       \
	} while (0)

namespace bd = gameswf::bitmap_glyph_decode;

void test_big_endian_fields() {
	const std::uint8_t b32[4] = {0x11, 0x22, 0x33, 0x44};
	CHECK(bd::be32(b32) == 0x11223344u);
	const std::uint8_t b16[2] = {0xff, 0xfe};
	CHECK(bd::be16(b16) == 0xfffeu);
}

void test_pixel_word() {
	// The binary's shuffle returns the little-endian load of the four bytes: bytes 11 22 33 44 give the word 0x44332211.
	CHECK(bd::pixel_word(0x11223344u) == 0x44332211u);
	CHECK(bd::pixel_word(0xaabbccddu) == 0xddccbbaau);
	CHECK(bd::pixel_word(0x00000000u) == 0x00000000u);
}

void test_decode_runs() {
	// Metrics (4 bytes), then run 1: control 0x01 gives two words, read one by one.
	// Then run 2: control 0x82 gives three words, the first read and then repeated.
	const std::uint8_t record[18] = {
	    0x00, 0x00, 0x00, 0x00,              // glyph metrics, not read by the decoder
	    0x01,                                // control: two words, no repeat
	    0x11, 0x22, 0x33, 0x44,              // word 1, big-endian bytes
	    0x55, 0x66, 0x77, 0x88,              // word 2
	    0x82,                                // control: three words, repeat bit set
	    0xaa, 0xbb, 0xcc, 0xdd,              // the repeated word
	};
	std::uint32_t out[5] = {0, 0, 0, 0, 0};
	const int next = bd::decode_pixels(record, 5, out);
	CHECK(out[0] == 0x44332211u);
	CHECK(out[1] == 0x88776655u);
	CHECK(out[2] == 0xddccbbaau);
	CHECK(out[3] == 0xddccbbaau);
	CHECK(out[4] == 0xddccbbaau);
	CHECK(next == 18);
}

void test_decode_single_word() {
	// Control 0x00: one word, no repeat.
	const std::uint8_t record[9] = {0, 0, 0, 0, 0x00, 0x01, 0x02, 0x03, 0x04};
	std::uint32_t out[1] = {0};
	const int next = bd::decode_pixels(record, 1, out);
	CHECK(out[0] == 0x04030201u);
	CHECK(next == 9);
}

void test_decode_zero_count() {
	const std::uint8_t record[5] = {0, 0, 0, 0, 0x00};
	std::uint32_t out[1] = {0x12345678u};
	const int next = bd::decode_pixels(record, 0, out);
	CHECK(out[0] == 0x12345678u);  // nothing written
	CHECK(next == 4);              // the control byte is not read when count is zero
}

void test_scaled_advance() {
	// units = 100 + 1 + 10 - 2 = 109; scale = 1024 / (12 * 20) = 4.2667; 109 * 4.2667 = 465.07 -> 465.
	CHECK(bd::scaled_advance(100u, 2, 10, 12) == 465);
	// Negative units wrap to -4 in 32-bit arithmetic: -4 * (1024 / 200) = -20.48 -> -20 (truncation toward zero).
	CHECK(bd::scaled_advance(0u, 5, 0, 10) == -20);
}

}  // namespace

int main() {
	test_big_endian_fields();
	test_pixel_word();
	test_decode_runs();
	test_decode_single_word();
	test_decode_zero_count();
	test_scaled_advance();
	if (g_failures == 0) {
		std::printf("pack19 bitmap_glyph_decode: all checks passed\n");
		return 0;
	}
	std::printf("pack19 bitmap_glyph_decode: %d check(s) failed\n", g_failures);
	return 1;
}
