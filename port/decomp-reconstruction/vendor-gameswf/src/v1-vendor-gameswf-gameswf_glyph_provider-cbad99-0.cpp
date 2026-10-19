// Batch v1-vendor-gameswf-gameswf_glyph_provider-cbad99-0 (gameswf::glyph_provider, part 1 of 1).
//
// Gameloft class, not in upstream GameSWF r1714. Rebuilt from the Hex-Rays pseudocode and checked against
// the ARM listings (tools/decomp_asm.py) for the callbacks and get_char_image. Layout and declarations:
// vendor-gameswf/include/vendor-gameswf/glyph_provider.hpp. FreeType types: freetype_subset.hpp.

#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"  // free_internal, operator new(size, MemHint)
#include "base/membuf.h"                    // membuf (the memory face)
#include "base/tu_file.h"                    // tu_file (the memory face)

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

namespace gameswf {
namespace {

// Width of draw_bitmap's output: the smallest power of two that is at least pitch and greater than 3.
// The binary's loop runs while the value is below pitch or at most 3, so a pitch of 0 or less gives 4.
int bitmap_width_for_pitch(int pitch) {
    int width = 1;
    do {
        width *= 2;
    } while (width < pitch || width <= 3);
    return width;
}

// Height of draw_bitmap's output: 1 for at most one row, otherwise the smallest power of two >= rows.
int bitmap_height_for_rows(int rows) {
    int height = 1;
    if (rows > 1) {
        do {
            height *= 2;
        } while (height < rows);
    }
    return height;
}

}  // namespace

// 0x7d0670 gameswf::glyph_provider::move_to_callback(FT_Vector_*, void*)
// The canvas (+0x20) gets (scale * x, scale * -y), where scale is the provider's +0x04 float.
int glyph_provider::move_to_callback(FT_Vector* to, void* user) {
    glyph_provider* self = static_cast<glyph_provider*>(user);
    const float scale = self->m_scale;
    self->m_canvas->move_to(scale * static_cast<float>(to->x), scale * static_cast<float>(-to->y));
    return 0;
}

// 0x7d061c gameswf::glyph_provider::line_to_callback(FT_Vector_*, void*)
int glyph_provider::line_to_callback(FT_Vector* to, void* user) {
    glyph_provider* self = static_cast<glyph_provider*>(user);
    const float scale = self->m_scale;
    self->m_canvas->line_to(scale * static_cast<float>(to->x), scale * static_cast<float>(-to->y));
    return 0;
}

// 0x7d0580 gameswf::glyph_provider::conic_to_callback(FT_Vector_*, FT_Vector_*, void*)
// Quadratic segment: the control point and the end point, each scaled and flipped in y.
int glyph_provider::conic_to_callback(FT_Vector* control, FT_Vector* to, void* user) {
    glyph_provider* self = static_cast<glyph_provider*>(user);
    const float scale = self->m_scale;
    self->m_canvas->curve_to(scale * static_cast<float>(control->x), scale * static_cast<float>(-control->y),
                             scale * static_cast<float>(to->x), scale * static_cast<float>(-to->y));
    return 0;
}

// 0x7d0470 gameswf::glyph_provider::cubic_to_callback(FT_Vector_*, FT_Vector_*, FT_Vector_*, void*)
// The two cubic control points are replaced by their midpoint, which is the control of one quadratic
// segment. The midpoint is computed in double and stored as float, as in the listing (__aeabi_dmul,
// __aeabi_dadd, __aeabi_d2f). The y control is negated before the scale is applied. The listing passes
// the end point's -y as the fifth argument of curve_to (on the stack).
int glyph_provider::cubic_to_callback(FT_Vector* control1, FT_Vector* control2, FT_Vector* to, void* user) {
    glyph_provider* self = static_cast<glyph_provider*>(user);
    const float scale = self->m_scale;
    const float mid_x = static_cast<float>(static_cast<double>(control1->x) +
                                           static_cast<double>(control2->x - control1->x) * 0.5);
    const float mid_y = static_cast<float>(static_cast<double>(control1->y) +
                                           static_cast<double>(control2->y - control1->y) * 0.5);
    self->m_canvas->curve_to(scale * mid_x, scale * -mid_y, scale * static_cast<float>(to->x),
                             scale * static_cast<float>(-to->y));
    return 0;
}

// 0x7d06c4 gameswf::glyph_provider::draw_bitmap(FT_Bitmap_ const&)
// The image is width x height with width = bitmap_width_for_pitch(pitch) and height =
// bitmap_height_for_rows(rows). The image is cleared over width * height bytes, then the bitmap's width
// bytes per row are copied from the bitmap's rows into the image's rows (stride m_pitch). The third
// argument that Hex-Rays shows is register residue: create_alpha takes two arguments (symbol
// gameswf::create_alpha(int, int)).
image_alpha* glyph_provider::draw_bitmap(const FT_Bitmap& bitmap) {
    image_alpha* alpha = create_alpha(bitmap_width_for_pitch(bitmap.pitch), bitmap_height_for_rows(bitmap.rows));
    std::memset(alpha->m_data, 0,
                static_cast<std::size_t>(alpha->m_width) * static_cast<std::size_t>(alpha->m_height));
    for (int row = 0; row < bitmap.rows; ++row) {
        if (bitmap.width > 0) {
            const unsigned char* src = bitmap.buffer + row * bitmap.pitch;
            std::uint8_t* dst = alpha->m_data + row * alpha->m_pitch;
            for (int x = 0; x != bitmap.width; ++x) {
                dst[x] = src[x];
            }
        }
    }
    return alpha;
}

// 0x7d043c gameswf::glyph_provider::get_char_def(unsigned short, char const*, bool, bool, int, rect*, float*)
// The listing is "MOV R0, #0; BX LR". The arguments are not read, and the result is 0.
int glyph_provider::get_char_def(std::uint16_t, const char*, bool, bool, int, rect*, float*) {
    return 0;
}

// 0x7d0dfc gameswf::glyph_provider::glyph_provider(int, int, bool, float)  [C1]
// 0x7d0ef0 gameswf::glyph_provider::glyph_provider(int, int, bool, float)  [C2, same body]
// The inline bytes of m_name that the binary writes directly (the DH2 length byte at +0x0c set to 1, the terminator
// at +0x0d to 0, the hash-cache word at +0x1c becoming (old & 0xFF000000) | 0xFFFFFF, the byte at +0x1f becoming
// (top byte & 0xFE)) are the default constructor of the DH2 tu_string (base/container.h), so m_name is default-constructed.
// The members are set in the binary's order. FT_Init_FreeType writes the library handle at +0x00. On
// failure the binary prints to stderr ((FILE*)&_sF + 2 is the third FILE of the C library's table) and
// exits with status 1. The texture cache is created with bpp 4 and no render target, and its +0x50 back
// pointer is set to this provider.
glyph_provider::glyph_provider(int texture_width, int texture_height, bool load_faces_into_memory, float scale)
    : m_library(nullptr),
      m_scale(scale),
      m_load_faces_into_memory(load_faces_into_memory),
      m_canvas(nullptr),
      m_texture_cache(nullptr) {
    const FT_Error error = FT_Init_FreeType(&m_library);
    if (error != 0) {
        std::fprintf(stderr, "can't init FreeType!  error = %d\n", error);
        std::exit(1);
    }
    if (texture_width > 0 && texture_height > 0) {
        glyph_texture_cache* cache = new (swf::MEM_UNRECOVERED) glyph_texture_cache(texture_width, texture_height, 4, false);
        cache->m_owner = this;  // +0x50; the pixel array at +0x40 starts empty
        m_texture_cache = cache;
    }
}

// 0x7d1b40 gameswf::glyph_provider::~glyph_provider()  [D1]
// 0x7d1a7c gameswf::glyph_provider::~glyph_provider()  [D2, same body]
// The texture cache is destroyed with gameswf::glyph_texture_cache::~glyph_texture_cache (vendor-gameswf/glyph_texture_cache.hpp)
// followed by free_internal, as the binary does. The order of the other steps follows the listing: clear the face
// hash, reset and destroy the texture cache, FT_Done_FreeType (prints "can't close FreeType!" on error), clear the
// face hash again (same member, +0x24), drop the canvas.
// The name's heap text is freed by the tu_string member destructor (the binary frees it when the flag at
// +0x0c is 0xFF).
glyph_provider::~glyph_provider() {
    m_faces.clear();
    if (m_texture_cache != nullptr) {
        m_texture_cache->reset();
        m_texture_cache->~glyph_texture_cache();
        free_internal(m_texture_cache, 0);
    }
    const FT_Error error = FT_Done_FreeType(m_library);
    if (error != 0) {
        std::fprintf(stderr, "can't close FreeType!  error = %d\n", error);
    }
    m_faces.clear();
    if (m_canvas != nullptr) {
        m_canvas->drop_ref();
    }
}

// 0x7d113c gameswf::glyph_provider::get_face_entity(gameswf::tu_string const&, bool, bool)
// The listing, step by step:
//   1. m_name (the key, +0x0c) = name, plus "B" if bold and "I" if italic.
//   2. A cached face under the key is returned (a cached null means a font that was not found).
//   3. get_fontfile(name) finds the font file. On a miss, log_error prints it and a null is cached under
//      the key, so a later call with the same name returns null without searching again.
//   4. Otherwise the face hash is searched for a face loaded from the same file name, and that face is
//      cached under the key too. The original reads the face without a null test; a null entry (a cached
//      miss) would fault there. This body skips null entries.
//   5. Otherwise FT_New_Face loads the file and the new face is cached under the key.
face_entity* glyph_provider::get_face_entity(const ::tu_string& name, bool is_bold, bool is_italic) {
    m_name = name;
    if (is_bold) {
        m_name += "B";
    }
    if (is_italic) {
        m_name += "I";
    }

    {
        smart_ptr<face_entity> cached;
        if (m_faces.get(m_name, &cached)) {
            return cached.get_ptr();
        }
    }

    ::tu_string fontfile;
    if (!get_fontfile(name.c_str(), fontfile, is_bold, is_italic)) {
        log_error("can't find font file '%s'\n", name.c_str());
        m_faces.add(m_name, smart_ptr<face_entity>());
        return nullptr;
    }

    for (auto it = m_faces.begin(); it != m_faces.end(); ++it) {
        face_entity* face = it->second.get_ptr();
        if (face != nullptr && std::strcmp(face->m_name.c_str(), fontfile.c_str()) == 0) {
            smart_ptr<face_entity> shared = it->second;
            m_faces.add(m_name, shared);
            return shared.get_ptr();
        }
    }

    if (m_load_faces_into_memory) {
        // The memory face: the whole file is read into a membuf (file size from go_to_end and get_position, rewound to
        // 0, membuf resized to the size, read_fully with -1) and FreeType is given that buffer. The tu_file counts as
        // opened when its application-data pointer (+0x00) is set. On a failed open or a failed face the buffer is
        // destroyed and freed, the error is logged and the result is null (nothing is cached).
        FT_Face memory_face = nullptr;
        ::tu_file file(fontfile.c_str(), "rb");
        if (file.get_app_data_DEBUG() != nullptr) {
            file.go_to_end();
            const int size = file.get_position();
            file.set_position(0);
            ::membuf* data = new (swf::MEM_UNRECOVERED) ::membuf();
            data->resize(size);
            file.read_fully(data, -1);
            FT_New_Memory_Face(m_library, static_cast<const FT_Byte*>(data->data()), size, 0, &memory_face);
            if (memory_face != nullptr) {
                smart_ptr<face_entity> entry;
                entry = new (swf::MEM_UNRECOVERED) face_entity(memory_face, data, fontfile);
                m_faces.add(m_name, entry);
                return entry.get_ptr();
            }
            data->~membuf();
            free_internal(data, 0);
        }
        log_error("some error opening font '%s'\n", fontfile.c_str());
        return nullptr;
    }

    FT_Face ft_face = nullptr;
    FT_New_Face(m_library, fontfile.c_str(), 0, &ft_face);
    smart_ptr<face_entity> entry;
    entry = new (swf::MEM_UNRECOVERED) face_entity(ft_face, fontfile);  // operator new(0x2c, 0); smart_ptr::operator=(T*): set_ref
    m_faces.add(m_name, entry);
    return entry.get_ptr();
}

// 0x7d1614 gameswf::glyph_provider::get_char_image(unsigned short, gameswf::tu_string const&, bool, bool, int, gameswf::rect*, float*)
// The glyph key is code | (font_size << 16). A cached glyph (a hit in the face's glyph hash) is returned
// directly, with no FreeType call. On a miss the face's pixel size is set to (int)(font_size * scale), and
// the glyph is loaded in one of two ways:
//   - with a texture cache: FT_Load_Char with flags 0. The region size comes from the glyph metrics in
//     64ths of a pixel, rounded to whole cells by texture_cache::get_region_size_requirement. The scale
//     factors are metric / region size.
//   - without one: FT_Load_Char with FT_LOAD_RENDER (4). The bitmap is copied (draw_bitmap), turned
//     into a bitmap_info by render::create_bitmap_info_alpha(width, height, data), and the alpha image
//     is destroyed. The scale factors are bitmap size / bitmap_info size (vtable slots +0x24 and +0x28,
//     get_width and get_height).
// Both paths then store the bearing ratios, the advance (horiAdvance * 16 / font_size, in float), add the
// glyph to the face hash, and return the texture: the texture cache's texture when one exists, else the
// glyph's bitmap_info. The rect copy and the advance store happen on every return path after the glyph
// exists, as in the listing.
bitmap_info* glyph_provider::get_char_image(std::uint16_t code, const ::tu_string& fontname, bool is_bold,
                                            bool is_italic, int font_size, rect* bounds, float* advance) {
    face_entity* face = get_face_entity(fontname, is_bold, is_italic);
    if (face == nullptr) {
        return nullptr;
    }

    const int key = static_cast<int>(code) | static_cast<int>(static_cast<unsigned int>(font_size) << 16);

    // Writes the rect and advance, and returns the texture for a glyph (cached or new).
    auto finish = [this, bounds, advance](glyph_entity* entity) -> bitmap_info* {
        bounds->m_x_min = entity->m_u;
        bounds->m_x_max = entity->m_u_scale;
        bounds->m_y_min = entity->m_v;
        bounds->m_y_max = entity->m_v_scale;
        *advance = entity->m_advance;
        if (m_texture_cache != nullptr) {
            return m_texture_cache->m_texture.get_ptr();
        }
        return entity->m_bi.get_ptr();
    };

    glyph_entity* glyph = nullptr;
    if (face->m_glyphs.get(key, &glyph)) {
        return finish(glyph);
    }

    // Miss (asm loc_7D16BC): the face's pixel size is set before the glyph is loaded, in both load branches.
    FT_Set_Pixel_Sizes(face->m_face, 0, static_cast<FT_UInt>(static_cast<int>(static_cast<float>(font_size) * m_scale)));
    if (m_texture_cache != nullptr) {
        if (FT_Load_Char(face->m_face, code, 0) != 0) {
            return nullptr;
        }
        glyph = new glyph_entity();
        const FT_GlyphSlot slot = face->m_face->glyph;
        int region_width = slot->metrics.width / 64 + 1;
        int region_height = slot->metrics.height / 64 + 1;
        texture_cache::get_region_size_requirement(region_width, region_height);
        glyph->m_u_scale = static_cast<float>(slot->metrics.width / 64) / static_cast<float>(region_width);
        glyph->m_v_scale = static_cast<float>(slot->metrics.height / 64) / static_cast<float>(region_height);
    } else {
        if (FT_Load_Char(face->m_face, code, 4) != 0) {
            return nullptr;
        }
        glyph = new glyph_entity();
        const FT_GlyphSlot slot = face->m_face->glyph;
        image_alpha* alpha = draw_bitmap(slot->bitmap);
        bitmap_info* texture = render::create_bitmap_info_alpha(alpha->m_width, alpha->m_height, alpha->m_data);
        glyph->m_bi = texture;  // smart_ptr::operator=(T*): set_ref
        delete alpha;  // gameswf::destruct<image_alpha>
        glyph->m_u_scale = static_cast<float>(slot->bitmap.width) / static_cast<float>(glyph->m_bi->get_width());
        glyph->m_v_scale = static_cast<float>(slot->bitmap.rows) / static_cast<float>(glyph->m_bi->get_height());
    }

    // Bearing ratios, relative to the glyph metric width and height (0 when the size is not positive).
    const FT_GlyphSlot slot = face->m_face->glyph;
    glyph->m_u = slot->metrics.width > 0
                     ? static_cast<float>(slot->metrics.horiBearingX) / static_cast<float>(slot->metrics.width)
                     : 0.0f;
    glyph->m_v = slot->metrics.height > 0
                     ? static_cast<float>(slot->metrics.horiBearingY) / static_cast<float>(slot->metrics.height)
                     : 0.0f;
    glyph->m_u = glyph->m_u * -glyph->m_u_scale;
    glyph->m_v = glyph->m_v * glyph->m_v_scale;
    glyph->m_advance = static_cast<float>(slot->metrics.horiAdvance) * (16.0f / static_cast<float>(font_size));

    face->m_glyphs.add(key, glyph);
    return finish(glyph);
}

}  // namespace gameswf
