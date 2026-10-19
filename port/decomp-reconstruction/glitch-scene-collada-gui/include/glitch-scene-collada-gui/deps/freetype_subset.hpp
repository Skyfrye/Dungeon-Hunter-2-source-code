// FreeType 2.3.7 declarations used by the glitch::gui TrueType font classes (CGUITTLibrary / CGUITTFace / CGUITTGlyph / CGUITTFont).
//
// The DH2 binary links FreeType statically; the functions below are the ones the font code calls (their symbols are listed in
// link-stubs/link_stubs.csv). The types are declared in glitch::gui::ft with FreeType's member order, each struct stopping after the last member
// the font code reads (FreeType allocates the objects itself). Offsets in the comments are the 32-bit ARM offsets of the original code.
// The functions have C linkage and FreeType's names; the types are the namespace's own so that this header does not collide with other
// declarations of the same library in other translation units.
#pragma once

namespace glitch::gui::ft {

using Error = int;
using Pos = long;
using Long = long;
using ULong = unsigned long;
using UInt = unsigned int;
using Int32 = int;
using Byte = unsigned char;

struct LibraryRec;
struct FaceRec;
struct GlyphSlotRec;
using Library = LibraryRec*;
using Face = FaceRec*;
using GlyphSlot = GlyphSlotRec*;

struct Generic {
    void* data;
    void (*finalizer)(void*);
};

struct BBox {
    Pos xMin, yMin, xMax, yMax;
};

struct Bitmap {
    int rows;                // +0x00
    int width;               // +0x04
    int pitch;               // +0x08
    unsigned char* buffer;   // +0x0c
    short num_grays;         // +0x10
    char pixel_mode;         // +0x12
    char palette_mode;       // +0x13
    void* palette;           // +0x14
};

struct GlyphMetrics {
    Pos width, height, horiBearingX, horiBearingY, horiAdvance, vertBearingX, vertBearingY, vertAdvance;  // +0x00 .. +0x1c
};

// FT_FaceRec: only the members up to `glyph` are declared.
struct FaceRec {
    Long num_faces;           // +0x00
    Long face_index;          // +0x04
    Long face_flags;          // +0x08 (FT_FACE_FLAG_VERTICAL is 0x20)
    Long style_flags;         // +0x0c
    Long num_glyphs;          // +0x10
    char* family_name;        // +0x14
    char* style_name;         // +0x18
    int num_fixed_sizes;      // +0x1c
    void* available_sizes;    // +0x20
    int num_charmaps;         // +0x24
    void* charmaps;           // +0x28
    Generic generic;          // +0x2c
    BBox bbox;                // +0x34
    unsigned short units_per_EM;  // +0x44
    short ascender;           // +0x46
    short descender;          // +0x48
    short height;             // +0x4a
    short max_advance_width;  // +0x4c
    short max_advance_height; // +0x4e
    short underline_position; // +0x50
    short underline_thickness;  // +0x52
    GlyphSlot glyph;          // +0x54
};

// FT_GlyphSlotRec: only the members up to `bitmap_top` are declared.
struct GlyphSlotRec {
    Library library;          // +0x00
    Face face;                // +0x04
    GlyphSlot next;           // +0x08
    unsigned int reserved;    // +0x0c
    Generic generic;          // +0x10
    GlyphMetrics metrics;     // +0x18
    Long linearHoriAdvance;   // +0x38
    Long linearVertAdvance;   // +0x3c
    Pos advanceX, advanceY;   // +0x40
    unsigned int format;      // +0x48 (FT_GLYPH_FORMAT_OUTLINE is 'outl' = 0x6f75746c)
    Bitmap bitmap;            // +0x4c
    int bitmap_left;          // +0x64
    int bitmap_top;           // +0x68
};

constexpr unsigned int kGlyphFormatOutline = 0x6f75746cu;

extern "C" {
Error FT_Init_FreeType(Library* library);
Error FT_Done_FreeType(Library library);
Error FT_New_Face(Library library, const char* path, Long faceIndex, Face* face);
Error FT_New_Memory_Face(Library library, const Byte* base, Long size, Long faceIndex, Face* face);
Error FT_Done_Face(Face face);
Error FT_Set_Pixel_Sizes(Face face, UInt width, UInt height);
UInt FT_Get_Char_Index(Face face, ULong charcode);
Error FT_Load_Glyph(Face face, UInt glyphIndex, Int32 loadFlags);
Error FT_Render_Glyph(GlyphSlot slot, int renderMode);
Error FT_GlyphSlot_Own_Bitmap(GlyphSlot slot);
Error FT_Bitmap_Embolden(Library library, Bitmap* bitmap, Pos xStrength, Pos yStrength);
}

}  // namespace glitch::gui::ft
