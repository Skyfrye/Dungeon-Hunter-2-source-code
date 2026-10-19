// Test for batch v1-vendor-gameswf-gameswf_glyph_provider-cbad99-0 (gameswf::glyph_provider).
//
// Covers the FreeType outline callbacks (scale, y flip, the cubic midpoint), get_char_def, the constructor and
// destructor's calls into FreeType, and get_char_image's glyph cache: a cache hit makes no FreeType call, and a
// miss sets the face's pixel size before it loads the glyph. The font file loading, the texture cache and the
// render handler are not run: the functions they belong to are stubbed below so that the batch object links.
// The tu_string and hash<> helpers that get_face_entity and the glyph cache use are small test doubles here.
// Build and run: bash tools/trackb/check_tu.sh --test <this file> <batch .cpp>

#include "vendor-gameswf/glyph_provider.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <vector>

namespace {

int g_failures = 0;
int g_ft_inits = 0;
int g_ft_dones = 0;
int g_sentinel = 0;         // stands in for the canvas and the FreeType library
int g_face_sentinel = 0;    // stands in for the FreeType face
int g_load_char_error = 0;  // the error FT_Load_Char returns (0 loads the glyph)

struct CanvasCall {
    int kind;  // 0 move_to, 1 line_to, 2 curve_to
    float a, b, c, d;
    const void* canvas;
};
std::vector<CanvasCall> g_calls;

// FT_Set_Pixel_Sizes (kind 0) and FT_Load_Char (kind 1) calls, in call order.
struct FtCall {
    int kind;
    const void* face;
    unsigned long a;  // pixel height (kind 0) or character code (kind 1)
    long b;           // pixel width (kind 0) or load flags (kind 1)
};
std::vector<FtCall> g_ft_calls;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// The one call the callbacks made, checked against the expected values (exact in float).
void expect_single_call(int kind, float a, float b, float c, float d, const char* what) {
    if (g_calls.size() != 1) {
        std::printf("FAIL %s: %zu canvas calls, expected 1\n", what, g_calls.size());
        ++g_failures;
        return;
    }
    const CanvasCall& call = g_calls[0];
    if (call.kind != kind || call.a != a || call.b != b || call.c != c || call.d != d ||
        call.canvas != &g_sentinel) {
        std::printf("FAIL %s: kind %d (%g, %g, %g, %g), expected kind %d (%g, %g, %g, %g)\n", what,
                    call.kind, call.a, call.b, call.c, call.d, kind, a, b, c, d);
        ++g_failures;
    }
}

}  // namespace

// FreeType stubs: the library handle and the face are sentinels, and nothing is loaded.
extern "C" {
FT_Error FT_Init_FreeType(FT_Library* alibrary) {
    ++g_ft_inits;
    *alibrary = reinterpret_cast<FT_Library>(&g_sentinel);
    return 0;
}
FT_Error FT_Done_FreeType(FT_Library) {
    ++g_ft_dones;
    return 0;
}
FT_Error FT_New_Face(FT_Library, const char*, FT_Long, FT_Face*) { std::abort(); }
FT_Error FT_Set_Pixel_Sizes(FT_Face face, FT_UInt pixel_width, FT_UInt pixel_height) {
    g_ft_calls.push_back({0, face, pixel_height, static_cast<long>(pixel_width)});
    return 0;
}
FT_Error FT_Load_Char(FT_Face face, FT_ULong char_code, FT_Int32 load_flags) {
    g_ft_calls.push_back({1, face, char_code, static_cast<long>(load_flags)});
    return g_load_char_error;
}
}

namespace gameswf {

// The canvas methods record the call and the canvas they were made on.
void canvas::move_to(float x, float y) { g_calls.push_back({0, x, y, 0.0f, 0.0f, this}); }
void canvas::line_to(float x, float y) { g_calls.push_back({1, x, y, 0.0f, 0.0f, this}); }
void canvas::curve_to(float cx, float cy, float ax, float ay) { g_calls.push_back({2, cx, cy, ax, ay, this}); }

// Not reached by the tested functions. Defined so the batch object links.
image_alpha* create_alpha(int, int) { std::abort(); }
bool get_fontfile(const char*, ::tu_string&, bool, bool) { std::abort(); }
void log_error(const char*, ...) {}
namespace render {
bitmap_info* create_bitmap_info_alpha(int, int, unsigned char*) { std::abort(); }
}  // namespace render

// Used by the cache tests: a face that holds only its name and FreeType face.
face_entity::face_entity(FT_Face face, const ::tu_string& name) {
    m_name = name;
    m_face = face;
}
// The key function of face_entity (its vtable is emitted with this definition). Not reached by the tests.
face_entity::~face_entity() { std::abort(); }
ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
void ref_counted::add_ref() const {}
void ref_counted::drop_ref() {}
int texture_cache::get_region_size_requirement(int&, int&) { std::abort(); }
void texture_cache::reset() { std::abort(); }
texture_cache::texture_cache(int, int, int, bool) { std::abort(); }
texture_cache::~texture_cache() { std::abort(); }
glyph_texture_cache::~glyph_texture_cache() { std::abort(); }  // the provider destroys its cache through this one

}  // namespace gameswf

