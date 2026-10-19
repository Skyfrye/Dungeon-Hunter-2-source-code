// Bodies of glitch::gui::IGUISkin and CGUISkin (canonical classes: gui/IGUISkin.hpp, gui/CGUISkin.hpp). This file replaces the skin bodies of
// gui_simple_accessors.cpp, recon/slice_02.cpp and recon/slice_31.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/gui/CGUISkin.hpp"

#include <cwchar>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/gui/CGUISpriteBank.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::gui {

namespace {

using Rect = core::rect<int>;

// A colour from its bytes (the word holds red in the low byte, alpha in the high byte).
video::SColor makeColor(unsigned alpha, unsigned red, unsigned green, unsigned blue) {
    video::SColor color;
    color.color = red | (green << 8) | (blue << 16) | (alpha << 24);
    return color;
}

Rect makeRect(int left, int top, int right, int bottom) {
    Rect rect;
    rect.UpperLeftCorner.X = left;
    rect.UpperLeftCorner.Y = top;
    rect.LowerRightCorner.X = right;
    rect.LowerRightCorner.Y = bottom;
    return rect;
}

const video::SColor kWhite = makeColor(255, 255, 255, 255);
const video::SColor kBlack = makeColor(255, 0, 0, 0);

}  // namespace

// 0x54a9f8 _ZNK6glitch3gui8IGUISkin7getTypeEv
EGUI_SKIN_TYPE IGUISkin::getType() const {
    return EGST_UNKNOWN;
}

// 0x54aa00 _ZN6glitch3gui8IGUISkinD1Ev (D0 0x54ad6c skipped)
IGUISkin::~IGUISkin() = default;

