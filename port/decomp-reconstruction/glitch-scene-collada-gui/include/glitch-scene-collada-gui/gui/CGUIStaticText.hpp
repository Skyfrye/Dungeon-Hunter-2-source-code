// glitch::gui::IGUIStaticText and CGUIStaticText: the static text (optionally word wrapped, with a border and a background). Canonical header
// of the scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp and
// recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIStaticText constructor 0x550354 (element type 16), destructors 0x550f24 / 0x5510cc;
// CGUIStaticText constructors 0x55061c / 0x551e64, destructors 0x550f98 / 0x55102c / 0x551048; tools/decomp_vtable.py glitch::gui::CGUIStaticText;
// the object continues IGUIElement at +0x158 and the virtual bases follow at +0x184 / +0x188, count at +0x18c):
//   +0x158 BrokenText (STLport vector of 72-byte wide strings: start, finish, end)     +0x164 Border
//   +0x168 HAlign   +0x16c VAlign (EGUI_ALIGNMENT)    +0x170 OverrideColorEnabled   +0x171 WordWrap   +0x172 Background
//   +0x173 OverrideColor (SColor, unaligned in the original)   +0x177 BGColor (same)   +0x17c OverrideFont (reference held)
//   +0x180 LastBreakFont (the font breakText last used, no reference)
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIFont;

class IGUIStaticText : public IGUIElement {
public:
    // 0x550354: the IGUIElement base with the type EGUIET_STATIC_TEXT.
    IGUIStaticText(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x550f24 (D1), 0x5510cc (D0 copy): empty.
    ~IGUIStaticText() override;

    virtual void setOverrideFont(IGUIFont* font = nullptr) = 0;                                             // K 0x7c
    virtual IGUIFont* getOverrideFont() const = 0;                                                           // K 0x80
    virtual void setOverrideColor(video::SColor color) = 0;                                                  // K 0x84
    virtual const video::SColor& getOverrideColor() const = 0;                                               // K 0x88
    virtual void enableOverrideColor(bool enable) = 0;                                                       // K 0x8c
    virtual bool isOverrideColorEnabled() const = 0;                                                         // K 0x90
    virtual void setBackgroundColor(video::SColor color) = 0;                                                // K 0x94
    virtual void setDrawBackground(bool draw) = 0;                                                           // K 0x98
    virtual void setDrawBorder(bool draw) = 0;                                                               // K 0x9c
    virtual void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) = 0;                  // K 0xa0
    virtual void setWordWrap(bool wordWrap) = 0;                                                             // K 0xa4
    virtual bool isWordWrapEnabled() const = 0;                                                              // K 0xa8
    virtual int getTextHeight() const = 0;                                                                   // K 0xac
    virtual int getTextWidth() const = 0;                                                                    // K 0xb0
};

class CGUIStaticText : public IGUIStaticText {
public:
    // 0x55061c (C1) / 0x551e64 (C2): the text is stored directly (no word breaking yet); the background colour is the skin's EGDC_3D_FACE when
    // the environment has a skin, the override colour (101, 255, 255, 255) is off, no word wrap, upper-left alignment.
    CGUIStaticText(const wchar_t* text, bool border, IGUIEnvironment* environment, IGUIElement* parent, int id, const core::rect<int>& rectangle,
                   bool background = false);
    // 0x550f98 (D1), 0x55102c, 0x551048: drops the override font, frees the broken lines.
    ~CGUIStaticText() override;

    // K 0x20, 0x551888: the background, the sunken border (flat, the text starts one text distance in), then the text in the override or
    // default font (word wrapped lines, or the one text), in the override colour or the button / gray text colour; then the children.
    void draw() override;
    // K 0x0c, 0x551820: also re-breaks the text.
    void updateAbsolutePosition() override;
    // K 0x44, 0x551e34: stores the text, then re-breaks it.
    void setText(const wchar_t* text) override;
    // K 0x74 / 0x78, 0x5507e4 and 0x550dcc.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setOverrideFont(IGUIFont* font = nullptr) override;                      // 0x551840
    IGUIFont* getOverrideFont() const override;                                   // 0x54ff14
    void setOverrideColor(video::SColor color) override;                          // 0x54ff1c
    const video::SColor& getOverrideColor() const override;                       // 0x54ffa8
    void enableOverrideColor(bool enable) override;                               // 0x54ffb4
    bool isOverrideColorEnabled() const override;                                 // 0x54ffbc
    void setBackgroundColor(video::SColor color) override;                        // 0x54ff54
    void setDrawBackground(bool draw) override;                                   // 0x54ff8c
    void setDrawBorder(bool draw) override;                                       // 0x54ff94
    void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) override;  // 0x54ff9c
    void setWordWrap(bool wordWrap) override;                                     // 0x551838
    bool isWordWrapEnabled() const override;                                      // 0x54ffc4
    int getTextHeight() const override;                                           // 0x54ffcc
    int getTextWidth() const override;                                            // 0x55009c

    // 0x551204: breaks the text into lines that fit the desired width minus 6 (a space, a hyphen or a line break ends a word; a hyphen that ends
    // a line stays on it). Only with word wrap and a skin; remembers the font in LastBreakFont.
    void breakText();

    std::vector<std::wstring> brokenText;                // +0x158
    bool border = false;                                 // +0x164
    EGUI_ALIGNMENT hAlign = EGUIA_UPPERLEFT;             // +0x168
    EGUI_ALIGNMENT vAlign = EGUIA_UPPERLEFT;             // +0x16c
    bool overrideColorEnabled = false;                   // +0x170
    bool wordWrap = false;                               // +0x171
    bool background = false;                            // +0x172
    video::SColor overrideColor{};                       // +0x173
    video::SColor bgColor{};                             // +0x177
    IGUIFont* overrideFont = nullptr;                    // +0x17c
    IGUIFont* lastBreakFont = nullptr;                   // +0x180
};

}  // namespace glitch::gui
