// Test for gameswf::bitmap_glyph_texture_cache in batch v1-vendor-gameswf-pack18-88bfb4-0 (0x7c4648, 0x7c53c4, 0x7c55d8), over the
// real texture_cache.
//   bash tools/trackb/check_tu.sh --test <this file> <pack18 .cpp> <texture_cache batch .cpp> <base/container.cpp> <base/utf8.cpp>
//     <tu_string batch .cpp> <render_handler batch .cpp> <test-support/dh2_test_support.cpp>   (the stand-ins are in
//     test-support/dh2_texture_stubs.hpp)
//
// The texture is a fake with a pixel buffer that the test owns. Checks: the constructor (four bytes per pixel through the rgba
// factory), add_glyph_region (the region taken from the free list, the key of the used table, the cleared region and the copied
// rows, a second glyph in the next cell, no bitmap), get_glyph_region (a hit does not add again; a miss on a full cache flushes
// the render handler, resets the cache and adds the glyph in the first cell).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "../test-support/dh2_texture_stubs.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/bitmap_glyph_texture_cache.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using gameswf::bitmap_glyph_data;
using gameswf::bitmap_glyph_metrics;
using gameswf::bitmap_glyph_texture_cache;
using gameswf::texture_cache;

// A handler that gives each cache's texture a pixel buffer owned by the test, and counts the flushes.
struct pixel_handler : gameswf::test::texture_handler {
    std::vector<unsigned char> pixels;
    int flushes = 0;

    gameswf::bitmap_info* create_bitmap_info_rgba(gameswf::image_rgba* image) override {
        gameswf::bitmap_info* texture = gameswf::test::texture_handler::create_bitmap_info_rgba(image);
        pixels.assign(static_cast<size_t>(image->m_width) * static_cast<size_t>(image->m_height) * 4, 0xAA);
        last->m_pixels = pixels.data();
        return texture;
    }
    void flush() override { ++flushes; }
};

// A font entity whose bitmaps come from a table: the glyph code selects its width and height; a code of 0 has no bitmap.
struct test_font : public gameswf::bitmap_font_entity {
    using gameswf::bitmap_font_entity::get_char_image;
    int calls = 0;
    std::vector<unsigned char> source;

    int get_char_image(bitmap_glyph_data* data, std::uint16_t code, int, bitmap_glyph_metrics*) override {
        ++calls;
        if (code == 0) {
            return 0;
        }
        const int width = code == 'A' ? 5 : 3;
        const int height = code == 'A' ? 7 : 2;
        const int stride = 4 * 8;  // source rows are 32 bytes apart
        source.assign(static_cast<size_t>(stride) * static_cast<size_t>(height), 0);
        for (int y = 0; y < height; ++y) {
            for (int x = 0; x < width * 4; ++x) {
                source[static_cast<size_t>(y * stride + x)] = static_cast<unsigned char>(code + y + x);
            }
        }
        data->m_stride = stride;
        data->m_width = width;
        data->m_height = height;
        data->m_pixels = source.data();
        return 1;
    }
};

pixel_handler g_handler;

// The pixel at (x, y) of the 4-byte texture of width w.
unsigned char px(const std::vector<unsigned char>& pixels, int w, int x, int y, int byte) {
    return pixels[static_cast<size_t>((y * w + x) * 4 + byte)];
}

void test_constructor() {
    gameswf::s_render_handler = &g_handler;
    const int before = g_handler.rgba_calls;
    bitmap_glyph_texture_cache cache(64, 32);
    CHECK(g_handler.rgba_calls == before + 1);
    CHECK(g_handler.last_width == 64 && g_handler.last_height == 32);
    CHECK(cache.m_bpp == 4);
    CHECK(cache.m_regions.size() == 4 * 2);
    CHECK(cache.m_free.size() == 1);
}

