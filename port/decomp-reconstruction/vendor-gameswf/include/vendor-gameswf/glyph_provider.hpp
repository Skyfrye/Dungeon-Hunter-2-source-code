// gameswf::glyph_provider, gameswf::glyph_entity and gameswf::face_entity (Gameloft, not in upstream r1714).
//
// Upstream has an abstract glyph_provider and a glyph_entity (gameswf.h, now inside #if 0 /* DH2 */), and a
// FreeType subclass in gameswf_freetype.h that does not match this layout. The DH2 classes below are the
// ones the binary uses. The DH2 glyph_provider has no virtual functions; its layout is recovered from the
// constructor (0x7d0dfc) and the members the other functions read. 32-bit offsets are in the comments.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-gameswf_glyph_provider-cbad99-0.cpp.
// FreeType types: vendor-gameswf/include/vendor-gameswf/freetype_subset.hpp.

#ifndef VENDOR_GAMESWF_GLYPH_PROVIDER_HPP
#define VENDOR_GAMESWF_GLYPH_PROVIDER_HPP

#include <cstdint>

#include "base/container.h"   // ::hash<>, ::fixed_size_hash<>, ::string_hash_functor<>, ::tu_string
#include "base/smart_ptr.h"   // ::smart_ptr<T>
#include "gameswf/gameswf.h"  // gameswf::rect, gameswf::bitmap_info, gameswf::ref_counted (DH2)
#include "vendor-gameswf/bitmap_hash_dh2.hpp"  // DH2: explicit set_raw_capacity for hash<int, glyph_entity*> (pack19)
#include "vendor-gameswf/canvas.hpp"
#include "vendor-gameswf/freetype_subset.hpp"
#include "vendor-gameswf/image_alpha.hpp"
#include "vendor-gameswf/glyph_texture_cache.hpp"
#include "vendor-gameswf/texture_cache.hpp"

// membuf is global in upstream (base/membuf.h, as tu_file.h declares it). face_entity's memory
// constructor takes a pointer to it.
struct membuf;

namespace gameswf {

struct face_entity;
struct glyph_provider;

// Glyph entry in a face's glyph hash, 0x18 bytes. get_char_image (0x7d1614) allocates it. It is a plain
// struct (no vtable): +0x00 is a smart pointer to the texture, and +0x08..+0x17 is the rect that
// get_char_image copies out.
struct glyph_entity {
    smart_ptr<bitmap_info> m_bi;  // +0x00: the glyph bitmap; null for a glyph in the texture cache
    float m_advance;              // +0x04
    float m_u;                    // +0x08: copied to rect.m_x_min
    float m_u_scale;              // +0x0c: copied to rect.m_x_max
    float m_v;                    // +0x10: copied to rect.m_y_min
    float m_v_scale;              // +0x14: copied to rect.m_y_max
};

// A loaded font face (0x2c bytes). The base is the DH2 ref_counted (12 bytes), so the name is at +0x0c.
// Constructors and destructor: vendor-gameswf/src/v1-vendor-gameswf-pack21-d2e85b-0.cpp.
struct face_entity : public ref_counted {
    // Memory face: data is the font file bytes read by get_face_entity.
    face_entity(FT_Face face, membuf* data, const ::tu_string& name);
    // Face read from a file.
    face_entity(FT_Face face, const ::tu_string& name);
    // 0x7d1c04 (D1). The deleting destructor at 0x7d1d88 is compiler-generated.
    ~face_entity();

    ::tu_string m_name;                   // +0x0c (20 bytes): the font file name the face was loaded under
    membuf* m_data = nullptr;             // +0x20: the memory face's font bytes (owned, freed by the destructor); null for a file face
    FT_Face m_face = nullptr;             // +0x24
    ::hash<int, glyph_entity*, ::fixed_size_hash<int>> m_glyphs;  // +0x28: key code | (size << 16)
};

// gameswf::glyph_provider (DH2). FreeType library, the face cache and an optional texture cache.
struct glyph_provider {
    // 0x7d0dfc (C1) and 0x7d0ef0 (C2). Initialises FreeType (exits on failure). Creates the texture
    // cache when both texture sizes are positive.
    glyph_provider(int texture_width, int texture_height, bool load_faces_into_memory, float scale);
    // 0x7d1b40 (D1) and 0x7d1a7c (D2).
    ~glyph_provider();

