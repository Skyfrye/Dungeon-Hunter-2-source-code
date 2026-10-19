// Test for the texture_cache batch v1-vendor-gameswf-gameswf_texture_cache-d731ee-0.
//
// Covers the constructor (three texture branches), lock, the region arithmetic and the free and used region lists
// against a fake texture. The link-only stand-ins (ref_counted, bitmap_info, the image classes, the allocator, the two region
// tables' set_raw_capacity) and the fake texture and handler are in test-support/dh2_texture_stubs.hpp.
// Reference counts are never driven to zero, so no fake texture is freed by smart_ptr.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_texture_cache-d731ee-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_render_handler-1ca9d1-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "../test-support/dh2_texture_stubs.hpp"

namespace {

using gameswf::texture_cache;
using gameswf::test::fake_texture;
using region = texture_cache::region;

int g_failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                    \
        }                                                                    \
    } while (0)

gameswf::test::texture_handler g_handler;

void test_region_size_requirement() {
    int w = 1;
    int h = 17;
    int r = texture_cache::get_region_size_requirement(w, h);
    CHECK(w == 16);
    CHECK(h == 32);
    CHECK(r == 32);  // height + 15 before rounding

    w = 0;
    h = 0;
    r = texture_cache::get_region_size_requirement(w, h);
    CHECK(w == 16);
    CHECK(h == 16);
    CHECK(r == 15);

    w = 33;
    h = 16;
    r = texture_cache::get_region_size_requirement(w, h);
    CHECK(w == 48);
    CHECK(h == 16);
    CHECK(r == 31);

    w = 16;
    h = 1;
    r = texture_cache::get_region_size_requirement(w, h);
    CHECK(w == 16);
    CHECK(h == 16);
    CHECK(r == 16);
}

// The constructor takes the texture from the current handler by its three branches, rounded up to whole cells.
void test_constructor_branches() {
    {
        texture_cache alpha(20, 20, 1, false);  // bytes per pixel 1: the alpha factory, no data
        CHECK(g_handler.alpha_calls == 1);
        CHECK(g_handler.last_width == 32 && g_handler.last_height == 32);
        CHECK(alpha.m_bpp == 1);
        CHECK(alpha.m_texture.get_ptr() == g_handler.last);
        CHECK(alpha.m_regions.size() == 4);  // reset() ran: a 2 x 2 cell grid
        CHECK(alpha.m_free.size() == 1);
    }
    {
        texture_cache color(33, 17, 4, false);  // not a render target: a cleared image goes to the rgba factory
        CHECK(g_handler.rgba_calls == 1);
        CHECK(g_handler.rgba_image_was_clear);
        CHECK(g_handler.last_width == 48 && g_handler.last_height == 32);
        CHECK(color.m_regions.size() == 6);
    }
    {
        texture_cache target(64, 16, 4, true);  // render target: the target factory
        CHECK(g_handler.target_calls >= 1);
        CHECK(g_handler.last_width == 64 && g_handler.last_height == 16);
    }
}

// lock() locks the texture once, clears it while no region is in use, and returns the same pointer afterwards.
void test_lock() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(8, 4);
    std::vector<unsigned char> pixels(8 * 4 * 4, 0xFF);
    tex.m_pixels = pixels.data();
    tc.m_texture = &tex;
    tc.m_locked = nullptr;
    tc.m_used.clear();

    void* first = tc.lock();
    CHECK(first == pixels.data());
    CHECK(tex.m_lock_calls == 1);
    bool cleared = true;
    for (unsigned char v : pixels) {
        if (v != 0) {
            cleared = false;
        }
    }
    CHECK(cleared);  // bytes per pixel * height * width, with an empty used table
    CHECK(tc.lock() == first);
    CHECK(tex.m_lock_calls == 1);

    // With a region in use the pixels are kept.
    tc.m_locked = nullptr;
    std::fill(pixels.begin(), pixels.end(), static_cast<unsigned char>(0x7F));
    region used;
    texture_cache::key k;
    k.unk_0 = 5;
    tc.m_used.add(k, &used);
    CHECK(tc.lock() == pixels.data());
    CHECK(pixels[0] == 0x7F);
    tc.m_used.clear();
    tc.m_locked = nullptr;
}

void test_region_bounds() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;
    tc.m_regions.resize(16);  // 4 cells per row
    region* r = &tc.m_regions[5];
    r->cells_w = 2;
    r->cells_h = 3;

    gameswf::rect bounds;
    tc.get_region_bounds(r, bounds);
    CHECK(bounds.m_x_min == 16.0f);
    CHECK(bounds.m_x_max == 48.0f);
    CHECK(bounds.m_y_min == 16.0f);
    CHECK(bounds.m_y_max == 64.0f);
}

