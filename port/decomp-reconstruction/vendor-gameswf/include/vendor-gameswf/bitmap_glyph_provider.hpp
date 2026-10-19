// gameswf::bitmap_glyph_provider and gameswf::default_bitmap_glyph_provider (Gameloft; absent from upstream r1714
// and from this tree before batch v1-vendor-gameswf-pack14-1a21ee-0).
//
// The provider keeps the font entities loaded so far, keyed by the font name plus the "B" (bold) and "I" (italic)
// suffixes, and an optional glyph texture cache. Layout from the constructor (0x7a9698), the destructor (0x7c4e34)
// and get_font_entity (0x7c6048). Offsets are the 32-bit binary's; host pointers are 8 bytes, so they are comments:
//   +0x00 vptr
//   +0x04 m_font_entities  hash<tu_stringi, smart_ptr<bitmap_font_entity>, stringi_hash_functor<tu_stringi> >
//   +0x08 m_flag           bool, the third constructor argument (no function in this batch reads it)
//   +0x0c m_texture_cache  texture_cache*, owned; null unless both size arguments are positive
// Virtual slots: +0x00 D1, +0x04 D0 (deleting, compiler-generated), +0x08 get_font_entity_impl(tu_string const&).
// The vtable of bitmap_glyph_provider is 0x991388 and of default_bitmap_glyph_provider is 0x991138.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack14-1a21ee-0.cpp

#ifndef VENDOR_GAMESWF_BITMAP_GLYPH_PROVIDER_HPP
#define VENDOR_GAMESWF_BITMAP_GLYPH_PROVIDER_HPP

#include <cstdint>

#include "base/container.h"                   // ::hash<>, ::stringi_hash_functor<>, ::tu_stringi, ::tu_string
#include "base/smart_ptr.h"                   // ::smart_ptr<T>
#include "vendor-gameswf/ref_counted.hpp"     // gameswf::ref_counted (DH2, 12 bytes)
#include "vendor-gameswf/texture_cache.hpp"   // gameswf::texture_cache
#include "vendor-gameswf/bitmap_glyph_data.hpp"  // DH2: gameswf::bitmap_glyph_data, bitmap_glyph_metrics (pack18)
#include "base/membuf.h"                       // DH2 (pack19): ::membuf, the default entity's glyph and header buffers
#include "vendor-gameswf/bitmap_hash_dh2.hpp"  // DH2 (pack19): explicit set_raw_capacity for the glyph hashes

// DH2 (pack19): base/tu_file.h, global. The default entity holds an open file as a pointer.
class tu_file;

namespace gameswf {

struct default_bitmap_glyph_provider;
struct bitmap_glyph_provider;  // DH2: declared below
struct glyph_entity;           // DH2: vendor-gameswf/glyph_provider.hpp (the glyph hash's value)

// gameswf::bitmap_font_entity (DH2). A ref_counted (the binary hands get_font_entity's result around as ref_counted*).
// Layout: +0x0c provider, +0x10 name (tu_string; its first byte -1 means the buffer at +0x1c is heap-owned),
// +0x24 glyph hash (from the destructor 0x7c4cd8 and default_bitmap_font_entity's constructor 0x7c663c). The
// rest of its size is not recovered. The DH2 members and methods (provider, glyph hash, the virtual interface,
// copy_argb, get_char_image) are batch v1-vendor-gameswf-pack18-88bfb4-0; the bodies are in its src file.
struct bitmap_font_entity : public ref_counted {
    bitmap_glyph_provider* m_provider = nullptr;  // +0x0c: DH2 the provider (the constructor stores its first argument here)
    ::tu_string m_name;                           // +0x10: the font file name (tu_string, 20 bytes)
    ::hash<int, glyph_entity*, ::fixed_size_hash<int>> m_glyphs;  // +0x24: DH2 glyphs by code | (size << 16)
    // DH2 (pack19): +0x28, the constructor stores 1.0 and then em * (1024 / (em * 20)), where em is the header's word at
    // +0x1c. No function in batch pack19 reads it.
    float m_scale = 1.0f;