void ::tu_string::operator+=(const char*) { std::abort(); }
void ::tu_string::operator+=(const ::tu_string&) { std::abort(); }

// Test doubles for the tu_string members the cache tests use. The test names are short, so only the local
// buffer is needed: resize sets the length field (length + 1, as base/container.h defines it).
bool ::tu_string::operator==(const ::tu_string& str) const { return std::strcmp(c_str(), str.c_str()) == 0; }
void ::tu_string::resize(int new_size) {
    if (new_size < 0 || new_size >= static_cast<int>(sizeof(m_union.m_local.m_buffer))) {
        std::abort();  // heap strings are not modelled here
    }
    m_union.m_local.m_length_plus_one = static_cast<char>(new_size + 1);
}
int ::tu_string::utf8_char_count(const char*, int) { std::abort(); }

// Explicit hash<> specializations for the face table (vendor-gameswf/glyph_provider.hpp) and the glyph table
// (vendor-gameswf/bitmap_hash_dh2.hpp). The bodies in the pack20 and pack19 sources need the DH2 allocator, so
// these doubles make an empty table of at least 16 buckets, as upstream does for a first entry. A resize of an
// existing table (a rehash) is not modelled and aborts. The tests add only a few entries.
template <>
void hash<::tu_string, smart_ptr<gameswf::face_entity>, ::string_hash_functor<::tu_string> >::set_raw_capacity(
    int new_size) {
    if (new_size <= 0) {
        clear();
        return;
    }
    if (m_table != nullptr) {
        std::abort();
    }
    int buckets = 16;
    while (buckets < new_size) {
        buckets *= 2;
    }
    m_table = static_cast<table*>(std::malloc(sizeof(table) + sizeof(entry) * buckets));
    m_table->m_entry_count = 0;
    m_table->m_size_mask = buckets - 1;
    for (int i = 0; i < buckets; i++) {
        new (&E(i)) entry();
    }
}
template <>
void hash<int, gameswf::glyph_entity*, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
    if (new_size <= 0) {
        clear();
        return;
    }
    if (m_table != nullptr) {
        std::abort();
    }
    int buckets = 16;
    while (buckets < new_size) {
        buckets *= 2;
    }
    m_table = static_cast<table*>(std::malloc(sizeof(table) + sizeof(entry) * buckets));
    m_table->m_entry_count = 0;
    m_table->m_size_mask = buckets - 1;
    for (int i = 0; i < buckets; i++) {
        new (&E(i)) entry();
    }
}

