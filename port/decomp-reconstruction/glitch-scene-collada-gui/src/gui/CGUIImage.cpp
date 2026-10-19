// Bodies of glitch::gui::IGUIImage, CGUIImage, IGUIInOutFader, CGUIInOutFader and CGUIModalScreen (canonical classes: gui/CGUIImage.hpp). This
// file replaces their bodies in gui_elements.cpp, gui_simple_accessors.cpp, recon/slice_02.cpp, recon/slice_31.cpp and recon/v2/wave_13.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIImage.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

// ---------------------------------------------------------------------------------------------------------------------
// IGUIImage / CGUIImage
// ---------------------------------------------------------------------------------------------------------------------

// 0x54062c _ZN6glitch3gui9IGUIImageC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIImage::IGUIImage(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_IMAGE, environment, parent, id, rectangle) {}

// 0x540a74 _ZN6glitch3gui9IGUIImageD1Ev (D0 0x540d24 skipped)
IGUIImage::~IGUIImage() = default;

// 0x5408ec _ZN6glitch3gui9CGUIImageC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x5409d8)
CGUIImage::CGUIImage(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIImage(environment, parent, id, rectangle) {}

// 0x540ae8 _ZN6glitch3gui9CGUIImageD1Ev (0x540b74 and 0x540b90 are the other forms)
CGUIImage::~CGUIImage() = default;

// 0x5404c0 _ZN6glitch3gui9CGUIImage8setImageERKN5boost13intrusive_ptrINS_5video8ITextureEEE
void CGUIImage::setImage(const boost::intrusive_ptr<video::ITexture>& image) {
    texture = image;
}

// 0x5404ec _ZN6glitch3gui9CGUIImage8setColorENS_5video6SColorE
void CGUIImage::setColor(video::SColor value) {
    color = value;
}

// 0x540514 _ZN6glitch3gui9CGUIImage18setUseAlphaChannelEb
void CGUIImage::setUseAlphaChannel(bool value) {
    useAlphaChannel = value;
}

// 0x54051c _ZN6glitch3gui9CGUIImage13setScaleImageEb
void CGUIImage::setScaleImage(bool value) {
    scaleImage = value;
}

// 0x540524 _ZNK6glitch3gui9CGUIImage13isImageScaledEv
bool CGUIImage::isImageScaled() const {
    return scaleImage;
}

// 0x54052c _ZNK6glitch3gui9CGUIImage18isAlphaChannelUsedEv
bool CGUIImage::isAlphaChannelUsed() const {
    return useAlphaChannel;
}

// 0x540534 _ZNK6glitch3gui9CGUIImage19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIImage::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addTexture("Texture", texture, false);  // K 0x2b0
    attributes->addBool("UseAlphaChannel", useAlphaChannel, false);
    attributes->addColor("Color", color, false);
    attributes->addBool("ScaleImage", scaleImage, false);
}

// 0x540c0c _ZN6glitch3gui9CGUIImage21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIImage::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    setImage(attributes->getTexture("Texture"));                       // K 0x7c, getTexture K 0x2bc
    setUseAlphaChannel(attributes->getBool("UseAlphaChannel"));         // K 0x88
    setColor(attributes->getColor("Color"));                            // K 0x80
    setScaleImage(attributes->getBool("ScaleImage"));                   // K 0x84
}

// 0x540da0 _ZN6glitch3gui9CGUIImage4drawEv
void CGUIImage::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();                       // K 0x38
    video::IVideoDriver* driver = environment->getVideoDriver();   // K 0x20
    if (texture) {
        core::rect<int> source;
        source.UpperLeftCorner.X = 0;
        source.UpperLeftCorner.Y = 0;
        source.LowerRightCorner.X = static_cast<int>(texture->m_width);
        source.LowerRightCorner.Y = static_cast<int>(texture->m_height);
        if (scaleImage) {
            const video::SColor colors[4] = {color, color, color, color};
            video::C2DDriver::draw2DImage(driver, texture, absoluteRect, source, &absoluteClippingRect, colors, useAlphaChannel);
        } else {
            video::C2DDriver::draw2DImage(driver, texture, absoluteRect.UpperLeftCorner, source, &absoluteClippingRect, color,
                                          useAlphaChannel);
        }
    } else {
        skin->draw2DRectangle(this, skin->getColor(EGDC_3D_DARK_SHADOW), absoluteRect, &absoluteClippingRect);  // K 0x64
    }
    IGUIElement::draw();
}

// ---------------------------------------------------------------------------------------------------------------------
// IGUIInOutFader / CGUIInOutFader
// ---------------------------------------------------------------------------------------------------------------------

// 0x5413ec _ZN6glitch3gui14IGUIInOutFaderC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIInOutFader::IGUIInOutFader(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_IN_OUT_FADER, environment, parent, id, rectangle) {}