// 0x54d104 _ZN6glitch3gui8CGUISkinC1ENS0_14EGUI_SKIN_TYPEEPNS_5video12IVideoDriverE (C2 0x54d80c)
CGUISkin::CGUISkin(EGUI_SKIN_TYPE skinType, video::IVideoDriver* videoDriver) : driver(videoDriver), type(skinType) {
    if (skinType == EGST_WINDOWS_CLASSIC || skinType == EGST_WINDOWS_METALLIC) {
        colors[EGDC_3D_DARK_SHADOW] = makeColor(101, 50, 50, 50);
        colors[EGDC_3D_SHADOW] = makeColor(101, 130, 130, 130);
        colors[EGDC_3D_FACE] = makeColor(101, 210, 210, 210);
        colors[EGDC_3D_HIGH_LIGHT] = makeColor(101, 255, 255, 255);
        colors[EGDC_3D_LIGHT] = makeColor(101, 210, 210, 210);
        colors[EGDC_ACTIVE_BORDER] = makeColor(101, 16, 14, 115);
        colors[EGDC_ACTIVE_CAPTION] = makeColor(200, 255, 255, 255);
        colors[EGDC_APP_WORKSPACE] = makeColor(101, 100, 100, 100);
        colors[EGDC_BUTTON_TEXT] = makeColor(240, 10, 10, 10);
        colors[EGDC_GRAY_TEXT] = makeColor(240, 130, 130, 130);
        colors[EGDC_HIGH_LIGHT] = makeColor(101, 8, 36, 107);
        colors[EGDC_HIGH_LIGHT_TEXT] = makeColor(240, 255, 255, 255);
        colors[EGDC_INACTIVE_BORDER] = makeColor(101, 165, 165, 165);
        colors[EGDC_INACTIVE_CAPTION] = makeColor(101, 210, 210, 210);
        colors[EGDC_TOOLTIP] = makeColor(200, 0, 0, 0);
        colors[EGDC_TOOLTIP_BACKGROUND] = makeColor(200, 255, 255, 225);
        colors[EGDC_SCROLLBAR] = makeColor(101, 230, 230, 230);
        colors[EGDC_WINDOW] = makeColor(101, 255, 255, 255);
        colors[EGDC_WINDOW_SYMBOL] = makeColor(200, 10, 10, 10);
        colors[EGDC_ICON] = makeColor(200, 255, 255, 255);
        colors[EGDC_ICON_HIGH_LIGHT] = makeColor(200, 8, 36, 107);

        sizes[EGDS_SCROLLBAR_SIZE] = 14;
        sizes[EGDS_MENU_HEIGHT] = 30;
        sizes[EGDS_WINDOW_BUTTON_WIDTH] = 15;
        sizes[EGDS_CHECK_BOX_WIDTH] = 18;
        sizes[EGDS_MESSAGE_BOX_WIDTH] = 500;
        sizes[EGDS_MESSAGE_BOX_HEIGHT] = 200;
        sizes[EGDS_BUTTON_WIDTH] = 80;
        sizes[EGDS_BUTTON_HEIGHT] = 30;
        sizes[EGDS_TEXT_DISTANCE_X] = 2;
        sizes[EGDS_TEXT_DISTANCE_Y] = 0;
    } else {
        colors[EGDC_3D_DARK_SHADOW] = makeColor(0x60, 0x76, 0x79, 0x82);
        colors[EGDC_3D_SHADOW] = makeColor(0x50, 0xe4, 0xe8, 0xf1);
        colors[EGDC_3D_FACE] = makeColor(0xc0, 0xcb, 0xd2, 0xd9);
        colors[EGDC_3D_HIGH_LIGHT] = makeColor(0x40, 0xc7, 0xcc, 0xdc);
        colors[EGDC_3D_LIGHT] = makeColor(0x80, 0x2e, 0x31, 0x3a);
        colors[EGDC_ACTIVE_BORDER] = makeColor(0x80, 0x40, 0x40, 0x40);
        colors[EGDC_ACTIVE_CAPTION] = makeColor(0xf0, 0xd0, 0xd0, 0xd0);
        colors[EGDC_APP_WORKSPACE] = makeColor(0xc0, 0x64, 0x64, 0x64);
        colors[EGDC_BUTTON_TEXT] = makeColor(0xd0, 0x16, 0x16, 0x16);
        colors[EGDC_GRAY_TEXT] = makeColor(0x3c, 0x14, 0x14, 0x14);
        colors[EGDC_HIGH_LIGHT] = makeColor(0x6c, 0x60, 0x60, 0x60);
        colors[EGDC_HIGH_LIGHT_TEXT] = makeColor(0xd0, 0xe0, 0xe0, 0xe0);
        colors[EGDC_INACTIVE_BORDER] = makeColor(0xf0, 0xa5, 0xa5, 0xa5);
        colors[EGDC_INACTIVE_CAPTION] = makeColor(0xf0, 0xd2, 0xd2, 0xd2);
        colors[EGDC_TOOLTIP] = makeColor(0xf0, 0x0f, 0x20, 0x33);
        colors[EGDC_TOOLTIP_BACKGROUND] = makeColor(0xc0, 0xcb, 0xd2, 0xd9);
        colors[EGDC_SCROLLBAR] = makeColor(0xf0, 0xe0, 0xe0, 0xe0);
        colors[EGDC_WINDOW] = makeColor(0xf0, 0xf0, 0xf0, 0xf0);
        colors[EGDC_WINDOW_SYMBOL] = makeColor(0xd0, 0x16, 0x16, 0x16);
        colors[EGDC_ICON] = makeColor(0xd0, 0x16, 0x16, 0x16);
        colors[EGDC_ICON_HIGH_LIGHT] = makeColor(0xd0, 0x60, 0x60, 0x60);

        sizes[EGDS_SCROLLBAR_SIZE] = 14;
        sizes[EGDS_MENU_HEIGHT] = 48;
        sizes[EGDS_WINDOW_BUTTON_WIDTH] = 15;
        sizes[EGDS_CHECK_BOX_WIDTH] = 18;
        sizes[EGDS_MESSAGE_BOX_WIDTH] = 500;
        sizes[EGDS_MESSAGE_BOX_HEIGHT] = 200;
        sizes[EGDS_BUTTON_WIDTH] = 80;
        sizes[EGDS_BUTTON_HEIGHT] = 30;
        sizes[EGDS_TEXT_DISTANCE_X] = 3;
        sizes[EGDS_TEXT_DISTANCE_Y] = 2;
    }

    texts[EGDT_MSG_BOX_OK] = L"O";
    texts[EGDT_MSG_BOX_CANCEL] = L"C";
    texts[EGDT_MSG_BOX_YES] = L"Y";
    texts[EGDT_MSG_BOX_NO] = L"N";
    texts[EGDT_WINDOW_CLOSE] = L"C";
    texts[EGDT_WINDOW_RESTORE] = L"R";
    texts[EGDT_WINDOW_MINIMIZE] = L"M";
    texts[EGDT_WINDOW_MAXIMIZE] = L"M";

    // The icon indices (the sprites of the default sprite bank): they are not the enumeration order.
    icons[EGDI_WINDOW_MAXIMIZE] = 225;
    icons[EGDI_WINDOW_RESTORE] = 226;
    icons[EGDI_WINDOW_CLOSE] = 227;
    icons[EGDI_WINDOW_MINIMIZE] = 228;
    icons[EGDI_WINDOW_RESIZE] = 242;
    icons[EGDI_CURSOR_UP] = 229;
    icons[EGDI_CURSOR_DOWN] = 230;
    icons[EGDI_CURSOR_LEFT] = 231;
    icons[EGDI_CURSOR_RIGHT] = 232;
    icons[EGDI_MENU_MORE] = 232;
    icons[EGDI_CHECK_BOX_CHECKED] = 233;
    icons[EGDI_DROP_DOWN] = 234;
    icons[EGDI_SMALL_CURSOR_UP] = 235;
    icons[EGDI_SMALL_CURSOR_DOWN] = 236;
    icons[EGDI_RADIO_BUTTON_CHECKED] = 237;
    icons[EGDI_MORE_LEFT] = 238;
    icons[EGDI_MORE_RIGHT] = 239;
    icons[EGDI_MORE_UP] = 240;
    icons[EGDI_MORE_DOWN] = 241;
    icons[EGDI_EXPAND] = 243;
    icons[EGDI_COLLAPSE] = 244;
    icons[EGDI_FILE] = 245;
    icons[EGDI_DIRECTORY] = 246;

    useGradient = (skinType == EGST_WINDOWS_METALLIC || skinType == EGST_BURNING_SKIN);
}

