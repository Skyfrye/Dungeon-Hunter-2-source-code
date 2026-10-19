// Test for batch v1-vendor-gameswf-gameswf-fddef6-2: the pure helpers in
// vendor-gameswf/gameswf_dh2_helpers.hpp (sort comparator and collect<T> vertex walk).
// Returns non-zero on failure. Needs no gameswf or glitch code to link.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cstdlib>

#include "vendor-gameswf/gameswf_dh2_helpers.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

bool same_floats(const float* got, const float* want, int n)
{
	for (int i = 0; i < n; ++i) {
		if (got[i] != want[i]) {
			std::fprintf(stderr, "  float[%d] got %g want %g\n", i, got[i], want[i]);
			return false;
		}
	}
	return true;
}

// qsort comparator with the binary's (void const*, void const*) shape: the elements are float*.
int sort_cmp(const void* A, const void* B)
{
	return gameswf::dh2::compare_decreasing_error(*static_cast<const float* const*>(A),
	                                              *static_cast<const float* const*>(B));
}

void test_compare_decreasing_error()
{
	float hi = 2.0f, lo = 1.0f, same = 2.0f;
	CHECK(gameswf::dh2::compare_decreasing_error(&hi, &lo) == -1);  // larger error sorts first
	CHECK(gameswf::dh2::compare_decreasing_error(&lo, &hi) == 1);
	CHECK(gameswf::dh2::compare_decreasing_error(&hi, &same) == 0);
	// Unordered pairs: fcmplt and fcmpgt are both false, so the binary returns 0 on either side.
	float nan = std::nanf("");
	CHECK(gameswf::dh2::compare_decreasing_error(&nan, &hi) == 0);
	CHECK(gameswf::dh2::compare_decreasing_error(&hi, &nan) == 0);
	CHECK(gameswf::dh2::compare_decreasing_error(&nan, &nan) == 0);
}

void test_qsort_decreasing()
{
	float a = 0.5f, b = 2.0f, c = 1.0f, d = 4.5f;
	float* items[4] = {&a, &b, &c, &d};
	std::qsort(items, 4, sizeof(items[0]), sort_cmp);
	const float want[4] = {4.5f, 2.0f, 1.0f, 0.5f};
	for (int i = 0; i < 4; ++i) {
		CHECK(*items[i] == want[i]);
	}
}

// Vertex buffer with 'count' vertices, each 'stride' bytes, filled by 'fill(k, vertex_ptr)'.
template <typename Fill>
void build_buffer(std::uint8_t* buf, int count, int stride, Fill fill)
{
	for (int k = 0; k < count; ++k) {
		fill(k, buf + k * stride);
	}
}

void test_collect_signed_char_indexed()
{
	// 4 vertices, stride 4: x = k, y = -k.
	std::uint8_t buf[16] = {};
	build_buffer(buf, 4, 4, [](int k, std::uint8_t* v) {
		v[0] = static_cast<std::uint8_t>(static_cast<signed char>(k));
		v[1] = static_cast<std::uint8_t>(static_cast<signed char>(-k));
	});
	const std::uint32_t idx[6] = {0, 1, 2, 1, 2, 3};  // two triangles
	float out[12] = {};
	gameswf::dh2::collect_triangle_points<signed char>(buf, 4, idx, 2, out);
	const float want[12] = {2, -2, 1, -1, 0, 0, 3, -3, 2, -2, 1, -1};
	CHECK(same_floats(out, want, 12));
}

void test_collect_unsigned_char_null_indices()
{
	// 6 vertices, stride 4: x = k, y = 10 + k. Null index array uses vertex runs.
	std::uint8_t buf[24] = {};
	build_buffer(buf, 6, 4, [](int k, std::uint8_t* v) {
		v[0] = static_cast<std::uint8_t>(k);
		v[1] = static_cast<std::uint8_t>(10 + k);
	});
	float out[12] = {};
	gameswf::dh2::collect_triangle_points<unsigned char>(buf, 4, nullptr, 4, out);
	// First run: vertices 2, 1, 0. Second run starts at 3 and is 5, 4, 3 (count 4 <= 6 stops after it).
	const float want[12] = {2, 12, 1, 11, 0, 10, 5, 15, 4, 14, 3, 13};
	CHECK(same_floats(out, want, 12));
}

