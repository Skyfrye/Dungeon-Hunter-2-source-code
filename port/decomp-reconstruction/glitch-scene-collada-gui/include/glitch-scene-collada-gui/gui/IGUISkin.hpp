// glitch::gui::IGUISkin: the skin interface (colours, sizes, texts, fonts, icons and the drawing of the 3D frames) and its enumerations.
// Canonical header of the scene-owner wave (gui family). It replaces the IGUISkin stand-in of gui_simple_accessors.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::gui::CGUISkin, 164 bytes: the table has the usual three
// header words, so K = listing offset - 0x0c): io::IAttributeExchangingObject is the primary base (serializeAttributes K 0x00,
// deserializeAttributes K 0x04, destructors K 0x08 / 0x0c) and glitch::IReferenceCounted is a virtual base (onDelete is the last slot). The
// enumerator names are Irrlicht's; the name tables of gui_types.hpp (GUISkinColorNames, GUISkinSizeNames, GUISkinTextNames, GUISkinIconNames)
// give the order and the counts.
//   Slots: K 0x10 getColor, 0x14 setColor, 0x18 getSize, 0x1c getDefaultText, 0x20 setDefaultText, 0x24 setSize, 0x28 getFont, 0x2c setFont,
//   0x30 getSpriteBank, 0x34 setSpriteBank, 0x38 getIcon, 0x3c setIcon, 0x40 draw3DButtonPaneStandard, 0x44 draw3DButtonPanePressed, 0x48
//   draw3DSunkenPane, 0x4c draw3DWindowBackground, 0x50 draw3DMenuPane, 0x54 draw3DToolBar, 0x58 draw3DTabButton, 0x5c draw3DTabBody, 0x60 drawIcon,
//   0x64 draw2DRectangle, 0x68 getType.
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/gui/gui_types.hpp"
#include "glitch-shared/glitch_core.hpp"

namespace glitch::gui {

class IGUIElement;
class IGUIFont;
class IGUISpriteBank;

enum EGUI_SKIN_TYPE : std::uint32_t {
    EGST_WINDOWS_CLASSIC = 0,
    EGST_WINDOWS_METALLIC,
    EGST_BURNING_SKIN,
    EGST_UNKNOWN,
    EGST_COUNT,
};

enum EGUI_DEFAULT_COLOR : std::uint32_t {
    EGDC_3D_DARK_SHADOW = 0,
    EGDC_3D_SHADOW,
    EGDC_3D_FACE,
    EGDC_3D_HIGH_LIGHT,
    EGDC_3D_LIGHT,
    EGDC_ACTIVE_BORDER,
    EGDC_ACTIVE_CAPTION,
    EGDC_APP_WORKSPACE,
    EGDC_BUTTON_TEXT,
    EGDC_GRAY_TEXT,
    EGDC_HIGH_LIGHT,
    EGDC_HIGH_LIGHT_TEXT,
    EGDC_INACTIVE_BORDER,
    EGDC_INACTIVE_CAPTION,
    EGDC_TOOLTIP,
    EGDC_TOOLTIP_BACKGROUND,
    EGDC_SCROLLBAR,
    EGDC_WINDOW,
    EGDC_WINDOW_SYMBOL,
    EGDC_ICON,
    EGDC_ICON_HIGH_LIGHT,
    EGDC_COUNT,
};

enum EGUI_DEFAULT_SIZE : std::uint32_t {
    EGDS_SCROLLBAR_SIZE = 0,
    EGDS_MENU_HEIGHT,
    EGDS_WINDOW_BUTTON_WIDTH,
    EGDS_CHECK_BOX_WIDTH,
    EGDS_MESSAGE_BOX_WIDTH,
    EGDS_MESSAGE_BOX_HEIGHT,
    EGDS_BUTTON_WIDTH,
    EGDS_BUTTON_HEIGHT,
    EGDS_TEXT_DISTANCE_X,
    EGDS_TEXT_DISTANCE_Y,
    EGDS_COUNT,
};

enum EGUI_DEFAULT_TEXT : std::uint32_t {
    EGDT_MSG_BOX_OK = 0,
    EGDT_MSG_BOX_CANCEL,
    EGDT_MSG_BOX_YES,
    EGDT_MSG_BOX_NO,
    EGDT_WINDOW_CLOSE,
    EGDT_WINDOW_MAXIMIZE,
    EGDT_WINDOW_MINIMIZE,
    EGDT_WINDOW_RESTORE,
    EGDT_COUNT,
};

enum EGUI_DEFAULT_ICON : std::uint32_t {
    EGDI_WINDOW_MAXIMIZE = 0,
    EGDI_WINDOW_RESTORE,
    EGDI_WINDOW_CLOSE,
    EGDI_WINDOW_MINIMIZE,
    EGDI_WINDOW_RESIZE,
    EGDI_CURSOR_UP,
    EGDI_CURSOR_DOWN,
    EGDI_CURSOR_LEFT,
    EGDI_CURSOR_RIGHT,
    EGDI_MENU_MORE,
    EGDI_CHECK_BOX_CHECKED,
    EGDI_DROP_DOWN,
    EGDI_SMALL_CURSOR_UP,
    EGDI_SMALL_CURSOR_DOWN,
    EGDI_RADIO_BUTTON_CHECKED,
    EGDI_MORE_LEFT,
    EGDI_MORE_RIGHT,
    EGDI_MORE_UP,
    EGDI_MORE_DOWN,
    EGDI_EXPAND,
    EGDI_COLLAPSE,
    EGDI_FILE,
    EGDI_DIRECTORY,
    EGDI_COUNT,
};

enum EGUI_DEFAULT_FONT : std::uint32_t {
    EGDF_DEFAULT = 0,
    EGDF_BUTTON,
    EGDF_WINDOW,
    EGDF_MENU,
    EGDF_TOOLTIP,
    EGDF_COUNT,
};

class IGUISkin : public io::IAttributeExchangingObject, public virtual IReferenceCounted {
public:
    // 0x54aa00 (D1), 0x54ad6c (D0 copy): empty.
    ~IGUISkin() override;

