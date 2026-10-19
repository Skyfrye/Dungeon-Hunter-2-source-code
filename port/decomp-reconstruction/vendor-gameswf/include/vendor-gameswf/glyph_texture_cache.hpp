// gameswf::glyph_texture_cache (Gameloft, not in upstream GameSWF r1714).
//
// A texture_cache that also owns the pixel buffer that glyphs are rendered into before they are copied to the
// texture. The glyph_provider (vendor-gameswf/glyph_provider.hpp) creates it and reads its owner pointer
// (texture_cache::m_owner). Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack21-d2e85b-0.cpp.
//
// Layout. The glyph fields follow the 0x40-byte texture_cache base: the pixel array (buffer, size, capacity and
// borrowed flag, 16 bytes) at +0x40..+0x4f and the owner at +0x50. The glyph_provider constructor (0x7d0dfc) creates
// this class, not a bare texture_cache.
#ifndef VENDOR_GAMESWF_GLYPH_TEXTURE_CACHE_HPP
#define VENDOR_GAMESWF_GLYPH_TEXTURE_CACHE_HPP

#include <cstdint>

#include "base/container.h"
#include "gameswf/gameswf.h"
#include "vendor-gameswf/texture_cache.hpp"

namespace gameswf {

class glyph_texture_cache : public texture_cache {
public:
    // The filter argument of a glyph: three bytes (the binary reads them as a5[0], a5[1], a5[2]). Each is scaled by
    // the glyph provider's scale before use. blur is the blur radius; offset_x and offset_y are the shift of the
    // glyph in the cache (they are also the blur radii when blur is zero).
    struct filter_info {
        std::uint8_t blur;      // +0x00
        std::uint8_t offset_x;  // +0x01
        std::uint8_t offset_y;  // +0x02
    };

    // The glyph_provider constructor (0x7d0dfc) builds it with a 4-byte pixel format and no render target.
    glyph_texture_cache(int width, int height, int bpp, bool render_target) : texture_cache(width, height, bpp, render_target) {}

    // 0x7d1a28 (D1). Empties the pixel array, then the texture_cache base destructor runs.
    ~glyph_texture_cache();

    // 0x7d1da4. Rasterises the glyph of code at font_size from the face into the texture. used_only selects a used
    // region (find_used_region) instead of an available one. Returns 1 on success, 0 when no region fits or the glyph
    // did not load.
    int add_glyph_region(std::uint16_t code, void* face, int font_size, const filter_info& filter, bool used_only);

    // 0x7d266c. Finds the glyph's region (adding it when missing, with a flush and a texture reset as fallbacks)
    // and writes its bounds. The binary's float return is a register residue; the callers ignore it.
    void get_glyph_region(std::uint16_t code, void* face, int font_size, const filter_info& filter, rect& bounds);

    // +0x40 (array<unsigned char>, 16 bytes): the glyph pixel buffer, sized to the expanded glyph image.
    // Zeroed by add_glyph_region before each glyph.
    ::array<std::uint8_t> m_pixels;
    // +0x50: the glyph_provider that owns this cache (set by its constructor).
    glyph_provider* m_owner = nullptr;
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_GLYPH_TEXTURE_CACHE_HPP
