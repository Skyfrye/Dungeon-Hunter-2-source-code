// glitch::gui::IGUIEditBox and CGUIEditBox: the single or multi line text edit box. Canonical header of the scene-owner wave (gui family). It
// replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_25.hpp and recon/slice_33.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIEditBox constructor 0x6b0394 (element type 5), destructors 0x6b0b38 / 0x6b0d20;
// CGUIEditBox constructors 0x6b2608 / 0x6b28c8, destructors 0x6b0bac / 0x6b0c60 / 0x6b0c7c; tools/decomp_vtable.py glitch::gui::CGUIEditBox;
// the object continues IGUIElement at +0x158; the virtual bases follow at +0x1d0 / +0x1d4, count at +0x1d8):
//   +0x158 MouseMarking   +0x159 Border   +0x15a OverrideColorEnabled   +0x15c MarkBegin   +0x160 MarkEnd   +0x164 OverrideColor
//   +0x168 OverrideFont   +0x16c LastBreakFont   +0x170 Operator (IOSOperator, reference held)   +0x174 BlinkStartTime   +0x178 CursorPos
//   +0x17c HScrollPos   +0x180 VScrollPos   +0x184 Max   +0x188 WordWrap   +0x189 MultiLine   +0x18a AutoScroll   +0x18b PasswordBox
//   +0x18c PasswordChar   +0x190 HAlign   +0x194 VAlign   +0x198 BrokenText (vector of wide strings)   +0x1a4 BrokenTextPositions (vector of int)
//   +0x1b0 CurrentTextRect   +0x1c0 FrameRect
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch {
class IOSOperator;
}

namespace glitch::gui {

class IGUIFont;

class IGUIEditBox : public IGUIElement {
public:
    // 0x6b0394: the IGUIElement base with the type EGUIET_EDIT_BOX.
    IGUIEditBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6b0b38 (D1), 0x6b0d20 (D0 copy): empty.
    ~IGUIEditBox() override;

    virtual void setOverrideFont(IGUIFont* font = nullptr) = 0;                          // K 0x7c
    virtual void setOverrideColor(video::SColor color) = 0;                              // K 0x80
    virtual void enableOverrideColor(bool enable) = 0;                                   // K 0x84
    virtual void setDrawBorder(bool border) = 0;                                         // K 0x88
    virtual void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) = 0;  // K 0x8c
    virtual void setWordWrap(bool wordWrap) = 0;                                         // K 0x90
    virtual bool isWordWrapEnabled() const = 0;                                          // K 0x94
    virtual void setMultiLine(bool multiLine) = 0;                                       // K 0x98
    virtual bool isMultiLineEnabled() const = 0;                                         // K 0x9c
    virtual void setAutoScroll(bool enable) = 0;                                         // K 0xa0
    virtual bool isAutoScrollEnabled() const = 0;                                        // K 0xa4
    virtual void setPasswordBox(bool passwordBox, wchar_t passwordChar = L'*') = 0;      // K 0xa8
    virtual bool isPasswordBox() const = 0;                                              // K 0xac
    virtual core::dimension2d<int> getTextDimension() = 0;                               // K 0xb0
    virtual void setMax(std::uint32_t max) = 0;                                          // K 0xb4
    virtual std::uint32_t getMax() const = 0;                                            // K 0xb8
};

class CGUIEditBox : public IGUIEditBox {
public:
    // 0x6b2608 (C1) / 0x6b28c8 (C2): password char '*', auto scroll on, the text alignment upper-left / centred, a tab stop; with a border the
    // frame rectangle is inset by the skin's text distances plus one; the operator is the environment's.
    CGUIEditBox(const wchar_t* text, bool border, IGUIEnvironment* environment, IGUIElement* parent, int id, const core::rect<int>& rectangle);
    // 0x6b0bac (D1), 0x6b0c60, 0x6b0c7c: drops the override font and the operator.
    ~CGUIEditBox() override;

