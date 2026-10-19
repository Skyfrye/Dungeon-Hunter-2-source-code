// Bodies of glitch::gui::IGUIScrollBar and CGUIScrollBar (canonical classes: gui/CGUIScrollBar.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"

#include <climits>
#include <cmath>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

namespace {

// The ARM float-to-int conversion the listings use: truncation, NaN gives 0 and an out-of-range value saturates.
int floatToInt(float value) {
    if (std::isnan(value)) {
        return 0;
    }
    if (value >= 2147483648.0f) {
        return INT_MAX;
    }
    if (value <= -2147483648.0f) {
        return INT_MIN;
    }
    return static_cast<int>(value);
}

void postScrollBarChanged(IGUIElement* parent, IGUIElement* caller) {
    if (parent == nullptr) {
        return;
    }
    SEvent changed;
    changed.EventType = EET_GUI_EVENT;
    changed.GUIEvent.Caller = caller;
    changed.GUIEvent.Element = nullptr;
    changed.GUIEvent.EventType = EGET_SCROLL_BAR_CHANGED;
    parent->onEvent(changed);
}

}  // namespace

// 0x549a3c _ZN6glitch3gui13IGUIScrollBarC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIScrollBar::IGUIScrollBar(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_SCROLL_BAR, environment, parent, id, rectangle) {}

// 0x549f44 _ZN6glitch3gui13IGUIScrollBarD1Ev (D0 0x54a6dc skipped)
IGUIScrollBar::~IGUIScrollBar() = default;

// 0x549cfc _ZN6glitch3gui12CGUIScrollBarC1EbPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb (C2 0x549e3c)
CGUIScrollBar::CGUIScrollBar(bool horizontalValue, IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle,
                             bool noClipValue)
    : IGUIScrollBar(environment, parent, id, rectangle) {
    horizontal = horizontalValue;
    refreshControls();
    noClip = noClipValue;
    tabStop = true;
    setTabOrder(-1);
    setPos(0);
}

// 0x549fb8 _ZN6glitch3gui12CGUIScrollBarD1Ev (0x54a06c and 0x54a088 are the other forms)
CGUIScrollBar::~CGUIScrollBar() {
    if (upButton != nullptr) {
        upButton->drop();
    }
    if (downButton != nullptr) {
        downButton->drop();
    }
}

// 0x548f64 _ZNK6glitch3gui12CGUIScrollBar6getMaxEv
int CGUIScrollBar::getMax() const {
    return maxValue;
}

// 0x548f2c _ZNK6glitch3gui12CGUIScrollBar12getSmallStepEv
int CGUIScrollBar::getSmallStep() const {
    return smallStep;
}

// 0x548f34 _ZN6glitch3gui12CGUIScrollBar12setSmallStepEi
void CGUIScrollBar::setSmallStep(int step) {
    smallStep = step > 0 ? step : 10;
}

// 0x548f48 _ZNK6glitch3gui12CGUIScrollBar12getLargeStepEv
int CGUIScrollBar::getLargeStep() const {
    return largeStep;
}

// 0x548f50 _ZN6glitch3gui12CGUIScrollBar12setLargeStepEi
void CGUIScrollBar::setLargeStep(int step) {
    largeStep = step > 0 ? step : 50;
}

// 0x548fd0 _ZNK6glitch3gui12CGUIScrollBar6getPosEv
int CGUIScrollBar::getPos() const {
    return position;
}

// 0x548f6c _ZN6glitch3gui12CGUIScrollBar6setMaxEi
// A maximum that is not positive becomes 0; the two buttons are enabled only with a positive maximum.
void CGUIScrollBar::setMax(int newMax) {
    const bool enable = newMax > 0;
    maxValue = enable ? newMax : 0;
    upButton->setEnabled(enable);    // K 0x40
    downButton->setEnabled(enable);
    setPos(position);                // K 0x98
}

// 0x548c34 _ZNK6glitch3gui12CGUIScrollBar17getPosFromMousePosEii
int CGUIScrollBar::getPosFromMousePos(int x, int y) const {
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const int height = relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y;
    if (horizontal) {
        const float buttonSize = static_cast<float>(height);
        return floatToInt((static_cast<float>(x - absoluteRect.UpperLeftCorner.X) + buttonSize * -1.5f) /
                          (static_cast<float>(width) + buttonSize * -3.0f) * static_cast<float>(maxValue));
    }
    const float buttonSize = static_cast<float>(width);
    return floatToInt((static_cast<float>(y - absoluteRect.UpperLeftCorner.Y) + buttonSize * -1.5f) /
                      (static_cast<float>(height) + buttonSize * -3.0f) * static_cast<float>(maxValue));
}

