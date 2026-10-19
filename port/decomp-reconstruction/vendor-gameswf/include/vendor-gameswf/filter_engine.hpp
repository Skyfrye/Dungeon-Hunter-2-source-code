// gameswf::filter_engine as the DH2 binary has it (Gameloft addition; not in gameswf r1714).
//
// The binary object is 0x68 bytes (create_filter_engine calls operator new(0x68)). It derives from
// filter_texture_cache (vendor-gameswf/filter_texture_cache.hpp), which is a texture_cache (texture_cache.hpp, 0x40
// bytes in the binary, constructed as 256 x 256 pixels, four bytes a pixel, no render target) with no members of its
// own, and has no vtable. Its own members, from the constructor 0x757500 and the
// destructor 0x7590a4 (32-bit offsets in comments):
//   +0x40 array<character*> m_filtered_characters  characters with a filter, rebuilt by every run (16 bytes)
//   +0x50 array<uint8_t> m_pixels                  scratch pixels of the passes (16 bytes)
//   +0x60 hash<character*, filter_cache_infos> m_cache  one pointer to the table; entries are 40 bytes
//   +0x64 character* m_current                     zeroed by the constructor; display_cached compares against it
// filter_cache_infos is the 28-byte value of that table.
//
// Bodies:
//   - create_filter_engine, close_filter_engine, gaussian_kernel:
//       vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-0.cpp
//   - the static passes, and the constructor, destructor and members:
//       vendor-gameswf/src/v1-vendor-gameswf-gameswf_filter_engine-9ad474-0.cpp

#pragma once

#include <cstdint>

#include "base/container.h"                  // ::array, ::hash, ::fixed_size_hash
#include "gameswf/gameswf.h"                 // gameswf::rect
#include "vendor-gameswf/filter.hpp"         // gameswf::filter
#include "vendor-gameswf/filter_texture_cache.hpp"  // gameswf::filter_texture_cache (the base class)

namespace gameswf {

struct character;
struct root;

// Value of the filter engine's cache table: what the engine knows about one filtered character (28 bytes in the
// binary; the table entries are 40 bytes: next, hash, key, then these fields). The defaults are what run() and
// display_cached() build for a character that is not in the table yet.
struct filter_cache_infos {
    character* m_character = nullptr;                  // +0x00 the character (the key repeated)
    rect m_bound;                                      // +0x04 local bounds in twips: x_min, x_max, y_min, y_max
    texture_cache::region* m_region = nullptr;         // +0x14 the region of the filter texture, null when none was granted
    bool m_dirty = true;                               // +0x18 the filtered image must be rendered again
};

class filter_engine : public filter_texture_cache {
public:
    // A pixel rectangle used by the passes. Seven words in the 32-bit binary (28 bytes).
    struct raster {
        std::uint8_t* data;  // +0x00 pixel buffer
        int x;               // +0x04 added to data without scaling (copy, apply_shadow)
        int y;               // +0x08 row offset, multiplied by stride
        int width;           // +0x0c pixels per row
        int height;          // +0x10 rows
        int stride;          // +0x14 bytes per row
        int bpp;             // +0x18 bytes per pixel
    };

    // Argument of the filter passes. src (+0x04) and dst (+0x20) are the two rasters that apply
    // swaps. Fields after +0x3c are not used by any row of this batch and are not declared.
    struct params {
        // The member is named filter, as the binary's field, so the type is spelled with its namespace
        // (an unqualified filter here would change meaning inside the class).
        gameswf::filter* filter;  // +0x00 filter definition (gameswf/filter.hpp, the 44-byte element)
        raster src;               // +0x04
        raster dst;               // +0x20
    };

    filter_engine();   // 0x757500 (C1). The binary calls texture_cache(256, 256, 4, false), then bitmap_info::layout on the texture.
    ~filter_engine();  // 0x7590a4 (D1)

    // gameswf::filter_engine::s_instance. Null until create_filter_engine runs.
    static inline filter_engine* s_instance = nullptr;

    // Passes. The binary takes no this pointer for these.
    static void blend(raster& src, raster& dst);  // 0x756d88
    static void apply_glow(params& p);            // 0x756f18
    static void prepare(params& p);               // 0x7575b0
    static void apply_shadow(params& p);          // 0x7576d4
    static void apply_blur_v(params& p);          // 0x75792c
    static void apply_blur_h(params& p);          // 0x757cd8
    static void copy(raster& src, raster& dst);   // 0x75807c
    static void clear(raster& r);                 // 0x7580f8
    static void apply(params& p);                 // 0x758140

    // Members that work on the frame buffer, the filtered characters and the cache.
    void read_frame_buffer(int x, int y, int width, int height);  // 0x7572a0
    void collect_filtered_characters(character* c);               // 0x75830c
    bool display_cached(character* c);                            // 0x758434
    void run(root* r);                                            // 0x75918c

    // The members, after the 0x40-byte texture_cache base. Original size 0x68.
    ::array<character*> m_filtered_characters;                                   // +0x40
    ::array<std::uint8_t> m_pixels;                                              // +0x50
    ::hash<character*, filter_cache_infos, ::fixed_size_hash<character*> > m_cache;  // +0x60
    character* m_current = nullptr;                                              // +0x64
};

}  // namespace gameswf

// 0x7586b8 gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::set_raw_capacity(int)
// The cache table's explicit specialization (power-of-two sizes by the binary's rule, 40-byte entries). Declared
// here so every translation unit that adds to the table sees it; body in v1-vendor-gameswf-pack1-607ee7-0.cpp.
template <>
void ::hash<gameswf::character*, gameswf::filter_cache_infos, ::fixed_size_hash<gameswf::character*> >::set_raw_capacity(int new_size);

namespace gameswf {

// 0x99db58. 256 bytes of DH2 data; the glyph texture cache and the filter engine read it as the alpha-to-scale table.
// Defined in vendor-gameswf/src/v1-vendor-gameswf-pack21-d2e85b-0.cpp.
extern const std::uint8_t sqrt_table[256];

void create_filter_engine();                      // 0x75756c
void close_filter_engine();                       // 0x759140
void gaussian_kernel(float* kernel, int radius);  // 0x757840, kernel holds 2 * radius + 1 weights

}  // namespace gameswf
