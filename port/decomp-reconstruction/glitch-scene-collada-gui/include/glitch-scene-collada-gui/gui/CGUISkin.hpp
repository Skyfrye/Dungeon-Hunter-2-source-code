// glitch::gui::CGUISkin: the default skin (colours, sizes, texts, icons, fonts and the drawing of the 3D frames through C2DDriver). Canonical
// header of the scene-owner wave (gui family). It replaces the CGUISkin of gui_simple_accessors.hpp, recon/slice_02.hpp and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x54d104 (C1) / 0x54d80c (C2), destructor 0x54af28 (+ clones 0x54afc4 and
// 0x54afe0); tools/decomp_vtable.py glitch::gui::CGUISkin; io::IAttributeExchangingObject is the primary base, glitch::IReferenceCounted a
// virtual base at +0x340, its count at +0x344, initialised to 1):
//   +0x000 vptr
//   +0x004 Colors[21] (SColor, one word each)       +0x058 Sizes[10] (int)           +0x080 Icons[23] (index into the sprite bank)
//   +0x0dc Fonts[5] (IGUIFont*, references held)    +0x0f0 SpriteBank (reference held)
//   +0x0f4 Texts[8] (STLport std::wstring, 72 bytes each; the last ends at +0x334)
//   +0x334 Driver (IVideoDriver*, no reference held)   +0x338 UseGradient (bool)   +0x33c Type (EGUI_SKIN_TYPE)
// The classic and metallic skins share one colour table; the burning skin has its own (see the constructor). UseGradient is on for the
// metallic and burning skins.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/gui/IGUISkin.hpp"

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::gui {

class CGUISkin : public IGUISkin {
public:
    // 0x54d104 (C1) / 0x54d80c (C2): the colours and sizes of the skin type, the texts "O", "C", "Y", "N", "C", "M", "M" and "R", the icon
    // indices 225 .. 246, no fonts, no sprite bank; UseGradient = (type is EGST_WINDOWS_METALLIC or EGST_BURNING_SKIN).
    CGUISkin(EGUI_SKIN_TYPE skinType, video::IVideoDriver* videoDriver);
    // 0x54af28 (D1), 0x54afc4 / 0x54afe0 (clones): drops the five fonts and the sprite bank.
    ~CGUISkin() override;

    // K 0x00, 0x54ac34: the colours, sizes, texts and icons as attributes under the names of the GUISkin*Names tables.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // K 0x04, 0x54adc0.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    // K 0x10 .. 0x3c: accessors. An index past the table is ignored (getColor and getSize then return 0, getIcon too, getFont the default
    // font, getDefaultText the first text); getFont falls back to the default font when the requested one is not set.
    video::SColor getColor(EGUI_DEFAULT_COLOR color) const override;                        // 0x54aa24
    void setColor(EGUI_DEFAULT_COLOR which, video::SColor newColor) override;               // 0x54aa64
    int getSize(EGUI_DEFAULT_SIZE size) const override;                                     // 0x54aaa0
    const wchar_t* getDefaultText(EGUI_DEFAULT_TEXT text) const override;                   // 0x54ab98
    void setDefaultText(EGUI_DEFAULT_TEXT which, const wchar_t* newText) override;          // 0x54d0bc
    void setSize(EGUI_DEFAULT_SIZE which, int size) override;                               // 0x54aab4
    IGUIFont* getFont(EGUI_DEFAULT_FONT which = EGDF_DEFAULT) const override;               // 0x54aac4
    void setFont(IGUIFont* font, EGUI_DEFAULT_FONT which = EGDF_DEFAULT) override;          // 0x54aaf0
    IGUISpriteBank* getSpriteBank() const override;                                         // 0x54ab38
    void setSpriteBank(IGUISpriteBank* bank) override;                                      // 0x54ab40
    std::uint32_t getIcon(EGUI_DEFAULT_ICON icon) const override;                           // 0x54ab74
    void setIcon(EGUI_DEFAULT_ICON icon, std::uint32_t index) override;                     // 0x54ab88

    // K 0x40 .. 0x64: the frames. Nothing is drawn without a driver.
    void draw3DButtonPaneStandard(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) override;  // 0x54cd44
    void draw3DButtonPanePressed(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) override;   // 0x54caa8
    void draw3DSunkenPane(IGUIElement* element, video::SColor bgcolor, bool flat, bool fillBackGround, const core::rect<int>& rect,
                          const core::rect<int>* clip) override;                                                              // 0x54b53c
    core::rect<int> draw3DWindowBackground(IGUIElement* element, bool drawTitleBar, video::SColor titleBarColor,
                                           const core::rect<int>& rect, const core::rect<int>* clip) override;                // 0x54c40c
    void draw3DMenuPane(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) override;             // 0x54bff4
    void draw3DToolBar(IGUIElement* element, const core::rect<int>& rect, const core::rect<int>* clip) override;              // 0x54bd84
    void draw3DTabButton(IGUIElement* element, bool active, const core::rect<int>& rect, const core::rect<int>* clip,
                         EGUI_ALIGNMENT alignment = EGUIA_UPPERLEFT) override;                                                // 0x54b0ac
    void draw3DTabBody(IGUIElement* element, bool border, bool background, const core::rect<int>& rect, const core::rect<int>* clip,
                       int tabHeight = -1, EGUI_ALIGNMENT alignment = EGUIA_UPPERLEFT) override;                              // 0x54b910
    void drawIcon(IGUIElement* element, EGUI_DEFAULT_ICON icon, core::position2d<int> position, std::uint32_t startTime,
                  std::uint32_t currentTime, bool loop, const core::rect<int>* clip) override;                                // 0x54abb0
    void draw2DRectangle(IGUIElement* element, const video::SColor& color, const core::rect<int>& pos,
                         const core::rect<int>* clip) override;                                                               // 0x54b078
    // K 0x68, 0x54ac2c.
    EGUI_SKIN_TYPE getType() const override;

    video::SColor colors[EGDC_COUNT];                  // +0x004
    int sizes[EGDS_COUNT];                             // +0x058
    std::uint32_t icons[EGDI_COUNT];                   // +0x080
    IGUIFont* fonts[EGDF_COUNT] = {};                  // +0x0dc
    IGUISpriteBank* spriteBank = nullptr;              // +0x0f0
    std::wstring texts[EGDT_COUNT];                    // +0x0f4
    video::IVideoDriver* driver = nullptr;             // +0x334
    bool useGradient = false;                          // +0x338
    EGUI_SKIN_TYPE type = EGST_WINDOWS_CLASSIC;        // +0x33c
};

}  // namespace glitch::gui
