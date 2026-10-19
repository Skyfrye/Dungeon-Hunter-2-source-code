// Bodies of glitch::gui::IGUIButton and CGUIButton (canonical classes: gui/CGUIButton.hpp). This file replaces the button bodies of
// gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_33.cpp and tb_scene-collada-gui-glitch_gui_CGUIButton-0.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

namespace {

const video::SColor kWhiteColor{0xFFFFFFFFu};

bool clipContains(const core::rect<int>& rect, int x, int y) {
    return x >= rect.UpperLeftCorner.X && y >= rect.UpperLeftCorner.Y && x <= rect.LowerRightCorner.X && y <= rect.LowerRightCorner.Y;
}

}  // namespace

// 0x6a6140 _ZN6glitch3gui10IGUIButtonC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIButton::IGUIButton(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_BUTTON, environment, parent, id, rectangle) {}

// 0x6a69b8 _ZN6glitch3gui10IGUIButtonD1Ev (D0 0x6a6e30 skipped)
IGUIButton::~IGUIButton() = default;

// 0x6a63fc _ZN6glitch3gui10CGUIButtonC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEEb (C2 0x6a653c)
CGUIButton::CGUIButton(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool noClipValue)
    : IGUIButton(environment, parent, id, rectangle) {
    noClip = noClipValue;
    tabStop = true;
    setTabOrder(-1);
}

// 0x6a6a2c _ZN6glitch3gui10CGUIButtonD1Ev (0x6a6ae8 and 0x6a6b04 are the other forms)
CGUIButton::~CGUIButton() {
    if (overrideFont != nullptr) {
        overrideFont->drop();
    }
    if (spriteBank != nullptr) {
        spriteBank->drop();
    }
}

// 0x6a5df0 _ZN6glitch3gui10CGUIButton13setDrawBorderEb
void CGUIButton::setDrawBorder(bool border) {
    drawBorder = border;
}

// 0x6a5eec _ZNK6glitch3gui10CGUIButton15isDrawingBorderEv
bool CGUIButton::isDrawingBorder() const {
    return drawBorder;
}

// 0x6a5df8 _ZN6glitch3gui10CGUIButton13setSpriteBankEPNS0_14IGUISpriteBankE
void CGUIButton::setSpriteBank(IGUISpriteBank* bank) {
    if (bank != nullptr) {
        ++bank->referenceCounter;
    }
    if (spriteBank != nullptr) {
        spriteBank->drop();
    }
    spriteBank = bank;
}

// 0x6a5e28 _ZN6glitch3gui10CGUIButton9setSpriteENS0_16EGUI_BUTTON_STATEEiNS_5video6SColorEb
// Without a sprite bank the state's sprite index is cleared instead.
void CGUIButton::setSprite(EGUI_BUTTON_STATE state, int index, video::SColor color, bool loop) {
    if (spriteBank != nullptr) {
        buttonSprites[state].index = index;
        buttonSprites[state].color = color;
        buttonSprites[state].loop = loop;
    } else {
        buttonSprites[state].index = -1;
    }
}

// 0x6a5e90 _ZN6glitch3gui10CGUIButton15setOverrideFontEPNS0_8IGUIFontE
void CGUIButton::setOverrideFont(IGUIFont* font) {
    if (font != nullptr) {
        ++font->referenceCounter;
    }
    if (overrideFont != nullptr) {
        overrideFont->drop();
    }
    overrideFont = font;
}

// 0x6a5ec4 _ZN6glitch3gui10CGUIButton15setIsPushButtonEb
void CGUIButton::setIsPushButton(bool isPush) {
    isPushButtonFlag = isPush;
}

// 0x6a5ed4 _ZNK6glitch3gui10CGUIButton12isPushButtonEv
bool CGUIButton::isPushButton() const {
    return isPushButtonFlag;
}

// 0x6a5ecc _ZNK6glitch3gui10CGUIButton9isPressedEv
bool CGUIButton::isPressed() const {
    return pressed;
}

// 0x6a5edc _ZN6glitch3gui10CGUIButton18setUseAlphaChannelEb
void CGUIButton::setUseAlphaChannel(bool useAlpha) {
    useAlphaChannel = useAlpha;
}

// 0x6a5ee4 _ZNK6glitch3gui10CGUIButton18isAlphaChannelUsedEv
bool CGUIButton::isAlphaChannelUsed() const {
    return useAlphaChannel;
}

// 0x6a5f14 _ZN6glitch3gui10CGUIButton10setPressedEb
// The press time is stamped only when the state changes.
void CGUIButton::setPressed(bool value) {
    if (pressed != value) {
        clickTime = os::Timer::getTime();
        pressed = value;
    }
}

// 0x6a67fc _ZN6glitch3gui10CGUIButton8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEERKNS_4core4rectIiEE
// The pressed image follows when none is set.
void CGUIButton::setImage(const boost::intrusive_ptr<video::ITexture>& newImage, const core::rect<int>& pos) {
    image = newImage;
    imageRect = pos;
    if (!pressedImage) {
        setPressedImage(image, pos);  // K 0x8c
    }
}

