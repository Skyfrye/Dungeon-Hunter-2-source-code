// gameswf::bitmap_glyph_data and gameswf::bitmap_glyph_metrics (Gameloft; absent from upstream GameSWF r1714 and
// from the tree before batch v1-vendor-gameswf-pack18-88bfb4-0).
//
// Both are filled by the pure virtual bitmap_font_entity::get_char_image (vtable +0x08, overridden by
// default_bitmap_font_entity). The field offsets are the 32-bit binary's. The pixel pointer is host width, so its
// offset is a comment only.
//
// Bodies that read or write these: vendor-gameswf/src/v1-vendor-gameswf-pack18-88bfb4-0.cpp

#ifndef VENDOR_GAMESWF_BITMAP_GLYPH_DATA_HPP
#define VENDOR_GAMESWF_BITMAP_GLYPH_DATA_HPP

namespace gameswf {

// The glyph bitmap as the font entity hands it back. add_glyph_region copies m_width pixels from each of m_height
// source rows, m_stride bytes apart.
struct bitmap_glyph_data {
    int m_stride = 0;                         // +0x00: bytes from one source row to the next
    int m_width = 0;                          // +0x04: width in pixels
    int m_height = 0;                         // +0x08: height in rows
    const unsigned char* m_pixels = nullptr;  // +0x0c: the pixel rows
};

// The glyph metrics (five ints in the binary). get_char_image turns them into the glyph's rect and advance.
struct bitmap_glyph_metrics {
    int m_origin_x = 0;  // +0x00: negated and divided by m_size_x gives the glyph's u origin
    int m_origin_y = 0;  // +0x04: divided by m_size_y gives the glyph's v origin
    int m_size_x = 0;    // +0x08: divisor for the u origin
    int m_size_y = 0;    // +0x0c: divisor for the v origin
    int m_advance = 0;   // +0x10: multiplied by 20 gives the glyph advance
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BITMAP_GLYPH_DATA_HPP
