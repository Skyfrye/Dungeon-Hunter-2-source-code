// gameswf::render_cache as the DH2 binary has it (Gameloft; upstream GameSWF r1714 has no such class).
//
// The cache holds the geometry of a character that was drawn once, so the render handler can replay it
// (render_handler_glitch::draw 0x7d93ac) until the clocks it was built against change. Two pairs of 32-bit words hold
// the clocks: the glyph texture cache's m_last_clock (+0x00 and +0x04) and the bitmap glyph provider's texture cache
// clock (+0x08 and +0x0c). The destructor (0x78ba28) releases its four arrays; the arrays are the whole of the rest of
// the object.
//
// Layout, 32-bit offsets (host pointers are 8 bytes, so the offsets are comments only). The object is 0x50 bytes; each
// array is the 16-byte DH2 array<T> (buffer, size, capacity, borrowed flag at array +0x0c):
//   +0x00 int32_t m_texture_clock[2]            glyph texture cache m_last_clock as (low, high) words
//   +0x08 int32_t m_bitmap_clock[2]             bitmap glyph provider texture cache clock, (low, high) words
//   +0x10 array<entry> m_entries                24-byte entries (render_handler_glitch::draw walks them)
//   +0x20 array<vector3df> m_vertices           12-byte positions; draw writes the mask depth into z (+0x08)
//   +0x30 array<vector2df> m_uvs                8-byte texture coordinates (freed by the destructor; draw does not read it)
//   +0x40 array<uint16_t> m_indices             index buffer; each entry names a base and a count
//
// render_handler_glitch::set_render_cache (0x7d4f8c) empties a cache with resize(0) on the entries (size at +0x14), the
// vertices (+0x24) and the uvs (+0x34); the index array (size at +0x44) is left alone: the listing has no store to it.
// render_handler_glitch::draw_bitmap appends a quad to all four arrays and draw replays the entries.
//
// The clock comparison (0x7738a4) is dh2::render_cache_clocks_valid in render_cache_clocks.hpp (no dependencies).
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack6-a8bd9d-0.cpp

#pragma once

#include <cstdint>

#include "base/container.h"                    // array<T> (upstream; global in base/)
#include "glitch-shared/glitch_core.hpp"       // glitch::core::vector2d, vector3d
#include "vendor-gameswf/render_cache_clocks.hpp"  // dh2::render_cache_clocks_valid

namespace gameswf {

struct character;    // gameswf.h
struct bitmap_info;  // gameswf.h

struct render_cache {
    // Element of m_entries (24 bytes, six 32-bit words). The fields are read by render_handler_glitch::draw
    // (0x7d93ac): the texture is the member at +0x10 of the bitmap, the colour byte goes into the low byte of every
    // staging vertex colour, the vertex range is where the entry's positions sit in m_vertices, the index range is where
    // its triangles sit in m_indices.
    struct entry {
        bitmap_info* m_bitmap = nullptr;  // +0x00
        std::uint32_t m_color = 0;        // +0x04
        std::int32_t m_vertex_base = 0;   // +0x08
        std::int32_t m_vertex_count = 0;  // +0x0c
        std::int32_t m_index_base = 0;    // +0x10
        std::int32_t m_index_count = 0;   // +0x14
    };

    std::int32_t m_texture_clock[2] = {0, 0};  // +0x00
    std::int32_t m_bitmap_clock[2] = {0, 0};   // +0x08
    array<entry> m_entries;                    // +0x10
    array<glitch::core::vector3d<float> > m_vertices;  // +0x20
    array<glitch::core::vector2d<float> > m_uvs;       // +0x30
    array<std::uint16_t> m_indices;            // +0x40

    ~render_cache();                           // 0x78ba28

    // 0x7738a4. True while the clocks stored in the cache still match the ones of the player's glyph providers.
    bool is_valid(character* ch);
};

}  // namespace gameswf