// 0x6a68d4 _ZN6glitch3gui10CGUIButton8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
// The image rectangle becomes the whole texture.
void CGUIButton::setImage(const boost::intrusive_ptr<video::ITexture>& newImage) {
    image = newImage;
    if (newImage) {
        imageRect.UpperLeftCorner.X = 0;
        imageRect.UpperLeftCorner.Y = 0;
        imageRect.LowerRightCorner.X = static_cast<int>(newImage->m_width);
        imageRect.LowerRightCorner.Y = static_cast<int>(newImage->m_height);
    }
    if (!pressedImage) {
        setPressedImage(image);  // K 0x88
    }
}

// 0x6a687c _ZN6glitch3gui10CGUIButton15setPressedImageERKN5boost13intrusive_ptrINS_5video8ITextureEEERKNS_4core4rectIiEE
void CGUIButton::setPressedImage(const boost::intrusive_ptr<video::ITexture>& newImage, const core::rect<int>& pos) {
    pressedImage = newImage;
    pressedImageRect = pos;
}

// 0x6a6958 _ZN6glitch3gui10CGUIButton15setPressedImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
void CGUIButton::setPressedImage(const boost::intrusive_ptr<video::ITexture>& newImage) {
    pressedImage = newImage;
    if (newImage) {
        pressedImageRect.UpperLeftCorner.X = 0;
        pressedImageRect.UpperLeftCorner.Y = 0;
        pressedImageRect.LowerRightCorner.X = static_cast<int>(newImage->m_width);
        pressedImageRect.LowerRightCorner.Y = static_cast<int>(newImage->m_height);
    }
}

// 0x6a6630 _ZNK6glitch3gui10CGUIButton19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIButton::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addBool("PushButton", isPushButtonFlag, false);  // K 0xd8
    if (isPushButtonFlag) {
        attributes->addBool("Pressed", pressed, false);
    }
    attributes->addTexture("Image", image, false);  // K 0x2b0
    attributes->addRect("ImageRect", imageRect, false);
    attributes->addTexture("PressedImage", pressedImage, false);
    attributes->addRect("PressedImageRect", pressedImageRect, false);
    attributes->addBool("Border", drawBorder, false);
    attributes->addBool("UseAlphaChannel", useAlphaChannel, false);
}

// 0x6a6bb0 _ZN6glitch3gui10CGUIButton21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// An image rectangle that is not empty (left <= right and top <= bottom) is passed along with the image; otherwise the image sets its own.
void CGUIButton::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    isPushButtonFlag = attributes->getBool("PushButton");  // K 0xe4
    pressed = isPushButtonFlag ? attributes->getBool("Pressed") : false;

    core::rect<int> rectangle = attributes->getRect("ImageRect");  // K 0x1fc
    if (rectangle.LowerRightCorner.X < rectangle.UpperLeftCorner.X || rectangle.LowerRightCorner.Y < rectangle.UpperLeftCorner.Y) {
        setImage(attributes->getTexture("Image"));  // K 0x2bc
    } else {
        setImage(attributes->getTexture("Image"), rectangle);
    }
    rectangle = attributes->getRect("PressedImageRect");
    if (rectangle.UpperLeftCorner.X > rectangle.LowerRightCorner.X || rectangle.UpperLeftCorner.Y > rectangle.LowerRightCorner.Y) {
        setPressedImage(attributes->getTexture("PressedImage"));
    } else {
        setPressedImage(attributes->getTexture("PressedImage"), rectangle);
    }
    setDrawBorder(attributes->getBool("Border"));  // K 0xb0
    useAlphaChannel = attributes->getBool("UseAlphaChannel");
    updateAbsolutePosition();  // K 0x0c
}

// 0x6a6eac _ZN6glitch3gui10CGUIButton7onEventERKNS_6SEventE
bool CGUIButton::onEvent(const SEvent& event) {
    if (!enabled) {
        return parent != nullptr ? parent->onEvent(event) : false;
    }
    auto postClick = [this]() {
        SEvent clicked;
        clicked.EventType = EET_GUI_EVENT;
        clicked.GUIEvent.Caller = this;
        clicked.GUIEvent.Element = nullptr;
        clicked.GUIEvent.EventType = EGET_BUTTON_CLICKED;
        parent->onEvent(clicked);
    };
    switch (event.EventType) {
        case EET_KEY_INPUT_EVENT: {
            const bool keyDown = event.KeyInput.PressedDown;
            const int key = event.KeyInput.Key;
            const bool activate = (key == KEY_RETURN || key == KEY_SPACE);
            if (keyDown && activate) {
                setPressed(isPushButtonFlag ? !pressed : true);  // K 0x9c
                return true;
            }
            if (pressed && !isPushButtonFlag && keyDown && key == KEY_ESCAPE) {
                setPressed(false);
                return true;
            }
            if (!keyDown && pressed && activate) {
                if (!isPushButtonFlag) {
                    setPressed(false);
                }
                if (parent != nullptr) {
                    postClick();
                }
                return true;
            }
            break;
        }
        case EET_GUI_EVENT:
            if (event.GUIEvent.EventType == EGET_ELEMENT_FOCUS_LOST && event.GUIEvent.Caller == this && !isPushButtonFlag) {
                setPressed(false);
            }
            break;
        case EET_MOUSE_INPUT_EVENT:
            if (event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN) {
                if (environment->hasFocus(this) && !clipContains(absoluteClippingRect, event.MouseInput.X, event.MouseInput.Y)) {
                    environment->removeFocus(this);  // K 0x18
                    return false;
                }
                if (!isPushButtonFlag) {
                    setPressed(true);
                }
                environment->setFocus(this);  // K 0x10
                return true;
            }
            if (event.MouseInput.Event == EMIE_LMOUSE_LEFT_UP) {
                const bool wasPressed = pressed;
                if (!clipContains(absoluteClippingRect, event.MouseInput.X, event.MouseInput.Y)) {
                    if (!isPushButtonFlag) {
                        setPressed(false);
                    }
                    return true;
                }
                if (isPushButtonFlag) {
                    setPressed(!wasPressed);
                } else {
                    setPressed(false);
                }
                if (isPushButtonFlag ? (pressed != wasPressed) : wasPressed) {
                    if (parent != nullptr) {
                        postClick();
                    }
                }
                return true;
            }
            break;
        default:
            break;
    }
    return parent != nullptr ? parent->onEvent(event) : false;
}