// 0x54af28 _ZN6glitch3gui8CGUISkinD1Ev (0x54afc4 and 0x54afe0 are the other forms)
CGUISkin::~CGUISkin() {
    for (IGUIFont* font : fonts) {
        if (font != nullptr) {
            font->drop();
        }
    }
    if (spriteBank != nullptr) {
        spriteBank->drop();
    }
}

// 0x54aa24 _ZNK6glitch3gui8CGUISkin8getColorENS0_17EGUI_DEFAULT_COLOREE
video::SColor CGUISkin::getColor(EGUI_DEFAULT_COLOR color) const {
    // The original compares unsigned (0x54aa24: a2 <= 0x14), so a negative index is out of range.
    if (static_cast<std::uint32_t>(color) <= static_cast<std::uint32_t>(EGDC_ICON_HIGH_LIGHT)) {
        return colors[color];
    }
    return video::SColor{};
}

// 0x54aa64 _ZN6glitch3gui8CGUISkin8setColorENS0_17EGUI_DEFAULT_COLOREENS_5video6SColorE
void CGUISkin::setColor(EGUI_DEFAULT_COLOR which, video::SColor newColor) {
    if (static_cast<std::uint32_t>(which) <= static_cast<std::uint32_t>(EGDC_ICON_HIGH_LIGHT)) {  // unsigned, as 0x54aa64
        colors[which] = newColor;
    }
}

// 0x54aaa0 _ZNK6glitch3gui8CGUISkin7getSizeENS0_16EGUI_DEFAULT_SIZEE
int CGUISkin::getSize(EGUI_DEFAULT_SIZE size) const {
    if (static_cast<std::uint32_t>(size) > static_cast<std::uint32_t>(EGDS_TEXT_DISTANCE_Y)) {  // unsigned, as 0x54aaa0
        return 0;
    }
    return sizes[size];
}

// 0x54aab4 _ZN6glitch3gui8CGUISkin7setSizeENS0_16EGUI_DEFAULT_SIZEEi
void CGUISkin::setSize(EGUI_DEFAULT_SIZE which, int size) {
    if (static_cast<std::uint32_t>(which) <= static_cast<std::uint32_t>(EGDS_TEXT_DISTANCE_Y)) {  // unsigned, as 0x54aab4
        sizes[which] = size;
    }
}

// 0x54aac4 _ZNK6glitch3gui8CGUISkin7getFontENS0_16EGUI_DEFAULT_FONTE
// The original accepts the indices 0 .. 9 here (the table holds five fonts); the port ignores the five that would read past the table.
IGUIFont* CGUISkin::getFont(EGUI_DEFAULT_FONT which) const {
    if (which < EGDF_COUNT && fonts[which] != nullptr) {
        return fonts[which];
    }
    return fonts[EGDF_DEFAULT];
}

// 0x54aaf0 _ZN6glitch3gui8CGUISkin7setFontEPNS0_8IGUIFontENS0_16EGUI_DEFAULT_FONTE
// The previous font is dropped, then the new one stored with a use added (the port adds it first, which is the same unless both are the one
// object with a single use).
void CGUISkin::setFont(IGUIFont* font, EGUI_DEFAULT_FONT which) {
    if (which >= EGDF_COUNT) {
        return;
    }
    if (font != nullptr) {
        ++font->referenceCounter;
    }
    if (fonts[which] != nullptr) {
        fonts[which]->drop();
    }
    fonts[which] = font;
}

// 0x54ab38 _ZNK6glitch3gui8CGUISkin13getSpriteBankEv
IGUISpriteBank* CGUISkin::getSpriteBank() const {
    return spriteBank;
}

