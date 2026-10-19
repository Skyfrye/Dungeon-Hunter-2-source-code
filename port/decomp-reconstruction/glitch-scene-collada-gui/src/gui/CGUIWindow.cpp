// Bodies of glitch::gui::IGUIWindow, CGUIWindow and CGUIMessageBox (canonical classes: gui/CGUIWindow.hpp). This file replaces their bodies in
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp, recon/slice_04.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIWindow.hpp"

#include <cmath>
#include <cwchar>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"

namespace glitch::gui {

// ---------------------------------------------------------------------------------------------------------------------
// IGUIWindow / CGUIWindow
// ---------------------------------------------------------------------------------------------------------------------

// 0x55ed80 _ZN6glitch3gui10IGUIWindowC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIWindow::IGUIWindow(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_WINDOW, environment, parent, id, rectangle) {}

// 0x547c50 _ZN6glitch3gui10IGUIWindowD1Ev (D0 0x547ebc skipped)
IGUIWindow::~IGUIWindow() = default;

// 0x55f040 _ZN6glitch3gui10CGUIWindowC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x55f680)
// The button width is the skin's window button width (15 without a skin); the buttons are laid out from the right edge, two pixels apart.
CGUIWindow::CGUIWindow(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIWindow(environment, parent, id, rectangle) {
    IGUISkin* skin = environment != nullptr ? environment->getSkin() : nullptr;  // K 0x38
    IGUISpriteBank* sprites = nullptr;
    video::SColor color{0xFFFFFFFFu};
    int buttonWidth = 15;
    if (skin != nullptr) {
        buttonWidth = skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);  // K 0x18
        sprites = skin->getSpriteBank();                         // K 0x30
        color = skin->getColor(EGDC_WINDOW_SYMBOL);              // K 0x10
    }
    const int bottom = 3 + buttonWidth;
    int left = (relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X) - 4 - buttonWidth;

    auto addWindowButton = [&](int x, EGUI_DEFAULT_TEXT textId, const wchar_t* fallbackTip, EGUI_DEFAULT_ICON icon, bool visibleButton) {
        IGUIButton* button = this->environment->addButton(detail::makeRect(x, 3, x + buttonWidth, bottom), this, -1, L"",
                                                           skin != nullptr ? skin->getDefaultText(textId) : fallbackTip);  // K 0x78
        if (!visibleButton) {
            button->setVisible(false);  // K 0x30
        }
        button->setSubElement(true);  // K 0x38
        button->tabStop = false;
        button->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
        if (sprites != nullptr) {
            button->setSpriteBank(sprites);                                               // K 0x90
            button->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(icon)), color, false);    // K 0x94
            button->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(icon)), color, false);
        }
        return button;
    };
    closeButton = addWindowButton(left, EGDT_WINDOW_CLOSE, L"C", EGDI_WINDOW_CLOSE, true);
    left -= buttonWidth + 2;
    restoreButton = addWindowButton(left, EGDT_WINDOW_RESTORE, L"R", EGDI_WINDOW_RESTORE, false);
    left -= buttonWidth + 2;
    minButton = addWindowButton(left, EGDT_WINDOW_MINIMIZE, L"M", EGDI_WINDOW_MINIMIZE, false);

    ++minButton->referenceCounter;
    ++restoreButton->referenceCounter;
    ++closeButton->referenceCounter;
    tabStop = true;
    tabGroup = true;
    setTabOrder(-1);
}

// 0x55fc70 _ZN6glitch3gui10CGUIWindowD1Ev (0x55fd40 and 0x55fd5c are the other forms)
CGUIWindow::~CGUIWindow() {
    if (minButton != nullptr) {
        minButton->drop();
    }
    if (restoreButton != nullptr) {
        restoreButton->drop();
    }
    if (closeButton != nullptr) {
        closeButton->drop();
    }
}

// 0x55eb44 _ZNK6glitch3gui10CGUIWindow14getCloseButtonEv
IGUIButton* CGUIWindow::getCloseButton() const {
    return closeButton;
}

// 0x55eb4c _ZNK6glitch3gui10CGUIWindow17getMinimizeButtonEv
IGUIButton* CGUIWindow::getMinimizeButton() const {
    return minButton;
}

// 0x55eb54 _ZNK6glitch3gui10CGUIWindow17getMaximizeButtonEv
IGUIButton* CGUIWindow::getMaximizeButton() const {
    return restoreButton;
}

// 0x55eb40 _ZN6glitch3gui10CGUIWindow22updateAbsolutePositionEv
void CGUIWindow::updateAbsolutePosition() {
    IGUIElement::updateAbsolutePosition();
}