    // FreeType outline callbacks. The user pointer is the glyph_provider; the outline goes to m_canvas,
    // scaled by m_scale and flipped in y.
    static int move_to_callback(FT_Vector* to, void* user);                                  // 0x7d0670
    static int line_to_callback(FT_Vector* to, void* user);                                  // 0x7d061c
    static int conic_to_callback(FT_Vector* control, FT_Vector* to, void* user);             // 0x7d0580
    static int cubic_to_callback(FT_Vector* control1, FT_Vector* control2, FT_Vector* to,
                                 void* user);                                                // 0x7d0470

    // 0x7d06c4. Copies a FreeType bitmap into a new 8-bit alpha image whose width is a power of two
    // (at least 4) and whose height is a power of two.
    image_alpha* draw_bitmap(const FT_Bitmap& bitmap);

    // 0x7d043c. The DH2 body is a stub that returns 0 and reads no argument.
    int get_char_def(std::uint16_t code, const char* fontname, bool is_bold, bool is_italic, int font_size,
                     rect* bounds, float* advance);

    // 0x7d113c. Returns the face for a font name with the bold and italic suffixes, loading it on a miss.
    face_entity* get_face_entity(const ::tu_string& name, bool is_bold, bool is_italic);

    // 0x7d1614. Returns the glyph's texture and writes its rect and advance.
    bitmap_info* get_char_image(std::uint16_t code, const ::tu_string& fontname, bool is_bold, bool is_italic,
                                int font_size, rect* bounds, float* advance);

    FT_Library m_library = nullptr;       // +0x00: FT_Library
    float m_scale = 1.0f;                 // +0x04
    bool m_load_faces_into_memory = false;  // +0x08
    ::tu_string m_name;                   // +0x0c (20 bytes): the face key, the font name plus "B" and "I" suffixes
    canvas* m_canvas = nullptr;           // +0x20: released with drop_ref by the destructor
    ::hash<::tu_string, smart_ptr<face_entity>, ::string_hash_functor<::tu_string>> m_faces;  // +0x24
    glyph_texture_cache* m_texture_cache = nullptr;  // +0x28: owned; null when there is no texture cache
};

// Declared here; defined elsewhere in the DH2 build (not in this batch).
//   get_fontfile: gameswf::get_fontfile(char const*, gameswf::tu_string&, bool, bool), returns true when found.
//   log_error: gameswf::log_error(char const*, ...), printf-style.
//   create_alpha: gameswf::create_alpha(int, int), 0x7b5c84; returns an image_alpha.
//   render::create_bitmap_info_alpha(int, int, unsigned char*): the render handler's glyph texture factory.
bool get_fontfile(const char* name, ::tu_string& fontfile, bool is_bold, bool is_italic);
void log_error(const char* fmt, ...);
image_alpha* create_alpha(int width, int height);

namespace render {
bitmap_info* create_bitmap_info_alpha(int w, int h, unsigned char* data);
}  // namespace render

}  // namespace gameswf

// DH2: explicit set_raw_capacity for the face table m_faces (binary 0x7d0a20). Body:
// vendor-gameswf/src/v1-vendor-gameswf-pack20-97b00f-0.cpp. Every TU that adds to m_faces must see this declaration.
template <>
void hash<::tu_string, smart_ptr<gameswf::face_entity>, ::string_hash_functor<::tu_string> >::set_raw_capacity(int new_size);

#endif  // VENDOR_GAMESWF_GLYPH_PROVIDER_HPP