int main() {
    using gameswf::glyph_provider;

    // Constructor and destructor: one FreeType init and one done, the scale is stored, and no texture
    // cache is made for zero sizes.
    {
        glyph_provider gp(0, 0, false, 2.0f);
        CHECK(g_ft_inits == 1);
        CHECK(gp.m_scale == 2.0f);
        CHECK(gp.m_texture_cache == nullptr);
        CHECK(gp.m_canvas == nullptr);
        CHECK(!gp.m_load_faces_into_memory);
    }
    CHECK(g_ft_dones == 1);

    glyph_provider gp(0, 0, false, 2.0f);
    gp.m_canvas = reinterpret_cast<gameswf::canvas*>(&g_sentinel);
    void* user = &gp;

    // 0x7d0670 move_to: (scale * x, scale * -y).
    FT_Vector p = {3, 5};
    g_calls.clear();
    CHECK(glyph_provider::move_to_callback(&p, user) == 0);
    expect_single_call(0, 6.0f, -10.0f, 0.0f, 0.0f, "move_to");

    // 0x7d061c line_to.
    p = {-4, 7};
    g_calls.clear();
    CHECK(glyph_provider::line_to_callback(&p, user) == 0);
    expect_single_call(1, -8.0f, -14.0f, 0.0f, 0.0f, "line_to");

    // 0x7d0580 conic_to: control (1, 2) and end (3, 4), each scaled and flipped in y.
    FT_Vector control = {1, 2};
    FT_Vector end = {3, 4};
    g_calls.clear();
    CHECK(glyph_provider::conic_to_callback(&control, &end, user) == 0);
    expect_single_call(2, 2.0f, -4.0f, 6.0f, -8.0f, "conic_to");

    // 0x7d0470 cubic_to: the control is the midpoint of the two cubic controls.
    // Controls (5, 3) and (1, -1): midpoint (3, 1). End (0, 0).
    FT_Vector c1 = {5, 3};
    FT_Vector c2 = {1, -1};
    FT_Vector to = {0, 0};
    g_calls.clear();
    CHECK(glyph_provider::cubic_to_callback(&c1, &c2, &to, user) == 0);
    expect_single_call(2, 6.0f, -2.0f, 0.0f, 0.0f, "cubic_to (midpoint 3, 1)");

    // Controls (0, 0) and (4, 8), end (10, -6): midpoint (2, 4), so the control is (4, -8).
    c1 = {0, 0};
    c2 = {4, 8};
    to = {10, -6};
    g_calls.clear();
    CHECK(glyph_provider::cubic_to_callback(&c1, &c2, &to, user) == 0);
    expect_single_call(2, 4.0f, -8.0f, 20.0f, 12.0f, "cubic_to (midpoint 2, 4)");

    // Fractional midpoint with a half scale: midpoint (1.5, 1.5), scaled to (0.75, -0.75).
    gp.m_scale = 0.5f;
    c1 = {1, 1};
    c2 = {2, 2};
    to = {3, 3};
    g_calls.clear();
    CHECK(glyph_provider::cubic_to_callback(&c1, &c2, &to, user) == 0);
    expect_single_call(2, 0.75f, -0.75f, 1.5f, -1.5f, "cubic_to (fractional midpoint)");
    gp.m_scale = 2.0f;

    // 0x7d043c get_char_def is a stub that returns 0.
    CHECK(gp.get_char_def(65, "font", false, false, 12, nullptr, nullptr) == 0);

    // 0x7d1614 get_char_image. The face "font" is in the face table (its key is the name, with no bold or
    // italic suffix), and the glyph 'A' at size 12 is in the face's glyph hash (key code | size << 16).
    gp.m_scale = 1.5f;
    gameswf::face_entity* face =
        new gameswf::face_entity(reinterpret_cast<FT_Face>(&g_face_sentinel), ::tu_string("font"));
    {
        smart_ptr<gameswf::face_entity> cached;
        cached = face;
        gp.m_faces.add(::tu_string("font"), cached);
    }
    gameswf::glyph_entity* cached_glyph = new gameswf::glyph_entity();
    cached_glyph->m_advance = 7.0f;
    cached_glyph->m_u = 1.0f;
    cached_glyph->m_u_scale = 2.0f;
    cached_glyph->m_v = 3.0f;
    cached_glyph->m_v_scale = 4.0f;
    face->m_glyphs.add(65 | (12 << 16), cached_glyph);

    // Cache hit (asm 0x7d1684): the rect and advance come from the glyph and no FreeType call is made, so the
    // face's pixel size is not reset. The glyph has no bitmap and there is no texture cache, so the texture is null.
    gameswf::rect bounds;
    float advance = -1.0f;
    g_ft_calls.clear();
    gameswf::bitmap_info* hit_texture =
        gp.get_char_image(65, ::tu_string("font"), false, false, 12, &bounds, &advance);
    CHECK(g_ft_calls.empty());
    CHECK(hit_texture == nullptr);
    CHECK(bounds.m_x_min == 1.0f && bounds.m_x_max == 2.0f && bounds.m_y_min == 3.0f && bounds.m_y_max == 4.0f);
    CHECK(advance == 7.0f);

    // Cache miss (asm loc_7D16BC): the pixel size is set to (int)(12 * 1.5) = 18 before the glyph is loaded, and
    // the load is made with FT_LOAD_RENDER (4), since there is no texture cache. The load fails here, so the
    // call returns null before it makes a glyph.
    g_ft_calls.clear();
    g_load_char_error = 1;
    gameswf::bitmap_info* miss_texture =
        gp.get_char_image(66, ::tu_string("font"), false, false, 12, &bounds, &advance);
    g_load_char_error = 0;
    CHECK(miss_texture == nullptr);
    CHECK(g_ft_calls.size() == 2);
    if (g_ft_calls.size() == 2) {
        CHECK(g_ft_calls[0].kind == 0 && g_ft_calls[0].face == face->m_face && g_ft_calls[0].a == 18 &&
              g_ft_calls[0].b == 0);
        CHECK(g_ft_calls[1].kind == 1 && g_ft_calls[1].face == face->m_face && g_ft_calls[1].a == 66 &&
              g_ft_calls[1].b == 4);
    }
    gp.m_scale = 2.0f;

    gp.m_canvas = nullptr;

    if (g_failures == 0) {
        std::printf("glyph_provider test: all checks passed\n");
        return 0;
    }
    std::printf("glyph_provider test: %d failure(s)\n", g_failures);
    return 1;
}