// 0x54ab40 _ZN6glitch3gui8CGUISkin13setSpriteBankEPNS0_14IGUISpriteBankE
void CGUISkin::setSpriteBank(IGUISpriteBank* bank) {
    if (bank != nullptr) {
        ++bank->referenceCounter;
    }
    if (spriteBank != nullptr) {
        spriteBank->drop();
    }
    spriteBank = bank;
}

// 0x54ab74 _ZNK6glitch3gui8CGUISkin7getIconENS0_17EGUI_DEFAULT_ICONE
std::uint32_t CGUISkin::getIcon(EGUI_DEFAULT_ICON icon) const {
    if (static_cast<std::uint32_t>(icon) > static_cast<std::uint32_t>(EGDI_DIRECTORY)) {  // unsigned, as 0x54ab74
        return 0;
    }
    return icons[icon];
}

// 0x54ab88 _ZN6glitch3gui8CGUISkin7setIconENS0_17EGUI_DEFAULT_ICONEj
void CGUISkin::setIcon(EGUI_DEFAULT_ICON icon, std::uint32_t index) {
    if (static_cast<std::uint32_t>(icon) <= static_cast<std::uint32_t>(EGDI_DIRECTORY)) {  // unsigned, as 0x54ab88
        icons[icon] = index;
    }
}

// 0x54ab98 _ZNK6glitch3gui8CGUISkin14getDefaultTextENS0_16EGUI_DEFAULT_TEXTE
const wchar_t* CGUISkin::getDefaultText(EGUI_DEFAULT_TEXT text) const {
    if (text >= EGDT_COUNT) {
        return texts[0].c_str();
    }
    return texts[text].c_str();
}

// 0x54d0bc _ZN6glitch3gui8CGUISkin14setDefaultTextENS0_16EGUI_DEFAULT_TEXTEPKw
void CGUISkin::setDefaultText(EGUI_DEFAULT_TEXT which, const wchar_t* newText) {
    if (which < EGDT_COUNT) {
        texts[which].assign(newText, newText + std::wcslen(newText));
    }
}

// 0x54ac2c _ZNK6glitch3gui8CGUISkin7getTypeEv
EGUI_SKIN_TYPE CGUISkin::getType() const {
    return type;
}

// 0x54abb0 _ZN6glitch3gui8CGUISkin8drawIconEPNS0_11IGUIElementENS0_17EGUI_DEFAULT_ICONENS_4core10position2dIiEEjjbPKNS5_4rectIiEE
// The icon sprite is drawn centred on the position, in opaque black.
void CGUISkin::drawIcon(IGUIElement*, EGUI_DEFAULT_ICON icon, core::position2d<int> position, std::uint32_t startTime,
                        std::uint32_t currentTime, bool loop, const core::rect<int>* clip) {
    if (spriteBank != nullptr) {
        spriteBank->draw2DSprite(icons[icon], position, clip, kBlack, startTime, currentTime, loop, true);  // K 0x24
    }
}

// 0x54b078 _ZN6glitch3gui8CGUISkin15draw2DRectangleEPNS0_11IGUIElementERKNS_5video6SColorERKNS_4core4rectIiEEPS9_
void CGUISkin::draw2DRectangle(IGUIElement*, const video::SColor& color, const core::rect<int>& pos, const core::rect<int>* clip) {
    video::C2DDriver::draw2DRectangle(driver, color, pos, clip);
}

// 0x54b0ac _ZN6glitch3gui8CGUISkin14draw3DTabButtonEPNS0_11IGUIElementEbRKNS_4core4rectIiEEPS6_NS0_14EGUI_ALIGNMENTE
// A tab drawn on the upper edge (UPPERLEFT) has its frame on top, left and right; any other alignment draws the frame mirrored on the lower
// edge. The two highlight strips use EGDC_3D_HIGH_LIGHT, the face EGDC_3D_FACE and the right edge EGDC_3D_SHADOW / EGDC_3D_DARK_SHADOW.
void CGUISkin::draw3DTabButton(IGUIElement*, bool, const core::rect<int>& frameRect, const core::rect<int>* clip, EGUI_ALIGNMENT alignment) {
    if (driver == nullptr) {
        return;
    }
    const int left = frameRect.UpperLeftCorner.X;
    const int top = frameRect.UpperLeftCorner.Y;
    const int right = frameRect.LowerRightCorner.X;
    const int bottom = frameRect.LowerRightCorner.Y;
    auto fill = [&](EGUI_DEFAULT_COLOR which, const Rect& rect) { video::C2DDriver::draw2DRectangle(driver, getColor(which), rect, clip); };
    if (alignment != EGUIA_UPPERLEFT) {
        fill(EGDC_3D_HIGH_LIGHT, makeRect(left + 1, bottom - 1, right - 2, bottom));
        fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, left + 1, bottom - 1));
        fill(EGDC_3D_FACE, makeRect(left + 1, top - 1, right - 2, bottom - 1));
        fill(EGDC_3D_SHADOW, makeRect(right - 2, top - 1, right - 1, bottom - 1));
        fill(EGDC_3D_DARK_SHADOW, makeRect(right - 1, top - 1, right, bottom - 2));
    } else {
        fill(EGDC_3D_HIGH_LIGHT, makeRect(left + 1, top, right - 2, top + 1));
        fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top + 1, left + 1, bottom));
        fill(EGDC_3D_FACE, makeRect(left + 1, top + 1, right - 2, bottom));
        fill(EGDC_3D_SHADOW, makeRect(right - 2, top + 1, right - 1, bottom));
        fill(EGDC_3D_DARK_SHADOW, makeRect(right - 1, top + 2, right, bottom));
    }
}

