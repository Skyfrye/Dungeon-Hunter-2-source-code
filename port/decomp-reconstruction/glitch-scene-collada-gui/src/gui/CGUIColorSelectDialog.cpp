// Bodies of glitch::gui::IGUIColorSelectDialog and CGUIColorSelectDialog (canonical classes: gui/CGUIColorSelectDialog.hpp). This file
// replaces their bodies in gui_elements.cpp, gui_simple_accessors.cpp and the colour select parts of the recon slices.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUIColorSelectDialog.hpp"

#include <cmath>
#include <cstdint>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-scene-collada-gui/gui/CGUIButton.hpp"
#include "glitch-scene-collada-gui/gui/CGUIEditBox.hpp"
#include "glitch-scene-collada-gui/gui/CGUIImage.hpp"
#include "glitch-scene-collada-gui/gui/CGUIScrollBar.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"
#include "glitch-scene-collada-gui/gui/gui_util.hpp"
#include "glitch-video/color_hsl.hpp"
#include "glitch-video/image.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

namespace {

// _ZN6glitch3guiL8TemplateE (0x957990): the rows of the dialog (label, initial text, unit, position, scroll range).
struct SSubElementPredefine {
    const wchar_t* pre;
    const wchar_t* init;
    const wchar_t* post;
    int xAbsolute;
    int yAbsolute;
    int rangeDown;
    int rangeUp;
};

const SSubElementPredefine Template[7] = {
    {L"A:", L"0", nullptr, 20, 165, 0, 255},     {L"R:", L"0", nullptr, 20, 205, 0, 255},
    {L"G:", L"0", nullptr, 20, 230, 0, 255},     {L"B:", L"0", nullptr, 20, 255, 0, 255},
    {L"H:", L"0", L"°", 180, 205, 0, 360},  {L"S:", L"0", L"%", 180, 230, 0, 100},
    {L"L:", L"0", L"%", 180, 255, 0, 100},
};

}  // namespace

// 0x6a8cf4 _ZN6glitch3gui21IGUIColorSelectDialogC2EPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEiNS_4core4rectIiEE
IGUIColorSelectDialog::IGUIColorSelectDialog(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle)
    : IGUIElement(EGUIET_COLOR_SELECT_DIALOG, environment, parent, id, rectangle) {}

// 0x6a9b90 _ZN6glitch3gui21IGUIColorSelectDialogD1Ev (D0 0x6a9ef0 skipped)
IGUIColorSelectDialog::~IGUIColorSelectDialog() = default;

