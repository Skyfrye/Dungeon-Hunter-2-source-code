// Clock comparison of gameswf::render_cache::is_valid (0x7738a4), as a pure function with no other dependency.
//
// render_cache (render_cache.hpp) keeps two pairs of 32-bit words, stamped with the texture cache's m_last_clock
// and the bitmap glyph provider's clock. The batch's is_valid resolves the two sources; this header holds the
// comparison, so the test can run it without the engine. Bodies: none needed, the function is inline.
#pragma once

#include <cstdint>

namespace gameswf {
namespace dh2 {

// tex_clock is the texture cache's m_last_clock as (low, high) words, or null when there is no texture cache.
// bitmap_clock is the second clock as (low, high) words, or null when that source is absent. stored_tex and
// stored_bitmap are the cache's own words (render_cache::m_texture_clock and m_bitmap_clock). Returns true when the
// cache is still valid and updates the stored words the way the binary does: a changed texture clock is stored and
// makes the result false; a changed second clock is stored and makes the result false.
inline bool render_cache_clocks_valid(std::int32_t* stored_tex, std::int32_t* stored_bitmap,
                                      const std::int32_t* tex_clock, const std::int32_t* bitmap_clock) {
    bool changed = false;
    if (tex_clock && (stored_tex[0] != tex_clock[0] || stored_tex[1] != tex_clock[1])) {
        stored_tex[0] = tex_clock[0];
        stored_tex[1] = tex_clock[1];
        changed = true;
    }
    if (!bitmap_clock) {
        return !changed;
    }
    if (stored_bitmap[0] == bitmap_clock[0] && stored_bitmap[1] == bitmap_clock[1]) {
        return !changed;
    }
    stored_bitmap[0] = bitmap_clock[0];
    stored_bitmap[1] = bitmap_clock[1];
    return false;
}

}  // namespace dh2
}  // namespace gameswf
