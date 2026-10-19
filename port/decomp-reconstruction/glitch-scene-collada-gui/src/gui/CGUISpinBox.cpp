// Bodies of glitch::gui::IGUISpinBox and CGUISpinBox (canonical classes: gui/CGUISpinBox.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp, recon/slice_03.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUISpinBox.hpp"

#include <cwchar>
#include <string>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEditBox.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"

namespace glitch::gui {

// 0x54e194 _ZN6glitch3gui11IGUISpinBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUISpinBox::IGUISpinBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_SPIN_BOX, environment, parent, id, rectangle) {}

// 0x54f364 _ZN6glitch3gui11IGUISpinBoxD1Ev (D0 0x54f5bc skipped)
IGUISpinBox::~IGUISpinBox() = default;

// 0x54e4d8 _ZN6glitch3gui11CGUISpinBoxC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiRKNS_4core4rectIiEE (C2 0x54eaac)
CGUISpinBox::CGUISpinBox(const wchar_t* text, IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id,
                         const core::rect<int>& rectangle)
    : IGUISpinBox(environmentValue, parentElement, id, rectangle) {
    IGUISkin* skin = environmentValue != nullptr ? environmentValue->getSkin() : nullptr;  // K 0x38
    IGUISpriteBank* spriteBank = nullptr;
    int buttonWidth = 16;
    if (skin != nullptr) {
        buttonWidth = skin->getSize(EGDS_SCROLLBAR_SIZE);  // K 0x18
        spriteBank = skin->getSpriteBank();                // K 0x30
    }
    const int width = rectangle.LowerRightCorner.X - rectangle.UpperLeftCorner.X;
    const int height = rectangle.LowerRightCorner.Y - rectangle.UpperLeftCorner.Y;

    // The lower (down) button.
    core::rect<int> downRect;
    downRect.UpperLeftCorner.X = width - buttonWidth;
    downRect.UpperLeftCorner.Y = height / 2 + 1;
    downRect.LowerRightCorner.X = width;
    downRect.LowerRightCorner.Y = height;
    buttonSpinDown = environment->addButton(downRect, this, -1, nullptr, nullptr);  // K 0x78
    ++buttonSpinDown->referenceCounter;
    buttonSpinDown->setSubElement(true);
    buttonSpinDown->tabStop = false;
    buttonSpinDown->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_CENTER, EGUIA_LOWERRIGHT);

    // The upper (up) button.
    core::rect<int> upRect;
    upRect.UpperLeftCorner.X = width - buttonWidth;
    upRect.UpperLeftCorner.Y = 0;
    upRect.LowerRightCorner.X = width;
    upRect.LowerRightCorner.Y = height / 2;
    buttonSpinUp = environment->addButton(upRect, this, -1, nullptr, nullptr);
    ++buttonSpinUp->referenceCounter;
    buttonSpinUp->setSubElement(true);
    buttonSpinUp->tabStop = false;
    buttonSpinUp->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_CENTER);

    if (spriteBank != nullptr) {
        buttonSpinDown->setSpriteBank(spriteBank);  // K 0x90
        buttonSpinDown->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(EGDI_SMALL_CURSOR_DOWN)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
        buttonSpinDown->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(EGDI_SMALL_CURSOR_DOWN)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
        buttonSpinUp->setSpriteBank(spriteBank);
        buttonSpinUp->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(EGDI_SMALL_CURSOR_UP)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
        buttonSpinUp->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(EGDI_SMALL_CURSOR_UP)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
    } else {
        buttonSpinDown->setText(L"-");  // 0x8dea60
        buttonSpinUp->setText(L"+");    // 0x8dea68
    }

    // The edit box fills the rest.
    core::rect<int> editRect;
    editRect.UpperLeftCorner.X = 0;
    editRect.UpperLeftCorner.Y = 0;
    editRect.LowerRightCorner.X = width - 1 - buttonWidth;
    editRect.LowerRightCorner.Y = height;
    editBox = environment->addEditBox(text, editRect, true, this, -1);  // K 0xac
    ++editBox->referenceCounter;
    editBox->setSubElement(true);
    editBox->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
}

// 0x54f3d8 _ZN6glitch3gui11CGUISpinBoxD1Ev (0x54f4c4 and 0x54f4e0 are the other forms)
CGUISpinBox::~CGUISpinBox() {
    if (buttonSpinUp != nullptr) {
        buttonSpinUp->drop();
    }
    if (buttonSpinDown != nullptr) {
        buttonSpinDown->drop();
    }
    if (editBox != nullptr) {
        editBox->drop();
    }
}

// 0x54df38 _ZNK6glitch3gui11CGUISpinBox10getEditBoxEv
IGUIEditBox* CGUISpinBox::getEditBox() const {
    return editBox;
}

