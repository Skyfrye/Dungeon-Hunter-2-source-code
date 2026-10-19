// Test for batch v1-vendor-gameswf-pack6-a8bd9d-0.
//
// Covers the clock comparison of render_cache::is_valid (0x7738a4) through its pure helper
// gameswf::dh2::render_cache_clocks_valid in vendor-gameswf/render_cache.hpp. That helper has no link
// dependencies, so this test links on its own. The rest of the batch needs the engine (as_object, the
// render handler, the glyph provider) and is checked by the integrator's build.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cstdint>
#include <cstdio>

#include "vendor-gameswf/render_cache_clocks.hpp"

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

namespace {

using gameswf::dh2::render_cache_clocks_valid;

void test_no_sources() {
    // No texture cache and no second source: the cache is valid and nothing is stored.
    std::int32_t tex[2] = {0, 0};
    std::int32_t bm[2] = {0, 0};
    CHECK(render_cache_clocks_valid(tex, bm, nullptr, nullptr) == true);
    CHECK(tex[0] == 0 && tex[1] == 0 && bm[0] == 0 && bm[1] == 0);
}

void test_texture_same() {
    // The texture clock matches the stored one: valid, and the stored values stay the same.
    std::int32_t tex[2] = {7, 9};
    std::int32_t bm[2] = {0, 0};
    const std::int32_t src[2] = {7, 9};
    CHECK(render_cache_clocks_valid(tex, bm, src, nullptr) == true);
    CHECK(tex[0] == 7 && tex[1] == 9);
}

void test_texture_changed_no_second() {
    // The texture clock changed: it is stored, the cache is invalid (the second source is absent).
    std::int32_t tex[2] = {0, 0};
    std::int32_t bm[2] = {0, 0};
    const std::int32_t src[2] = {1, 0};
    CHECK(render_cache_clocks_valid(tex, bm, src, nullptr) == false);
    CHECK(tex[0] == 1 && tex[1] == 0);
    CHECK(bm[0] == 0 && bm[1] == 0);
}

void test_texture_changed_second_equal() {
    // The texture clock changed but the second clock matches: still invalid because the texture changed.
    std::int32_t tex[2] = {0, 0};
    std::int32_t bm[2] = {5, 6};
    const std::int32_t tsrc[2] = {2, 2};
    const std::int32_t bsrc[2] = {5, 6};
    CHECK(render_cache_clocks_valid(tex, bm, tsrc, bsrc) == false);
    CHECK(tex[0] == 2 && tex[1] == 2);
    CHECK(bm[0] == 5 && bm[1] == 6);
}

void test_second_changed() {
    // Texture unchanged; the second clock changed: invalid, and the second clock is stored.
    std::int32_t tex[2] = {3, 0};
    std::int32_t bm[2] = {1, 1};
    const std::int32_t tsrc[2] = {3, 0};
    const std::int32_t bsrc[2] = {4, 1};
    CHECK(render_cache_clocks_valid(tex, bm, tsrc, bsrc) == false);
    CHECK(bm[0] == 4 && bm[1] == 1);
}

void test_all_same() {
    // Both clocks equal the stored values: valid.
    std::int32_t tex[2] = {3, 0};
    std::int32_t bm[2] = {4, 1};
    const std::int32_t tsrc[2] = {3, 0};
    const std::int32_t bsrc[2] = {4, 1};
    CHECK(render_cache_clocks_valid(tex, bm, tsrc, bsrc) == true);
}

void test_no_texture_second_changed() {
    // No texture cache (not stored) and the second clock changed: invalid, second clock stored.
    std::int32_t tex[2] = {8, 8};
    std::int32_t bm[2] = {0, 0};
    const std::int32_t bsrc[2] = {0, 2};
    CHECK(render_cache_clocks_valid(tex, bm, nullptr, bsrc) == false);
    CHECK(tex[0] == 8 && tex[1] == 8);
    CHECK(bm[0] == 0 && bm[1] == 2);
}

void test_no_texture_second_same() {
    // No texture cache and the second clock matches: valid.
    std::int32_t tex[2] = {8, 8};
    std::int32_t bm[2] = {0, 2};
    const std::int32_t bsrc[2] = {0, 2};
    CHECK(render_cache_clocks_valid(tex, bm, nullptr, bsrc) == true);
}

}  // namespace

int main() {
    test_no_sources();
    test_texture_same();
    test_texture_changed_no_second();
    test_texture_changed_second_equal();
    test_second_changed();
    test_all_same();
    test_no_texture_second_changed();
    test_no_texture_second_same();
    if (g_failures == 0) {
        std::printf("render_cache clock tests: OK\n");
        return 0;
    }
    std::printf("render_cache clock tests: %d failure(s)\n", g_failures);
    return 1;
}
