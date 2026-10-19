// Bodies of glitch::gui::IGUICheckBox and CGUICheckBox (canonical classes: gui/CGUICheckBox.hpp). This file replaces the check box bodies of
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_33.cpp and tb_scene-collada-gui-glitch_gui_CGUICheckBox-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUICheckBox.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"

namespace glitch::gui {

// 0x6a7918 _ZN6glitch3gui12IGUICheckBoxC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUICheckBox::IGUICheckBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_CHECK_BOX, environment, parent, id, rectangle) {}

// 0x6a7d54 _ZN6glitch3gui12IGUICheckBoxD1Ev (D0 0x6a8100 skipped)
IGUICheckBox::~IGUICheckBox() = default;

// 0x6a7bd4 _ZN6glitch3gui12CGUICheckBoxC1EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x6a7cb0)
CGUICheckBox::CGUICheckBox(bool checkedValue, IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUICheckBox(environment, parent, id, rectangle) {
    checked = checkedValue;
    tabStop = true;
    setTabOrder(-1);
}

// 0x6a7dc8 _ZN6glitch3gui12CGUICheckBoxD1Ev (D2 0x6a7e58 skipped)
CGUICheckBox::~CGUICheckBox() = default;

// 0x6a76ac _ZN6glitch3gui12CGUICheckBox10setCheckedEb
void CGUICheckBox::setChecked(bool value) {
    checked = value;
}

// 0x6a76b4 _ZNK6glitch3gui12CGUICheckBox9isCheckedEv
bool CGUICheckBox::isChecked() const {
    return checked;
}

// 0x6a76bc _ZNK6glitch3gui12CGUICheckBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUICheckBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("Checked", checked, false);  // K 0xd8
}

// 0x6a7e94 _ZN6glitch3gui12CGUICheckBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The state is read before the base attributes.
void CGUICheckBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    checked = attributes->getBool("Checked");  // K 0xe4
    IGUIElement::deserializeAttributes(attributes, options);
}

// 0x6a7ed8 _ZN6glitch3gui12CGUICheckBox7onEventERKNS_6SEventE
bool CGUICheckBox::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    auto postChanged = [this]() {
        SEvent changed;
        changed.EventType = EET_GUI_EVENT;
        changed.GUIEvent.Caller = this;
        changed.GUIEvent.Element = nullptr;
        changed.GUIEvent.EventType = EGET_CHECKBOX_CHANGED;
        parent->onEvent(changed);
    };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        if (event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN) {
            pressed = true;
            checkTime = os::Timer::getTime();
            environment->setFocus(this);  // K 0x10
            return true;
        }
        if (event.MouseInput.Event != EMIE_LMOUSE_LEFT_UP) {
            return forward();
        }
        const bool wasPressed = pressed;
        environment->removeFocus(this);  // K 0x18
        pressed = false;
        if (wasPressed && parent != nullptr) {
            const int x = event.MouseInput.X;
            const int y = event.MouseInput.Y;
            if (x >= absoluteClippingRect.UpperLeftCorner.X && y >= absoluteClippingRect.UpperLeftCorner.Y &&
                x <= absoluteClippingRect.LowerRightCorner.X && y <= absoluteClippingRect.LowerRightCorner.Y) {
                checked = !checked;
                postChanged();
                return true;
            }
        }
        return true;
    }
    if (event.EventType != EET_KEY_INPUT_EVENT) {
        if (event.EventType == EET_GUI_EVENT && event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST && event.GUIEvent.Caller == this) {
            pressed = false;
        }
        return forward();
    }
    const bool keyDown = event.KeyInput.PressedDown;
    const int key = event.KeyInput.Key;
    const bool activate = (key == KEY_RETURN || key == KEY_SPACE);
    if (keyDown && activate) {
        pressed = true;
        return true;
    }
    if (pressed) {
        if (keyDown) {
            if (key == KEY_ESCAPE) {
                pressed = false;
                return true;
            }
        } else if (activate) {
            pressed = false;
            if (parent != nullptr) {
                checked = !checked;
                postChanged();
            }
            return true;
        }
    }
    return forward();
}

// 0x6a817c _ZN6glitch3gui12CGUICheckBox4drawEv
void CGUICheckBox::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    const int width = skin->getSize(EGDS_CHECK_BOX_WIDTH);  // K 0x18
    const int checkTop = absoluteRect.UpperLeftCorner.Y + (absoluteRect.LowerRightCorner.Y - absoluteRect.UpperLeftCorner.Y - width) / 2;
    core::rect<int> checkRect;
    checkRect.UpperLeftCorner.X = absoluteRect.UpperLeftCorner.X;
    checkRect.UpperLeftCorner.Y = checkTop;
    checkRect.LowerRightCorner.X = absoluteRect.UpperLeftCorner.X + width;
    checkRect.LowerRightCorner.Y = checkTop + width;
    skin->draw3DSunkenPane(this, skin->getColor((pressed || !enabled) ? EGDC_3D_FACE : EGDC_ACTIVE_CAPTION), false, true, checkRect,
                           &absoluteClippingRect);  // K 0x48
    if (checked) {
        IGUISkin* markSkin = environment->getSkin();
        if (markSkin != nullptr) {
            const core::position2d<int> center{(checkRect.LowerRightCorner.X + checkRect.UpperLeftCorner.X) / 2,
                                               (checkRect.LowerRightCorner.Y + checkRect.UpperLeftCorner.Y) / 2};
            markSkin->drawIcon(this, EGDI_CHECK_BOX_CHECKED, center, checkTime, os::Timer::getTime(), false, &absoluteClippingRect);  // K 0x60
        }
    }
    if (!text.empty()) {
        core::rect<int> textRect;
        textRect.UpperLeftCorner.X = absoluteRect.UpperLeftCorner.X + 5 + width;
        textRect.UpperLeftCorner.Y = absoluteRect.UpperLeftCorner.Y;
        textRect.LowerRightCorner.X = absoluteRect.LowerRightCorner.X;
        textRect.LowerRightCorner.Y = absoluteRect.LowerRightCorner.Y;
        IGUIFont* font = skin->getFont(EGDF_DEFAULT);  // K 0x28
        if (font != nullptr) {
            font->draw(text.c_str(), textRect, skin->getColor(EGDC_BUTTON_TEXT), false, true, &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
