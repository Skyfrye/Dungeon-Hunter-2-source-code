// Test for batch v1-vendor-gameswf-gameswf-fddef6-5.
//
// Covers the arithmetic that the batch's bodies use, through the headers: the grid counts of
// grid_index_pick_good_grid_size (and the bit patterns of its folded constants), the mip-map shape and the 2x2
// average of make_next_miplevel, the TGA header of write_tga, the clamp of the memory seek callback, and the
// window decision of buffered_seek.
//
// The batch .cpp is not linked here. Its bodies need the image constructors, the jpeg and tu_file code and the
// allocator, which are in other units (as in the fddef6-3 batch).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <climits>
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vendor-gameswf/grid_cells.hpp"
#include "vendor-gameswf/image_io.hpp"
#include "vendor-gameswf/tu_file_callbacks.hpp"

namespace {

int g_failures = 0;

#define EXPECT_EQ(actual, expected)                                                        \
    do {                                                                                   \
        long long a_ = static_cast<long long>(actual);                                     \
        long long e_ = static_cast<long long>(expected);                                   \
        if (a_ != e_) {                                                                    \
            std::printf("FAIL %s:%d: %s = %lld, expected %lld\n", __FILE__, __LINE__,     \
                        #actual, a_, e_);                                                  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

#define EXPECT_TRUE(cond)                                                                  \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);                    \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

std::uint32_t float_bits(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    return bits;
}

// gameswf::grid_index_pick_good_grid_size: the counts for a box of the given extent.
void grid_counts(float width, float height, int count, int* x, int* y) {
    gameswf::grid_dh2::grid_cells_for_extent(width, height, count, x, y);
}

void test_grid_constants() {
    // 0.707f and grid_scale * grid_scale, the bit patterns the ARM clone loads.
    EXPECT_EQ(float_bits(gameswf::grid_dh2::kGridScale), 0x3F34FDF4u);
    EXPECT_EQ(float_bits(gameswf::grid_dh2::kGridScaleSquared), 0x3EFFEC36u);
}

void test_grid_cells() {
    int x = 0;
    int y = 0;

    // Square box, 100 items: x = y = int(10 * 1.0 * 0.707) = 7.
    grid_counts(10.0f, 10.0f, 100, &x, &y);
    EXPECT_EQ(x, 7);
    EXPECT_EQ(y, 7);

    // 2:1 box, 100 items: x = int(10 * 2 * 0.707) = 14, y = int(10 * 0.5 * 0.707) = 3.
    grid_counts(20.0f, 10.0f, 100, &x, &y);
    EXPECT_EQ(x, 14);
    EXPECT_EQ(y, 3);

    // Zero-area box with a positive width: x from the count, y stays 1.
    grid_counts(10.0f, 0.0f, 100, &x, &y);
    EXPECT_EQ(x, 49);
    EXPECT_EQ(y, 1);

    // Zero-area box with width 0: y from the count, x stays 1.
    grid_counts(0.0f, 10.0f, 100, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 49);

    // Zero width and zero height: the y branch is taken.
    grid_counts(0.0f, 0.0f, 100, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 49);

    // NaN area is not positive, so it takes the zero-area path (width NaN is not > 0 either).
    grid_counts(std::nanf(""), 10.0f, 100, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 49);

    // No items: both counts stay 1 whatever the box.
    grid_counts(10.0f, 10.0f, 0, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 1);
    grid_counts(10.0f, 10.0f, -5, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 1);

    // One item: 0.707 truncates to 0 and clamps up to 1.
    grid_counts(10.0f, 10.0f, 1, &x, &y);
    EXPECT_EQ(x, 1);
    EXPECT_EQ(y, 1);

    // Many items: sqrt(1000000) * 0.707 = 707 clamps down to 256.
    grid_counts(10.0f, 10.0f, 1000000, &x, &y);
    EXPECT_EQ(x, 256);
    EXPECT_EQ(y, 256);
}

void test_float_to_int() {
    EXPECT_EQ(gameswf::grid_dh2::float_to_int_truncating(2.9f), 2);
    EXPECT_EQ(gameswf::grid_dh2::float_to_int_truncating(-2.9f), -2);
    EXPECT_EQ(gameswf::grid_dh2::float_to_int_truncating(1e10f), INT_MAX);
    EXPECT_EQ(gameswf::grid_dh2::float_to_int_truncating(-1e10f), INT_MIN);
    EXPECT_EQ(gameswf::grid_dh2::float_to_int_truncating(std::nanf("")), 0);
    EXPECT_EQ(gameswf::grid_dh2::clamp_cells(255), 255);
    EXPECT_EQ(gameswf::grid_dh2::clamp_cells(256), 256);
    EXPECT_EQ(gameswf::grid_dh2::clamp_cells(257), 256);
    EXPECT_EQ(gameswf::grid_dh2::clamp_cells(0), 1);
}

void test_miplevel_shapes() {
    using gameswf::image_dh2::rgb_miplevel_shape;
    using gameswf::image_dh2::rgba_miplevel_shape;

    // rgb 4x4: 2x2 with pitch (3 * 2 + 3) & ~3 = 8, and the 2x2 pass runs.
    auto s = rgb_miplevel_shape(4, 4);
    EXPECT_EQ(s.width, 2);
    EXPECT_EQ(s.height, 2);
    EXPECT_EQ(s.pitch, 8);
    EXPECT_TRUE(s.resample);

    // rgb 3x4: width 1 (3 >> 1), the pass does not run because 3 != 2.
    s = rgb_miplevel_shape(3, 4);
    EXPECT_EQ(s.width, 1);
    EXPECT_EQ(s.height, 2);
    EXPECT_EQ(s.pitch, 4);
    EXPECT_TRUE(!s.resample);

    // rgb 1x1 and 0x0: both clamp to 1x1, pitch 4, no pass.
    s = rgb_miplevel_shape(1, 1);
    EXPECT_EQ(s.width, 1);
    EXPECT_EQ(s.height, 1);
    EXPECT_EQ(s.pitch, 4);
    EXPECT_TRUE(!s.resample);
    s = rgb_miplevel_shape(0, 0);
    EXPECT_EQ(s.width, 1);
    EXPECT_EQ(s.height, 1);
    EXPECT_TRUE(!s.resample);

    // rgb 6x4: width 3, pitch (9 + 3) & ~3 = 12, the pass runs.
    s = rgb_miplevel_shape(6, 4);
    EXPECT_EQ(s.width, 3);
    EXPECT_EQ(s.height, 2);
    EXPECT_EQ(s.pitch, 12);
    EXPECT_TRUE(s.resample);

    // rgba 4x2: 2x1, pitch 8, the pass runs. rgba 6x4: 3x2, pitch 12.
    s = rgba_miplevel_shape(4, 2);
    EXPECT_EQ(s.width, 2);
    EXPECT_EQ(s.height, 1);
    EXPECT_EQ(s.pitch, 8);
    EXPECT_TRUE(s.resample);
    s = rgba_miplevel_shape(6, 4);
    EXPECT_EQ(s.width, 3);
    EXPECT_EQ(s.height, 2);
    EXPECT_EQ(s.pitch, 12);
    EXPECT_TRUE(s.resample);
}

void test_downsample_rgb() {
    // rgb 4x2 with source pitch 12, output pitch 8 (2x1 pixels).
    std::uint8_t data[24] = {
        // row 0: p0 (4,8,12), p1 (8,12,16), p2 (20,24,28), p3 (1,2,3)
        4, 8, 12, 8, 12, 16, 20, 24, 28, 1, 2, 3,
        // row 1: p0 (0,0,0), p1 (4,4,4), p2 (8,8,8), p3 (12,12,12)
        0, 0, 0, 4, 4, 4, 8, 8, 8, 12, 12, 12,
    };
    gameswf::image_dh2::downsample_2x2(data, 12, 8, 2, 1, 3);
    // out0 = ((4+8+0+4)>>2, (8+12+0+4)>>2, (12+16+0+4)>>2) = (4, 6, 8).
    EXPECT_EQ(data[0], 4);
    EXPECT_EQ(data[1], 6);
    EXPECT_EQ(data[2], 8);
    // out1 = ((20+1+8+12)>>2, (24+2+8+12)>>2, (28+3+8+12)>>2) = (10, 11, 12).
    EXPECT_EQ(data[3], 10);
    EXPECT_EQ(data[4], 11);
    EXPECT_EQ(data[5], 12);
}

void test_downsample_rgba() {
    // rgba 4x2 with source pitch 16, output pitch 8 (2x1 pixels).
    std::uint8_t data[32] = {
        // row 0: p0 (1,2,3,4), p1 (5,6,7,8), p2 (9,10,11,12), p3 (13,14,15,16)
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
        // row 1: p0 (1,1,1,1), p1 (3,3,3,3), p2 (0,0,0,0), p3 (4,4,4,4)
        1, 1, 1, 1, 3, 3, 3, 3, 0, 0, 0, 0, 4, 4, 4, 4,
    };
    gameswf::image_dh2::downsample_2x2(data, 16, 8, 2, 1, 4);
    // out0 = (2, 3, 3, 4), out1 = (6, 7, 7, 8).
    EXPECT_EQ(data[0], 2);
    EXPECT_EQ(data[1], 3);
    EXPECT_EQ(data[2], 3);
    EXPECT_EQ(data[3], 4);
    EXPECT_EQ(data[4], 6);
    EXPECT_EQ(data[5], 7);
    EXPECT_EQ(data[6], 7);
    EXPECT_EQ(data[7], 8);
}

void test_tga_header() {
    std::uint8_t header[18];
    gameswf::image_dh2::tga_header(0x0102, 0x0304, header);
    const std::uint8_t expected[18] = {0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                       0x02, 0x01, 0x04, 0x03, 32, 0};
    for (int i = 0; i < 18; ++i) {
        EXPECT_EQ(header[i], expected[i]);
    }
    // A width past 16 bits keeps its low 16 bits.
    gameswf::image_dh2::tga_header(0x10005, 1, header);
    EXPECT_EQ(header[12], 0x05);
    EXPECT_EQ(header[13], 0x00);
    EXPECT_EQ(header[14], 0x01);
    EXPECT_EQ(header[15], 0x00);
}

void test_memory_seek() {
    int position = -1;
    EXPECT_EQ(gameswf::memory_seek_position(-1, 10, &position), 4);
    EXPECT_EQ(position, 0);

    EXPECT_EQ(gameswf::memory_seek_position(11, 10, &position), 4);
    EXPECT_EQ(position, 10);

    EXPECT_EQ(gameswf::memory_seek_position(10, 10, &position), 0);
    EXPECT_EQ(position, 10);

    EXPECT_EQ(gameswf::memory_seek_position(3, 10, &position), 0);
    EXPECT_EQ(position, 3);
}

void test_buffered_window() {
    int new_offset = -1;
    std::intptr_t new_cursor = -1;

    // No window (cursor and offset both 0): the underlying file is moved.
    EXPECT_TRUE(!gameswf::buffered_seek_in_window(105, 100, 0, 0, &new_offset, &new_cursor));

    // Window at base 100, cursor -5, offset 5 (the cursor and offset sum to 0 after a window seek).
    EXPECT_TRUE(!gameswf::buffered_seek_in_window(99, 100, -5, 5, &new_offset, &new_cursor));
    EXPECT_TRUE(gameswf::buffered_seek_in_window(120, 100, -5, 5, &new_offset, &new_cursor));
    EXPECT_EQ(new_offset, 20);
    EXPECT_EQ(new_cursor, -20);

    // Inside the 4096-byte window: 100 + 4095 yes, 100 + 4096 no.
    EXPECT_TRUE(gameswf::buffered_seek_in_window(100 + 4095, 100, -5, 5, &new_offset, &new_cursor));
    EXPECT_EQ(new_offset, 4095);
    EXPECT_TRUE(!gameswf::buffered_seek_in_window(100 + 4096, 100, -5, 5, &new_offset, &new_cursor));

    // A non-zero offset with cursor 0 still counts as a window: cursor = 0 - (5 - 7) = 2.
    EXPECT_TRUE(gameswf::buffered_seek_in_window(105, 100, 0, 7, &new_offset, &new_cursor));
    EXPECT_EQ(new_offset, 5);
    EXPECT_EQ(new_cursor, 2);
}

}  // namespace

int main() {
    test_grid_constants();
    test_grid_cells();
    test_float_to_int();
    test_miplevel_shapes();
    test_downsample_rgb();
    test_downsample_rgba();
    test_tga_header();
    test_memory_seek();
    test_buffered_window();

    if (g_failures == 0) {
        std::printf("v1-vendor-gameswf-gameswf-fddef6-5: all tests passed\n");
        return 0;
    }
    std::printf("v1-vendor-gameswf-gameswf-fddef6-5: %d failure(s)\n", g_failures);
    return 1;
}