// 0x55fe1c _ZN6glitch3gui10CGUIWindow7onEventERKNS_6SEventE
bool CGUIWindow::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        const int eventType = event.GUIEvent.EventType;
        if (eventType == EGET_ELEMENT_FOCUS_LOST) {
            dragging = false;
            return forward();
        }
        if (eventType == EGET_ELEMENT_FOCUSED) {
            if (parent == nullptr) {
                return false;
            }
            const IGUIElement* caller = static_cast<const IGUIElement*>(event.GUIEvent.Caller);
            if (caller != this) {
                if (caller == nullptr) {
                    return parent->onEvent(event);
                }
                // The caller must be this window or one of its descendants.
                const IGUIElement* top = caller;
                for (const IGUIElement* up = caller->parent; up != nullptr; up = up->parent) {
                    top = up;
                    if (up == this || up->parent == nullptr) {
                        break;
                    }
                }
                if (top != this) {
                    return parent->onEvent(event);
                }
            }
            parent->bringToFront(this);  // K 0x64
            return forward();
        }
        if (eventType == EGET_BUTTON_CLICKED && event.GUIEvent.Caller == closeButton) {
            if (parent == nullptr) {
                remove();  // K 0x1c
                return true;
            }
            SEvent closed;
            closed.EventType = EET_GUI_EVENT;
            closed.GUIEvent.Caller = this;
            closed.GUIEvent.Element = nullptr;
            closed.GUIEvent.EventType = EGET_ELEMENT_CLOSED;
            if (!parent->onEvent(closed)) {
                remove();
            }
            return true;
        }
        return forward();
    }
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        switch (event.MouseInput.Event) {
            case EMIE_LMOUSE_LEFT_UP:
                dragging = false;
                return true;
            case EMIE_MOUSE_MOVED:
                if (dragging) {
                    const int x = event.MouseInput.X;
                    const int y = event.MouseInput.Y;
                    // The window stays inside its parent while it is dragged.
                    if (parent != nullptr) {
                        if (x <= parent->absoluteRect.UpperLeftCorner.X || y <= parent->absoluteRect.UpperLeftCorner.Y ||
                            x >= parent->absoluteRect.LowerRightCorner.X || y >= parent->absoluteRect.LowerRightCorner.Y) {
                            return true;
                        }
                    }
                    move(detail::makePoint(x - dragStart.X, y - dragStart.Y));  // K 0x28
                    dragStart.X = x;
                    dragStart.Y = y;
                    return true;
                }
                break;
            case EMIE_LMOUSE_PRESSED_DOWN:
                dragStart.X = event.MouseInput.X;
                dragStart.Y = event.MouseInput.Y;
                dragging = true;
                if (parent != nullptr) {
                    parent->bringToFront(this);  // K 0x64
                }
                return true;
            default:
                break;
        }
    }
    return forward();
}

// 0x56008c _ZN6glitch3gui10CGUIWindow4drawEv
void CGUIWindow::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    core::rect<int> rect = skin->draw3DWindowBackground(this, true, skin->getColor(EGDC_ACTIVE_BORDER), absoluteRect, &absoluteClippingRect);  // K 0x4c
    if (!text.empty()) {
        rect.UpperLeftCorner.X += skin->getSize(EGDS_TEXT_DISTANCE_X);
        rect.UpperLeftCorner.Y += skin->getSize(EGDS_TEXT_DISTANCE_Y);
        rect.LowerRightCorner.X = rect.LowerRightCorner.X + 5 - skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);
        IGUIFont* font = skin->getFont(EGDF_WINDOW);  // K 0x28
        if (font != nullptr) {
            font->draw(text.c_str(), rect, skin->getColor(EGDC_ACTIVE_CAPTION), false, true, &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

// ---------------------------------------------------------------------------------------------------------------------
// CGUIMessageBox
// ---------------------------------------------------------------------------------------------------------------------

// 0x547a0c _ZN6glitch3gui14CGUIMessageBoxC1EPNS0_15IGUIEnvironmentEPKwS5_iPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x548070)
CGUIMessageBox::CGUIMessageBox(IGUIEnvironment* environmentValue, const wchar_t* caption, const wchar_t* textValue, int flagsValue,
                               IGUIElement* parentElement, int id, core::rect<int> rectangle)
    : CGUIWindow(environmentValue, parentElement, id, rectangle), flags(flagsValue), messageText(textValue != nullptr ? textValue : L"") {
    type = EGUIET_MESSAGE_BOX;
    environment->setFocus(nullptr);  // K 0x10
    getMaximizeButton()->remove();
    getMinimizeButton()->remove();
    if (caption != nullptr) {
        text.assign(caption, caption + std::wcslen(caption));
    }
    environment->setFocus(this);
    refreshControls();
}

// 0x547cb4 _ZN6glitch3gui14CGUIMessageBoxD1Ev (0x547db4 and 0x547dd0 are the other forms)
CGUIMessageBox::~CGUIMessageBox() {
    if (staticText != nullptr) {
        staticText->drop();
    }
    for (IGUIButton* button : {okButton, cancelButton, yesButton, noButton}) {
        if (button != nullptr) {
            button->drop();
        }
    }
}

// 0x546f1c _ZNK6glitch3gui14CGUIMessageBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIMessageBox::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("OkayButton", (flags & EMBF_OK) != 0, false);       // K 0xd8
    attributes->addBool("CancelButton", (flags & EMBF_CANCEL) != 0, false);
    attributes->addBool("YesButton", (flags & EMBF_YES) != 0, false);
    attributes->addBool("NoButton", (flags & EMBF_NO) != 0, false);
    attributes->addString("MessageText", messageText.c_str(), false);       // K 0x94
}

// 0x547f28 _ZN6glitch3gui14CGUIMessageBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The flags and the message are read first; the window attributes follow and the controls are rebuilt.
void CGUIMessageBox::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    flags = 0;
    flags = attributes->getBool("OkayButton") ? EMBF_OK : 0;
    flags |= attributes->getBool("CancelButton") ? EMBF_CANCEL : 0;
    flags |= attributes->getBool("YesButton") ? EMBF_YES : 0;
    flags |= attributes->getBool("NoButton") ? EMBF_NO : 0;
    messageText = attributes->getStringW("MessageText");  // K 0x9c
    IGUIElement::deserializeAttributes(attributes, options);
    refreshControls();
}

