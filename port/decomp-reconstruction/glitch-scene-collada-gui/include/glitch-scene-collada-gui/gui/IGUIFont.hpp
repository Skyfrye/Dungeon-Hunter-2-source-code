// glitch::gui::IGUIFont and IGUIFontBitmap: the font interfaces. Canonical header of the scene-owner wave (gui family). It replaces the
// IGUIFont / IGUIFontBitmap stand-ins of gui_simple_accessors.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::gui::CGUIFont, 88 bytes, no header words; IReferenceCounted
// is the non-virtual primary base: K 0x00 / 0x04 destructors, 0x08 onDelete): IGUIFont::getType (0x53dbcc) returns 3 and
// IGUIFontBitmap::getType (0x53dbd4) returns 0; the destructors are empty (0x53dc20, 0x53dc24).
// Slots: K 0x0c draw(wchar_t), 0x10 draw(char), 0x14 / 0x18 drawInTexture, 0x1c / 0x20 getDimension, 0x24 getCharacterFromPos, 0x28 getType, 0x2c
// setKerningWidth, 0x30 setKerningHeight, 0x34 setBorder, 0x38 getKerningWidth, 0x3c getKerningHeight, 0x40 setTracking, 0x44 getTracking;
// IGUIFontBitmap adds 0x48 getSpriteBank and 0x4c getSpriteNoFromChar.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::video {
class ITexture;
}

namespace glitch::gui {

class IGUISpriteBank;

enum EGUI_FONT_TYPE : std::uint32_t {
    EGFT_BITMAP = 0,
    EGFT_VECTOR = 1,
    EGFT_OS = 2,
    EGFT_CUSTOM = 3,
};

class IGUIFont : public IReferenceCounted {
public:
    // 0x53dc20 (D1), 0x53eb20 (D0 copy): empty.
    ~IGUIFont() override;

    virtual void draw(const wchar_t* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
                      const core::rect<int>* clip) = 0;                                              // K 0x0c
    virtual void draw(const char* text, const core::rect<int>& position, video::SColor color, bool hcenter, bool vcenter,
                      const core::rect<int>* clip) = 0;                                              // K 0x10
    virtual void drawInTexture(const wchar_t* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                               video::SColor color, bool hcenter, bool vcenter) = 0;                 // K 0x14
    virtual void drawInTexture(const char* text, const boost::intrusive_ptr<video::ITexture>& texture, core::rect<int> position,
                               video::SColor color, bool hcenter, bool vcenter) = 0;                 // K 0x18
    virtual core::dimension2d<int> getDimension(const wchar_t* text) const = 0;                      // K 0x1c
    virtual core::dimension2d<int> getDimension(const char* text) const = 0;                         // K 0x20
    virtual int getCharacterFromPos(const wchar_t* text, int pixelX) const = 0;                      // K 0x24
    // K 0x28, 0x53dbcc: EGFT_CUSTOM in the base.
    virtual EGUI_FONT_TYPE getType() const;
    virtual void setKerningWidth(int kerning) = 0;                                                   // K 0x2c
    virtual void setKerningHeight(int kerning) = 0;                                                  // K 0x30
    virtual void setBorder(std::uint32_t size, video::SColor color) = 0;                             // K 0x34
    virtual int getKerningWidth(const wchar_t* thisLetter, const wchar_t* previousLetter) const = 0;  // K 0x38
    virtual int getKerningHeight() const = 0;                                                        // K 0x3c
    virtual void setTracking(int tracking) = 0;                                                      // K 0x40
    virtual int getTracking() const = 0;                                                             // K 0x44
};

class IGUIFontBitmap : public IGUIFont {
public:
    // 0x53dc24 (D1), 0x53eb0c (D0 copy): empty.
    ~IGUIFontBitmap() override;
    // K 0x28, 0x53dbd4: EGFT_BITMAP.
    EGUI_FONT_TYPE getType() const override;
    virtual IGUISpriteBank* getSpriteBank() const = 0;                          // K 0x48
    virtual std::uint32_t getSpriteNoFromChar(const wchar_t* character) const = 0;  // K 0x4c
};

}  // namespace glitch::gui