// The slider position of Pos: DrawPos is Pos scaled over the tray (the length without the two buttons) plus half a button; DrawHeight is
// the button size. Horizontal bars do not guard against a zero maximum.
void CGUIScrollBar::computeDrawPos() {
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const int height = relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y;
    if (horizontal) {
        const float step = (static_cast<float>(width) + static_cast<float>(height) * -3.0f) / static_cast<float>(maxValue);
        drawPos = floatToInt(static_cast<float>(position) * step + static_cast<float>(height) * 0.5f);
        drawHeight = height;
    } else {
        float step = 0.0f;
        if (maxValue != 0) {
            step = (static_cast<float>(height) + static_cast<float>(width) * -3.0f) / static_cast<float>(maxValue);
        }
        drawPos = floatToInt(static_cast<float>(position) * step + static_cast<float>(width) * 0.5f);
        drawHeight = width;
    }
}

// 0x548d90 _ZN6glitch3gui12CGUIScrollBar6setPosEi
void CGUIScrollBar::setPos(int newPos) {
    if (newPos < 0) {
        position = 0;
    } else if (newPos > maxValue) {
        position = maxValue;
    } else {
        position = newPos;
    }
    computeDrawPos();
}

// 0x5496b4 _ZN6glitch3gui12CGUIScrollBar22updateAbsolutePositionEv
void CGUIScrollBar::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
    refreshControls();
    computeDrawPos();
}

// 0x5490c0 _ZN6glitch3gui12CGUIScrollBar15refreshControlsEv
// The button sprites use the skin's cursor icons in the window symbol colour; the buttons are sub elements and no tab stops.
void CGUIScrollBar::refreshControls() {
    video::SColor color{0xFFFFFFFFu};
    IGUISkin* skin = environment->getSkin();  // K 0x38
    IGUISpriteBank* sprites = nullptr;
    if (skin != nullptr) {
        sprites = skin->getSpriteBank();            // K 0x30
        color = skin->getColor(EGDC_WINDOW_SYMBOL);  // K 0x10
    }
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const int height = relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y;
    const int size = horizontal ? height : width;
    EGUI_DEFAULT_ICON upIcon = horizontal ? EGDI_CURSOR_LEFT : EGDI_CURSOR_UP;
    EGUI_DEFAULT_ICON downIcon = horizontal ? EGDI_CURSOR_RIGHT : EGDI_CURSOR_DOWN;

    auto makeButton = [&](CGUIButton*& button, const core::rect<int>& rectangle) {
        if (button == nullptr) {
            button = new CGUIButton(environment, this, -1, rectangle, noClip);
            button->setSubElement(true);  // K 0x38
            button->tabStop = false;
        }
    };

    if (horizontal) {
        makeButton(upButton, detail::makeRect(0, 0, size, size));
        if (sprites != nullptr) {
            upButton->setSpriteBank(sprites);                                                                // K 0x90
            upButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(upIcon)), color, false);       // K 0x94
            upButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(upIcon)), color, false);
        }
        upButton->setRelativePosition(detail::makeRect(0, 0, size, size));
        upButton->setAlignment(EGUIA_UPPERLEFT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
        makeButton(downButton, detail::makeRect(width - size, 0, width, size));
        if (sprites != nullptr) {
            downButton->setSpriteBank(sprites);
            downButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(downIcon)), color, false);
            downButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(downIcon)), color, false);
        }
        downButton->setRelativePosition(detail::makeRect(width - size, 0, width, size));
        downButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    } else {
        makeButton(upButton, detail::makeRect(0, 0, size, size));
        if (sprites != nullptr) {
            upButton->setSpriteBank(sprites);
            upButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(upIcon)), color, false);
            upButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(upIcon)), color, false);
        }
        upButton->setRelativePosition(detail::makeRect(0, 0, size, size));
        upButton->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
        makeButton(downButton, detail::makeRect(0, height - size, size, height));
        if (sprites != nullptr) {
            downButton->setSpriteBank(sprites);
            downButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(downIcon)), color, false);
            downButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(downIcon)), color, false);
        }
        downButton->setRelativePosition(detail::makeRect(0, height - size, size, height));
        downButton->setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT);
    }
}

// 0x548fd8 _ZNK6glitch3gui12CGUIScrollBar19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIScrollBar::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("Horizontal", horizontal, false);  // K 0xd8
    attributes->addInt("Value", position, false);          // K 0x4c
    attributes->addInt("Max", maxValue, false);
    attributes->addInt("SmallStep", smallStep, false);
    attributes->addInt("LargeStep", largeStep, false);
}

// 0x54a12c _ZN6glitch3gui12CGUIScrollBar21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIScrollBar::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    horizontal = attributes->getBool("Horizontal");  // K 0xe4
    setMax(attributes->getInt("Max"));               // K 0x58, setMax K 0x80
    setPos(attributes->getInt("Value"));             // K 0x98
    setSmallStep(attributes->getInt("SmallStep"));   // K 0x88
    setLargeStep(attributes->getInt("LargeStep"));   // K 0x90
    refreshControls();
}