// 0x541844 _ZN6glitch3gui14IGUIInOutFaderD1Ev (D0 0x541a08 skipped)
IGUIInOutFader::~IGUIInOutFader() = default;

// 0x5416ac _ZN6glitch3gui14CGUIInOutFaderC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE (C2 0x5417a0)
CGUIInOutFader::CGUIInOutFader(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIInOutFader(environment, parent, id, rectangle) {
    setColor(video::SColor{});  // K 0x80
}

// 0x5418b8 _ZN6glitch3gui14CGUIInOutFaderD1Ev (D2 0x541948 skipped)
CGUIInOutFader::~CGUIInOutFader() = default;

// 0x5411d8 _ZNK6glitch3gui14CGUIInOutFader8getColorEv
video::SColor CGUIInOutFader::getColor() const {
    return color[1];
}

// 0x54120c _ZN6glitch3gui14CGUIInOutFader8setColorENS_5video6SColorE
void CGUIInOutFader::setColor(video::SColor newColor) {
    video::SColor source = newColor;
    video::SColor dest = newColor;
    source.setComponent(3, 255);
    dest.setComponent(3, 0);
    setColor(source, dest);  // K 0x84
}

// 0x54124c _ZN6glitch3gui14CGUIInOutFader8setColorENS_5video6SColorES3_
void CGUIInOutFader::setColor(video::SColor source, video::SColor dest) {
    color[0] = source;
    color[1] = dest;
    if (action == EFA_FADE_OUT) {
        fullColor = color[1];
        transColor = color[0];
    } else if (action == EFA_FADE_IN) {
        fullColor = color[0];
        transColor = color[1];
    }
}

// 0x541388 _ZN6glitch3gui14CGUIInOutFader6fadeInEj
void CGUIInOutFader::fadeIn(std::uint32_t time) {
    const std::uint32_t now = os::Timer::getTime();
    action = EFA_FADE_IN;
    startTime = now;
    endTime = now + time;
    setColor(color[0], color[1]);  // K 0x84
}

// 0x541348 _ZN6glitch3gui14CGUIInOutFader7fadeOutEj
void CGUIInOutFader::fadeOut(std::uint32_t time) {
    const std::uint32_t now = os::Timer::getTime();
    action = EFA_FADE_OUT;
    startTime = now;
    endTime = now + time;
    setColor(color[0], color[1]);
}

// 0x5413c8 _ZNK6glitch3gui14CGUIInOutFader7isReadyEv
bool CGUIInOutFader::isReady() const {
    return os::Timer::getTime() > endTime;
}

// 0x5412cc _ZNK6glitch3gui14CGUIInOutFader19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIInOutFader::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    IGUIElement::serializeAttributes(attributes, options);
    attributes->addColor("FullColor", fullColor, false);   // K 0x118
    attributes->addColor("TransColor", transColor, false);
}

// 0x541984 _ZN6glitch3gui14CGUIInOutFader21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUIInOutFader::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    IGUIElement::deserializeAttributes(attributes, options);
    fullColor = attributes->getColor("FullColor");   // K 0x124
    transColor = attributes->getColor("TransColor");
}

// 0x541a84 _ZN6glitch3gui14CGUIInOutFader4drawEv
void CGUIInOutFader::draw() {
    if (!visible || action == EFA_NOTHING) {
        return;
    }
    const std::uint32_t now = os::Timer::getTime();
    if (now > endTime && action == EFA_FADE_IN) {
        action = EFA_NOTHING;
        return;
    }
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    if (driver != nullptr) {
        float fraction = 0.0f;
        if (now <= endTime) {
            fraction = static_cast<float>(endTime - now) / static_cast<float>(endTime - startTime);
        }
        const video::SColor blended = fullColor.getInterpolated(transColor, fraction);
        video::C2DDriver::draw2DRectangle(driver, blended, absoluteRect, &absoluteClippingRect);
    }
    IGUIElement::draw();
}

// ---------------------------------------------------------------------------------------------------------------------
// CGUIModalScreen
// ---------------------------------------------------------------------------------------------------------------------

// 0x5485c8 _ZN6glitch3gui15CGUIModalScreenC1EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi (C2 0x548668)
CGUIModalScreen::CGUIModalScreen(IGUIEnvironment* environment, IGUIElement* parent, int id)
    : IGUIElement(EGUIET_MODAL_SCREEN, environment, parent, id, parent->absoluteRect) {
    setAlignment(EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_LOWERRIGHT);
    tabGroup = true;
}

// 0x548858 _ZN6glitch3gui15CGUIModalScreenD1Ev (D2 0x548ba8 skipped)
CGUIModalScreen::~CGUIModalScreen() = default;