// 0x54b53c _ZN6glitch3gui8CGUISkin15draw3DSunkenPaneEPNS0_11IGUIElementENS_5video6SColorEbbRKNS_4core4rectIiEEPS9_
// Flat: the background, then EGDC_3D_SHADOW on the top and left edges and EGDC_3D_HIGH_LIGHT on the right and bottom ones. Deep: the
// frame is built from four nested rectangles (EGDC_3D_SHADOW, EGDC_3D_LIGHT, EGDC_3D_DARK_SHADOW and the background colour); the original
// fills the deep pane first with EGDC_3D_HIGH_LIGHT, not with the background colour.
void CGUISkin::draw3DSunkenPane(IGUIElement*, video::SColor bgcolor, bool flat, bool fillBackGround, const core::rect<int>& rect,
                                const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    Rect tr = rect;
    auto fill = [&](video::SColor color, const Rect& area) { video::C2DDriver::draw2DRectangle(driver, color, area, clip); };
    if (flat) {
        if (fillBackGround) {
            fill(bgcolor, tr);
        }
        tr.LowerRightCorner.Y = tr.UpperLeftCorner.Y + 1;
        fill(getColor(EGDC_3D_SHADOW), tr);
        tr.LowerRightCorner.Y = rect.LowerRightCorner.Y;
        tr.LowerRightCorner.X = tr.UpperLeftCorner.X + 1;
        fill(getColor(EGDC_3D_SHADOW), tr);
        tr = makeRect(rect.LowerRightCorner.X - 1, rect.UpperLeftCorner.Y, rect.LowerRightCorner.X, rect.LowerRightCorner.Y);
        fill(getColor(EGDC_3D_HIGH_LIGHT), tr);
        tr = makeRect(rect.UpperLeftCorner.X, rect.LowerRightCorner.Y - 1, rect.LowerRightCorner.X, rect.LowerRightCorner.Y);
        fill(getColor(EGDC_3D_HIGH_LIGHT), tr);
    } else {
        if (fillBackGround) {
            fill(getColor(EGDC_3D_HIGH_LIGHT), tr);
        }
        tr.LowerRightCorner.X -= 1;
        tr.LowerRightCorner.Y -= 1;
        fill(getColor(EGDC_3D_SHADOW), tr);
        tr.UpperLeftCorner.X += 1;
        tr.UpperLeftCorner.Y += 1;
        fill(getColor(EGDC_3D_LIGHT), tr);
        tr.LowerRightCorner.X -= 1;
        tr.LowerRightCorner.Y -= 1;
        fill(getColor(EGDC_3D_DARK_SHADOW), tr);
        tr.UpperLeftCorner.X += 1;
        tr.UpperLeftCorner.Y += 1;
        fill(bgcolor, tr);
    }
}