// 0x547014 _ZN6glitch3gui14CGUIMessageBox7onEventERKNS_6SEventE
// The key-down branch of Escape clears the pressed state through the OK button three times (the original calls OkButton->setPressed for the
// Yes and No tests as well, a copy and paste slip that this port keeps).
bool CGUIMessageBox::onEvent(const SEvent& event) {
    if (!enabled) {
        return CGUIWindow::onEvent(event);
    }
    SEvent answer;
    answer.EventType = EET_GUI_EVENT;
    answer.GUIEvent.Caller = this;
    answer.GUIEvent.Element = nullptr;
    int answerType = -1;
    if (event.EventType == EET_GUI_EVENT) {
        if (event.GUIEvent.EventType != EGET_BUTTON_CLICKED) {
            return CGUIWindow::onEvent(event);
        }
        const void* caller = event.GUIEvent.Caller;
        if (caller == okButton) {
            answerType = EGET_MESSAGEBOX_OK;
        } else if (caller == cancelButton || caller == closeButton) {
            answerType = EGET_MESSAGEBOX_CANCEL;
        } else if (caller == yesButton) {
            answerType = EGET_MESSAGEBOX_YES;
        } else if (caller == noButton) {
            answerType = EGET_MESSAGEBOX_NO;
        } else {
            return CGUIWindow::onEvent(event);
        }
    } else if (event.EventType == EET_KEY_INPUT_EVENT) {
        const int key = event.KeyInput.Key;
        if (event.KeyInput.PressedDown) {
            IGUIButton* target = nullptr;
            if (key == KEY_ESCAPE) {
                if (pressed) {
                    if (okButton != nullptr) {
                        okButton->setPressed(false);  // K 0x9c
                    }
                    if (yesButton != nullptr) {
                        okButton->setPressed(false);
                    }
                    if (noButton != nullptr) {
                        okButton->setPressed(false);
                    }
                    pressed = false;
                    return CGUIWindow::onEvent(event);
                }
                if (cancelButton != nullptr) {
                    target = cancelButton;
                } else if (closeButton != nullptr && closeButton->isVisible()) {
                    target = closeButton;
                }
            } else if (key == KEY_RETURN) {
                target = okButton;
            } else if (key == 'N') {
                target = noButton;
            } else if (key == 'Y') {
                target = yesButton;
            }
            if (target != nullptr) {
                target->setPressed(true);
                pressed = true;
            }
            return CGUIWindow::onEvent(event);
        }
        if (!pressed) {
            return CGUIWindow::onEvent(event);
        }
        if (okButton != nullptr && key == KEY_RETURN) {
            answerType = EGET_MESSAGEBOX_OK;
        } else if ((cancelButton != nullptr || closeButton != nullptr) && key == KEY_ESCAPE) {
            answerType = EGET_MESSAGEBOX_CANCEL;
        } else if (yesButton != nullptr && key == 'Y') {
            answerType = EGET_MESSAGEBOX_YES;
        } else if (noButton != nullptr && key == 'N') {
            answerType = EGET_MESSAGEBOX_NO;
        } else {
            return CGUIWindow::onEvent(event);
        }
    } else {
        return CGUIWindow::onEvent(event);
    }
    answer.GUIEvent.EventType = answerType;
    if (parent != nullptr) {
        parent->onEvent(answer);
    }
    remove();  // K 0x1c
    return true;
}