// 0x6a7224 _ZN6glitch3gui10CGUIButton4drawEv
// The sprite of a state is drawn at the centre of the button with the state's colour and loop flag, started at ClickTime.
void CGUIButton::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();               // K 0x38
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    IGUIFont* font = overrideFont != nullptr ? overrideFont : skin->getFont(EGDF_BUTTON);

    const core::rect<int> rect = absoluteRect;
    const core::position2d<int> center{(rect.LowerRightCorner.X + rect.UpperLeftCorner.X) / 2,
                                       (rect.LowerRightCorner.Y + rect.UpperLeftCorner.Y) / 2};
    if (pressed) {
        if (drawBorder) {
            skin->draw3DButtonPanePressed(this, rect, &absoluteClippingRect);  // K 0x44
        }
        if (pressedImage) {
            core::position2d<int> position{center.X - (pressedImageRect.LowerRightCorner.X - pressedImageRect.UpperLeftCorner.X) / 2,
                                           center.Y - (pressedImageRect.LowerRightCorner.Y - pressedImageRect.UpperLeftCorner.Y) / 2};
            // The same image and rectangle for both states: the pressed button draws it one pixel down and to the right.
            if (image.get() == pressedImage.get() && pressedImageRect.UpperLeftCorner.X == imageRect.UpperLeftCorner.X &&
                pressedImageRect.UpperLeftCorner.Y == imageRect.UpperLeftCorner.Y &&
                pressedImageRect.LowerRightCorner.X == imageRect.LowerRightCorner.X &&
                pressedImageRect.LowerRightCorner.Y == imageRect.LowerRightCorner.Y) {
                position.X += 1;
                position.Y += 1;
            }
            video::C2DDriver::draw2DImage(driver, pressedImage, position, pressedImageRect, &absoluteClippingRect, kWhiteColor, useAlphaChannel);
        }
        if (spriteBank != nullptr && buttonSprites[EGBS_BUTTON_DOWN].index != -1) {
            spriteBank->draw2DSprite(static_cast<std::uint32_t>(buttonSprites[EGBS_BUTTON_DOWN].index), center, &absoluteClippingRect,
                                     buttonSprites[EGBS_BUTTON_DOWN].color, clickTime, os::Timer::getTime(),
                                     buttonSprites[EGBS_BUTTON_DOWN].loop, true);  // K 0x24
        }
    } else {
        if (drawBorder) {
            skin->draw3DButtonPaneStandard(this, rect, &absoluteClippingRect);  // K 0x40
        }
        if (image) {
            const core::position2d<int> position{center.X - (imageRect.LowerRightCorner.X - imageRect.UpperLeftCorner.X) / 2,
                                                 center.Y - (imageRect.LowerRightCorner.Y - imageRect.UpperLeftCorner.Y) / 2};
            video::C2DDriver::draw2DImage(driver, image, position, imageRect, &absoluteClippingRect, kWhiteColor, useAlphaChannel);
        }
        if (spriteBank != nullptr && buttonSprites[EGBS_BUTTON_UP].index != -1) {
            spriteBank->draw2DSprite(static_cast<std::uint32_t>(buttonSprites[EGBS_BUTTON_UP].index), center, &absoluteClippingRect,
                                     buttonSprites[EGBS_BUTTON_UP].color, clickTime, os::Timer::getTime(),
                                     buttonSprites[EGBS_BUTTON_UP].loop, true);
        }
    }
    if (!text.empty()) {
        core::rect<int> textRect = rect;
        if (pressed) {
            textRect.UpperLeftCorner.Y += 2;
        }
        if (font != nullptr) {
            font->draw(text.c_str(), textRect, skin->getColor(enabled ? EGDC_BUTTON_TEXT : EGDC_GRAY_TEXT), true, true,
                       &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
