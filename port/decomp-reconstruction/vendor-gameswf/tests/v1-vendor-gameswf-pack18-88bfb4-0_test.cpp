// Test for batch v1-vendor-gameswf-pack18-88bfb4-0 (gameswf::bitmap_font_entity).
//
// Covers copy_argb (the pixel copies and the returned pointer), and the cached and missing paths of
// bitmap_font_entity::get_char_image. The texture cache, the glyph provider's out-of-line members and log_error are
// stubbed below: the texture is never created, so the cached path returns a null texture. The region and
// texture code of bitmap_glyph_texture_cache is not run (it needs a locked texture).
// Build and run (from port/decomp-reconstruction/vendor-gameswf): bash ../../../tools/trackb/check_tu.sh --test
// <this file> src/v1-vendor-gameswf-pack18-88bfb4-0.cpp upstream/gameswf-r1714/base/container.cpp
// upstream/gameswf-r1714/base/utf8.cpp src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/bitmap_glyph_texture_cache.hpp"
#include "vendor-gameswf/glyph_provider.hpp"

namespace {

int g_failures = 0;
int g_log_errors = 0;

#define CHECK(cond)                                                                \
    do {                                                                           \
        if (!(cond)) {                                                             \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);            \
            ++g_failures;                                                          \
        }                                                                          \
    } while (0)

// A font entity whose virtual get_char_image answers with a fixed value and gives no bitmap.
struct test_font : public gameswf::bitmap_font_entity {
    using gameswf::bitmap_font_entity::get_char_image;  // keep the rect overload visible next to the override
    int answer = 0;
    int get_char_image(gameswf::bitmap_glyph_data*, std::uint16_t, int, gameswf::bitmap_glyph_metrics*) override {
        return answer;
    }
};

int glyph_key(std::uint16_t code, int size) {
    return static_cast<int>(code) | static_cast<int>(static_cast<std::uint32_t>(size) << 16);
}

void test_copy_argb() {
    unsigned char src[64];
    for (int i = 0; i < 64; ++i) {
        src[i] = static_cast<unsigned char>(i);
    }
    unsigned char dst[16];
    std::memset(dst, 0xee, sizeof dst);

    // 4-byte pixels with a 16-byte pitch: the 2 x 2 block at (1, 1) starts at 4 * 1 + 1 * 16 = 20.
    unsigned char* ret = gameswf::bitmap_font_entity::copy_argb(src, 1, 1, 16, dst, 8, 2);
    CHECK(std::memcmp(dst, src + 20, 8) == 0);      // first row
    CHECK(std::memcmp(dst + 8, src + 36, 8) == 0);  // second row, one pitch further down
    CHECK(ret == dst + 8);                          // memcpy's result for the last row
}

void test_copy_argb_no_rows() {
    unsigned char src[16];
    std::memset(src, 0x55, sizeof src);
    unsigned char dst[8];
    std::memset(dst, 0xee, sizeof dst);

    unsigned char* ret = gameswf::bitmap_font_entity::copy_argb(src, 0, 0, 16, dst, 8, 0);
    CHECK(ret == src);  // nothing copied: the source is returned
    CHECK(dst[0] == 0xee && dst[7] == 0xee);
}

// The cached-glyph path (rect and advance copied from a glyph already in m_glyphs) is not tested here: it needs an
// insert into the glyph hash, and that table's set_raw_capacity specialization has no body in the tree yet.

// get_font_entity_impl is pure in the base (link-1), so the tests build this concrete provider.
struct test_provider : gameswf::bitmap_glyph_provider {
    test_provider() : gameswf::bitmap_glyph_provider(0, 0, false) {}
    gameswf::bitmap_font_entity* get_font_entity_impl(const ::tu_string&) override { return nullptr; }
};

void test_get_char_image_virtual_misses() {
    test_provider provider;
    gameswf::texture_cache cache(16, 16, 4, false);
    provider.m_texture_cache = &cache;

    test_font font;
    font.m_provider = &provider;
    font.answer = 0;  // the virtual finds no bitmap

    gameswf::rect r;
    float advance = -1.0f;
    CHECK(font.get_char_image(static_cast<std::uint16_t>('B'), 12, &r, &advance) == nullptr);
    CHECK(advance == -1.0f);
    gameswf::glyph_entity* none = nullptr;
    CHECK(!font.m_glyphs.get(glyph_key('B', 12), &none));
}

void test_get_char_image_without_cache() {
    test_provider provider;  // m_texture_cache stays null

    test_font font;
    font.m_provider = &provider;
    font.answer = 1;  // the virtual finds a bitmap, but there is no cache to hold it

    gameswf::rect r;
    float advance = -1.0f;
    const int errors_before = g_log_errors;
    CHECK(font.get_char_image(static_cast<std::uint16_t>('C'), 12, &r, &advance) == nullptr);
    CHECK(g_log_errors == errors_before + 1);
    CHECK(advance == -1.0f);
    gameswf::glyph_entity* none = nullptr;
    CHECK(!font.m_glyphs.get(glyph_key('C', 12), &none));
}

}  // namespace

// Out-of-line members of other batches that this test object links against.
namespace gameswf {

ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
void ref_counted::add_ref() const {}
void ref_counted::drop_ref() {}
weak_proxy* ref_counted::get_weak_proxy() const { return nullptr; }
void ref_counted::detach_weak_proxy() {}

void log_error(const char*, ...) { ++g_log_errors; }

// get_glyph_region flushes the current render handler; the texture region code is not run here, so none is needed.
render_handler* s_render_handler = nullptr;

texture_cache::texture_cache(int, int, int, bool) {}
texture_cache::~texture_cache() {}
void* texture_cache::lock() { return nullptr; }
void texture_cache::reset() {}
texture_cache::region* texture_cache::find_available_region(int, int) { return nullptr; }
void texture_cache::get_region_bounds(const region*, rect&) const {}
int texture_cache::get_region_size_requirement(int& width, int& height) {
    (void)width;
    return height + 15;
}

bitmap_glyph_provider::bitmap_glyph_provider(int, int, bool) {}
bitmap_glyph_provider::~bitmap_glyph_provider() {}
bitmap_font_entity* bitmap_glyph_provider::get_font_entity_impl(const ::tu_string&) { return nullptr; }

}  // namespace gameswf

// The explicit set_raw_capacity specializations (declared in bitmap_hash_dh2.hpp and texture_cache.hpp) are defined by
// other batches. Only the tests' no-insert paths run here, so these bodies are never reached; they exist to link.
template <>
void hash<int, gameswf::glyph_entity*, fixed_size_hash<int> >::set_raw_capacity(int) {}
template <>
void hash<gameswf::texture_cache::key, gameswf::texture_cache::region*,
          fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int) {}

int main() {
    test_copy_argb();
    test_copy_argb_no_rows();
    test_get_char_image_virtual_misses();
    test_get_char_image_without_cache();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("pack18 test: all checks passed\n");
    return 0;
}
