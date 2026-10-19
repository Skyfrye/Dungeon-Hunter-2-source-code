// gameswf::bitmap_glyph_texture_cache (Gameloft; absent from upstream GameSWF r1714 and from the tree before batch
// v1-vendor-gameswf-pack18-88bfb4-0).
//
// A texture_cache whose regions hold glyph bitmaps. A region is keyed by the font entity that owns the glyph, the
// glyph code and the low byte of the size. bitmap_glyph_provider (0x7a9698, vendor-gameswf/bitmap_glyph_provider.hpp)
// creates it with the two texture sizes. This class adds no members: its layout is texture_cache's
// (vendor-gameswf/texture_cache.hpp), and it is 0x40 bytes in the binary.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack18-88bfb4-0.cpp

#ifndef VENDOR_GAMESWF_BITMAP_GLYPH_TEXTURE_CACHE_HPP
#define VENDOR_GAMESWF_BITMAP_GLYPH_TEXTURE_CACHE_HPP

#include <cstdint>

#include "vendor-gameswf/texture_cache.hpp"  // gameswf::texture_cache, gameswf::rect (upstream gameswf.h)

namespace gameswf {

class bitmap_glyph_texture_cache : public texture_cache {
public:
    // 0x7c4648 (C1) and 0x7c4670 (C2), one body. Forwards to texture_cache(width, height, 4, false): 4 bytes
    // per pixel, not a render target.
    bitmap_glyph_texture_cache(int width, int height);

    // 0x7c53c4. Asks the font entity (the owner) for the glyph bitmap. When there is one, puts it in a free
    // region (one extra pixel in each direction), records the region under the key and copies the pixels in.
    // Returns 1 when the glyph was added, 0 when there is no bitmap or no region fits.
    int add_glyph_region(std::uint16_t code, void* glyph_data, int size);

    // 0x7c55d8. Writes the region bounds of the glyph into bounds, adding the glyph first when it is not cached (when the
    // add fails, the render handler is flushed, the cache reset and the glyph added once more). The original returns a float
    // that is only a register residue (see texture_cache::get_region_bounds).
    void get_glyph_region(std::uint16_t code, void* glyph_data, int size, rect& bounds);
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BITMAP_GLYPH_TEXTURE_CACHE_HPP