void test_collect_unsigned_short_unaligned()
{
	// Stride 8, buffer starts one byte in so the 16-bit reads are unaligned.
	std::uint8_t raw[1 + 3 * 8] = {};
	std::uint8_t* base = raw + 1;
	build_buffer(base, 3, 8, [](int k, std::uint8_t* v) {
		std::uint16_t x = static_cast<std::uint16_t>(1000 + k);
		std::uint16_t y = static_cast<std::uint16_t>(2000 + k);
		std::memcpy(v + 0, &x, 2);
		std::memcpy(v + 2, &y, 2);
	});
	const std::uint32_t idx[3] = {0, 1, 2};
	float out[6] = {};
	gameswf::dh2::collect_triangle_points<std::uint16_t>(base, 8, idx, 1, out);
	const float want[6] = {1002, 2002, 1001, 2001, 1000, 2000};
	CHECK(same_floats(out, want, 6));
}

void test_collect_int_negative()
{
	// Stride 8, components at +0 and +4 as signed 32-bit values.
	std::uint8_t buf[2 * 8] = {};
	build_buffer(buf, 2, 8, [](int k, std::uint8_t* v) {
		std::int32_t x = -5 - k;
		std::int32_t y = 7 + k;
		std::memcpy(v + 0, &x, 4);
		std::memcpy(v + 4, &y, 4);
	});
	const std::uint32_t idx[3] = {1, 0, 1};
	float out[6] = {};
	gameswf::dh2::collect_triangle_points<std::int32_t>(buf, 8, idx, 1, out);
	// Output order is (i2, i1, i0) = (vertex 1, vertex 0, vertex 1).
	const float want[6] = {-6, 8, -5, 7, -6, 8};
	CHECK(same_floats(out, want, 6));
}

void test_collect_float_values()
{
	// Stride 8: x = 0.5 * k, y = -1.25 * k.
	std::uint8_t buf[3 * 8] = {};
	build_buffer(buf, 3, 8, [](int k, std::uint8_t* v) {
		float x = 0.5f * static_cast<float>(k);
		float y = -1.25f * static_cast<float>(k);
		std::memcpy(v + 0, &x, 4);
		std::memcpy(v + 4, &y, 4);
	});
	const std::uint32_t idx[3] = {2, 0, 1};
	float out[6] = {};
	gameswf::dh2::collect_triangle_points<float>(buf, 8, idx, 1, out);
	const float want[6] = {0.5f, -1.25f, 0.0f, 0.0f, 1.0f, -2.5f};
	CHECK(same_floats(out, want, 6));
}

void test_collect_zero_count_writes_nothing()
{
	std::uint8_t buf[8] = {};
	float out[6] = {-1, -1, -1, -1, -1, -1};
	gameswf::dh2::collect_triangle_points<std::uint8_t>(buf, 8, nullptr, 0, out);
	const float want[6] = {-1, -1, -1, -1, -1, -1};
	CHECK(same_floats(out, want, 6));
	const std::uint32_t idx[3] = {0, 0, 0};
	gameswf::dh2::collect_triangle_points<std::uint8_t>(buf, 8, idx, 0, out);
	CHECK(same_floats(out, want, 6));
}

}  // namespace

int main()
{
	test_compare_decreasing_error();
	test_qsort_decreasing();
	test_collect_signed_char_indexed();
	test_collect_unsigned_char_null_indices();
	test_collect_unsigned_short_unaligned();
	test_collect_int_negative();
	test_collect_float_values();
	test_collect_zero_count_writes_nothing();
	if (g_failures) {
		std::fprintf(stderr, "%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("v1-vendor-gameswf-gameswf-fddef6-2 helpers: all checks passed\n");
	return 0;
}
