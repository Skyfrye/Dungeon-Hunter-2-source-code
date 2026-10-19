// glitch::gui::IGUIColorSelectDialog and CGUIColorSelectDialog: the colour picker window (a colour ring and an edit box + scroll bar for each
// of A, R, G, B, H, S, L). Canonical header of the scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp,
// gui_simple_accessors.hpp, layouts/gui.hpp and the colour select parts of the recon slices.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIColorSelectDialog constructor 0x6a8cf4 (element type 7), destructors 0x6a9b90 /
// 0x6a9ef0; CGUIColorSelectDialog constructors 0x6a8fbc / 0x6aa138, destructors 0x6a9c04 / 0x6a9d74 / 0x6a9d90; tools/decomp_vtable.py
// glitch::gui::CGUIColorSelectDialog): Irrlicht 1.7.x's dialog without the colour computation (the scroll bars only change the numbers in the
// edit boxes). The object continues IGUIElement at +0x158; the virtual bases follow at +0x184 / +0x188, count at +0x18c.
//   +0x158 DragStart   +0x160 Dragging   +0x164 CloseButton   +0x168 OKButton   +0x16c CancelButton   +0x170 BatteryItems (vector of
//   SBatteryItem: edit box, scroll bar)   +0x17c ColorRing (image element)   +0x180 ColorRingTexture
#pragma once

#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIButton;
class IGUIEditBox;
class IGUIImage;
class IGUIScrollBar;

class IGUIColorSelectDialog : public IGUIElement {
public:
    // 0x6a8cf4: the IGUIElement base with the type EGUIET_COLOR_SELECT_DIALOG.
    IGUIColorSelectDialog(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6a9b90 (D1), 0x6a9ef0 (D0 copy): empty.
    ~IGUIColorSelectDialog() override;
};

class CGUIColorSelectDialog : public IGUIColorSelectDialog {
public:
    struct SBatteryItem {
        IGUIEditBox* edit = nullptr;            // +0x00
        IGUIScrollBar* scrollBar = nullptr;     // +0x04
    };

    // 0x6a8fbc (C1) / 0x6aa138 (C2): a 350x300 window centred in the parent with the title, the close / OK / cancel buttons, the colour
    // ring (built when the texture "#colorring" does not exist yet) and the seven edit box + scroll bar pairs.
    CGUIColorSelectDialog(const wchar_t* title, IGUIEnvironment* environment, IGUIElement* parent, int id);
    // 0x6a9c04 (D1), 0x6a9d74, 0x6a9d90: drops the buttons, the pairs, the ring image and the ring texture.
    ~CGUIColorSelectDialog() override;

    // K 0x08, 0x6a98e4: the window is dragged with the left mouse button; the scroll bars write their value into the edit boxes; the close /
    // cancel button posts the cancel event and removes the dialog, the OK button the selected event.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x6a9f6c: the window background with the title, then the children.
    void draw() override;

    // 0x6a86b4 / 0x6a86f4: EGET_FILE_SELECTED / EGET_FILE_CHOOSE_DIALOG_CANCELLED to the parent.
    void sendSelectedEvent();
    void sendCancelEvent();
    // 0x6a8754: draws the colour ring (hue around, ring between 0.5 and 1.0 of the radius, soft edges) into an image of the size (scaled down
    // from `supersample` times that size) and registers it as the texture "#colorring". The border colour argument is not used.
    void buildColorRing(const core::dimension2d<int>& dimension, int supersample, video::SColor borderColor);

    core::position2d<int> dragStart{};               // +0x158
    bool dragging = false;                           // +0x160
    IGUIButton* closeButton = nullptr;               // +0x164
    IGUIButton* okButton = nullptr;                  // +0x168
    IGUIButton* cancelButton = nullptr;              // +0x16c
    std::vector<SBatteryItem> batteryItems;          // +0x170
    IGUIImage* colorRing = nullptr;                  // +0x17c
    boost::intrusive_ptr<video::ITexture> colorRingTexture;  // +0x180
};

}  // namespace glitch::gui
