// FreeType 2.3.7 declarations used by the DH2 glyph provider (gameswf::glyph_provider).
//
// The DH2 binary links FreeType statically. The vendored copy is port/engine-ui/vendor/freetype-2.3.7-hud,
// but its include directory is not on the vendor-gameswf include path, so the types and functions the glyph
// code uses are declared here with FreeType's names and member order. Each struct stops after the last
// member the glyph code reads: FreeType allocates these objects itself, so the rest is not needed here.
//
// Offsets in the comments are the 32-bit ARM offsets the DH2 code reads. Layouts come from
// freetype/ftimage.h (FT_Vector, FT_Bitmap, FT_Glyph_Metrics), freetype/freetype.h (FT_FaceRec,
// FT_GlyphSlotRec). Replace this file with the real headers when TU_CONFIG_LINK_TO_FREETYPE is enabled.
#ifndef VENDOR_GAMESWF_FREETYPE_SUBSET_HPP
#define VENDOR_GAMESWF_FREETYPE_SUBSET_HPP

typedef int FT_Error;
typedef signed long FT_Pos;
typedef signed long FT_Long;
typedef signed long FT_Fixed;
typedef unsigned int FT_UInt;
typedef int FT_Int;
typedef signed int FT_Int32;
typedef unsigned long FT_ULong;
typedef short FT_Short;
typedef unsigned short FT_UShort;
typedef char FT_String;
typedef unsigned char FT_Byte;
typedef int FT_Glyph_Format;  // enum FT_Glyph_Format_ in ftimage.h (int-sized)

struct FT_LibraryRec_;
struct FT_FaceRec_;
struct FT_GlyphSlotRec_;
struct FT_Bitmap_Size_;
struct FT_CharMapRec_;

typedef FT_LibraryRec_* FT_Library;
typedef FT_FaceRec_* FT_Face;
typedef FT_GlyphSlotRec_* FT_GlyphSlot;
typedef FT_CharMapRec_* FT_CharMap;

typedef void (*FT_Generic_Finalizer)(void*);

struct FT_Generic_ {
    void* data;
    FT_Generic_Finalizer finalizer;
};
typedef FT_Generic_ FT_Generic;

// ftimage.h FT_Vector_: the outline point the decomposition callbacks receive.
struct FT_Vector_ {
    FT_Pos x;  // +0x00
    FT_Pos y;  // +0x04
};
typedef FT_Vector_ FT_Vector;

struct FT_BBox_ {
    FT_Pos xMin, yMin, xMax, yMax;
};

// ftimage.h FT_Glyph_Metrics_: eight FT_Pos values, 32 bytes.
struct FT_Glyph_Metrics_ {
    FT_Pos width;           // +0x00
    FT_Pos height;          // +0x04
    FT_Pos horiBearingX;    // +0x08
    FT_Pos horiBearingY;    // +0x0c
    FT_Pos horiAdvance;     // +0x10
    FT_Pos vertBearingX;    // +0x14
    FT_Pos vertBearingY;    // +0x18
    FT_Pos vertAdvance;     // +0x1c
};
typedef FT_Glyph_Metrics_ FT_Glyph_Metrics;

// ftimage.h FT_Bitmap_: a glyph bitmap, 24 bytes. Inside FT_GlyphSlotRec at +0x4c.
struct FT_Bitmap_ {
    int rows;                   // +0x00
    int width;                  // +0x04
    int pitch;                  // +0x08
    unsigned char* buffer;      // +0x0c
    short num_grays;            // +0x10
    char pixel_mode;            // +0x12
    char palette_mode;          // +0x13
    void* palette;              // +0x14
};
typedef FT_Bitmap_ FT_Bitmap;

// freetype.h FT_GlyphSlotRec_, cut after bitmap (the last member the glyph code reads).
struct FT_GlyphSlotRec_ {
    FT_Library library;                // +0x00
    FT_Face face;                      // +0x04
    FT_GlyphSlot next;                 // +0x08
    FT_UInt reserved;                  // +0x0c
    FT_Generic generic;                // +0x10
    FT_Glyph_Metrics metrics;          // +0x18
    FT_Fixed linearHoriAdvance;        // +0x38
    FT_Fixed linearVertAdvance;        // +0x3c
    FT_Vector advance;                 // +0x40
    FT_Glyph_Format format;            // +0x48
    FT_Bitmap bitmap;                  // +0x4c: rows, width, pitch, buffer (the glyph code reads these)
};

// freetype.h FT_FaceRec_, cut after glyph (the last member the glyph code reads). glyph is at +0x54.
struct FT_FaceRec_ {
    FT_Long num_faces;                 // +0x00
    FT_Long face_index;                // +0x04
    FT_Long face_flags;                // +0x08
    FT_Long style_flags;               // +0x0c
    FT_Long num_glyphs;                // +0x10
    FT_String* family_name;            // +0x14
    FT_String* style_name;             // +0x18
    FT_Int num_fixed_sizes;            // +0x1c
    FT_Bitmap_Size_* available_sizes;  // +0x20
    FT_Int num_charmaps;               // +0x24
    FT_CharMap* charmaps;              // +0x28
    FT_Generic generic;                // +0x2c
    FT_BBox_ bbox;                     // +0x34
    FT_UShort units_per_EM;            // +0x44
    FT_Short ascender;                 // +0x46
    FT_Short descender;                // +0x48
    FT_Short height;                   // +0x4a
    FT_Short max_advance_width;        // +0x4c
    FT_Short max_advance_height;       // +0x4e
    FT_Short underline_position;       // +0x50
    FT_Short underline_thickness;      // +0x52
    FT_GlyphSlot glyph;                // +0x54
};

extern "C" {
FT_Error FT_Init_FreeType(FT_Library* alibrary);
FT_Error FT_Done_FreeType(FT_Library library);
FT_Error FT_New_Face(FT_Library library, const char* filepathname, FT_Long face_index, FT_Face* aface);
FT_Error FT_New_Memory_Face(FT_Library library, const FT_Byte* file_base, FT_Long file_size,
                            FT_Long face_index, FT_Face* aface);
FT_Error FT_Set_Pixel_Sizes(FT_Face face, FT_UInt pixel_width, FT_UInt pixel_height);
FT_Error FT_Load_Char(FT_Face face, FT_ULong char_code, FT_Int32 load_flags);
FT_Error FT_Done_Face(FT_Face face);
void FT_Bitmap_New(FT_Bitmap* bitmap);
FT_Error FT_Bitmap_Convert(FT_Library library, const FT_Bitmap* source, FT_Bitmap* target, FT_Int alignment);
FT_Error FT_Bitmap_Done(FT_Library library, FT_Bitmap* bitmap);
}

#endif  // VENDOR_GAMESWF_FREETYPE_SUBSET_HPP