// 0x54a228 _ZN6glitch3gui12CGUIScrollBar7onEventERKNS_6SEventE
bool CGUIScrollBar::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    switch (event.EventType) {
        case EET_MOUSE_INPUT_EVENT: {
            const int x = event.MouseInput.X;
            const int y = event.MouseInput.Y;
            switch (event.MouseInput.Event) {
                case EMIE_LMOUSE_PRESSED_DOWN:
                    if (!detail::rectContains(absoluteClippingRect, x, y)) {
                        return forward();
                    }
                    dragging = true;
                    draggedBySlider = detail::rectContains(sliderRect, x, y);
                    trayClick = !draggedBySlider;
                    desiredPos = getPosFromMousePos(x, y);
                    return true;
                case EMIE_LMOUSE_LEFT_UP:
                case EMIE_MOUSE_MOVED: {
                    if (!dragging) {
                        return forward();
                    }
                    if (event.MouseInput.Event == EMIE_LMOUSE_LEFT_UP) {
                        dragging = false;
                    }
                    const int newPos = getPosFromMousePos(x, y);
                    const int oldPos = position;
                    bool slide = draggedBySlider;
                    if (!slide) {
                        if (!detail::rectContains(absoluteClippingRect, x, y)) {
                            trayClick = false;
                            if (event.MouseInput.Event == EMIE_MOUSE_MOVED) {
                                return true;
                            }
                        } else {
                            slide = detail::rectContains(sliderRect, x, y);
                            trayClick = !slide;
                            draggedBySlider = slide;
                        }
                    }
                    if (slide) {
                        setPos(newPos);  // K 0x98
                    } else {
                        desiredPos = newPos;
                    }
                    if (position != oldPos && parent != nullptr) {
                        postScrollBarChanged(parent, this);
                    }
                    return true;
                }
                case EMIE_MOUSE_WHEEL:
                    if (!environment->hasFocus(this)) {  // K 0x1c
                        return forward();
                    }
                    setPos(getPos() + static_cast<int>(event.MouseInput.Wheel) * -smallStep);
                    postScrollBarChanged(parent, this);
                    return true;
                default:
                    return forward();
            }
        }
        case EET_KEY_INPUT_EVENT: {
            if (!event.KeyInput.PressedDown) {
                return forward();
            }
            const int oldPos = position;
            switch (event.KeyInput.Key) {
                case KEY_PRIOR:
                    setPos(oldPos - largeStep);
                    break;
                case KEY_NEXT:
                    setPos(oldPos + largeStep);
                    break;
                case KEY_END:
                    setPos(maxValue);
                    break;
                case KEY_HOME:
                    setPos(0);
                    break;
                case KEY_LEFT:
                case KEY_UP:
                    setPos(oldPos - smallStep);
                    break;
                case KEY_RIGHT:
                case KEY_DOWN:
                    setPos(oldPos + smallStep);
                    break;
                default:
                    return forward();
            }
            if (oldPos != position) {
                postScrollBarChanged(parent, this);
            }
            return true;
        }
        case EET_GUI_EVENT:
            if (event.GUIEvent.EventType != EGET_BUTTON_CLICKED) {
                if (event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST && event.GUIEvent.Caller == this) {
                    dragging = false;
                }
                return forward();
            }
            if (event.GUIEvent.Caller == upButton) {
                setPos(position - smallStep);
            } else if (event.GUIEvent.Caller == downButton) {
                setPos(smallStep + position);
            }
            postScrollBarChanged(parent, this);
            return true;
        default:
            return forward();
    }
}

// 0x54a758 _ZN6glitch3gui12CGUIScrollBar4drawEv
void CGUIScrollBar::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    const std::uint32_t now = os::Timer::getRealTime();
    if (dragging && !draggedBySlider && trayClick && now > lastChange + 200) {
        const int oldPos = position;
        lastChange = now;
        int target = oldPos + largeStep;
        if (desiredPos < oldPos + largeStep) {
            target = oldPos - largeStep;
            if (desiredPos > oldPos - largeStep) {
                target = desiredPos;
            }
        }
        setPos(target);
        if (position != oldPos) {
            postScrollBarChanged(parent, this);
        }
    }
    sliderRect = absoluteRect;
    skin->draw2DRectangle(this, skin->getColor(EGDC_SCROLLBAR), sliderRect, &absoluteClippingRect);  // K 0x64
    if (maxValue != 0) {
        if (horizontal) {
            sliderRect.UpperLeftCorner.X = drawPos + absoluteRect.UpperLeftCorner.X + (relativeRect.LowerRightCorner.Y - relativeRect.UpperLeftCorner.Y) -
                                           drawHeight / 2;
            sliderRect.LowerRightCorner.X = sliderRect.UpperLeftCorner.X + drawHeight;
        } else {
            sliderRect.UpperLeftCorner.Y = drawPos + absoluteRect.UpperLeftCorner.Y + (relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X) -
                                           drawHeight / 2;
            sliderRect.LowerRightCorner.Y = sliderRect.UpperLeftCorner.Y + drawHeight;
        }
        skin->draw3DButtonPaneStandard(this, sliderRect, &absoluteClippingRect);  // K 0x40
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
