// Test for the gameswf_impl pass, part 2: the pixel arithmetic of define_bits_lossless_2_loader (0x75ed20) that differs from r1714,
// vendor-gameswf/include/vendor-gameswf/lossless_pixels.hpp.
//
//   bash tools/trackb/check_tu.sh --test port/decomp-reconstruction/vendor-gameswf/tests/v1-vendor-gameswf-gameswf_impl-lossless_test.cpp
//
// No source needs linking: the header is self-contained. The loader itself (gameswf_impl.cpp) cannot be linked in a test: it
// includes zlib and the render handler. Covered: the byte order (ARGB in, RGBA out), the division by the alpha (integer, the
// low byte kept), the alpha 0 case and the alpha 255 identity.
//
// Returns non-zero on failure.

#include <cstdint>
#include <cstdio>

#include "vendor-gameswf/lossless_pixels.hpp"

static int g_failures = 0;
static int g_checks = 0;

#define CHECK(cond)                                                    \
	do {                                                               \
		++g_checks;                                                    \
		if (!(cond)) {                                                 \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
			++g_failures;                                              \
		}                                                              \
	} while (0)

static void convert(std::uint8_t a, std::uint8_t r, std::uint8_t g, std::uint8_t b, std::uint8_t (&out)[4]) {
	out[0] = a;
	out[1] = r;
	out[2] = g;
	out[3] = b;
	gameswf::lossless_dh2::unpremultiply_argb_to_rgba(out);
}

int main() {
	std::uint8_t px[4];

	// Opaque: the colour is unchanged, only the order moves (A R G B -> R G B A).
	convert(255, 10, 20, 30, px);
	CHECK(px[0] == 10 && px[1] == 20 && px[2] == 30 && px[3] == 255);

	// Half alpha: 255 * c / 128, integer division (64 -> 127, 63 -> 125, 128 -> 255, 0 -> 0).
	convert(128, 64, 63, 128, px);
	CHECK(px[0] == 127 && px[1] == 125 && px[2] == 255 && px[3] == 128);

	// Alpha 0: all three colours are 0, whatever the file holds; the alpha stays 0.
	convert(0, 200, 100, 50, px);
	CHECK(px[0] == 0 && px[1] == 0 && px[2] == 0 && px[3] == 0);

	// Alpha 1: 255 * 1 / 1 = 255, and 0 stays 0.
	convert(1, 1, 0, 1, px);
	CHECK(px[0] == 255 && px[1] == 0 && px[2] == 255 && px[3] == 1);

	// A colour above its alpha (not valid premultiplied data) wraps to the low byte: 255 * 3 / 2 = 382 = 0x17e.
	convert(2, 3, 2, 1, px);
	CHECK(px[0] == 0x7e && px[1] == 255 && px[2] == 127 && px[3] == 2);

	// 255 * 255 / 254 = 256 (65025 / 254 = 256.0039) -> low byte 0; 255 * 254 / 254 = 255; 255 * 253 / 254 = 253 (253.99 truncated).
	convert(254, 255, 254, 253, px);
	CHECK(px[0] == 0 && px[1] == 255 && px[2] == 253 && px[3] == 254);

	// A row of four pixels converted one by one, as the loader does.
	std::uint8_t row[16] = {255, 1, 2, 3, 0, 9, 9, 9, 100, 50, 100, 25, 51, 51, 0, 17};
	for (int i = 0; i < 4; i++) {
		gameswf::lossless_dh2::unpremultiply_argb_to_rgba(row + i * 4);
	}
	const std::uint8_t expected[16] = {1, 2, 3, 255, 0, 0, 0, 0, 127, 255, 63, 100, 255, 0, 85, 51};
	for (int i = 0; i < 16; i++) {
		CHECK(row[i] == expected[i]);
	}

	if (g_failures != 0) {
		std::printf("%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("gameswf_impl lossless: all %d checks passed\n", g_checks);
	return 0;
}
