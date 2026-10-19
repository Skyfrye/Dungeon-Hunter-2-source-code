// Decoding helpers for the font file's glyph records (the Gameloft font format). These are not separate binary
// functions. They are the inline arithmetic of default_bitmap_font_entity::get_char_image (0x7c4698) and of its
// constructor, pulled out so the logic can be tested without the file, membuf or tu_file code. The file is big-endian.
// The binary reads each field with _byteswap_ulong or with byte loads; be32 and be16 do the same.
//
// Used by vendor-gameswf/src/v1-vendor-gameswf-pack19-4d4603-0.cpp and tests/v1-vendor-gameswf-pack19-4d4603-0_test.cpp.

#ifndef VENDOR_GAMESWF_BITMAP_GLYPH_DECODE_HPP
#define VENDOR_GAMESWF_BITMAP_GLYPH_DECODE_HPP

#include <cstdint>

namespace gameswf {
namespace bitmap_glyph_decode {

// Big-endian 32-bit field at p (the binary's _byteswap_ulong of a little-endian load).
inline std::uint32_t be32(const std::uint8_t* p) {
    return (static_cast<std::uint32_t>(p[0]) << 24) | (static_cast<std::uint32_t>(p[1]) << 16) |
           (static_cast<std::uint32_t>(p[2]) << 8) | static_cast<std::uint32_t>(p[3]);
}

// Big-endian 16-bit field at p: (p[0] << 8) | p[1], as get_char_image builds the metrics origin.
inline std::uint16_t be16(const std::uint8_t* p) {
    return static_cast<std::uint16_t>((static_cast<std::uint32_t>(p[0]) << 8) | static_cast<std::uint32_t>(p[1]));
}

// One pixel word from its big-endian value. The binary's expression
//   (v << 24) | (v >> 24) | ((v & 0xff00) << 8) | ((v & 0xff0000) >> 8)
// returns the little-endian load of the four bytes the value came from, so a pixel is stored as those bytes read
// little-endian.
inline std::uint32_t pixel_word(std::uint32_t be_value) {
    return (be_value << 24) | (be_value >> 24) | ((be_value & 0xff00u) << 8) | ((be_value & 0xff0000u) >> 8);
}

// Decodes count pixel words from one glyph record (the binary's v15). Bytes 0..3 are the glyph's metrics and are
// not read here. From byte 4 on come runs. Each run starts with a control byte: the low seven bits give the run
// length minus one, and bit 7 says the run repeats its first word. A run without bit 7 stores one big-endian word for
// each pixel. A run with bit 7 stores one word and repeats it. Words go to out[0 .. count-1]. The data are trusted:
// the binary does not check that a run ends inside count. Returns the record offset after the last word read.
inline int decode_pixels(const std::uint8_t* record, int count, std::uint32_t* out) {
    int pos = 4;     // v22
    int index = 0;   // v21
    while (count > index) {
        const std::uint8_t control = record[pos];  // v23
        ++pos;
        const int run = control & 0x7f;            // v25: run length minus one
        const bool repeat = (control & 0x80) != 0; // v27
        std::uint32_t word = 0;                    // v28
        int k = 0;                                 // v24: words of this run stored so far
        do {
            if (!repeat || k == 0) {
                word = pixel_word(be32(record + pos));
                pos += 4;
            }
            ++k;
            out[index] = word;
            ++index;
        } while (run >= k);
    }
    return pos;
}

// The advance value the binary stores in metrics word 4:
//   (int)(float)((float)units * (1024.0 / (float)((float)font_size * 20.0)))
// where units = header_word32 + 1 + glyph_extent - glyph_origin, in 32-bit integer arithmetic. header_word32 is the
// big-endian word at header offset +32, glyph_origin the u16 at glyph +0, glyph_extent the u16 at glyph +2.
inline int scaled_advance(std::uint32_t header_word32, std::uint16_t glyph_origin, std::uint16_t glyph_extent,
                          int font_size) {
    const std::uint32_t wrapped = header_word32 + 1u + static_cast<std::uint32_t>(glyph_extent) -
                                  static_cast<std::uint32_t>(glyph_origin);
    const std::int32_t units = static_cast<std::int32_t>(wrapped);
    const float scale = 1024.0f / (static_cast<float>(font_size) * 20.0f);
    return static_cast<int>(static_cast<float>(units) * scale);
}

}  // namespace bitmap_glyph_decode
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BITMAP_GLYPH_DECODE_HPP