// 0x54b910 _ZN6glitch3gui8CGUISkin14draw3DTabBodyEPNS0_11IGUIElementEbbRKNS_4core4rectIiEEPS6_iNS0_14EGUI_ALIGNMENTE
// The body under (UPPERLEFT) or over (any other alignment) the tab row: a border on three sides and a face (a face-to-shadow gradient for the
// gradient skins). A negative tab height means the button height of the skin.
void CGUISkin::draw3DTabBody(IGUIElement*, bool border, bool background, const core::rect<int>& rect, const core::rect<int>* clip,
                             int tabHeight, EGUI_ALIGNMENT alignment) {
    if (driver == nullptr) {
        return;
    }
    const int left = rect.UpperLeftCorner.X;
    const int top = rect.UpperLeftCorner.Y;
    const int right = rect.LowerRightCorner.X;
    const int bottom = rect.LowerRightCorner.Y;
    if (tabHeight == -1) {
        tabHeight = getSize(EGDS_BUTTON_HEIGHT);
    }
    auto fill = [&](EGUI_DEFAULT_COLOR which, const Rect& area) { video::C2DDriver::draw2DRectangle(driver, getColor(which), area, clip); };
    if (border) {
        if (alignment != EGUIA_UPPERLEFT) {
            fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, left + 1, bottom - 2 - tabHeight));
            fill(EGDC_3D_SHADOW, makeRect(right - 1, top, right, bottom - 2 - tabHeight));
            fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, right, top + 1));
        } else {
            fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top + tabHeight + 2, left + 1, bottom));
            fill(EGDC_3D_SHADOW, makeRect(right - 1, top + tabHeight + 2, right, bottom));
            fill(EGDC_3D_SHADOW, makeRect(left, bottom - 1, right, bottom));
        }
    }
    if (background) {
        Rect tr;
        if (alignment != EGUIA_UPPERLEFT) {
            tr = makeRect(left + 1, top - 1, right - 1, bottom - 2 - tabHeight);
        } else {
            tr = makeRect(left + 1, top + tabHeight + 2, right - 1, bottom - 1);
        }
        if (useGradient) {
            const video::SColor face = getColor(EGDC_3D_FACE);
            const video::SColor shadow = getColor(EGDC_3D_SHADOW);
            video::C2DDriver::draw2DRectangle(driver, tr, face, face, shadow, shadow, clip);
        } else {
            video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), tr, clip);
        }
    }
}

// 0x54bd84 _ZN6glitch3gui8CGUISkin13draw3DToolBarEPNS0_11IGUIElementERKNS_4core4rectIiEEPS6_
// An EGDC_3D_SHADOW line under the bar and the face above it: plain, a face-to-shadow gradient, or (burning skin) the same gradient with
// the alpha forced to 0xF0 .. 0xFF and one pixel more below.
void CGUISkin::draw3DToolBar(IGUIElement*, const core::rect<int>& rect, const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    video::C2DDriver::draw2DRectangle(
        driver, getColor(EGDC_3D_SHADOW),
        makeRect(rect.UpperLeftCorner.X, rect.LowerRightCorner.Y - 1, rect.LowerRightCorner.X, rect.LowerRightCorner.Y), clip);
    Rect tr = makeRect(rect.UpperLeftCorner.X, rect.UpperLeftCorner.Y, rect.LowerRightCorner.X, rect.LowerRightCorner.Y - 1);
    if (!useGradient) {
        video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), tr, clip);
        return;
    }
    if (type == EGST_BURNING_SKIN) {
        video::SColor top = getColor(EGDC_3D_FACE);
        video::SColor bottom = getColor(EGDC_3D_SHADOW);
        top.color |= 0xF0000000u;
        bottom.color |= 0xF0000000u;
        tr.LowerRightCorner.Y += 1;
        video::C2DDriver::draw2DRectangle(driver, tr, top, bottom, top, bottom, clip);
    } else {
        const video::SColor face = getColor(EGDC_3D_FACE);
        const video::SColor shadow = getColor(EGDC_3D_SHADOW);
        video::C2DDriver::draw2DRectangle(driver, tr, face, face, shadow, shadow, clip);
    }
}

// 0x54bff4 _ZN6glitch3gui8CGUISkin13draw3DMenuPaneEPNS0_11IGUIElementERKNS_4core4rectIiEEPS6_
// The burning skin draws the menu pane as a standard button pane three pixels higher; the other skins draw a framed pane.
void CGUISkin::draw3DMenuPane(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    const int left = rect.UpperLeftCorner.X;
    const int top = rect.UpperLeftCorner.Y;
    const int right = rect.LowerRightCorner.X;
    const int bottom = rect.LowerRightCorner.Y;
    if (type == EGST_BURNING_SKIN) {
        draw3DButtonPaneStandard(element, makeRect(left, top - 3, right, bottom), clip);  // K 0x40
        return;
    }
    auto fill = [&](EGUI_DEFAULT_COLOR which, const Rect& area) { video::C2DDriver::draw2DRectangle(driver, getColor(which), area, clip); };
    fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, right, top + 1));
    fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, left + 1, bottom));
    fill(EGDC_3D_DARK_SHADOW, makeRect(right - 1, top, right, bottom));
    fill(EGDC_3D_SHADOW, makeRect(right - 2, top + 1, right - 1, bottom - 1));
    fill(EGDC_3D_DARK_SHADOW, makeRect(left, bottom - 1, right, bottom));
    fill(EGDC_3D_SHADOW, makeRect(left + 1, bottom - 2, right - 1, bottom - 1));
    const Rect face = makeRect(left + 1, top + 1, right - 2, bottom - 2);
    if (useGradient) {
        const video::SColor faceColor = getColor(EGDC_3D_FACE);
        const video::SColor shadow = getColor(EGDC_3D_SHADOW);
        video::C2DDriver::draw2DRectangle(driver, face, faceColor, faceColor, shadow, shadow, clip);
    } else {
        video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), face, clip);
    }
}

