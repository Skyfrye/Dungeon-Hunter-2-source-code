// glitch::gui::IGUITTFont, CGUITTFont, CGUITTFace, CGUITTLibrary and CGUITTGlyph: the FreeType (TrueType) font of the GUI. Canonical header
// of the scene-owner wave (gui family). It replaces the stand-ins of gui_simple_accessors.hpp, layouts/gui.hpp and recon/slice_04.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::gui::CGUITTFont, 124 bytes: IGUIFont's 0x0c .. 0x44 slots
// then 0x48 getHeight(char), 0x4c getHeight(wchar_t), 0x50 setTransparency, 0x54 getTransparency, 0x58 setAntiAlias, 0x5c getAntiAlias,
// 0x60 clearGlyphs, 0x64 setSpaceWidth, 0x68 getSpaceWidth, 0x6c attach, 0x70 getCharacterFromPos(char)):
//   CGUITTFont (IReferenceCounted is the base): +0x08 Driver (reference held)   +0x0c Glyphs   +0x18 BorderGlyphs   +0x24 SpareGlyphs (cleared
//   with the others, never filled)   (three vectors of CGUITTGlyph, 88 bytes each, indexed by the glyph index - 1)   +0x30 Face (reference held)
//   +0x34 AntiAlias   +0x35 Transparency   +0x38 Tracking   +0x3c SpaceWidth
//   CGUITTGlyph (IReferenceCounted, 88 bytes): +0x08 Cached   +0x0c Size   +0x10 Top   +0x14 Left   +0x18 ImgWidth   +0x1c ImgHeight   +0x20 TexWidth
//   +0x24 TexHeight   +0x28 Top16   +0x2c Left16   +0x30 ImgWidth16   +0x34 ImgHeight16   +0x38 TexWidth16   +0x3c TexHeight16   +0x40 Offset
//   +0x44 Texture   +0x48 Texture16   +0x4c Image (the coverage bytes)   +0x50 BorderSize   +0x54 BorderColor
//   CGUITTFace (IReferenceCounted): +0x08 FT_Face; one static CGUITTLibrary shared by all faces.
//   CGUITTLibrary (IReferenceCounted, 16 bytes): +0x08 FT_Library   +0x0c Loaded
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/freetype_subset.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"