// 0x54df40 _ZN6glitch3gui11CGUISpinBox8setRangeEff
void CGUISpinBox::setRange(float min, float max) {
    rangeMin = min;
    rangeMax = max;
    verifyValueRange();  // K 0xa0
}

// 0x54df5c _ZNK6glitch3gui11CGUISpinBox6getMinEv
float CGUISpinBox::getMin() const {
    return rangeMin;
}

// 0x54df64 _ZNK6glitch3gui11CGUISpinBox6getMaxEv
float CGUISpinBox::getMax() const {
    return rangeMax;
}

// 0x54df6c _ZNK6glitch3gui11CGUISpinBox11getStepSizeEv
float CGUISpinBox::getStepSize() const {
    return stepSize;
}

// 0x54df74 _ZN6glitch3gui11CGUISpinBox11setStepSizeEf
void CGUISpinBox::setStepSize(float step) {
    stepSize = step;
}

// 0x54df7c _ZN6glitch3gui11CGUISpinBox16verifyValueRangeEv
void CGUISpinBox::verifyValueRange() {
    const float value = getValue();  // K 0x84
    if (value < rangeMin) {
        setValue(rangeMin);  // K 0x80
        return;
    }
    if (value > rangeMax) {
        setValue(rangeMax);
    }
}

// 0x54dfd8 _ZN6glitch3gui11CGUISpinBox7setTextEPKw
void CGUISpinBox::setText(const wchar_t* text) {
    editBox->setText(text);  // K 0x44
    setValue(getValue());
    verifyValueRange();
}

// 0x54e028 _ZNK6glitch3gui11CGUISpinBox7getTextEv
const wchar_t* CGUISpinBox::getText() const {
    return editBox->getText();  // K 0x48
}

// 0x54e138 _ZN6glitch3gui11CGUISpinBox8setValueEf
// The value is printed into the edit box with the format string (empty until setDecimalPlaces has been called, as in the original).
void CGUISpinBox::setValue(float value) {
    wchar_t buffer[100];
    std::swprintf(buffer, 99, formatString.c_str(), static_cast<double>(value));
    editBox->setText(buffer);
    verifyValueRange();
}

// 0x54f188 _ZNK6glitch3gui11CGUISpinBox8getValueEv
float CGUISpinBox::getValue() const {
    const wchar_t* text = editBox->getText();
    if (text == nullptr) {
        return 0.0f;
    }
    const std::string narrow = core::stringw2stringc(text);
    float value = 0.0f;
    core::fast_atof_move(narrow.c_str(), value);
    return value;
}

// 0x54f638 _ZN6glitch3gui11CGUISpinBox16setDecimalPlacesEi
void CGUISpinBox::setDecimalPlaces(int places) {
    decimalPlaces = places;
    if (places == -1) {
        formatString = L"%f";
    } else {
        formatString = L"%." + std::to_wstring(places) + L"f";
    }
    setValue(getValue());
}

// 0x54f228 _ZN6glitch3gui11CGUISpinBox7onEventERKNS_6SEventE
bool CGUISpinBox::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled || event.EventType != EET_GUI_EVENT) {
        return forward();
    }
    bool handled = false;
    int type = event.GUIEvent.EventType;
    if (type == EGET_BUTTON_CLICKED) {
        float value;
        if (event.GUIEvent.Caller == buttonSpinUp) {
            value = getValue() + stepSize;
        } else if (event.GUIEvent.Caller == buttonSpinDown) {
            value = getValue() - stepSize;
        } else {
            return forward();
        }
        setValue(value);
        type = event.GUIEvent.EventType;
        handled = true;
    }
    if (type == EGET_EDITBOX_ENTER && event.GUIEvent.Caller == editBox) {
        verifyValueRange();
    } else if (!handled) {
        return forward();
    }
    SEvent changed;
    changed.EventType = EET_GUI_EVENT;
    changed.GUIEvent.Caller = this;
    changed.GUIEvent.Element = nullptr;
    changed.GUIEvent.EventType = EGET_SPINBOX_CHANGED;
    if (parent != nullptr) {
        parent->onEvent(changed);
    }
    return true;
}

// 0x54e044 _ZNK6glitch3gui11CGUISpinBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUISpinBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addFloat("Min", getMin(), false);          // K 0x64
    attributes->addFloat("Max", getMax(), false);
    attributes->addFloat("Step", getStepSize(), false);
    attributes->addInt("DecimalPlaces", decimalPlaces, false);  // K 0x4c
}

// 0x54f0c0 _ZN6glitch3gui11CGUISpinBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUISpinBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    setRange(attributes->getFloat("Min"), attributes->getFloat("Max"));  // K 0x70
    setStepSize(attributes->getFloat("Step"));
    setDecimalPlaces(attributes->getInt("DecimalPlaces"));               // K 0x58
}

}  // namespace glitch::gui