// 0x54c40c _ZN6glitch3gui8CGUISkin21draw3DWindowBackgroundEPNS0_11IGUIElementEbNS_5video6SColorERKNS_4core4rectIiEEPS9_
// The frame (EGDC_3D_HIGH_LIGHT on the top and left, EGDC_3D_DARK_SHADOW and EGDC_3D_SHADOW on the right and bottom), the face (EGDC_3D_FACE,
// a gradient for the gradient skins, a window-colour gradient for the burning skin), then the title bar of height
// EGDS_WINDOW_BUTTON_WIDTH + 2 inside it, filled with the title bar colour (a gradient to a brighter colour for the burning skin, to a darker
// one for the others). Returns the title bar rectangle; without a driver it returns the rectangle it was given.
core::rect<int> CGUISkin::draw3DWindowBackground(IGUIElement*, bool drawTitleBar, video::SColor titleBarColor, const core::rect<int>& rect,
                                                 const core::rect<int>* clip) {
    if (driver == nullptr) {
        return rect;
    }
    const int left = rect.UpperLeftCorner.X;
    const int top = rect.UpperLeftCorner.Y;
    const int right = rect.LowerRightCorner.X;
    const int bottom = rect.LowerRightCorner.Y;
    auto fill = [&](EGUI_DEFAULT_COLOR which, const Rect& area) { video::C2DDriver::draw2DRectangle(driver, getColor(which), area, clip); };
    fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, right, top + 1));
    fill(EGDC_3D_HIGH_LIGHT, makeRect(left, top, left + 1, bottom));
    fill(EGDC_3D_DARK_SHADOW, makeRect(right - 1, top, right, bottom));
    fill(EGDC_3D_SHADOW, makeRect(right - 2, top + 1, right - 1, bottom - 1));
    fill(EGDC_3D_DARK_SHADOW, makeRect(left, bottom - 1, right, bottom));
    fill(EGDC_3D_SHADOW, makeRect(left + 1, bottom - 2, right - 1, bottom - 1));

    const Rect face = makeRect(left + 1, top + 1, right - 2, bottom - 2);
    if (useGradient) {
        if (type == EGST_BURNING_SKIN) {
            const video::SColor upper = getColor(EGDC_WINDOW).getInterpolated(kWhite, 0.9f);
            const video::SColor lower = getColor(EGDC_WINDOW).getInterpolated(kWhite, 0.8f);
            video::C2DDriver::draw2DRectangle(driver, face, upper, upper, lower, lower, clip);
        } else {
            const video::SColor shadow = getColor(EGDC_3D_SHADOW);
            const video::SColor faceColor = getColor(EGDC_3D_FACE);
            video::C2DDriver::draw2DRectangle(driver, face, faceColor, faceColor, faceColor, shadow, clip);
        }
    } else {
        video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), face, clip);
    }

    const Rect titleBar = makeRect(left + 2, top + 2, right - 2, top + 2 + 2 + getSize(EGDS_WINDOW_BUTTON_WIDTH));
    if (drawTitleBar) {
        if (type == EGST_BURNING_SKIN) {
            const video::SColor lighter = titleBarColor.getInterpolated(kWhite, 0.8f);
            video::C2DDriver::draw2DRectangle(driver, titleBar, titleBarColor, titleBarColor, lighter, lighter, clip);
        } else {
            const video::SColor darker = titleBarColor.getInterpolated(kBlack, 0.2f);
            video::C2DDriver::draw2DRectangle(driver, titleBar, titleBarColor, darker, titleBarColor, darker, clip);
        }
    }
    return titleBar;
}

