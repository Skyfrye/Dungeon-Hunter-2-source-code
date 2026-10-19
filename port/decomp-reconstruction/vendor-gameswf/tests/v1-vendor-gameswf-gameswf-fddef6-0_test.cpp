// Test for batch v1-vendor-gameswf-gameswf-fddef6-0.
//
// Covers: gaussian_kernel (weights and normalisation), format_utf_text (delimiter, U+00A0 and
// U+0020 rules), the allocator forwards and realloc_internal's copy, and the create/close state of
// the filter engine singleton.
//
// Links with the batch source and base/utf8.cpp. The core-platform allocator and the filter
// engine's constructor and destructor belong to other batches or categories, so this file
// defines stand-ins for them.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "vendor-gameswf/filter_engine.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_utf_text.hpp"

// ---- stand-ins for other owners ----------------------------------------------------------------

int g_alloc2_calls = 0;
int g_alloc4_calls = 0;
int g_free_calls = 0;
unsigned g_last_size = 0;
unsigned g_last_hint = 99;
const char* g_last_file = nullptr;
int g_last_line = -1;
int g_fe_ctor_calls = 0;
int g_fe_dtor_calls = 0;

void* SwfAlloc(unsigned size, swf::MemHint hint) {
    ++g_alloc2_calls;
    g_last_size = size;
    g_last_hint = static_cast<unsigned>(hint);
    return std::malloc(size);
}

void* SwfAlloc(unsigned size, swf::MemHint hint, const char* file, int line) {
    ++g_alloc4_calls;
    g_last_size = size;
    g_last_hint = static_cast<unsigned>(hint);
    g_last_file = file;
    g_last_line = line;
    return std::malloc(size);
}

void SwfFree(void* p) {
    ++g_free_calls;
    std::free(p);
}

void* operator new(std::size_t size, swf::MemHint hint) {
    return SwfAlloc(static_cast<unsigned>(size), hint);
}

// filter_engine derives from texture_cache (its constructor builds the texture through the glitch render handler, which
// this test does not have), so the stand-ins cover the base as well.
namespace gameswf {
void ref_counted::drop_ref() {}  // texture_cache::m_texture is a smart_ptr<bitmap_info>
texture_cache::texture_cache(int, int, int bpp, bool) : m_bpp(bpp) {}
texture_cache::~texture_cache() {}
filter_engine::filter_engine() : filter_texture_cache(256, 256, 4, false) { ++g_fe_ctor_calls; }
filter_engine::~filter_engine() { ++g_fe_dtor_calls; }
}  // namespace gameswf

// ---- helpers -----------------------------------------------------------------------------------

static int g_failures = 0;

#define EXPECT(cond)                                                       \
    do {                                                                   \
        if (!(cond)) {                                                     \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
            ++g_failures;                                                  \
        }                                                                  \
    } while (0)

static std::string format(const char* src, int delim, bool flag) {
    char buf[256];
    std::memset(buf, 'Z', sizeof buf);
    gameswf::format_utf_text(src, buf, delim, flag);
    return std::string(buf);  // stops at the terminating NUL
}

static void test_gaussian() {
    // radius 2: sigma 1, 2 sigma^2 = 2. Weights are exp(-d^2 / 2) for d = 2, 1, 0, 1, 2, normalised.
    float k2[5];
    gameswf::gaussian_kernel(k2, 2);
    const double s2 = 2.0 * (std::exp(-2.0) + std::exp(-0.5)) + 1.0;
    const double expect2[5] = {std::exp(-2.0) / s2, std::exp(-0.5) / s2, 1.0 / s2,
                               std::exp(-0.5) / s2, std::exp(-2.0) / s2};
    double total = 0.0;
    for (int i = 0; i < 5; ++i) {
        EXPECT(std::fabs(static_cast<double>(k2[i]) - expect2[i]) < 1e-5);
        total += k2[i];
    }
    EXPECT(std::fabs(total - 1.0) < 1e-5);
    EXPECT(k2[0] == k2[4]);
    EXPECT(k2[1] == k2[3]);
    EXPECT(k2[2] > k2[1]);

    // radius 1: sigma 0.5, 2 sigma^2 = 0.5. Weights are exp(-2) for d = 1 and 1 for d = 0.
    float k1[3];
    gameswf::gaussian_kernel(k1, 1);
    const double s1 = 1.0 + 2.0 * std::exp(-2.0);
    EXPECT(std::fabs(static_cast<double>(k1[0]) - std::exp(-2.0) / s1) < 1e-5);
    EXPECT(std::fabs(static_cast<double>(k1[1]) - 1.0 / s1) < 1e-5);
    EXPECT(std::fabs(static_cast<double>(k1[2]) - std::exp(-2.0) / s1) < 1e-5);
}

