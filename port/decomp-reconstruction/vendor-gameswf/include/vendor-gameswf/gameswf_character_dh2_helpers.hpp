// gameswf character and hash helpers of the DH2 binary (Gameloft build). Pure arithmetic and class-id
// tables with no gameswf type, so they compile on their own and are unit tested
// (vendor-gameswf/tests/v1-vendor-gameswf-pack1-607ee7-0_test.cpp).
//
// Used by the member bodies in vendor-gameswf/src/v1-vendor-gameswf-pack1-607ee7-0.cpp:
//   generic_character::is            0x7599cc
//   bitmap_character::is             0x759a14
//   bitmap_character::point_test_local 0x759a30 (stored rect, DH2 order x_min, x_max, y_min, y_max)
//   bitmap_character ctor            0x7ae1c8 (default rect: width and height times 20 twips)
//   hash::set_raw_capacity           0x7586b8 (table size rule, minimum 4)
//   effect::~effect                  0x758af8 (zeroing loop count)

#pragma once

#include <cmath>
#include <cstdint>

namespace gameswf {
namespace dh2_character {

// generic_character::is(int) const, 0x7599cc: true for class ids 3, 1 and 0.
inline bool generic_is(int class_id) {
	return class_id == 3 || class_id == 1 || class_id == 0;
}

// bitmap_character::is(int) const, 0x759a14: true for class ids 33 and 10.
inline bool bitmap_is(int class_id) {
	return class_id == 33 || class_id == 10;
}

// bitmap_character::point_test_local(float, float), 0x759a30. The binary compares the point with the
// rect stored in the object (+0x24 x_min, +0x28 x_max, +0x2c y_min, +0x30 y_max). It rejects only when
// x < x_min, x > x_max, y < y_min or y > y_max (__aeabi_fcmplt / __aeabi_fcmpgt, then EOR 1). Each test is
// written as a negated comparison, so a NaN coordinate is not rejected and the function returns true, as the
// binary does. "x >= x_min" would return false for NaN.
inline bool bitmap_point_test(float x_min, float x_max, float y_min, float y_max, float x, float y) {
	return !(x < x_min) && !(x > x_max) && !(y < y_min) && !(y > y_max);
}

// Pixels to twips (SWF units, 20 per pixel). The binary computes (float)get_width() * 20.0 and stores it
// as a float. Exact for any width or height below 2^24.
inline float pixels_to_twips(int pixels) {
	return static_cast<float>(pixels) * 20.0f;
}

// The divisor of set_raw_capacity: the float 0x3F317218 (ln 2 = 0.693147182f). The binary loads it with
// MOV R1,#0x3F317218 before __aeabi_fdiv at 0x7586b8. Hex-Rays prints it rounded as 0.69315, and the decimal
// 0.69315f is 0x3F317247, which is a different float: it gives half the table for every request 2^k + 1
// (for example 5 gives 4 instead of 8, 65 gives 64 instead of 128). Do not replace this with 0.69315f.
inline constexpr float kHashCapacityLn2 = 0.693147182f;  // binary bits 0x3F317218

// hash::set_raw_capacity(int), 0x7586b8: the new table size (entry count, a power of two) for a requested
// raw capacity. Returns 0 when the request is not positive; the caller then clears the table.
// The binary: size = 1 << (int)(logf(request - 1) / ln2 + 1.0f), computed in single precision (__aeabi_fdiv,
// __aeabi_fadd, __aeabi_f2iz), with a minimum of 4. For request 1, logf(0) is -inf, which ARM converts to
// INT_MIN; the shift then uses the low byte (0), so the size is 1 and the minimum makes it 4. A shift of 32 or
// more gives 0 (ARM LSL by register), and 31 gives a negative value; both end at the minimum of 4.
inline int hash_raw_capacity(int requested) {
	if (requested <= 0) {
		return 0;
	}
	if (requested == 1) {
		return 4;
	}
	const float quotient = std::logf(static_cast<float>(requested - 1)) / kHashCapacityLn2;
	const int shift = static_cast<int>(quotient + 1.0f);
	std::uint32_t pow2 = 0;
	if (shift >= 0 && shift < 32) {
		pow2 = std::uint32_t(1) << shift;
	}
	int size = static_cast<int>(pow2);
	if (size < 4) {
		size = 4;
	}
	return size;
}

// Bytes of one hash table allocation with the given entry count: 8 bytes of header (count, size mask)
// plus 40 bytes per entry. The binary allocates 8 * (5 * size + 1) and frees 8 * (5 * (mask + 1) + 1).
inline std::uint32_t hash_table_bytes(int entry_count) {
	return static_cast<std::uint32_t>(8 * (5 * entry_count + 1));
}

// effect::~effect, 0x758af8: when the array count at +0x08 is negative, the loop zeroes the elements
// from index count up to -1 (count iterations). For zero or positive counts there is no loop.
inline int effect_zero_loop_count(int array_count) {
	return array_count < 0 ? -array_count : 0;
}

}  // namespace dh2_character
}  // namespace gameswf
