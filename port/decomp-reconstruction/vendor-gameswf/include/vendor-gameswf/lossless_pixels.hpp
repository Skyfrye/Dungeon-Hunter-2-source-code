// The pixel arithmetic of define_bits_lossless_2_loader (0x75ed20) that differs from gameswf r1714, with no dependency on the other
// units so that a test can check it on its own (the loader itself needs zlib and the render handler).
//
// A DefineBitsLossless2 image with 32 bits per pixel (format 5) holds ARGB bytes whose colour is already multiplied by the alpha.
// r1714 only moves the bytes into R, G, B, A order. The DH2 loader divides the colour by the alpha as it moves the bytes, so that the
// bitmap holds straight colour:
//   a != 0:  r = 255 * r / a, g = 255 * g / a, b = 255 * b / a   (signed integer division, the result kept to its low byte)
//   a == 0:  r = g = b = 0                                       (the alpha byte itself, which is 0)
// The alpha stays where the file has it, as the fourth byte. The binary does the division in 32-bit signed arithmetic on the
// zero-extended bytes (255 * c fits), and stores the low byte of the quotient: a colour above its alpha (invalid premultiplied data)
// wraps instead of clamping.

#pragma once

#include <cstdint>

namespace gameswf {
namespace lossless_dh2 {

// Converts one pixel in place: p[0..3] = A, R, G, B on entry, R, G, B, A on exit.
inline void unpremultiply_argb_to_rgba(std::uint8_t* p) {
	const std::uint8_t a = p[0];
	const std::uint8_t r = p[1];
	const std::uint8_t g = p[2];
	const std::uint8_t b = p[3];
	if (a != 0) {
		p[0] = static_cast<std::uint8_t>(255 * r / a);
		p[1] = static_cast<std::uint8_t>(255 * g / a);
		p[2] = static_cast<std::uint8_t>(255 * b / a);
	} else {
		p[0] = a;
		p[1] = a;
		p[2] = a;
	}
	p[3] = a;
}

}  // namespace lossless_dh2
}  // namespace gameswf