    virtual video::SColor getColor(EGUI_DEFAULT_COLOR color) const = 0;                              // K 0x10
    virtual void setColor(EGUI_DEFAULT_COLOR which, video::SColor newColor) = 0;                     // K 0x14
    virtual int getSize(EGUI_DEFAULT_SIZE size) const = 0;                                           // K 0x18
    virtual const wchar_t* getDefaultText(EGUI_DEFAULT_TEXT text) const = 0;                         // K 0x1c
    virtual void setDefaultText(EGUI_DEFAULT_TEXT which, const wchar_t* newText) = 0;               // K 0x20
    virtual void setSize(EGUI_DEFAULT_SIZE which, int size) = 0;                                     // K 0x24
    virtual IGUIFont* getFont(EGUI_DEFAULT_FONT which = EGDF_DEFAULT) const = 0;                    // K 0x28
    virtual void setFont(IGUIFont* font, EGUI_DEFAULT_FONT which = EGDF_DEFAULT) = 0;                // K 0x2c
    virtual IGUISpriteBank* getSpriteBank() const = 0;                                               // K 0x30
    virtual void setSpriteBank(IGUISpriteBank* bank) = 0;                                            // K 0x34
    virtual std::uint32_t getIcon(EGUI_DEFAULT_ICON icon) const = 0;                                 // K 0x38
    virtual void setIcon(EGUI_DEFAULT_ICON icon, std::uint32_t index) = 0;                           // K 0x3c
    virtual void draw3DButtonPaneStandard(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) = 0;  // K 0x40
    virtual void draw3DButtonPanePressed(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) = 0;   // K 0x44
    virtual void draw3DSunkenPane(IGUIElement* element, video::SColor bgcolor, bool flat, bool fillBackGround, const core::rect<int>& rect,
                                  const core::rect<int>* clip) = 0;                                  // K 0x48
    // Returns the rectangle of the title bar (the rectangle it was given when there is no driver).
    virtual core::rect<int> draw3DWindowBackground(IGUIElement* element, bool drawTitleBar, video::SColor titleBarColor,
                                                   const core::rect<int>& rect, const core::rect<int>* clip) = 0;  // K 0x4c
    virtual void draw3DMenuPane(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) = 0;  // K 0x50
    virtual void draw3DToolBar(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) = 0;   // K 0x54
    virtual void draw3DTabButton(IGUIElement* element, bool active, const core::rect<int>& rect, const core::rect<int>* clip,
                                 EGUI_ALIGNMENT alignment = EGUIA_UPPERLEFT) = 0;                    // K 0x58
    virtual void draw3DTabBody(IGUIElement* element, bool border, bool background, const core::rect<int>& rect, const core::rect<int>* clip,
                               int tabHeight = -1, EGUI_ALIGNMENT alignment = EGUIA_UPPERLEFT) = 0;  // K 0x5c
    virtual void drawIcon(IGUIElement* element, EGUI_DEFAULT_ICON icon, core::position2d<int> position, std::uint32_t startTime,
                          std::uint32_t currentTime, bool loop, const core::rect<int>* clip) = 0;    // K 0x60
    virtual void draw2DRectangle(IGUIElement* element, const video::SColor& color, const core::rect<int>& pos,
                                 const core::rect<int>* clip) = 0;                                   // K 0x64
    // K 0x68, 0x54a9f8: EGST_UNKNOWN in the base (CGUISkin overrides it, 0x54ac2c).
    virtual EGUI_SKIN_TYPE getType() const;
};

}  // namespace glitch::gui
