// Batch v1-vendor-gameswf-pack18-88bfb4-0 (part 1 of 1).
//
// Gameloft classes absent from upstream GameSWF r1714:
//   gameswf::bitmap_font_entity        declared in vendor-gameswf/bitmap_glyph_provider.hpp (pack14 header, extended here)
//   gameswf::bitmap_glyph_texture_cache declared in vendor-gameswf/bitmap_glyph_texture_cache.hpp
// The other two classes in this batch are upstream structs and get no body here: except_info (only its compiler
// generated destructors) and as_3_function (its constructor and destructor differ from upstream; see the ledger).
//
// Offsets are the 32-bit binary's and are comments only. Layout facts used below, from the destructor 0x7c4cd8 and
// default_bitmap_font_entity's constructor 0x7c663c: +0x0c m_provider (bitmap_glyph_provider*), +0x10 m_name (tu_string),
// +0x24 m_glyphs (the glyph hash), with texture_cache's m_texture at +0x34 and m_used at +0x30.

#include "vendor-gameswf/bitmap_glyph_texture_cache.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "vendor-gameswf/bitmap_glyph_data.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/glyph_provider.hpp"  // gameswf::glyph_entity (0x18 bytes), gameswf::log_error

namespace gameswf {
namespace {

// The region key of the texture cache, as the binary builds it in add_glyph_region and get_glyph_region: the owner (the font
// entity pointer, host width), then the glyph code with the low byte of the size in bits 16..23, then two zero words.
texture_cache::key make_glyph_key(const void* owner, std::uint16_t code, int size) {
    texture_cache::key k;
    k.unk_0 = reinterpret_cast<std::uintptr_t>(owner);
    k.unk_4 = static_cast<std::int32_t>(static_cast<std::uint32_t>(code) |
                                        (static_cast<std::uint32_t>(static_cast<std::uint8_t>(size)) << 16));
    k.unk_8 = 0;
    k.unk_c = 0;
    return k;
}

}  // namespace

// 0x7c4574 gameswf::bitmap_font_entity::copy_argb(unsigned char*, int, int, int, unsigned char*, int, int)
// Static. Copies `rows` rows of `row_bytes` bytes each. The source row for row r starts at src + 4 * x + (y + r) * stride
// (4 bytes per pixel); the destination rows are packed one after another from dst. Returns the value memcpy returned
// last, which is the last destination when rows > 0, and src when rows <= 0. The Hex-Rays 8th argument is not in the
// symbol and is not read.
unsigned char* bitmap_font_entity::copy_argb(unsigned char* src, int x, int y, int stride, unsigned char* dst,
                                             int row_bytes, int rows) {
    unsigned char* result = src;
    if (rows > 0) {
        unsigned char* from = src + 4 * x + y * stride;
        int done = 0;
        do {
            ++done;
            result = static_cast<unsigned char*>(std::memcpy(dst, from, static_cast<std::size_t>(row_bytes)));
            from += stride;
            dst += row_bytes;
        } while (done != rows);
    }
    return result;
}

// 0x7c4cd8 gameswf::bitmap_font_entity::~bitmap_font_entity()   [D2]
// 0x7c4ea8 gameswf::bitmap_font_entity::~bitmap_font_entity()   [D1, same body]
// Each glyph in the hash is deleted (its bitmap reference is released with it), then the hash is cleared. In the binary
// the name's heap buffer is released after that (the tu_string's own release, when its first byte is -1). Here that is
// the m_name member's destructor, which runs after this body; the base ref_counted destructor runs after it.
bitmap_font_entity::~bitmap_font_entity() {
    for (auto it = m_glyphs.begin(); it != m_glyphs.end(); ++it) {
        delete it->second;
    }
    m_glyphs.clear();
}

// 0x7c59dc gameswf::bitmap_font_entity::get_char_image(unsigned short, int, gameswf::rect*, float*)
// The glyph key is code | (font_size << 16). A cached glyph is used as it is. Otherwise the virtual get_char_image
// (vtable +0x08) gives the bitmap, the glyph is built from the bitmap and the texture cache's region size, cached in
// m_glyphs, and then the rect and advance are copied out. Returns the texture cache's texture. Returns nullptr when the
// virtual gives no bitmap, and when the provider has no texture cache (after log_error).
bitmap_info* bitmap_font_entity::get_char_image(std::uint16_t code, int font_size, rect* bounds, float* advance) {
    const int key = static_cast<int>(code) | static_cast<int>(static_cast<std::uint32_t>(font_size) << 16);

    glyph_entity* glyph = nullptr;
    if (!m_glyphs.get(key, &glyph)) {
        bitmap_glyph_data data{};
        bitmap_glyph_metrics metrics{};
        if (get_char_image(&data, code, font_size, &metrics) == 0) {
            return nullptr;
        }
        if (m_provider->m_texture_cache == nullptr) {
            log_error("bitmap texture cache not initialized\n");
            return nullptr;
        }

        glyph = new glyph_entity();  // operator new(0x18), zeroed: m_bi is null
        // The region is the glyph size plus one pixel in each direction, rounded to whole cells.
        int region_w = data.m_width + 1;
        int region_h = data.m_height + 1;
        texture_cache::get_region_size_requirement(region_w, region_h);
        glyph->m_u_scale = static_cast<float>(data.m_width) / static_cast<float>(region_w);
        glyph->m_v_scale = static_cast<float>(data.m_height) / static_cast<float>(region_h);
        glyph->m_u = static_cast<float>(-metrics.m_origin_x) / static_cast<float>(metrics.m_size_x);
        glyph->m_v = static_cast<float>(metrics.m_origin_y) / static_cast<float>(metrics.m_size_y);
        glyph->m_u = glyph->m_u * -glyph->m_u_scale;  // the binary flips the sign bit of m_u_scale
        glyph->m_v = glyph->m_v * glyph->m_v_scale;
        glyph->m_advance = static_cast<float>(metrics.m_advance) * 20.0f;
        m_glyphs.add(key, glyph);
    }

    // The rect is the glyph's four floats (u, u scale, v, v scale), copied as it is.
    bounds->m_x_min = glyph->m_u;
    bounds->m_x_max = glyph->m_u_scale;
    bounds->m_y_min = glyph->m_v;
    bounds->m_y_max = glyph->m_v_scale;
    *advance = glyph->m_advance;
    return m_provider->m_texture_cache->m_texture.get_ptr();
}

// 0x7c4648 gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int, int)   [C1]
// 0x7c4670 gameswf::bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int, int)   [C2, same body]
// Forwards to texture_cache(width, height, 4, false): four bytes per pixel, not a render target. The base constructor makes the
// texture from the current render handler (a cleared rgba image of the rounded size) and builds the cell grid.
bitmap_glyph_texture_cache::bitmap_glyph_texture_cache(int width, int height)
    : texture_cache(width, height, 4, false) {}

// 0x7c53c4 gameswf::bitmap_glyph_texture_cache::add_glyph_region(unsigned short, void*, int)
// Locks the texture (texture_cache::lock) first. The owner (glyph_data) is a bitmap_font_entity and its virtual get_char_image
// (vtable +0x08) gives the bitmap; no bitmap returns 0. The region is the bitmap size plus one pixel in each direction, rounded
// to whole cells, taken from the free list (none that fits returns 0). The region takes the clock value, the clock advances,
// and the region is entered in the used table under the key of the owner, the code and the size. The pixel origin of the
// region is computed in float, as the listing does: (y_min * texture width) * bpp + bpp * x_min, truncated. The region's rows are
// cleared (region width * bpp bytes in each of the region's rows), then the bitmap rows are copied over its top left corner
// (width * bpp bytes in each of the bitmap's rows, one source stride apart, one texture row apart in the destination).
int bitmap_glyph_texture_cache::add_glyph_region(std::uint16_t code, void* glyph_data, int size) {
    unsigned char* pixels = static_cast<unsigned char*>(lock());

    bitmap_font_entity* font = static_cast<bitmap_font_entity*>(glyph_data);
    bitmap_glyph_data data{};
    bitmap_glyph_metrics metrics{};
    if (font->get_char_image(&data, code, size, &metrics) == 0) {
        return 0;
    }

    // The region is the bitmap size plus one pixel in each direction, rounded to whole cells.
    int region_w = data.m_width + 1;
    int region_h = data.m_height + 1;
    texture_cache::get_region_size_requirement(region_w, region_h);
    texture_cache::region* available = find_available_region(region_w, region_h);
    if (available == nullptr) {
        return 0;
    }
    available->last_clock = m_clock;  // the region takes the clock value, then the clock advances
    m_clock = m_clock + 1;

    m_used[make_glyph_key(font, code, size)] = available;

    rect bounds;
    get_region_bounds(available, bounds);
    const int bpp = m_bpp;
    const int width = m_texture->get_width();
    const int row_bytes = width * bpp;  // bytes per row of the texture
    const float row_offset = (bounds.m_y_min * static_cast<float>(width)) * static_cast<float>(bpp);
    unsigned char* origin = pixels + static_cast<int>(row_offset + static_cast<float>(bpp) * bounds.m_x_min);

    // Clear the region (its rows and columns are the rounded size), then copy the bitmap rows over its top left corner.
    for (int row = 0; row < region_h; ++row) {
        std::memset(origin + row * row_bytes, 0, static_cast<std::size_t>(region_w * bpp));
    }
    for (int row = 0; row < data.m_height; ++row) {
        std::memcpy(origin + row * row_bytes, data.m_pixels + row * data.m_stride,
                    static_cast<std::size_t>(data.m_width * bpp));
    }
    return 1;
}

// 0x7c55d8 gameswf::bitmap_glyph_texture_cache::get_glyph_region(unsigned short, void*, int, gameswf::rect&)
// Looks the glyph up in the used table. When it is not there, add_glyph_region runs; if that fails the render handler's flush
// (vtable +0x94, s_render_handler, no null test) runs, the cache is reset, and the glyph is added once more. The table is
// searched again and, when the glyph is there with a region, the region bounds are written. The original's float return is a
// register residue (the same as texture_cache::get_region_bounds); the function is void.
void bitmap_glyph_texture_cache::get_glyph_region(std::uint16_t code, void* glyph_data, int size, rect& bounds) {
    const texture_cache::key k = make_glyph_key(glyph_data, code, size);
    texture_cache::region* r = nullptr;
    bool found = m_used.get(k, &r);
    if (!found) {
        if (add_glyph_region(code, glyph_data, size) == 0) {
            s_render_handler->flush();
            reset();
            add_glyph_region(code, glyph_data, size);
        }
        found = m_used.get(k, &r);
    }
    if (found && r != nullptr) {
        get_region_bounds(r, bounds);
    }
}

}  // namespace gameswf
