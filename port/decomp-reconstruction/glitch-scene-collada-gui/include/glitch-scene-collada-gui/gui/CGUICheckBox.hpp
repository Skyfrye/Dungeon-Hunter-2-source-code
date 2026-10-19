// glitch::gui::IGUICheckBox and CGUICheckBox: the check box. Canonical header of the scene-owner wave (gui family). It replaces the CGUICheckBox
// / IGUICheckBox of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp and recon/slice_33.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUICheckBox constructor 0x6a7918 and destructors 0x6a7d54 / 0x6a8100; CGUICheckBox
// constructors 0x6a7bd4 / 0x6a7cb0, destructors 0x6a7dc8 / 0x6a7e58; tools/decomp_vtable.py glitch::gui::CGUICheckBox): IGUICheckBox adds
// setChecked (K 0x7c) and isChecked (K 0x80) to IGUIElement; the object continues at +0x158 and the virtual bases follow at +0x160 / +0x164
// (count at +0x168).
//   +0x158 Pressed   +0x159 Checked   +0x15c CheckTime (os::Timer time of the last press, the start time of the check mark sprite)
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUICheckBox : public IGUIElement {
public:
    // 0x6a7918: the IGUIElement base with the type EGUIET_CHECK_BOX.
    IGUICheckBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6a7d54 (D1), 0x6a8100 (D0 copy): empty.
    ~IGUICheckBox() override;

    virtual void setChecked(bool checked) = 0;  // K 0x7c
    virtual bool isChecked() const = 0;         // K 0x80
};

class CGUICheckBox : public IGUICheckBox {
public:
    // 0x6a7bd4 (C1) / 0x6a7cb0 (C2): a tab stop, not pressed, with the given state; the constructor ends with setTabOrder(-1).
    CGUICheckBox(bool checked, IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6a7dc8 (D1), 0x6a7e58 (D2): empty.
    ~CGUICheckBox() override;

    // K 0x08, 0x6a7ed8: the left press takes the focus and presses the box; the release inside it (after a press) toggles the state and
    // posts EGET_CHECKBOX_CHANGED to the parent. Enter / Space press, releasing them toggles, Escape cancels a press; a lost focus releases.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x6a817c: the sunken pane (the check box width of the skin), the check mark icon, the text to its right, the children.
    void draw() override;
    // K 0x74 / 0x78, 0x6a76bc and 0x6a7e94.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setChecked(bool value) override;  // 0x6a76ac
    bool isChecked() const override;       // 0x6a76b4

    bool pressed = false;                  // +0x158
    bool checked = false;                  // +0x159
    std::uint32_t checkTime = 0;           // +0x15c
};

}  // namespace glitch::gui