namespace glitch::io {
class IReadFile;
}

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::gui {

class CGUITTFace;

class CGUITTLibrary : public IReferenceCounted {
public:
    // 0x55c518 (C1) / 0x55c69c (C2): a use count of 0 (the owner takes the first use); FT_Init_FreeType, `loaded` when it succeeded.
    CGUITTLibrary();
    // 0x55c48c (D1), 0x55c4c4, 0x55c4e0: FT_Done_FreeType.
    ~CGUITTLibrary() override;

    ft::Library library = nullptr;  // +0x08
    bool loaded = false;            // +0x0c
};

class CGUITTFace : public IReferenceCounted {
public:
    // 0x55c564 (C1) / 0x55c600 (C2): takes a use of the shared library, creating it first; without a working FreeType the library is dropped
    // again and cleared.
    CGUITTFace();
    // 0x55c2f8 (D1), 0x55c354, 0x55c370: FT_Done_Face, then a use of the library is dropped (cleared with the last one).
    ~CGUITTFace() override;

    // 0x55c3cc: FT_New_Memory_Face over the buffer of the file (getBuffer / getSize).
    bool load(io::IReadFile* file);
    // 0x55c450: FT_New_Face.
    bool load(const char* filename);

    ft::Face face = nullptr;                // +0x08
    static CGUITTLibrary* library;          // glitch::gui::CGUITTFace::library
};

class CGUITTGlyph : public IReferenceCounted {
public:
    // 0x55ba34 (C1) / 0x55bab0 (C2): count 1, everything zero (+0x08, +0x50 and +0x54 are not touched).
    CGUITTGlyph();
    // Copy of the implicit constructor the original's vector uses: member-wise, with a use of each texture.
    CGUITTGlyph(const CGUITTGlyph& other);
    // 0x55c6e8 (D1), 0x55c738, 0x55c754: drops the two textures.
    ~CGUITTGlyph() override;
    // 0x55c7ec: member-wise (including the use count), with a use of each texture; the coverage bytes are shared.
    CGUITTGlyph& operator=(const CGUITTGlyph& other);

    // 0x55c7a4: frees the coverage bytes and removes both textures from the texture manager of the driver.
    void Free(video::IVideoDriver* driver);
    // 0x55cbfc: renders the glyph with FreeType (anti-aliased into a 32-bit texture "TTFontGlyph<index>", emboldened by BorderSize when
    // `embolden`); then loads it monochrome into a 16-bit colour key texture "TTFontGlyph<index>_16" (the original only does that second
    // part when the FT_Load_Glyph for it fails, a slip that is kept).
    void cache(std::uint32_t glyphIndex, CGUITTFace* face, video::IVideoDriver* driver, bool embolden);

    bool cached = false;                                   // +0x08
    std::uint32_t size = 0;                                // +0x0c
    int top = 0;                                           // +0x10
    int left = 0;                                          // +0x14
    std::uint32_t imgWidth = 0;                            // +0x18
    std::uint32_t imgHeight = 0;                           // +0x1c
    std::uint32_t texWidth = 0;                            // +0x20
    std::uint32_t texHeight = 0;                           // +0x24
    int top16 = 0;                                         // +0x28
    int left16 = 0;                                        // +0x2c
    std::uint32_t imgWidth16 = 0;                          // +0x30
    std::uint32_t imgHeight16 = 0;                         // +0x34
    std::uint32_t texWidth16 = 0;                          // +0x38
    std::uint32_t texHeight16 = 0;                         // +0x3c
    int offset = 0;                                        // +0x40
    boost::intrusive_ptr<video::ITexture> texture;         // +0x44
    boost::intrusive_ptr<video::ITexture> texture16;       // +0x48
    std::uint8_t* image = nullptr;                         // +0x4c
    std::uint32_t borderSize = 0;                          // +0x50
    video::SColor borderColor{};                           // +0x54
};

class IGUITTFont : public IGUIFont {
public:
    // 0x55bb2c (D1), 0x55c2e4 (D0 copy): empty.
    ~IGUITTFont() override;

    virtual int getHeight(const char* text) const = 0;                                  // K 0x48
    virtual int getHeight(const wchar_t* text) const = 0;                               // K 0x4c
    virtual void setTransparency(bool transparency) = 0;                                // K 0x50
    virtual bool getTransparency() const = 0;                                           // K 0x54
    virtual void setAntiAlias(bool antiAlias) = 0;                                      // K 0x58
    virtual bool getAntiAlias() const = 0;                                              // K 0x5c
    // K 0x60, 0x55ba30: empty in the base.
    virtual void clearGlyphs();
    virtual void setSpaceWidth(int width) = 0;                                          // K 0x64
    virtual int getSpaceWidth() = 0;                                                    // K 0x68
    virtual bool attach(CGUITTFace* face, std::uint32_t size, std::uint32_t border, video::SColor borderColor) = 0;  // K 0x6c
    virtual int getCharacterFromPos(const char* text, int pixelX) const = 0;            // K 0x70
};

class CGUITTFont : public IGUITTFont {
public:
    // 0x55bb30 (C1) / 0x55bbb4 (C2): takes a use of the driver.
    explicit CGUITTFont(video::IVideoDriver* driver);
    // 0x55cae0 (D1), 0x55cb60, 0x55cb7c: drops the face, clears the glyphs, drops the driver.
    ~CGUITTFont() override;

    // K 0x0c / 0x10, 0x55e020 and 0x55d854: the border glyphs first (when a border is set), then the text glyph by glyph; the text is
    // centred in the rectangle when asked.
    void draw(const wchar_t* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
              const core::rect<int>* clip) override;
    void draw(const char* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
              const core::rect<int>* clip) override;
    // K 0x14 / 0x18, 0x55dc70 and 0x55d4e0: the same into a render target texture.
    void drawInTexture(const wchar_t* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                       video::SColor color, bool hcenter, bool vcenter) override;
    void drawInTexture(const char* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                       video::SColor color, bool hcenter, bool vcenter) override;
    // K 0x1c / 0x20, 0x55d488 and 0x55d418: the summed character widths and the glyph size as the height.
    core::dimension2d<int> getDimension(const wchar_t* text) const override;
    core::dimension2d<int> getDimension(const char* text) const override;
    // K 0x24, 0x55d3b8 and K 0x70, 0x55d340: the index of the first character whose end passes the pixel; -1 past the text.
    int getCharacterFromPos(const wchar_t* text, int pixelX) const override;
    int getCharacterFromPos(const char* text, int pixelX) const override;
    void setKerningWidth(int kerning) override;                                          // 0x55bcd4: empty
    void setKerningHeight(int kerning) override;                                         // 0x55bcd8: empty
    // K 0x34, 0x55bc38: the border size is the glyph size times `size`.
    void setBorder(std::uint32_t size, video::SColor color) override;
    int getKerningWidth(const wchar_t* thisLetter, const wchar_t* previousLetter) const override;  // 0x55bcdc: 0
    int getKerningHeight() const override;                                               // 0x55bce4: 0
    void setTracking(int tracking) override;                                             // 0x55bcec: negative becomes 0
    int getTracking() const override;                                                    // 0x55bd00
    int getHeight(const char* text) const override;                                      // 0x55dab8
    int getHeight(const wchar_t* text) const override;                                   // 0x55db50
    void setTransparency(bool transparency) override;                                    // 0x55bd18
    bool getTransparency() const override;                                               // 0x55bd20
    void setAntiAlias(bool antiAlias) override;                                          // 0x55bd08
    bool getAntiAlias() const override;                                                  // 0x55bd10
    void clearGlyphs() override;                                                         // 0x55c97c
    void setSpaceWidth(int width) override;                                              // 0x55bd28
    int getSpaceWidth() override;                                                        // 0x55bd30
    // K 0x6c, 0x55e9f0: sets up one glyph slot per glyph of the face.
    bool attach(CGUITTFace* face, std::uint32_t size, std::uint32_t border, video::SColor borderColor) override;

    // 0x55bfec: draws the glyph texture (the 16-bit one when there is one) at the position + (left, size - top).
    void drawGlyph(const CGUITTGlyph* glyph, core::position2d<int> position, const core::rect<int>* clip, video::SColor color);
    // 0x55c110: the same into a render target texture.
    void drawGlyphInTexture(const CGUITTGlyph* glyph, const boost::intrusive_ptr<video::ITexture>& texture, core::position2d<int> position,
                            const core::rect<int>* clip, video::SColor color);
    // 0x55c240: the vertical bearing as a fraction of the glyph of 'a' (0.7 for a vertical face, 0 when the glyph cannot be loaded).
    float getVertBearingFactor();
    // 0x55d218 / 0x55dbd8: the FreeType glyph index of the character; the glyph (and its border glyph) is cached on first use.
    std::uint32_t getGlyphByValue(std::uint32_t character) const;
    std::uint32_t getGlyphByChar(wchar_t character) const;
    // 0x55d2b0: the advance of a character (glyph left + width + tracking; a fixed width for unknown ones).
    int getWidthFromCharacter(std::uint32_t character) const;

    video::IVideoDriver* driver = nullptr;      // +0x08
    mutable std::vector<CGUITTGlyph> glyphs;        // +0x0c
    mutable std::vector<CGUITTGlyph> borderGlyphs;  // +0x18
    mutable std::vector<CGUITTGlyph> spareGlyphs;   // +0x24
    CGUITTFace* face = nullptr;                 // +0x30
    bool antiAlias = false;                     // +0x34
    bool transparency = false;                  // +0x35
    int tracking = 0;                           // +0x38
    int spaceWidth = 0;                         // +0x3c
};

}  // namespace glitch::gui
