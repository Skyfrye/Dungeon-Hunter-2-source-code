// Test for batch v1-vendor-gameswf-pack21-d2e85b-0: the parts of the batch that run without the engine.
// Checked: the gameswf::sqrt_table values read from the binary. (TransformState, fill_style::set_bitmap and the
// array<array<vector2d<float>>>::push_back<> copy moved to the render_handler_glitch batch and are tested there.)
// Not checked: add_glyph_region, get_glyph_region, the face and glyph cache destructors and the as_* bodies. They
// call FreeType, the texture cache and the filter engine, which are not in this test.
//
// The batch source references engine symbols (FreeType, texture_cache, filter_engine, ref_counted, membuf,
// cxform::clamp, cxform and matrix constructors). The stubs below define them for the link. None of them is called
// by a check in this file except cxform::clamp, which is a no-op here, so every checked value is the batch's own.
//
// Build (paths relative to vendor-gameswf/): this file, src/v1-vendor-gameswf-pack21-d2e85b-0.cpp and
// test-support/dh2_test_support.cpp, test-support/dh2_as_runtime_stubs.cpp (weak aborting definitions for the object runtime
// that the as_c_function / as_s_function bodies reach; this test never constructs one).

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "base/container.h"
#include "base/membuf.h"
#include "gameswf/gameswf.h"
#include "vendor-gameswf/filter_engine.hpp"
#include "vendor-gameswf/freetype_subset.hpp"
#include "vendor-gameswf/glyph_texture_cache.hpp"
#include "vendor-gameswf/ref_counted.hpp"

// membuf (global in the upstream base) is released by the memory face's destructor, not by any check here.
membuf::~membuf() {}

// ---- Stubs for engine symbols referenced by the batch source (not called by the checks) ----------------------------

extern "C" {
FT_Error FT_Done_Face(FT_Face) { return 0; }
void FT_Bitmap_New(FT_Bitmap*) {}
FT_Error FT_Bitmap_Convert(FT_Library, const FT_Bitmap*, FT_Bitmap*, FT_Int) { return 0; }
FT_Error FT_Bitmap_Done(FT_Library, FT_Bitmap*) { return 0; }
FT_Error FT_Set_Pixel_Sizes(FT_Face, FT_UInt, FT_UInt) { return 0; }
FT_Error FT_Load_Char(FT_Face, FT_ULong, FT_Int32) { return 0; }
}

namespace gameswf {

void free_internal(void*, unsigned int) {}
render_handler* s_render_handler = nullptr;

ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
void ref_counted::drop_ref() {}

void filter_engine::copy(raster&, raster&) {}
void filter_engine::apply(params&) {}

void cxform::clamp() {}
cxform::cxform() {}

// texture_cache members used by add_glyph_region and get_glyph_region (not called by the checks).
texture_cache::~texture_cache() {}
void* texture_cache::lock() { return nullptr; }
int texture_cache::get_region_size_requirement(int&, int&) { return 0; }
texture_cache::region* texture_cache::find_used_region(int, int) { return nullptr; }
texture_cache::region* texture_cache::find_available_region(int, int) { return nullptr; }
void texture_cache::get_region_bounds(const texture_cache::region*, gameswf::rect&) const {}
void texture_cache::reset() {}

matrix::matrix() {}

// Defined by the batch source (gameswf::sqrt_table, 256 bytes).
extern const std::uint8_t sqrt_table[256];

}  // namespace gameswf

// tu_string members that the string helpers reach (global type; not called by the checks).
void tu_string::resize(int) {}
int tu_string::utf8_char_count(const char*, int) { return 0; }

// The used-region hash's rehash (defined by vendor-gameswf/src/v1-vendor-gameswf-pack19-4d4603-0.cpp in the build). The
// checks never insert a glyph, so this body is not reached.
template <>
void ::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*,
            ::fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int) {
    std::abort();
}

int main() {
    int failures = 0;
    auto check = [&failures](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAIL: %s\n", what);
            ++failures;
        }
    };

    // gameswf::sqrt_table: values read from the binary (0x99db58).
    check(gameswf::sqrt_table[0] == 0x00, "sqrt_table[0]");
    check(gameswf::sqrt_table[1] == 0x0f, "sqrt_table[1]");
    check(gameswf::sqrt_table[128] == 0xb4, "sqrt_table[128]");
    check(gameswf::sqrt_table[240] == 0xf7, "sqrt_table[240]");
    check(gameswf::sqrt_table[254] == 0xfe, "sqrt_table[254]");
    check(gameswf::sqrt_table[255] == 0xff, "sqrt_table[255]");

    if (failures == 0) {
        std::printf("pack21 test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