void test_add_glyph_region() {
    gameswf::s_render_handler = &g_handler;
    bitmap_glyph_texture_cache cache(64, 32);
    unsigned char* locked_pixels = g_handler.pixels.data();
    test_font font;

    // A 5 x 7 glyph: the region is 6 x 8 rounded to one 16 x 16 cell, taken from the free list at cell (0, 0).
    const int clock_before = static_cast<int>(cache.m_clock);
    CHECK(cache.add_glyph_region('A', &font, 12) == 1);
    CHECK(font.calls == 1);
    CHECK(cache.m_clock == clock_before + 1);
    CHECK(cache.m_locked == locked_pixels);

    // The key: owner, code | size << 16, two zero words.
    texture_cache::key key;
    key.unk_0 = reinterpret_cast<std::uintptr_t>(&font);
    key.unk_4 = 'A' | (12 << 16);
    texture_cache::region* region = nullptr;
    CHECK(cache.m_used.get(key, &region));
    CHECK(region != nullptr && region->cells_w == 1 && region->cells_h == 1);

    // The region's 16 x 16 pixels are cleared, then the 5 x 7 bitmap rows are copied to its top left corner; the pixels around
    // the region keep the fill (0xAA, from the texture creation, and the first lock cleared the whole texture, so the rest is 0).
    const std::vector<unsigned char>& pixels = g_handler.pixels;
    bool bitmap_ok = true;
    for (int y = 0; y < 7; ++y) {
        for (int x = 0; x < 5; ++x) {
            for (int b = 0; b < 4; ++b) {
                bitmap_ok = bitmap_ok && px(pixels, 64, x, y, b) == static_cast<unsigned char>('A' + y + x * 4 + b);
            }
        }
    }
    CHECK(bitmap_ok);
    bool cleared = true;
    for (int y = 0; y < 16; ++y) {
        for (int x = 0; x < 16; ++x) {
            if (y < 7 && x < 5) {
                continue;
            }
            for (int b = 0; b < 4; ++b) {
                cleared = cleared && px(pixels, 64, x, y, b) == 0;
            }
        }
    }
    CHECK(cleared);

    // A second glyph, 3 x 2: the next free region is the next cell to the right (16, 0).
    CHECK(cache.add_glyph_region('B', &font, 12) == 1);
    texture_cache::key key_b;
    key_b.unk_0 = reinterpret_cast<std::uintptr_t>(&font);
    key_b.unk_4 = 'B' | (12 << 16);
    texture_cache::region* region_b = nullptr;
    CHECK(cache.m_used.get(key_b, &region_b));
    CHECK(region_b != nullptr && region_b != region);
    gameswf::rect bounds;
    cache.get_region_bounds(region_b, bounds);
    // Whichever cell the free list handed out, the bitmap sits at its top left corner.
    const int bx = static_cast<int>(bounds.m_x_min);
    const int by = static_cast<int>(bounds.m_y_min);
    bool copied = true;
    for (int y = 0; y < 2; ++y) {
        for (int x = 0; x < 3; ++x) {
            for (int b = 0; b < 4; ++b) {
                copied = copied && px(pixels, 64, bx + x, by + y, b) == static_cast<unsigned char>('B' + y + x * 4 + b);
            }
        }
    }
    CHECK(copied);

    // No bitmap: nothing is added and the clock stays.
    const int clock_mid = static_cast<int>(cache.m_clock);
    CHECK(cache.add_glyph_region(0, &font, 12) == 0);
    CHECK(cache.m_clock == clock_mid);

    // The owner and the size are part of the key: another size is another glyph.
    CHECK(cache.add_glyph_region('A', &font, 13) == 1);
    texture_cache::key key_13 = key;
    key_13.unk_4 = 'A' | (13 << 16);
    texture_cache::region* region_13 = nullptr;
    CHECK(cache.m_used.get(key_13, &region_13) && region_13 != region);
}

void test_get_glyph_region() {
    gameswf::s_render_handler = &g_handler;
    {
        // A cached glyph: no second add.
        bitmap_glyph_texture_cache cache(64, 32);
        test_font font;
        gameswf::rect first;
        cache.get_glyph_region('A', &font, 12, first);
        CHECK(font.calls == 1);
        CHECK(first.m_x_min == 0.0f && first.m_x_max == 16.0f && first.m_y_min == 0.0f && first.m_y_max == 16.0f);
        gameswf::rect again;
        again.m_x_min = -1.0f;
        cache.get_glyph_region('A', &font, 12, again);
        CHECK(font.calls == 1);
        CHECK(again.m_x_min == first.m_x_min && again.m_x_max == first.m_x_max);
    }
    {
        // A full cache (one cell): the first add fails, the render handler flushes, the cache resets, the glyph is added.
        bitmap_glyph_texture_cache cache(16, 16);
        test_font font;
        gameswf::rect bounds;
        cache.get_glyph_region('A', &font, 12, bounds);
        const int flushes_before = g_handler.flushes;
        const int clock_before = static_cast<int>(cache.m_clock);
        gameswf::rect bounds_b;
        bounds_b.m_x_min = -1.0f;
        cache.get_glyph_region('B', &font, 12, bounds_b);
        CHECK(g_handler.flushes == flushes_before + 1);
        CHECK(cache.m_clock > clock_before);  // reset() advances the clock
        CHECK(bounds_b.m_x_min == 0.0f && bounds_b.m_x_max == 16.0f && bounds_b.m_y_max == 16.0f);
        texture_cache::key key_a;
        key_a.unk_0 = reinterpret_cast<std::uintptr_t>(&font);
        key_a.unk_4 = 'A' | (12 << 16);
        texture_cache::region* none = nullptr;
        CHECK(!cache.m_used.get(key_a, &none));  // reset() cleared the used table
        texture_cache::key key_b = key_a;
        key_b.unk_4 = 'B' | (12 << 16);
        CHECK(cache.m_used.get(key_b, &none) && none != nullptr);
    }
    {
        // A glyph with no bitmap: both adds fail, the flush and the reset happen, and the bounds are left alone.
        bitmap_glyph_texture_cache cache(32, 16);
        test_font font;
        gameswf::rect bounds;
        bounds.m_x_min = -5.0f;
        const int flushes_before = g_handler.flushes;
        cache.get_glyph_region(0, &font, 12, bounds);
        CHECK(font.calls == 2);
        CHECK(g_handler.flushes == flushes_before + 1);
        CHECK(bounds.m_x_min == -5.0f);
    }
}

}  // namespace

// The base class members that the batch source reaches and the stand-ins do not define.
namespace gameswf {

bitmap_glyph_provider::bitmap_glyph_provider(int, int, bool) {}
bitmap_glyph_provider::~bitmap_glyph_provider() {}
bitmap_font_entity* bitmap_glyph_provider::get_font_entity_impl(const ::tu_string&) { return nullptr; }
void log_error(const char*, ...) {}

}  // namespace gameswf

// The glyph table of a font entity (declared in bitmap_hash_dh2.hpp, defined by another batch): never grown here.
template <>
void hash<int, gameswf::glyph_entity*, fixed_size_hash<int> >::set_raw_capacity(int) {}

int main() {
    test_constructor();
    test_add_glyph_region();
    test_get_glyph_region();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("pack18 cache test: all checks passed\n");
    return 0;
}
