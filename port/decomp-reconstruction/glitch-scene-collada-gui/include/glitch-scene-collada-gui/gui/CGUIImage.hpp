// glitch::gui::IGUIImage, CGUIImage, IGUIInOutFader, CGUIInOutFader and CGUIModalScreen: the image, the fade-in/out screen and the modal
// screen. Canonical header of the scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp,
// layouts/gui.hpp, recon/slice_02.hpp, recon/slice_31.hpp and recon/v2/wave_13.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the interface constructors take the element type: IGUIImage 0x54062c (type 9),
// IGUIInOutFader 0x5413ec (type 8); each concrete class continues the object at +0x158 and the two virtual bases follow its members):
//   CGUIImage (constructors 0x5408ec / 0x5409d8, destructors 0x540ae8 / 0x540b74 / 0x540b90; bases at +0x164 / +0x168, count at +0x16c):
//     +0x158 Color   +0x15c Texture (reference held)   +0x160 UseAlphaChannel   +0x161 ScaleImage
//   CGUIInOutFader (constructors 0x5416ac / 0x5417a0, destructors 0x5418b8 / 0x541948; bases at +0x174 / +0x178, count at +0x17c):
//     +0x158 StartTime   +0x15c EndTime   +0x160 Action (0 nothing, 1 fade in, 2 fade out)   +0x164 Color[2]   +0x16c FullColor   +0x170 TransColor
//   CGUIModalScreen (constructors 0x5485c8 / 0x548668, destructors 0x548858 / 0x548ba8; no interface class; bases at +0x15c / +0x160, count at +0x164):
//     +0x158 MouseDownTime
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::video {
class ITexture;
}

namespace glitch::gui {

class IGUIImage : public IGUIElement {
public:
    // 0x54062c: the IGUIElement base with the type EGUIET_IMAGE.
    IGUIImage(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x540a74 (D1), 0x540d24 (D0 copy): empty.
    ~IGUIImage() override;

    virtual void setImage(const boost::intrusive_ptr<video::ITexture>& image) = 0;  // K 0x7c
    virtual void setColor(video::SColor color) = 0;                                 // K 0x80
    virtual void setScaleImage(bool scale) = 0;                                     // K 0x84
    virtual void setUseAlphaChannel(bool useAlphaChannel) = 0;                      // K 0x88
    virtual bool isImageScaled() const = 0;                                         // K 0x8c
    virtual bool isAlphaChannelUsed() const = 0;                                    // K 0x90
};

class CGUIImage : public IGUIImage {
public:
    // 0x5408ec (C1) / 0x5409d8 (C2): white, no texture, no alpha channel, not scaled.
    CGUIImage(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x540ae8 (D1), 0x540b74, 0x540b90: drops the texture.
    ~CGUIImage() override;

    // K 0x20, 0x540da0: the texture (stretched over the element, or at its corner, in the colour); without a texture the element is filled
    // with EGDC_3D_DARK_SHADOW. Then the children.
    void draw() override;
    // K 0x74 / 0x78, 0x540534 and 0x540c0c.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    void setImage(const boost::intrusive_ptr<video::ITexture>& image) override;  // 0x5404c0
    void setColor(video::SColor color) override;                                 // 0x5404ec
    void setScaleImage(bool scale) override;                                     // 0x54051c
    void setUseAlphaChannel(bool useAlphaChannel) override;                      // 0x540514
    bool isImageScaled() const override;                                         // 0x540524
    bool isAlphaChannelUsed() const override;                                    // 0x54052c

    video::SColor color{0xFFFFFFFFu};                    // +0x158
    boost::intrusive_ptr<video::ITexture> texture;      // +0x15c
    bool useAlphaChannel = false;                       // +0x160
    bool scaleImage = false;                            // +0x161
};

class IGUIInOutFader : public IGUIElement {
public:
    // 0x5413ec: the IGUIElement base with the type EGUIET_IN_OUT_FADER.
    IGUIInOutFader(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x541844 (D1), 0x541a08 (D0 copy): empty.
    ~IGUIInOutFader() override;

    virtual video::SColor getColor() const = 0;                          // K 0x7c
    virtual void setColor(video::SColor color) = 0;                      // K 0x80
    virtual void setColor(video::SColor source, video::SColor dest) = 0;  // K 0x84
    virtual void fadeIn(std::uint32_t time) = 0;                         // K 0x88
    virtual void fadeOut(std::uint32_t time) = 0;                        // K 0x8c
    virtual bool isReady() const = 0;                                    // K 0x90
};

class CGUIInOutFader : public IGUIInOutFader {
public:
    enum EFadeAction : std::uint32_t { EFA_NOTHING = 0, EFA_FADE_IN, EFA_FADE_OUT };

    // 0x5416ac (C1) / 0x5417a0 (C2): no action, setColor(0).
    CGUIInOutFader(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x5418b8 (D1), 0x541948 (D2): empty.
    ~CGUIInOutFader() override;

    // K 0x20, 0x541a84: while an action runs, the rectangle is filled with FullColor blended towards TransColor by the time left; a fade in
    // that has run out stops (and draws nothing). Then the children.
    void draw() override;
    // K 0x74 / 0x78, 0x5412cc and 0x541984 (FullColor and TransColor).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    video::SColor getColor() const override;                          // 0x5411d8: Color[1]
    // 0x54120c: setColor(the colour with alpha 255, the colour with alpha 0).
    void setColor(video::SColor color) override;
    // 0x54124c: Color[0] and Color[1]; FullColor / TransColor are Color[0] / Color[1] for a fade in and swapped for a fade out.
    void setColor(video::SColor source, video::SColor dest) override;
    void fadeIn(std::uint32_t time) override;                         // 0x541388
    void fadeOut(std::uint32_t time) override;                        // 0x541348
    bool isReady() const override;                                    // 0x5413c8: the end time has passed

    std::uint32_t startTime = 0;                                      // +0x158
    std::uint32_t endTime = 0;                                        // +0x15c
    EFadeAction action = EFA_NOTHING;                                 // +0x160
    video::SColor color[2]{};                                         // +0x164
    video::SColor fullColor{};                                        // +0x16c
    video::SColor transColor{};                                       // +0x170
};

class CGUIModalScreen : public IGUIElement {
public:
    // 0x5485c8 (C1) / 0x548668 (C2): type EGUIET_MODAL_SCREEN, the rectangle is the parent's absolute rectangle, alignment (UPPERLEFT,
    // LOWERRIGHT, UPPERLEFT, LOWERRIGHT), a tab group.
    CGUIModalScreen(IGUIEnvironment* environment, IGUIElement* parent, int id);
    // 0x548858 (D1), 0x548ba8 (D2): empty.
    ~CGUIModalScreen() override;

    // K 0x08, 0x548a50: every event reaches the parent; a lost focus to an outside element is swallowed (and stamps MouseDownTime), a focus
    // gain from outside takes the focus back, a left press stamps MouseDownTime.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x548260: the desired rectangle is (0, 0, parent width, parent height).
    void updateAbsolutePosition() override;
    // K 0x14, 0x5482fc: also gives the new child the focus.
    void addChild(IGUIElement* child) override;
    // K 0x18, 0x5482c8: removes the screen itself with its last child.
    void removeChild(IGUIElement* child) override;
    // K 0x20, 0x5488bc: for 300 ms after a stamp the children blink a highlight frame (every 70 ms).
    void draw() override;
    // K 0x74 / 0x78, 0x5482a0 and 0x5482a4: empty (the element attributes are not written).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    std::uint32_t mouseDownTime = 0;  // +0x158
};

}  // namespace glitch::gui