    // DH2 0x7c4cd8 (D2) and 0x7c4ea8 (D1), one body. The deleting destructor 0x7c5004 is compiler-generated.
    virtual ~bitmap_font_entity();
    // DH2 vtable +0x08: pure in bitmap_font_entity (vtable dump). default_bitmap_font_entity overrides it (0x7c4698).
    virtual int get_char_image(bitmap_glyph_data* data, std::uint16_t code, int font_size,
                               bitmap_glyph_metrics* metrics) = 0;
    // DH2 0x7c4574, static: copies rows of 4-byte pixels from src + 4 * x + y * stride into dst.
    static unsigned char* copy_argb(unsigned char* src, int x, int y, int stride, unsigned char* dst,
                                    int row_bytes, int rows);
    // DH2 0x7c59dc: the glyph's texture, and its rect and advance. Caches a new glyph in m_glyphs.
    bitmap_info* get_char_image(std::uint16_t code, int font_size, rect* bounds, float* advance);
};

// gameswf::default_bitmap_font_entity (DH2, 0x64 bytes in the binary). Its constructor, default_bitmap_glyph_provider*
// and tu_string const&, is not in the tree; the batch calls it from default_bitmap_glyph_provider::get_font_entity_impl.
struct default_bitmap_font_entity : public bitmap_font_entity {
    // DH2 (pack19): the parameter is the provider base, as the binary's symbol has it (0x7a9634 passes a derived pointer).
    // 0x7c663c (C2) and 0x7c68c4 (C1), one body. Opens the font file, reads the 40-byte header and the glyph offset
    // table, and when the provider's m_flag is set keeps the rest of the file in m_preloaded. Partial: see the .cpp.
    default_bitmap_font_entity(bitmap_glyph_provider* provider, const ::tu_string& name);  // 0x7a9634 calls it
    using bitmap_font_entity::get_char_image;  // DH2: keep the (code, size, rect*, float*) overload visible
    // DH2 (pack19): 0x7c6488 (D1) and 0x7c6570 (D2), one body. The deleting destructor 0x7c6554 is compiler-generated.
    ~default_bitmap_font_entity() override;
    // DH2 vtable +0x08 override, 0x7c4698 (batch pack19).
    int get_char_image(bitmap_glyph_data* data, std::uint16_t code, int font_size,
                       bitmap_glyph_metrics* metrics) override;

    // DH2 (pack19) members, binary offsets from the constructor and get_char_image. Size 0x64 in the binary.
    ::array<std::uint32_t> m_glyph_pixels;  // +0x2c: decoded glyph pixels, array<unsigned int> (count +0x30, capacity +0x34, borrowed flag +0x38)
    ::membuf m_glyph_buffer;                // +0x3c: one glyph's bytes, read from the file when m_preloaded is null
    ::membuf m_index_table;                 // +0x4c: the 40-byte header, then the glyph offset table; its size is the base of the glyph offsets
    ::membuf* m_preloaded = nullptr;        // +0x5c: the file bytes after the table, read by the constructor when m_flag is set
    ::tu_file* m_file = nullptr;            // +0x60: the open font file; kept open unless m_preloaded holds the data
};

// gameswf::bitmap_glyph_provider (DH2).
struct bitmap_glyph_provider {
    // 0x7a9698 (C2). The binary emits no C1 for this class in the queue.
    bitmap_glyph_provider(int texture_width, int texture_height, bool flag);

    // 0x7c4e34 (D2) and 0x7c63f8 (D1), one body in C++. The deleting destructor 0x7c646c is compiler-generated.
    virtual ~bitmap_glyph_provider();

    // Virtual slot +0x08. Pure in the binary: the vtable of bitmap_glyph_provider (0x991380) holds __cxa_pure_virtual in
    // that slot, and default_bitmap_glyph_provider overrides it (0x7a9634). It was a plain virtual with no body, which left
    // the vtable asking for a symbol that no unit defines (link-1).
    virtual bitmap_font_entity* get_font_entity_impl(const ::tu_string& name) = 0;

    // 0x7c6048. Returns the entity for a font name with the bold and italic suffixes, loading it on a miss.
    // The binary returns ref_counted*; the entity is borrowed from m_font_entities.
    ref_counted* get_font_entity(const ::tu_string& name, bool is_bold, bool is_italic);

    ::hash<::tu_stringi, smart_ptr<bitmap_font_entity>, ::stringi_hash_functor<::tu_stringi> > m_font_entities;  // +0x04
    bool m_flag = false;                       // +0x08
    texture_cache* m_texture_cache = nullptr;  // +0x0c: owned, released by the destructor
};

// gameswf::default_bitmap_glyph_provider (DH2). No members of its own; the layout is bitmap_glyph_provider's.
struct default_bitmap_glyph_provider : public bitmap_glyph_provider {
    // 0x7a9664 (D1). The deleting destructor 0x7a99f8 is compiler-generated.
    default_bitmap_glyph_provider(int texture_width, int texture_height, bool flag) : bitmap_glyph_provider(texture_width, texture_height, flag) {}  // DH2: CreateContext (0x7a9708) builds the base and stores this vtable
    ~default_bitmap_glyph_provider() override;

    // 0x7a9634. Allocates and constructs a default_bitmap_font_entity for the name.
    default_bitmap_font_entity* get_font_entity_impl(const ::tu_string& name) override;
};

}  // namespace gameswf

// The call site in get_font_entity (0x7c6048) passes a char buffer and its size, which is not the tree's
// get_fontfile declaration in vendor-gameswf/glyph_provider.hpp (that one takes a tu_string&). The binary's symbol is
// the global _Z12get_fontfilePKcbbPci (0x42b38c, ledgered skipped in core-platform), not a gameswf:: function; it was
// declared in gameswf:: (link-1). Not defined in the tree.
bool get_fontfile(const char* name, bool is_bold, bool is_italic, char* buffer, int buffer_size);

#endif  // VENDOR_GAMESWF_BITMAP_GLYPH_PROVIDER_HPP