void test_subdivide() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;
    tc.m_regions.resize(16);
    tc.m_free.resize(0);  // the constructor's reset() left the whole grid on the free list; this test starts empty
    region* r = &tc.m_regions[0];
    r->cells_w = 4;
    r->cells_h = 4;

    tc.subdivide_region(r, 2, 1);
    CHECK(r->cells_w == 2);
    CHECK(r->cells_h == 1);
    CHECK(tc.m_free.size() == 2);
    CHECK(tc.m_free[0] == &tc.m_regions[2]);  // strip to the right
    CHECK(tc.m_free[1] == &tc.m_regions[4]);  // strip below
    CHECK(tc.m_regions[2].cells_w == 2);
    CHECK(tc.m_regions[2].cells_h == 1);
    CHECK(tc.m_regions[2].last_clock == 0);
    CHECK(tc.m_regions[4].cells_w == 4);
    CHECK(tc.m_regions[4].cells_h == 3);
    CHECK(tc.m_regions[4].last_clock == 0);
}

void test_find_available() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;
    tc.reset();  // one free region of 4 x 4 cells
    CHECK(tc.m_free.size() == 1);

    CHECK(tc.find_available_region(128, 16) == nullptr);  // 8 cells wide, nothing fits
    CHECK(tc.m_free.size() == 1);

    region* got = tc.find_available_region(32, 16);  // 2 x 1 cells
    CHECK(got == &tc.m_regions[0]);
    CHECK(got->cells_w == 2);
    CHECK(got->cells_h == 1);
    CHECK(tc.m_free.size() == 2);  // the strips left over from the cut
    CHECK(tc.m_free[0] == &tc.m_regions[2]);
    CHECK(tc.m_free[1] == &tc.m_regions[4]);
}

void test_find_used() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;
    tc.m_regions.resize(16);
    tc.m_free.resize(0);  // the constructor's reset() left the whole grid on the free list; this test starts empty

    region* a = &tc.m_regions[0];  // newer
    a->cells_w = 4;
    a->cells_h = 4;
    a->last_clock = 5;
    region* b = &tc.m_regions[2];  // older
    b->cells_w = 2;
    b->cells_h = 2;
    b->last_clock = 3;

    texture_cache::key ka;
    ka.unk_0 = 1;
    texture_cache::key kb;
    kb.unk_0 = 2;
    tc.m_used.add(ka, a);
    tc.m_used.add(kb, b);
    tc.m_clock = 7;

    region* got = tc.find_used_region(16, 16);  // 1 x 1 cells: both fit, b is older
    CHECK(got == b);
    CHECK(tc.m_used.size() == 1);
    CHECK(tc.m_used.find(kb) == tc.m_used.end());
    CHECK(tc.m_used.find(ka) != tc.m_used.end());
    CHECK(b->cells_w == 1);
    CHECK(b->cells_h == 1);
    CHECK(tc.m_last_clock == 7);
    CHECK(tc.m_free.size() == 2);  // right and lower strips of b

    CHECK(tc.find_used_region(256, 16) == nullptr);  // 16 cells wide, nothing fits
}

void test_reset() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;

    std::vector<unsigned char> pixels(64 * 64 * 4, 0xFF);
    tc.m_locked = pixels.data();
    region stale;
    texture_cache::key k;
    k.unk_0 = 9;
    tc.m_used.add(k, &stale);
    tc.m_clock = 4;
    tc.m_last_clock = 0;

    tc.reset();
    CHECK(tc.m_clock == 5);
    CHECK(tc.m_last_clock == 5);
    CHECK(tc.m_used.is_empty());

    bool zeroed = true;
    for (unsigned char v : pixels) {
        if (v != 0) {
            zeroed = false;
        }
    }
    CHECK(zeroed);

    CHECK(tc.m_regions.size() == 16);
    CHECK(tc.m_free.size() == 1);
    CHECK(tc.m_free[0] == &tc.m_regions[0]);
    CHECK(tc.m_regions[0].cells_w == 4);
    CHECK(tc.m_regions[0].cells_h == 4);
    CHECK(tc.m_regions[0].last_clock == 0);

    tc.m_locked = nullptr;  // the pixel buffer is local to this test
}

void test_verify_integrity() {
    texture_cache tc(64, 64, 4, true);
    fake_texture tex(64, 64);
    tc.m_texture = &tex;
    tc.reset();

    CHECK(tc.verify_integrity(nullptr) == 64);  // returns the texture height
    tc.verify_integrity();
    CHECK(tc.m_free.size() == 1);
}

void test_destructor_unlocks() {
    fake_texture tex(64, 64);
    std::vector<unsigned char> pixels(16, 0);
    texture_cache* tc = new texture_cache(64, 64, 4, true);
    tc->m_texture = &tex;
    tc->m_locked = pixels.data();
    delete tc;
    CHECK(tex.m_unlock_calls == 1);
}

}  // namespace

int main() {
    gameswf::s_render_handler = &g_handler;
    test_region_size_requirement();
    test_constructor_branches();
    test_lock();
    test_region_bounds();
    test_subdivide();
    test_find_available();
    test_find_used();
    test_reset();
    test_verify_integrity();
    test_destructor_unlocks();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("texture_cache tests passed\n");
    return 0;
}