    // K 0x08, 0x6b3d70: mouse and key input are processed (when enabled); a lost focus clears the marking.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x6b160c: also re-breaks the text.
    void updateAbsolutePosition() override;
    // K 0x20, 0x6b18e0: the border, the text lines with the marked part highlighted, the blinking cursor, the children.
    void draw() override;
    // K 0x44, 0x6b15c8: replaces the text, clears the marking, the cursor and the scroll, then re-breaks it.
    void setText(const wchar_t* text) override;
    // K 0x74 / 0x78, 0x6b0d9c and 0x6b08ac.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setOverrideFont(IGUIFont* font = nullptr) override;                              // 0x6b162c
    void setOverrideColor(video::SColor color) override;                                  // 0x6afa70
    void enableOverrideColor(bool enable) override;                                       // 0x6afab0
    void setDrawBorder(bool border) override;                                             // 0x6afaa8
    void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) override;   // 0x6afad8
    void setWordWrap(bool wordWrap) override;                                             // 0x6b1624
    bool isWordWrapEnabled() const override;                                              // 0x6afab8
    void setMultiLine(bool multiLine) override;                                           // 0x6afac0
    bool isMultiLineEnabled() const override;                                             // 0x6afac8
    void setAutoScroll(bool enable) override;                                             // 0x6afae4
    bool isAutoScrollEnabled() const override;                                            // 0x6afaec
    void setPasswordBox(bool passwordBox, wchar_t passwordChar = L'*') override;          // 0x6b0844
    bool isPasswordBox() const override;                                                  // 0x6afad0
    core::dimension2d<int> getTextDimension() override;                                   // 0x6afe9c
    void setMax(std::uint32_t max) override;                                              // 0x6b185c
    std::uint32_t getMax() const override;                                                // 0x6afaf4

    // 0x6b0f8c: breaks the text into lines (word wrap and/or the line breaks of a multi line box) and the line start positions.
    void breakText();
    // 0x6afafc: the rectangle of the line (CurrentTextRect) from the alignment, the scroll and the frame.
    void setTextRect(int line);
    // 0x6afd18: the character index under a point.
    int getCursorPos(int x, int y);
    // 0x6affcc: the line that holds the character index (-1 before the first line).
    int getLineFromPos(int pos) const;
    // 0x6b246c: scrolls so that the cursor is visible.
    void calculateScrollPos();
    // 0x6b1668: inserts a character at the cursor (replacing the marked text).
    void inputChar(wchar_t character);
    // 0x6b2b3c / 0x6b2cc0: the mouse and key handling; true when the event was used.
    bool processMouse(const SEvent& event);
    bool processKey(const SEvent& event);

    bool mouseMarking = false;                                 // +0x158
    bool border = false;                                       // +0x159
    bool overrideColorEnabled = false;                         // +0x15a
    int markBegin = 0;                                         // +0x15c
    int markEnd = 0;                                           // +0x160
    video::SColor overrideColor{};                             // +0x164
    IGUIFont* overrideFont = nullptr;                          // +0x168
    IGUIFont* lastBreakFont = nullptr;                         // +0x16c
    IOSOperator* osOperator = nullptr;                         // +0x170
    std::uint32_t blinkStartTime = 0;                          // +0x174
    int cursorPos = 0;                                         // +0x178
    int hScrollPos = 0;                                        // +0x17c
    int vScrollPos = 0;                                        // +0x180
    std::uint32_t maxChars = 0;                                // +0x184
    bool wordWrap = false;                                     // +0x188
    bool multiLine = false;                                    // +0x189
    bool autoScroll = true;                                    // +0x18a
    bool passwordBox = false;                                  // +0x18b
    wchar_t passwordChar = L'*';                               // +0x18c
    EGUI_ALIGNMENT hAlign = EGUIA_UPPERLEFT;                   // +0x190
    EGUI_ALIGNMENT vAlign = EGUIA_CENTER;                      // +0x194
    std::vector<std::wstring> brokenText;                      // +0x198
    std::vector<int> brokenTextPositions;                      // +0x1a4
    core::rect<int> currentTextRect{};                         // +0x1b0
    core::rect<int> frameRect{};                               // +0x1c0
};

}  // namespace glitch::gui