// 0x6a8fbc _ZN6glitch3gui21CGUIColorSelectDialogC1EPKwPNS0_15IGUIEnvironmentEPNS0_11IGUIElementEi (C2 0x6aa138)
CGUIColorSelectDialog::CGUIColorSelectDialog(const wchar_t* title, IGUIEnvironment* environmentValue, IGUIElement* parentElement, int id)
    : IGUIColorSelectDialog(
          environmentValue, parentElement, id,
          detail::makeRect((parentElement->absoluteRect.LowerRightCorner.X - 350 - parentElement->absoluteRect.UpperLeftCorner.X) / 2,
                           (parentElement->absoluteRect.LowerRightCorner.Y - 300 - parentElement->absoluteRect.UpperLeftCorner.Y) / 2,
                           (parentElement->absoluteRect.LowerRightCorner.X - 350 - parentElement->absoluteRect.UpperLeftCorner.X) / 2 + 350,
                           (parentElement->absoluteRect.LowerRightCorner.Y - 300 - parentElement->absoluteRect.UpperLeftCorner.Y) / 2 + 300)) {
    text = title;
    IGUISkin* skin = environment->getSkin();  // K 0x38
    const int buttonWidth = environmentValue->getSkin()->getSize(EGDS_WINDOW_BUTTON_WIDTH);  // K 0x18
    const int width = relativeRect.LowerRightCorner.X - relativeRect.UpperLeftCorner.X;
    const core::rect<int> closeRect = detail::makeRect(width - 4 - buttonWidth, 3, width - 4, buttonWidth + 3);
    if (skin != nullptr) {
        closeButton = environment->addButton(closeRect, this, -1, L"", skin->getDefaultText(EGDT_WINDOW_CLOSE));  // K 0x78
        if (skin->getSpriteBank() != nullptr) {
            closeButton->setSpriteBank(skin->getSpriteBank());  // K 0x90
            closeButton->setSprite(EGBS_BUTTON_UP, static_cast<int>(skin->getIcon(EGDI_WINDOW_CLOSE)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
            closeButton->setSprite(EGBS_BUTTON_DOWN, static_cast<int>(skin->getIcon(EGDI_WINDOW_CLOSE)), skin->getColor(EGDC_WINDOW_SYMBOL), false);
        }
    } else {
        closeButton = environment->addButton(closeRect, this, -1, L"", L"C");
    }
    closeButton->setSubElement(true);
    closeButton->tabStop = false;
    closeButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++closeButton->referenceCounter;

    okButton = environment->addButton(detail::makeRect(width - 80, 30, width - 10, 50), this, -1,
                                      skin != nullptr ? skin->getDefaultText(EGDT_MSG_BOX_OK) : L"O", nullptr);
    okButton->setSubElement(true);
    okButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++okButton->referenceCounter;

    cancelButton = environment->addButton(detail::makeRect(width - 80, 55, width - 10, 75), this, -1,
                                          skin != nullptr ? skin->getDefaultText(EGDT_MSG_BOX_CANCEL) : L"C", nullptr);
    cancelButton->setSubElement(true);
    cancelButton->setAlignment(EGUIA_LOWERRIGHT, EGUIA_LOWERRIGHT, EGUIA_UPPERLEFT, EGUIA_UPPERLEFT);
    ++cancelButton->referenceCounter;

    // The colour ring texture is shared under the name "#colorring".
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    colorRingTexture = driver->m_textureManager->getTexture("#colorring", nullptr);
    if (!colorRingTexture) {
        core::dimension2d<int> ringSize;
        ringSize.Width = 128;
        ringSize.Height = 128;
        buildColorRing(ringSize, 1, environment->getSkin()->getColor(EGDC_3D_SHADOW));
    }
    core::position2d<int> ringPosition;
    ringPosition.X = 20;
    ringPosition.Y = 20;
    colorRing = environment->addImage(colorRingTexture, ringPosition, true, this, -1, nullptr);  // K 0x8c
    colorRing->setSubElement(true);
    ++colorRing->referenceCounter;

    for (const SSubElementPredefine& row : Template) {
        int right = row.xAbsolute + 15;
        if (row.pre != nullptr) {
            IGUIElement* label = environment->addStaticText(row.pre, detail::makeRect(row.xAbsolute, row.yAbsolute, right, row.yAbsolute + 20),
                                                            false, false, this, -1, false);  // K 0xa8
            label->setSubElement(true);
        }
        if (row.post != nullptr) {
            IGUIElement* unit = environment->addStaticText(
                row.post, detail::makeRect(row.xAbsolute + 52, row.yAbsolute, row.xAbsolute + 67, row.yAbsolute + 20), false, false, this, -1,
                false);
            unit->setSubElement(true);
        }
        SBatteryItem item;
        item.edit = environment->addEditBox(row.init, detail::makeRect(right, row.yAbsolute, right + 35, row.yAbsolute + 20), true, this, -1);  // K 0xac
        item.edit->setSubElement(true);
        ++item.edit->referenceCounter;
        item.scrollBar = environment->addScrollBar(
            true, detail::makeRect(row.xAbsolute + 70, row.yAbsolute + 4, row.xAbsolute + 130, row.yAbsolute + 16), this, -1);  // K 0x88
        ++item.scrollBar->referenceCounter;
        item.scrollBar->setSubElement(true);
        item.scrollBar->setMax(row.rangeUp - row.rangeDown);  // K 0x80
        item.scrollBar->setSmallStep(1);                       // K 0x88
        batteryItems.push_back(item);
    }
    bringToFront(cancelButton);  // K 0x64
    bringToFront(okButton);
}

// 0x6a9c04 _ZN6glitch3gui21CGUIColorSelectDialogD1Ev (0x6a9d74 and 0x6a9d90 are the other forms)
CGUIColorSelectDialog::~CGUIColorSelectDialog() {
    if (closeButton != nullptr) {
        closeButton->drop();
    }
    if (okButton != nullptr) {
        okButton->drop();
    }
    if (cancelButton != nullptr) {
        cancelButton->drop();
    }
    for (SBatteryItem& item : batteryItems) {
        item.edit->drop();
        item.scrollBar->drop();
    }
    if (colorRing != nullptr) {
        colorRing->drop();
    }
}

// 0x6a86b4 _ZN6glitch3gui21CGUIColorSelectDialog17sendSelectedEventEv
void CGUIColorSelectDialog::sendSelectedEvent() {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = this;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = EGET_FILE_SELECTED;
    if (parent != nullptr) {
        parent->onEvent(event);
    }
}

// 0x6a86f4 _ZN6glitch3gui21CGUIColorSelectDialog15sendCancelEventEv
void CGUIColorSelectDialog::sendCancelEvent() {
    SEvent event;
    event.EventType = EET_GUI_EVENT;
    event.GUIEvent.Caller = this;
    event.GUIEvent.Element = nullptr;
    event.GUIEvent.EventType = EGET_FILE_CHOOSE_DIALOG_CANCELLED;
    if (parent != nullptr) {
        parent->onEvent(event);
    }
}

// 0x6a8754 _ZN6glitch3gui21CGUIColorSelectDialog13buildColorRingERKNS_4core11dimension2dIiEEiNS_5video6SColorE
// The pixels hold the bytes alpha, red, green, blue (format 12). Inside the ring (radius/2 .. radius) the colour is the full hue at 50 %
// luminance (hue = the angle seen from the centre, starting at the top), the alpha ramps up over the first 5 % of the ring width and down
// over the last 5 %; the rest is transparent gray. A box filter scales a supersampled ring down.
void CGUIColorSelectDialog::buildColorRing(const core::dimension2d<int>& dimension, int supersample, video::SColor) {
    core::dimension2d<int> size;
    size.Width = dimension.Width * supersample;
    size.Height = dimension.Height * supersample;
    boost::intrusive_ptr<video::CImage> image(new video::CImage(12, size), true);
    video::SColor background;
    background.color = 0x00808080u;
    image->fill(background);

    const int radius = size.Width / 2 - 4;
    const std::uint32_t pitch = image->m_pitch;
    std::uint8_t* row = image->m_data + 4 * pitch + 16;
    video::SColorHSL hsl;
    for (int y = -radius; y <= radius; ++y, row += pitch) {
        for (int x = -radius; x <= radius; ++x) {
            const int distanceSquared = y * y + x * x;
            if (distanceSquared - radius * radius >= 0) {
                continue;
            }
            std::uint32_t* pixel = reinterpret_cast<std::uint32_t*>(row) + (x + radius);
            const float distance = std::sqrt(static_cast<float>(distanceSquared));
            float angle = std::acos(static_cast<float>(-x) * (1.0f / distance));
            if (y > 0) {
                angle = 6.2831855f - angle;
            }
            hsl.hue = angle - 1.5707964f;
            const float ratio = distance / static_cast<float>(radius);
            if (ratio >= 0.5f) {
                hsl.saturation = 1.0f;
                hsl.luminance = 0.5f;
                video::SColor rgb;
                rgb.color = 0xFF000000u;
                hsl.toRGB(rgb);
                // The bytes of the colour (r, g, b, alpha 255) become the pixel bytes (alpha, r, g, b).
                std::uint32_t value = (rgb.color << 8) | (rgb.color >> 24);
                *pixel = value;
                if (ratio <= 0.55f) {
                    *pixel = (value & 0xFFFFFF00u) | static_cast<std::uint32_t>(static_cast<int>((ratio - 0.5f) * 5100.0f));
                }
            }
            if (ratio >= 0.95f) {
                *pixel = (*pixel & 0xFFFFFF00u) | static_cast<std::uint32_t>(255 - static_cast<int>((ratio - 0.95f) * 5100.0f));
            }
        }
    }
    if (supersample > 1) {
        boost::intrusive_ptr<video::CImage> scaled(new video::CImage(12, dimension), true);
        image->copyToScalingBoxFilter(scaled, 0);
        image = scaled;
    }
    video::IVideoDriver* driver = environment->getVideoDriver();  // K 0x20
    const bool mipmapsWereOn = (driver->m_options & 0x10u) != 0;
    driver->setOption(16, false);
    colorRingTexture = driver->m_textureManager->addTexture("#colorring", image, true, 0);
    driver->setOption(16, mipmapsWereOn);
}

// 0x6a98e4 _ZN6glitch3gui21CGUIColorSelectDialog7onEventERKNS_6SEventE
bool CGUIColorSelectDialog::onEvent(const SEvent& event) {
    auto forward = [&]() { return parent != nullptr ? parent->onEvent(event) : false; };
    if (!enabled) {
        return forward();
    }
    if (event.EventType == EET_GUI_EVENT) {
        const int type = event.GUIEvent.EventType;
        if (type == EGET_BUTTON_CLICKED) {
            const void* caller = event.GUIEvent.Caller;
            if (caller == closeButton || caller == cancelButton) {
                sendCancelEvent();
                remove();  // K 0x1c
                return true;
            }
            if (caller == okButton) {
                sendSelectedEvent();
                remove();
                return true;
            }
            return forward();
        }
        if (type == EGET_SCROLL_BAR_CHANGED) {
            for (std::size_t i = 0; i < batteryItems.size(); ++i) {
                if (event.GUIEvent.Caller == batteryItems[i].scrollBar) {
                    const int position = batteryItems[i].scrollBar->getPos();  // K 0x94
                    batteryItems[i].edit->setText(core::int2stringw(Template[i].rangeDown + position).c_str());  // K 0x44
                }
            }
            return true;
        }
        if (type == EGET_ELEMENT_FOCUS_LOST) {
            dragging = false;
        }
        return forward();
    }
    if (event.EventType != EET_MOUSE_INPUT_EVENT) {
        return forward();
    }
    switch (event.MouseInput.Event) {
        case EMIE_LMOUSE_LEFT_UP:
            dragging = false;
            environment->removeFocus(this);  // K 0x18
            return true;
        case EMIE_LMOUSE_PRESSED_DOWN:
            dragStart.X = event.MouseInput.X;
            dragStart.Y = event.MouseInput.Y;
            dragging = true;
            environment->setFocus(this);  // K 0x10
            return true;
        case EMIE_MOUSE_MOVED:
            if (!dragging) {
                return forward();
            }
            if (parent != nullptr) {
                const int x = event.MouseInput.X;
                const int y = event.MouseInput.Y;
                if (x <= parent->absoluteRect.UpperLeftCorner.X || y <= parent->absoluteRect.UpperLeftCorner.Y ||
                    x >= parent->absoluteRect.LowerRightCorner.X || y >= parent->absoluteRect.LowerRightCorner.Y) {
                    return true;
                }
            }
            move(detail::makePoint(event.MouseInput.X - dragStart.X, event.MouseInput.Y - dragStart.Y));  // K 0x28
            dragStart.X = event.MouseInput.X;
            dragStart.Y = event.MouseInput.Y;
            return true;
        default:
            return forward();
    }
}

// 0x6a9f6c _ZN6glitch3gui21CGUIColorSelectDialog4drawEv
void CGUIColorSelectDialog::draw() {
    if (!visible) {
        return;
    }
    IGUISkin* skin = environment->getSkin();  // K 0x38
    core::rect<int> titleRect = skin->draw3DWindowBackground(this, true, skin->getColor(EGDC_ACTIVE_BORDER), absoluteRect, &absoluteClippingRect);  // K 0x4c
    if (!text.empty()) {
        titleRect.UpperLeftCorner.X += 2;
        titleRect.LowerRightCorner.X -= 5 + skin->getSize(EGDS_WINDOW_BUTTON_WIDTH);
        IGUIFont* font = skin->getFont(EGDF_WINDOW);
        if (font != nullptr) {
            font->draw(text.c_str(), titleRect, skin->getColor(EGDC_ACTIVE_CAPTION), false, true, &absoluteClippingRect);  // K 0x0c
        }
    }
    IGUIElement::draw();
}

}  // namespace glitch::gui