// 0x5482a0 _ZNK6glitch3gui15CGUIModalScreen19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE (empty)
void CGUIModalScreen::serializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) const {}

// 0x5482a4 _ZN6glitch3gui15CGUIModalScreen21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE (empty)
void CGUIModalScreen::deserializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) {}

// 0x548260 _ZN6glitch3gui15CGUIModalScreen22updateAbsolutePositionEv
void CGUIModalScreen::updateAbsolutePosition() {
    if (parent != nullptr) {
        relativeRect.UpperLeftCorner.X = 0;
        relativeRect.UpperLeftCorner.Y = 0;
        relativeRect.LowerRightCorner.X = parent->absoluteRect.LowerRightCorner.X - parent->absoluteRect.UpperLeftCorner.X;
        relativeRect.LowerRightCorner.Y = parent->absoluteRect.LowerRightCorner.Y - parent->absoluteRect.UpperLeftCorner.Y;
    }
    IGUIElement::updateAbsolutePosition();
}

// 0x5482c8 _ZN6glitch3gui15CGUIModalScreen11removeChildEPNS0_11IGUIElementE
void CGUIModalScreen::removeChild(IGUIElement* child) {
    IGUIElement::removeChild(child);
    if (children.empty()) {
        remove();  // K 0x1c
    }
}

// 0x5482fc _ZN6glitch3gui15CGUIModalScreen8addChildEPNS0_11IGUIElementE
void CGUIModalScreen::addChild(IGUIElement* child) {
    IGUIElement::addChild(child);
    environment->setFocus(child);  // K 0x10
}

// 0x5488bc _ZN6glitch3gui15CGUIModalScreen4drawEv
void CGUIModalScreen::draw() {
    IGUISkin* skin = environment->getSkin();  // K 0x38
    if (skin == nullptr) {
        return;
    }
    const std::uint32_t now = os::Timer::getTime();
    if (now - mouseDownTime < 300 && ((now / 70) % 2) != 0) {
        const video::SColor highlight = environment->getSkin()->getColor(EGDC_3D_HIGH_LIGHT);
        for (IGUIElement* child : children) {
            if (child->isVisible()) {  // K 0x2c
                core::rect<int> frame;
                frame.UpperLeftCorner.X = child->absoluteRect.UpperLeftCorner.X - 1;
                frame.UpperLeftCorner.Y = child->absoluteRect.UpperLeftCorner.Y - 1;
                frame.LowerRightCorner.X = child->absoluteRect.LowerRightCorner.X + 1;
                frame.LowerRightCorner.Y = child->absoluteRect.LowerRightCorner.Y + 1;
                skin->draw2DRectangle(this, highlight, frame, &absoluteClippingRect);  // K 0x64
            }
        }
    }
    IGUIElement::draw();
}

// 0x548a50 _ZN6glitch3gui15CGUIModalScreen7onEventERKNS_6SEventE
// The ancestor test climbs from the element to the first ancestor that is this screen or has no parent.
bool CGUIModalScreen::onEvent(const SEvent& event) {
    auto isInside = [this](const IGUIElement* element) {
        const IGUIElement* current = element;
        for (const IGUIElement* up = element->parent; up != nullptr; up = up->parent) {
            current = up;
            if (up == this || up->parent == nullptr) {
                return up == this;
            }
        }
        return current == this;
    };
    if (event.EventType != EET_GUI_EVENT) {
        if (event.EventType == EET_MOUSE_INPUT_EVENT && event.MouseInput.Event == EMIE_LMOUSE_PRESSED_DOWN) {
            mouseDownTime = os::Timer::getTime();
        }
        if (parent != nullptr) {
            parent->onEvent(event);
        }
        return true;
    }
    const int eventType = event.GUIEvent.EventType;
    if (eventType == EGET_ELEMENT_FOCUSED) {
        const IGUIElement* caller = static_cast<const IGUIElement*>(event.GUIEvent.Caller);
        if (caller == this) {
            return false;
        }
        if (caller != nullptr && isInside(caller)) {
            return false;
        }
        environment->setFocus(this);  // K 0x10
        return false;
    }
    if (eventType == EGET_ELEMENT_CLOSED) {
        return IGUIElement::onEvent(event);
    }
    if (eventType == EGET_ELEMENT_FOCUS_LOST) {
        const IGUIElement* element = static_cast<const IGUIElement*>(event.GUIEvent.Element);
        const bool inside = element != nullptr && isInside(element);
        if (!inside && element != this) {
            mouseDownTime = os::Timer::getTime();
            return true;
        }
        return IGUIElement::onEvent(event);
    }
    if (parent != nullptr) {
        parent->onEvent(event);
    }
    return true;
}

}  // namespace glitch::gui
