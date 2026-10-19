// glitch::gui::IGUIScrollBar and CGUIScrollBar: the scroll bar. Canonical header of the scene-owner wave (gui family). It replaces the
// CGUIScrollBar / IGUIScrollBar of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_02.hpp and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIScrollBar constructor 0x549a3c (element type 14), destructors 0x549f44 / 0x54a6dc;
// CGUIScrollBar constructors 0x549cfc / 0x549e3c, destructors 0x549fb8 / 0x54a06c / 0x54a088; tools/decomp_vtable.py glitch::gui::CGUIScrollBar;
// the object continues IGUIElement at +0x158; the virtual bases follow at +0x194 / +0x198, count at +0x19c):
//   +0x158 UpButton   +0x15c DownButton (CGUIButton, one reference held each)    +0x160 SliderRect
//   +0x170 Dragging   +0x171 Horizontal   +0x172 DraggedBySlider   +0x173 TrayClick
//   +0x174 Pos (member `position`)   +0x178 DrawPos   +0x17c DrawHeight   +0x180 Max (member `maxValue`)   +0x184 SmallStep   +0x188 LargeStep   +0x18c DesiredPos   +0x190 LastChange
// The size computations use the element's desired rectangle (+0x28), not the relative one.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class CGUIButton;

class IGUIScrollBar : public IGUIElement {
public:
    // 0x549a3c: the IGUIElement base with the type EGUIET_SCROLL_BAR.
    IGUIScrollBar(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x549f44 (D1), 0x54a6dc (D0 copy): empty.
    ~IGUIScrollBar() override;

    virtual int getMax() const = 0;           // K 0x7c
    virtual void setMax(int max) = 0;         // K 0x80
    virtual int getSmallStep() const = 0;     // K 0x84
    virtual void setSmallStep(int step) = 0;  // K 0x88
    virtual int getLargeStep() const = 0;     // K 0x8c
    virtual void setLargeStep(int step) = 0;  // K 0x90
    virtual int getPos() const = 0;           // K 0x94
    virtual void setPos(int pos) = 0;         // K 0x98
};

class CGUIScrollBar : public IGUIScrollBar {
public:
    // 0x549cfc (C1) / 0x549e3c (C2): Max 100, SmallStep 10, LargeStep 50, position 0, a tab stop; creates the two buttons (refreshControls).
    CGUIScrollBar(bool horizontal, IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool noClip = false);
    // 0x549fb8 (D1), 0x54a06c, 0x54a088: drops the two buttons.
    ~CGUIScrollBar() override;

    // K 0x08, 0x54a228: mouse press / drag / release on the tray or the slider, the wheel, the keys (Page up / down, End, Home, arrows) and the
    // clicks of the two buttons move the position and post EGET_SCROLL_BAR_CHANGED to the parent.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x5496b4: also re-lays out the buttons and recomputes the slider position.
    void updateAbsolutePosition() override;
    // K 0x20, 0x54a758: the tray (EGDC_SCROLLBAR), the repeating tray click (every 200 ms of real time), the slider as a button pane, the children.
    void draw() override;
    // K 0x74 / 0x78, 0x548fd8 and 0x54a12c.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    int getMax() const override;            // 0x548f64
    void setMax(int max) override;          // 0x548f6c: a non-positive maximum becomes 0 and disables the buttons
    int getSmallStep() const override;      // 0x548f2c
    void setSmallStep(int step) override;   // 0x548f34: a non-positive step becomes 10
    int getLargeStep() const override;      // 0x548f48
    void setLargeStep(int step) override;   // 0x548f50: a non-positive step becomes 50
    int getPos() const override;            // 0x548fd0
    void setPos(int pos) override;          // 0x548d90

    // 0x548c34: the position under a mouse point (the tray without the two buttons mapped onto 0 .. Max).
    int getPosFromMousePos(int x, int y) const;
    // 0x5490c0: creates the two buttons when missing and sets their sprites (the cursor icons of the skin), rectangles and alignments.
    void refreshControls();

    CGUIButton* upButton = nullptr;         // +0x158
    CGUIButton* downButton = nullptr;       // +0x15c
    core::rect<int> sliderRect{};           // +0x160
    bool dragging = false;                  // +0x170
    bool horizontal = false;                // +0x171
    bool draggedBySlider = false;           // +0x172
    bool trayClick = false;                 // +0x173
    int position = 0;                       // +0x174 (Pos)
    int drawPos = 0;                        // +0x178
    int drawHeight = 0;                     // +0x17c
    int maxValue = 100;                     // +0x180 (Max)
    int smallStep = 10;                     // +0x184
    int largeStep = 50;                     // +0x188
    int desiredPos = 0;                     // +0x18c
    std::uint32_t lastChange = 0;           // +0x190

private:
    // The slider position derived from Pos (the tail of setPos and updateAbsolutePosition).
    void computeDrawPos();
};

}  // namespace glitch::gui