// 0x5472e0 _ZN6glitch3gui14CGUIMessageBox15refreshControlsEv
void CGUIMessageBox::refreshControls() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    const int buttonHeight = skin->getSize(EGDS_BUTTON_HEIGHT);
    const int buttonWidth = skin->getSize(EGDS_BUTTON_WIDTH);
    const int titleHeight = skin->getSize(EGDS_WINDOW_BUTTON_WIDTH) + 2;
    const int buttonDistance = skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);

    // The static text: the clipping rectangle without the button margin, below the title.
    const int textWidth = absoluteClippingRect.LowerRightCorner.X - absoluteClippingRect.UpperLeftCorner.X - buttonWidth;
    const int textHeightMax = absoluteClippingRect.LowerRightCorner.Y - absoluteClippingRect.UpperLeftCorner.Y - 3 * buttonHeight;
    const int textLeft = buttonWidth / 2;
    const int textTop = buttonHeight / 2 + titleHeight;
    const core::rect<int> textRect = detail::makeRect(textLeft, textTop, textLeft + textWidth, textTop + textHeightMax);
    if (staticText != nullptr) {
        staticText->setRelativePosition(textRect);
        staticText->setText(messageText.c_str());  // K 0x44
    } else {
        staticText = environment->addStaticText(messageText.c_str(), textRect, false, false, this, -1, false);  // K 0xa8
        staticText->setWordWrap(true);                                                                           // K 0xa4
        staticText->setSubElement(true);                                                                         // K 0x38
        ++staticText->referenceCounter;
    }
    const int textHeight = staticText->getTextHeight();  // K 0xac
    const int totalHeight = textHeight + titleHeight;
    core::rect<int> textArea = staticText->relativeRect;
    textArea.LowerRightCorner.Y = textArea.UpperLeftCorner.Y + textHeight;
    staticText->setRelativePosition(textArea);

    // The box: tall enough for the text and the buttons, centred vertically in the parent.
    core::rect<int> box = relativeRect;
    const int boxHeight = totalHeight + static_cast<int>(std::floor(static_cast<float>(buttonHeight) * 2.5f));
    const int boxTop = (detail::rectHeight(parent->absoluteRect) - boxHeight) / 2;
    box.UpperLeftCorner.Y = boxTop;
    box.LowerRightCorner.Y = boxTop + boxHeight;
    setRelativePosition(box);

    // The buttons: side by side, centred.
    int buttonCount = 0;
    for (int bit : {EMBF_OK, EMBF_CANCEL, EMBF_YES, EMBF_NO}) {
        if ((flags & bit) != 0) {
            ++buttonCount;
        }
    }
    const int spacing = buttonDistance + buttonWidth;
    const int buttonTop = textTop + buttonHeight / 2 + textHeight;
    core::rect<int> buttonRect = detail::makeRect((detail::rectWidth(absoluteClippingRect) - spacing * buttonCount) / 2, buttonTop,
                                                  0, buttonTop + buttonHeight);
    buttonRect.LowerRightCorner.X = buttonRect.UpperLeftCorner.X + buttonWidth;
    IGUIButton* focusButton = nullptr;

    auto layoutButton = [&](IGUIButton*& button, int bit, EGUI_DEFAULT_TEXT textId) {
        if ((flags & bit) != 0) {
            if (button != nullptr) {
                button->setRelativePosition(buttonRect);
            } else {
                button = environment->addButton(buttonRect, this, -1, nullptr, nullptr);  // K 0x78
                button->setSubElement(true);                                                // K 0x38
                ++button->referenceCounter;
            }
            button->setText(skin->getDefaultText(textId));  // K 0x1c, K 0x44
            buttonRect.UpperLeftCorner.X += spacing;
            buttonRect.LowerRightCorner.X += spacing;
            if (focusButton == nullptr) {
                focusButton = button;
            }
        } else if (button != nullptr) {
            button->drop();
            button->remove();
            button = nullptr;
        }
    };
    layoutButton(okButton, EMBF_OK, EGDT_MSG_BOX_OK);
    layoutButton(cancelButton, EMBF_CANCEL, EGDT_MSG_BOX_CANCEL);
    layoutButton(yesButton, EMBF_YES, EGDT_MSG_BOX_YES);
    layoutButton(noButton, EMBF_NO, EGDT_MSG_BOX_NO);

    if (environment->hasFocus(this) && focusButton != nullptr) {  // K 0x1c
        environment->setFocus(focusButton);                         // K 0x10
    }
}

}  // namespace glitch::gui
