// glitch::gui::IGUISpinBox and CGUISpinBox: the number edit box with the two step buttons. Canonical header of the scene-owner wave (gui
// family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_02.hpp, recon/slice_03.hpp
// and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUISpinBox constructor 0x54e194 (element type 15), destructors 0x54f364 / 0x54f5bc;
// CGUISpinBox constructors 0x54e4d8 / 0x54eaac, destructors 0x54f3d8 / 0x54f4c4 / 0x54f4e0; tools/decomp_vtable.py glitch::gui::CGUISpinBox;
// the object continues IGUIElement at +0x158; the virtual bases follow at +0x1bc / +0x1c0, count at +0x1c4):
//   +0x158 EditBox (reference held)   +0x15c ButtonSpinUp (reference held)   +0x160 ButtonSpinDown (reference held)   +0x164 StepSize (1.0)
//   +0x168 RangeMin (-FLT_MAX)   +0x16c RangeMax (FLT_MAX)   +0x170 FormatString (STLport wide string, 72 bytes)   +0x1b8 DecimalPlaces (-1)
#pragma once

#include <string>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIEditBox;
class IGUIButton;

class IGUISpinBox : public IGUIElement {
public:
    // 0x54e194: the IGUIElement base with the type EGUIET_SPIN_BOX.
    IGUISpinBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x54f364 (D1), 0x54f5bc (D0 copy): empty.
    ~IGUISpinBox() override;

    virtual IGUIEditBox* getEditBox() const = 0;                    // K 0x7c
    virtual void setValue(float value) = 0;                         // K 0x80
    virtual float getValue() const = 0;                             // K 0x84
    virtual void setRange(float min, float max) = 0;                // K 0x88
    virtual float getMin() const = 0;                               // K 0x8c
    virtual float getMax() const = 0;                               // K 0x90
    virtual void setStepSize(float step = 1.0f) = 0;               // K 0x94
    virtual void setDecimalPlaces(int places) = 0;                  // K 0x98
    virtual float getStepSize() const = 0;                          // K 0x9c
};

class CGUISpinBox : public IGUISpinBox {
public:
    // 0x54e4d8 (C1) / 0x54eaac (C2): the step buttons (down in the lower half, up in the upper half, as wide as the scroll bar size of the
    // skin, 16 without a skin) with the cursor icons of the skin's sprite bank (or the texts "-" and "+" without one), and the edit box
    // (with a border) filling the rest. The three are sub elements that the spin box holds a reference to.
    CGUISpinBox(const wchar_t* text, IGUIEnvironment* environment, IGUIElement* parent, int id, const core::rect<int>& rectangle);
    // 0x54f3d8 (D1), 0x54f4c4, 0x54f4e0: drops the two buttons and the edit box, frees the format string.
    ~CGUISpinBox() override;

    // K 0x08, 0x54f228: the buttons add / subtract the step, Enter in the edit box checks the range; both post EGET_SPINBOX_CHANGED to the parent.
    bool onEvent(const SEvent& event) override;
    // K 0x44 / 0x48, 0x54dfd8 and 0x54e028: the text of the edit box (checked against the range).
    void setText(const wchar_t* text) override;
    const wchar_t* getText() const override;
    // K 0x74 / 0x78, 0x54e044 and 0x54f0c0: Min, Max, Step, DecimalPlaces.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    IGUIEditBox* getEditBox() const override;       // 0x54df38
    void setValue(float value) override;            // 0x54e138: the value printed with the format string into the edit box, then checked
    float getValue() const override;                // 0x54f188: the edit box text parsed (0 without text)
    void setRange(float min, float max) override;   // 0x54df40
    float getMin() const override;                  // 0x54df5c
    float getMax() const override;                  // 0x54df64
    void setStepSize(float step = 1.0f) override;   // 0x54df74
    void setDecimalPlaces(int places) override;     // 0x54f638: "%f" for -1, else "%.<places>f"; re-prints the value
    float getStepSize() const override;             // 0x54df6c
    // K 0xa0, 0x54df7c: clamps the value into the range.
    virtual void verifyValueRange();

    IGUIEditBox* editBox = nullptr;                 // +0x158
    IGUIButton* buttonSpinUp = nullptr;             // +0x15c
    IGUIButton* buttonSpinDown = nullptr;           // +0x160
    float stepSize = 1.0f;                          // +0x164
    float rangeMin = -3.402823466e+38F;             // +0x168
    float rangeMax = 3.402823466e+38F;              // +0x16c
    std::wstring formatString;                      // +0x170 (empty until setDecimalPlaces is called)
    int decimalPlaces = -1;                         // +0x1b8
};

}  // namespace glitch::gui
