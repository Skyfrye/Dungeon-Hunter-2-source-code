// glitch::gui::CGUIFont: the bitmap font (a sprite bank of glyph rectangles plus the table that maps characters to them). Canonical header of
// the scene-owner wave (gui family). It replaces the CGUIFont of gui_elements.hpp and the CGUIFont members of gui_simple_accessors.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x53dc28 (C1) / 0x53dd04 (C2), destructors 0x53e988 / 0x53ea1c / 0x53eaf0;
// tools/decomp_vtable.py glitch::gui::CGUIFont, 88 bytes, glitch::IReferenceCounted as the non-virtual primary base):
//   +0x00 vptr, +0x04 count (1)   +0x08 Areas (std::vector<SFontArea>)   +0x14 CharacterMap (std::map<wchar_t, int>)
//   +0x2c video driver (a use is held)   +0x30 sprite bank (a use is held)   +0x34 environment   +0x38 WrongCharacter (the area index of ' ')
//   +0x3c MaxHeight   +0x40 GlobalKerningWidth   +0x44 GlobalKerningHeight
// The font loads from a bitmap whose marker pixels (the top-left and bottom-right corners of every glyph; the first three pixels name the
// marker colours) it replaces by transparent pixels (readPositions16bit / readPositions32bit), or from an XML description.
#pragma once

#include <cstdint>
#include <map>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"

namespace glitch {
namespace io {
class IReadFile;
template <typename CharType, typename SuperClass>
class IIrrXMLReader;
}  // namespace io
namespace video {
class CImage;
class IVideoDriver;
}  // namespace video
}  // namespace glitch

namespace glitch::gui {

class IGUIEnvironment;

class CGUIFont : public IGUIFontBitmap {
public:
    // One glyph (16 bytes): the pixels added before and after it and its width, and its sprite in the bank.
    struct SFontArea {
        int underhang = 0;            // +0x00
        int overhang = 0;             // +0x04
        int width = 0;                // +0x08
        std::uint32_t spriteno = 0;   // +0x0c
    };

    // 0x53dc28 (C1) and 0x53dd04 (C2): the count starts at 1; with an environment the font keeps a use of its video driver (environment K 0x20)
    // and of the sprite bank the environment creates for `filename` (K 0x70, addEmptySpriteBank).
    CGUIFont(IGUIEnvironment* environment, const char* filename);
    // 0x53e988 (D1), 0x53ea1c (D2), 0x53eaf0 (D0, skipped): releases the driver and the sprite bank.
    ~CGUIFont() override;

    // 0x53fafc / 0x53fb60 / 0x53fbd4: load the font from a bitmap file, an open file (named by getFileName, file K 0x28) or an XML description.
    bool load(const char* filename);
    bool load(io::IReadFile* file);
    bool load(io::IIrrXMLReader<wchar_t, IReferenceCounted>* xml);

    // K 0x0c, 0x53e038: draws the characters one by one from the sprite bank, the underhang added before and the width, overhang and kerning
    // after; `hcenter` and `vcenter` centre the text in the rectangle, a clip rectangle that excludes the line draws nothing.
    void draw(const wchar_t* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
              const core::rect<int>* clip) override;
    // K 0x10, 0x53dbdc: empty.
    void draw(const char* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
              const core::rect<int>* clip) override;
    // K 0x14 / 0x18, 0x53dbe8 and 0x53dbec: empty.
    void drawInTexture(const wchar_t* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                       video::SColor color, bool hcenter, bool vcenter) override;
    void drawInTexture(const char* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                       video::SColor color, bool hcenter, bool vcenter) override;
    // K 0x1c, 0x53df5c: the size of the text, lines split by "\n", "\r" or "\r\n"; each line is as high as the tallest glyph.
    core::dimension2d<int> getDimension(const wchar_t* text) const override;
    // K 0x20, 0x53dbfc: (0, 0).
    core::dimension2d<int> getDimension(const char* text) const override;
    // K 0x24, 0x53e1f0: the index of the character that covers the pixel (the widths of the glyphs added up), -1 past the end.
    int getCharacterFromPos(const wchar_t* text, int pixelX) const override;
    // K 0x28, 0x53dc0c: EGFT_BITMAP.
    EGUI_FONT_TYPE getType() const override;
    // K 0x2c / 0x30 / 0x34 / 0x38 / 0x3c / 0x40 / 0x44: 0x53de4c, 0x53de54, 0x53dbf0 (empty), 0x53df04, 0x53de5c, 0x53dc14 (empty), 0x53dc18 (0).
    void setKerningWidth(int kerning) override;
    void setKerningHeight(int kerning) override;
    void setBorder(std::uint32_t size, video::SColor color) override;
    int getKerningWidth(const wchar_t* thisLetter, const wchar_t* previousLetter) const override;
    int getKerningHeight() const override;
    void setTracking(int tracking) override;
    int getTracking() const override;
    // K 0x48 / 0x4c, 0x53e26c and 0x53dee4.
    IGUISpriteBank* getSpriteBank() const override;
    std::uint32_t getSpriteNoFromChar(const wchar_t* character) const override;

    // 0x53de64: the area of the character, WrongCharacter for a character that is not in the map.
    int getAreaFromCharacter(wchar_t character) const;
    // 0x53dde0: MaxHeight is the height of the tallest rectangle of the bank.
    void setMaxHeight();
    // 0x53f7c0: prepares the font bitmap (converting 8-bit and 24-bit formats), reads the glyph rectangles from its marker pixels and adds it
    // to the bank as a texture without mipmaps and with nearest filtering. False for an unsupported format or a bitmap without glyphs.
    bool loadTexture(const boost::intrusive_ptr<video::CImage>& image, const char* name);
    // 0x53ef08 (A1R5G5B5 pixels) and 0x53f354 (32-bit pixels): turn the marker pixels into rectangles, sprites and areas.
    void readPositions16bit(const boost::intrusive_ptr<video::CImage>& image, int& lowerRightPositions);
    void readPositions32bit(const boost::intrusive_ptr<video::CImage>& image, int& lowerRightPositions);

    std::vector<SFontArea> areas;                                 // +0x08
    std::map<wchar_t, int> characterMap;                          // +0x14
    boost::intrusive_ptr<video::IVideoDriver> driver;             // +0x2c
    boost::intrusive_ptr<IGUISpriteBank> spriteBank;              // +0x30
    IGUIEnvironment* environment = nullptr;                       // +0x34
    std::uint32_t wrongCharacter = 0;                             // +0x38
    int maxHeight = 0;                                            // +0x3c
    int globalKerningWidth = 0;                                   // +0x40
    int globalKerningHeight = 0;                                  // +0x44
};

}  // namespace glitch::gui
