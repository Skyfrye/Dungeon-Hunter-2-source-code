// glitch::gui::IGUIButton and CGUIButton: the push button. Canonical header of the scene-owner wave (gui family). It replaces the CGUIButton /
// IGUIButton of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp and recon/slice_33.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIButton constructor 0x6a6140, destructors 0x6a69b8 / 0x6a6e30; CGUIButton
// constructors 0x6a63fc / 0x6a653c, destructors 0x6a6a2c / 0x6a6ae8 / 0x6a6b04; tools/decomp_vtable.py glitch::gui::CGUIButton, 268 bytes):
// IGUIButton adds only pure virtuals (K 0x7c .. 0xb4) to IGUIElement (0x158 bytes); CGUIButton continues the object at +0x158, and the two
// virtual bases (io::IAttributeExchangingObject at +0x1d8, glitch::IReferenceCounted at +0x1dc, count at +0x1e0) follow it.
//   +0x158 Pressed      +0x159 IsPushButton   +0x15a UseAlphaChannel   +0x15b DrawBorder   +0x15c ClickTime (os::Timer time of the last press)
//   +0x160 SpriteBank (reference held)   +0x164 OverrideFont (reference held)
//   +0x168 ButtonSprites[6] (12 bytes each: Index (-1), Color, Loop)       +0x1b0 Image   +0x1b4 PressedImage (references held)
//   +0x1b8 ImageRect   +0x1c8 PressedImageRect
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::video {
class ITexture;
}

namespace glitch::gui {

class IGUIFont;
class IGUISpriteBank;

// The button states a sprite can be set for (Irrlicht's order). Only UP and DOWN are drawn by CGUIButton.
enum EGUI_BUTTON_STATE : std::int32_t {
    EGBS_BUTTON_UP = 0,
    EGBS_BUTTON_DOWN,
    EGBS_BUTTON_MOUSE_OVER,
    EGBS_BUTTON_MOUSE_OFF,
    EGBS_BUTTON_FOCUSED,
    EGBS_BUTTON_NOT_FOCUSED,
    EGBS_COUNT,
};

class IGUIButton : public IGUIElement {
public:
    // 0x6a6140: the IGUIElement base with the type EGUIET_BUTTON.
    IGUIButton(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6a69b8 (D1), 0x6a6e30 (D0 copy): empty.
    ~IGUIButton() override;

    virtual void setOverrideFont(IGUIFont* font) = 0;                                                       // K 0x7c
    virtual void setImage(const boost::intrusive_ptr<video::ITexture>& image) = 0;                         // K 0x80
    virtual void setImage(const boost::intrusive_ptr<video::ITexture>& image, const core::rect<int>& pos) = 0;  // K 0x84
    virtual void setPressedImage(const boost::intrusive_ptr<video::ITexture>& image) = 0;                  // K 0x88
    virtual void setPressedImage(const boost::intrusive_ptr<video::ITexture>& image, const core::rect<int>& pos) = 0;  // K 0x8c
    virtual void setSpriteBank(IGUISpriteBank* bank) = 0;                                                   // K 0x90
    virtual void setSprite(EGUI_BUTTON_STATE state, int index, video::SColor color, bool loop) = 0;        // K 0x94
    virtual void setIsPushButton(bool isPushButton) = 0;                                                    // K 0x98
    virtual void setPressed(bool pressed) = 0;                                                              // K 0x9c
    virtual bool isPressed() const = 0;                                                                     // K 0xa0
    virtual void setUseAlphaChannel(bool useAlphaChannel) = 0;                                             // K 0xa4
    virtual bool isAlphaChannelUsed() const = 0;                                                            // K 0xa8
    virtual bool isPushButton() const = 0;                                                                  // K 0xac
    virtual void setDrawBorder(bool border) = 0;                                                            // K 0xb0
    virtual bool isDrawingBorder() const = 0;                                                               // K 0xb4
};

class CGUIButton : public IGUIButton {
public:
    // One entry of ButtonSprites (12 bytes).
    struct SButtonSprite {
        int index = -1;               // +0x00, -1 = none
        video::SColor color{};        // +0x04
        bool loop = false;            // +0x08
    };

    // 0x6a63fc (C1) / 0x6a653c (C2): a button that is a tab stop, with a border, not pressed and not a push button, no sprite and no image;
    // `noClip` is stored in the base (+0x9b); the constructor ends with setTabOrder(-1).
    CGUIButton(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool noClip = false);
    // 0x6a6a2c (D1), 0x6a6ae8, 0x6a6b04: drops the override font, the sprite bank, the two images.
    ~CGUIButton() override;

    // K 0x08, 0x6a6eac: a disabled button forwards the event to the parent. Key input: Enter / Space press the button (a push button
    // toggles), Escape releases it; releasing Enter / Space clicks. Mouse: the left press takes the focus and presses a normal button; the
    // left release (inside) clicks a normal button or toggles a push button and posts EGET_BUTTON_CLICKED to the parent. Losing the focus
    // releases a normal button.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x6a7224: the border pane (pressed or standard), the (pressed) image centred, the sprite for the state centred, the text in
    // the override or button font, then the children.
    void draw() override;
    // K 0x74 / 0x78, 0x6a6630 and 0x6a6bb0.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setOverrideFont(IGUIFont* font) override;                                                          // 0x6a5e90
    void setImage(const boost::intrusive_ptr<video::ITexture>& image) override;                            // 0x6a68d4
    void setImage(const boost::intrusive_ptr<video::ITexture>& image, const core::rect<int>& pos) override;  // 0x6a67fc
    void setPressedImage(const boost::intrusive_ptr<video::ITexture>& image) override;                     // 0x6a6958
    void setPressedImage(const boost::intrusive_ptr<video::ITexture>& image, const core::rect<int>& pos) override;  // 0x6a687c
    void setSpriteBank(IGUISpriteBank* bank) override;                                                      // 0x6a5df8
    void setSprite(EGUI_BUTTON_STATE state, int index, video::SColor color, bool loop) override;            // 0x6a5e28
    void setIsPushButton(bool isPushButton) override;                                                       // 0x6a5ec4
    void setPressed(bool pressed) override;                                                                 // 0x6a5f14
    bool isPressed() const override;                                                                        // 0x6a5ecc
    void setUseAlphaChannel(bool useAlphaChannel) override;                                                 // 0x6a5edc
    bool isAlphaChannelUsed() const override;                                                               // 0x6a5ee4
    bool isPushButton() const override;                                                                     // 0x6a5ed4
    void setDrawBorder(bool border) override;                                                               // 0x6a5df0
    bool isDrawingBorder() const override;                                                                  // 0x6a5eec

    bool pressed = false;                                  // +0x158
    bool isPushButtonFlag = false;                         // +0x159
    bool useAlphaChannel = false;                          // +0x15a
    bool drawBorder = true;                                // +0x15b
    std::uint32_t clickTime = 0;                           // +0x15c
    IGUISpriteBank* spriteBank = nullptr;                  // +0x160
    IGUIFont* overrideFont = nullptr;                      // +0x164
    SButtonSprite buttonSprites[EGBS_COUNT];               // +0x168
    boost::intrusive_ptr<video::ITexture> image;           // +0x1b0
    boost::intrusive_ptr<video::ITexture> pressedImage;    // +0x1b4
    core::rect<int> imageRect{};                           // +0x1b8
    core::rect<int> pressedImageRect{};                    // +0x1c8
};

}  // namespace glitch::gui
