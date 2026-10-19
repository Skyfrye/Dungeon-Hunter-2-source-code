// Test for batch v1-vendor-gameswf-pack1-607ee7-0: the arithmetic and class-id rules behind the
// generic_character, bitmap_character, hash::set_raw_capacity and effect::~effect bodies.
// Returns non-zero when a check fails.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <limits>

#include "vendor-gameswf/gameswf_character_dh2_helpers.hpp"

namespace {

int g_failures = 0;

void check(bool ok, const char* what, int line) {
	if (!ok) {
		++g_failures;
		std::printf("FAIL line %d: %s\n", line, what);
	}
}

#define CHECK(expr) check((expr), #expr, __LINE__)

}  // namespace

int main() {
	namespace d = gameswf::dh2_character;

	// generic_character::is(int) const, 0x7599cc: 3, 1 and 0 only.
	CHECK(d::generic_is(3));
	CHECK(d::generic_is(1));
	CHECK(d::generic_is(0));
	CHECK(!d::generic_is(2));
	CHECK(!d::generic_is(4));
	CHECK(!d::generic_is(33));
	CHECK(!d::generic_is(10));
	CHECK(!d::generic_is(-1));

	// bitmap_character::is(int) const, 0x759a14: 33 and 10 only.
	CHECK(d::bitmap_is(33));
	CHECK(d::bitmap_is(10));
	CHECK(!d::bitmap_is(3));
	CHECK(!d::bitmap_is(0));
	CHECK(!d::bitmap_is(1));
	CHECK(!d::bitmap_is(32));

	// bitmap_character::point_test_local, 0x759a30: inclusive rect {x_min, x_max, y_min, y_max}.
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 0.0f, 0.0f));      // corner
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 200.0f, 100.0f));  // far corner
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 50.0f, 50.0f));    // inside
	CHECK(!d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, -0.5f, 50.0f));   // left of rect
	CHECK(!d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 200.5f, 50.0f));  // right of rect
	CHECK(!d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 50.0f, -1.0f));   // above rect
	CHECK(!d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 50.0f, 101.0f));  // below rect

	// NaN is not rejected, as in the binary: the test is !(x < x_min) etc., not x >= x_min.
	const float nan = std::numeric_limits<float>::quiet_NaN();
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, nan, 50.0f));
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, 50.0f, nan));
	CHECK(d::bitmap_point_test(0.0f, 200.0f, 0.0f, 100.0f, nan, nan));

	// bitmap_character ctor default rect: pixels times 20 (twips).
	CHECK(d::pixels_to_twips(0) == 0.0f);
	CHECK(d::pixels_to_twips(10) == 200.0f);
	CHECK(d::pixels_to_twips(3) == 60.0f);
	CHECK(d::pixels_to_twips(512) == 10240.0f);

	// The divisor is the float 0x3F317218 (ln 2), not the decimal 0.69315f (0x3F317247).
	std::uint32_t ln2_bits = 0;
	std::memcpy(&ln2_bits, &d::kHashCapacityLn2, sizeof ln2_bits);
	CHECK(ln2_bits == 0x3F317218u);

	// hash::set_raw_capacity, 0x7586b8: request <= 0 clears; otherwise a power of two, at least 4.
	CHECK(d::hash_raw_capacity(0) == 0);
	CHECK(d::hash_raw_capacity(-3) == 0);
	CHECK(d::hash_raw_capacity(1) == 4);
	CHECK(d::hash_raw_capacity(2) == 4);
	CHECK(d::hash_raw_capacity(3) == 4);
	CHECK(d::hash_raw_capacity(6) == 8);
	CHECK(d::hash_raw_capacity(10) == 16);
	CHECK(d::hash_raw_capacity(100) == 128);
	CHECK(d::hash_raw_capacity(1000) == 1024);

	// Requests 2^k + 1: the exact-ln2 binary gives 2^(k+1). The 0.69315f value gave 2^k here.
	CHECK(d::hash_raw_capacity(5) == 8);
	CHECK(d::hash_raw_capacity(9) == 16);
	CHECK(d::hash_raw_capacity(17) == 32);
	CHECK(d::hash_raw_capacity(33) == 64);
	CHECK(d::hash_raw_capacity(65) == 128);
	CHECK(d::hash_raw_capacity(65537) == 131072);

	// Table allocation: 8 * (5 * size + 1) bytes, the free uses the same count for the old size.
	CHECK(d::hash_table_bytes(4) == 168u);
	CHECK(d::hash_table_bytes(8) == 328u);
	CHECK(d::hash_table_bytes(16) == 648u);
	CHECK(d::hash_table_bytes(16) == 8u * (5u * 16u + 1u));

	// effect::~effect, 0x758af8: the loop runs for negative counts only, |count| times.
	CHECK(d::effect_zero_loop_count(0) == 0);
	CHECK(d::effect_zero_loop_count(5) == 0);
	CHECK(d::effect_zero_loop_count(-1) == 1);
	CHECK(d::effect_zero_loop_count(-3) == 3);

	if (g_failures == 0) {
		std::printf("all checks passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