static void test_format() {
    const std::string nbsp = std::string("\xC2\xA0");
    EXPECT(format("", 256, true) == "");
    EXPECT(format("a b", 256, false) == "a b");          // space before a letter is kept
    EXPECT(format("a !", 256, false) == "a" + nbsp + "!");  // space before ! becomes U+00A0
    EXPECT(format("a .", 256, false) == "a" + nbsp + ".");  // space before . (bit 13)
    EXPECT(format("a :", 256, false) == "a" + nbsp + ":");  // space before : (bit 25)
    EXPECT(format("a ;", 256, false) == "a" + nbsp + ";");  // space before ; (bit 26)
    EXPECT(format("a ?", 256, false) == "a" + nbsp + "?");  // space before ? (bit 30)
    EXPECT(format("a ,", 256, false) == "a ,");          // ',' is not in the set
    EXPECT(format("ab ", 256, false) == "ab ");          // a trailing space stays
    EXPECT(format("a !", 256, true) == "a" + nbsp + "! "); // flag: a space follows the !

    EXPECT(format("Hi! there", 256, false) == "Hi! there");
    EXPECT(format("Hi! there", 256, true) == "Hi!  there");  // inserted space, then the original
    EXPECT(format("a?b", 256, true) == "a? b");
    EXPECT(format("a,b", 256, true) == "a,b");               // no mark, no insert

    EXPECT(format("x%y", '%', false) == std::string("x\x11y"));  // delimiter becomes 0x11
    EXPECT(format("a b", ' ', false) == "a b");              // a space is not tested as delimiter
    // The delimiter compares as a sign-extended char: 0xE9 is -23.
    EXPECT(format("\xE9", -23, false) == std::string("\x11"));
}

static void test_allocators() {
    g_alloc2_calls = g_alloc4_calls = g_free_calls = 0;

    // The binary passes 0 as the hint for both malloc_internal forms.
    void* a = gameswf::malloc_internal(8u, static_cast<swf::MemHint>(5));
    EXPECT(a != nullptr);
    EXPECT(g_alloc2_calls == 1);
    EXPECT(g_last_hint == 0);
    EXPECT(g_last_size == 8u);
    gameswf::free_internal(a, 8u);
    EXPECT(g_free_calls == 1);

    void* b = gameswf::malloc_internal(16u, static_cast<swf::MemHint>(7), "file.cpp", 42);
    EXPECT(b != nullptr);
    EXPECT(g_alloc4_calls == 1);
    EXPECT(g_last_hint == 0);
    EXPECT(g_last_size == 16u);
    EXPECT(g_last_file != nullptr && std::strcmp(g_last_file, "file.cpp") == 0);
    EXPECT(g_last_line == 42);
    gameswf::free_internal(b, 16u);

    // realloc_internal grows: the first 4 bytes are copied and the old block is freed.
    char* p = static_cast<char*>(std::malloc(4));
    std::memcpy(p, "abcd", 4);
    g_free_calls = 0;
    char* grown = static_cast<char*>(gameswf::realloc_internal(p, 8u, 4u, static_cast<swf::MemHint>(3)));
    EXPECT(grown != nullptr);
    EXPECT(std::memcmp(grown, "abcd", 4) == 0);
    EXPECT(g_last_size == 8u);
    EXPECT(g_free_calls == 1);
    gameswf::free_internal(grown, 8u);

    // realloc_internal shrinks: only the first 2 bytes (min of old 8 and new 2) are copied.
    char* q = static_cast<char*>(std::malloc(8));
    std::memcpy(q, "12345678", 8);
    char* shrunk = static_cast<char*>(
        gameswf::realloc_internal(q, 2u, 8u, static_cast<swf::MemHint>(0), "f.cpp", 9));
    EXPECT(shrunk != nullptr);
    EXPECT(std::memcmp(shrunk, "12", 2) == 0);
    EXPECT(g_last_size == 2u);
    EXPECT(g_last_line == 9);
    gameswf::free_internal(shrunk, 2u);

    gameswf::init_memory_allocator();
    gameswf::dump_memory_allocator();
    gameswf::close_memory_allocator();
}

static void test_filter_engine() {
    g_fe_ctor_calls = g_fe_dtor_calls = 0;
    EXPECT(gameswf::filter_engine::s_instance == nullptr);
    // The object is the texture_cache base plus its own members (0x68 bytes with 32-bit pointers).
    EXPECT(sizeof(gameswf::filter_engine) > sizeof(gameswf::texture_cache));

    g_alloc2_calls = 0;
    gameswf::create_filter_engine();
    EXPECT(gameswf::filter_engine::s_instance != nullptr);
    EXPECT(g_fe_ctor_calls == 1);
    // One allocation with hint 0, big enough for the host object (0x68 bytes only with 32-bit pointers).
    EXPECT(g_alloc2_calls == 1);
    EXPECT(g_last_size == sizeof(gameswf::filter_engine));
    EXPECT(g_last_hint == 0);
    gameswf::filter_engine* first = gameswf::filter_engine::s_instance;

    gameswf::create_filter_engine();  // already created: no second object
    EXPECT(g_fe_ctor_calls == 1);
    EXPECT(gameswf::filter_engine::s_instance == first);

    gameswf::close_filter_engine();
    EXPECT(g_fe_dtor_calls == 1);
    EXPECT(gameswf::filter_engine::s_instance == nullptr);

    gameswf::close_filter_engine();  // nothing to close
    EXPECT(g_fe_dtor_calls == 1);
    EXPECT(gameswf::filter_engine::s_instance == nullptr);
}

int main() {
    test_gaussian();
    test_format();
    test_allocators();
    test_filter_engine();
    if (g_failures == 0) {
        std::printf("all tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