// 0x54caa8 _ZN6glitch3gui8CGUISkin22draw3DButtonPanePressedEPNS0_11IGUIElementERKNS_4core4rectIiEEPS6_
// EGDC_3D_HIGH_LIGHT over the whole rectangle, EGDC_3D_DARK_SHADOW and EGDC_3D_SHADOW on nested rectangles shrunk at the lower right, then the
// face (a face-to-dark-shadow gradient, the shadow blended in by 0.4, for the gradient skins).
void CGUISkin::draw3DButtonPanePressed(IGUIElement*, const core::rect<int>& rect, const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    Rect tr = rect;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_HIGH_LIGHT), tr, clip);
    tr.LowerRightCorner.X -= 1;
    tr.LowerRightCorner.Y -= 1;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_DARK_SHADOW), tr, clip);
    tr.UpperLeftCorner.X += 1;
    tr.UpperLeftCorner.Y += 1;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_SHADOW), tr, clip);
    tr.UpperLeftCorner.X += 1;
    tr.UpperLeftCorner.Y += 1;
    if (useGradient) {
        const video::SColor face = getColor(EGDC_3D_FACE);
        const video::SColor blended = face.getInterpolated(getColor(EGDC_3D_DARK_SHADOW), 0.4f);
        video::C2DDriver::draw2DRectangle(driver, tr, face, face, blended, blended, clip);
    } else {
        video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), tr, clip);
    }
}

// 0x54cd44 _ZN6glitch3gui8CGUISkin22draw3DButtonPaneStandardEPNS0_11IGUIElementERKNS_4core4rectIiEEPS6_
// The burning skin draws a deep sunken pane one pixel larger, filled with the window colour blended 0.9 towards white. The other skins draw
// EGDC_3D_DARK_SHADOW, EGDC_3D_HIGH_LIGHT and EGDC_3D_SHADOW on nested rectangles and then the face.
void CGUISkin::draw3DButtonPaneStandard(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) {
    if (driver == nullptr) {
        return;
    }
    if (type == EGST_BURNING_SKIN) {
        const Rect larger = makeRect(rect.UpperLeftCorner.X - 1, rect.UpperLeftCorner.Y - 1, rect.LowerRightCorner.X + 1,
                                     rect.LowerRightCorner.Y + 1);
        draw3DSunkenPane(element, getColor(EGDC_WINDOW).getInterpolated(kWhite, 0.9f), false, true, larger, clip);  // K 0x48
        return;
    }
    Rect tr = rect;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_DARK_SHADOW), tr, clip);
    tr.LowerRightCorner.X -= 1;
    tr.LowerRightCorner.Y -= 1;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_HIGH_LIGHT), tr, clip);
    tr.UpperLeftCorner.X += 1;
    tr.UpperLeftCorner.Y += 1;
    video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_SHADOW), tr, clip);
    tr.LowerRightCorner.X -= 1;
    tr.LowerRightCorner.Y -= 1;
    if (useGradient) {
        const video::SColor face = getColor(EGDC_3D_FACE);
        const video::SColor blended = face.getInterpolated(getColor(EGDC_3D_DARK_SHADOW), 0.4f);
        video::C2DDriver::draw2DRectangle(driver, tr, face, face, blended, blended, clip);
    } else {
        video::C2DDriver::draw2DRectangle(driver, getColor(EGDC_3D_FACE), tr, clip);
    }
}

// 0x54ac34 _ZNK6glitch3gui8CGUISkin19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The 21 colours (K 0x118), 10 sizes (K 0x4c), 8 texts (K 0x94) and 23 icons (K 0x4c), each under its GUISkin*Names name.
void CGUISkin::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    for (int i = 0; i != EGDC_COUNT; ++i) {
        attributes->addColor(GUISkinColorNames[i], colors[i], false);
    }
    for (int i = 0; i != EGDS_COUNT; ++i) {
        attributes->addInt(GUISkinSizeNames[i], sizes[i], false);
    }
    for (int i = 0; i != EGDT_COUNT; ++i) {
        attributes->addString(GUISkinTextNames[i], texts[i].c_str(), false);
    }
    for (int i = 0; i != EGDI_COUNT; ++i) {
        attributes->addInt(GUISkinIconNames[i], static_cast<int>(icons[i]), false);
    }
}

// 0x54adc0 _ZN6glitch3gui8CGUISkin21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CGUISkin::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) {
    for (int i = 0; i != EGDC_COUNT; ++i) {
        colors[i] = attributes->getColor(GUISkinColorNames[i]);  // K 0x124
    }
    for (int i = 0; i != EGDS_COUNT; ++i) {
        sizes[i] = attributes->getInt(GUISkinSizeNames[i]);  // K 0x58
    }
    for (int i = 0; i != EGDT_COUNT; ++i) {
        texts[i] = attributes->getStringW(GUISkinTextNames[i]);  // K 0x9c
    }
    for (int i = 0; i != EGDI_COUNT; ++i) {
        icons[i] = static_cast<std::uint32_t>(attributes->getInt(GUISkinIconNames[i]));
    }
}

}  // namespace glitch::gui
