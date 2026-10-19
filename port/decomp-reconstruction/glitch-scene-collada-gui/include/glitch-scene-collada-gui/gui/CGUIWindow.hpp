// glitch::gui::IGUIWindow, CGUIWindow and CGUIMessageBox: the window and the message box derived from it. Canonical header of the scene-owner
// wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_02.hpp,
// recon/slice_04.hpp and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIWindow constructor 0x55ed80 (element type 21), destructors 0x547c50 / 0x547ebc;
// CGUIWindow constructors 0x55f040 / 0x55f680, destructors 0x55fc70 / 0x55fd40 / 0x55fd5c; CGUIMessageBox constructors 0x547a0c / 0x548070,
// destructors 0x547cb4 / 0x547db4 / 0x547dd0; tools/decomp_vtable.py glitch::gui::CGUIWindow / CGUIMessageBox):
//   CGUIWindow continues IGUIElement at +0x158:   +0x158 DragStart (position2d)   +0x160 Dragging   +0x164 CloseButton   +0x168 MinButton
//     +0x16c RestoreButton (the one getMaximizeButton returns); one reference is held on each; the virtual bases follow at +0x170 / +0x174, count +0x178
//   CGUIMessageBox continues at +0x170 (the bases move to +0x1d4 / +0x1d8):   +0x170 OkButton   +0x174 CancelButton   +0x178 YesButton   +0x17c NoButton
//     +0x180 StaticText   +0x184 Flags (EMBF_*)   +0x188 MessageText (STLport wide string)   +0x1d0 Pressed
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIButton;
class IGUIStaticText;

// The message box button flags (CGUIMessageBox +0x184).
enum EMESSAGE_BOX_FLAG : std::int32_t {
    EMBF_OK = 0x1,
    EMBF_CANCEL = 0x2,
    EMBF_YES = 0x4,
    EMBF_NO = 0x8,
};

class IGUIWindow : public IGUIElement {
public:
    // 0x55ed80: the IGUIElement base with the type EGUIET_WINDOW.
    IGUIWindow(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x547c50 (D1), 0x547ebc (D0 copy): empty.
    ~IGUIWindow() override;

    virtual IGUIButton* getCloseButton() const = 0;     // K 0x7c
    virtual IGUIButton* getMinimizeButton() const = 0;  // K 0x80
    virtual IGUIButton* getMaximizeButton() const = 0;  // K 0x84
};

class CGUIWindow : public IGUIWindow {
public:
    // 0x55f040 (C1) / 0x55f680 (C2): the close, restore (maximize) and minimize buttons at the upper right (the last two invisible), a tab
    // group and tab stop; the constructor ends with setTabOrder(-1).
    CGUIWindow(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x55fc70 (D1), 0x55fd40, 0x55fd5c: drops the three buttons.
    ~CGUIWindow() override;

    // K 0x08, 0x55fe1c: dragging with the left button (kept inside the parent), the close button posts EGET_ELEMENT_CLOSED to the parent (and
    // removes the window when it does not handle it), a focus gain raises the window.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x55eb40.
    void updateAbsolutePosition() override;
    // K 0x20, 0x56008c: the skin's window background and the title text in the active caption colour, then the children.
    void draw() override;

    IGUIButton* getCloseButton() const override;     // 0x55eb44
    IGUIButton* getMinimizeButton() const override;  // 0x55eb4c
    IGUIButton* getMaximizeButton() const override;  // 0x55eb54

    core::position2d<int> dragStart{};  // +0x158
    bool dragging = false;              // +0x160
    IGUIButton* closeButton = nullptr;  // +0x164
    IGUIButton* minButton = nullptr;    // +0x168
    IGUIButton* restoreButton = nullptr;  // +0x16c
};

class CGUIMessageBox : public CGUIWindow {
public:
    // 0x547a0c (C1) / 0x548070 (C2): a window of type EGUIET_MESSAGE_BOX without the maximize and minimize buttons; the caption is stored as
    // the window text, the focus goes to the box, refreshControls builds the text and buttons.
    CGUIMessageBox(IGUIEnvironment* environment, const wchar_t* caption, const wchar_t* text, int flags, IGUIElement* parent, int id,
                   core::rect<int> rectangle);
    // 0x547cb4 (D1), 0x547db4, 0x547dd0: drops the text and the four buttons.
    ~CGUIMessageBox() override;

    // K 0x08, 0x547014: the buttons post EGET_MESSAGEBOX_OK / CANCEL / YES / NO to the parent and remove the box; the keys Enter, Escape, Y and N
    // press the matching button (the release of the key posts the answer).
    bool onEvent(const SEvent& event) override;
    // K 0x74 / 0x78, 0x546f1c and 0x547f28.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // 0x5472e0: lays out the static text (word wrapped, created on first use), resizes the box to fit it and centres it vertically in the
    // parent, and creates, moves or removes the four buttons according to Flags.
    void refreshControls();

    IGUIButton* okButton = nullptr;       // +0x170
    IGUIButton* cancelButton = nullptr;   // +0x174
    IGUIButton* yesButton = nullptr;      // +0x178
    IGUIButton* noButton = nullptr;       // +0x17c
    IGUIStaticText* staticText = nullptr;  // +0x180
    int flags = 0;                        // +0x184
    std::wstring messageText;             // +0x188
    bool pressed = false;                 // +0x1d0
};

}  // namespace glitch::gui
