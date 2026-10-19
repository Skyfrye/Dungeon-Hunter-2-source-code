// glitch::gui::IGUITab, CGUITab, IGUITabControl and CGUITabControl: the tab pages and the tab control that shows them. Canonical header of the
// scene-owner wave (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; the interface constructors take the element type: IGUITab 0x5537cc (type 17),
// IGUITabControl 0x552ec0 (type 18); tools/decomp_vtable.py glitch::gui::CGUITab / CGUITabControl):
//   CGUITab (constructors 0x553850 / 0x553994, destructors 0x553fa4 / 0x554034; bases at +0x168 / +0x16c, count at +0x170):
//     +0x158 Number   +0x15c DrawBackground   +0x15d BackColor (SColor, unaligned in the original)   +0x161 TextColor (same)
//   CGUITabControl (constructors 0x552f44 / 0x5533b0, destructors 0x5540e4 / 0x5541f4 / 0x554210; bases at +0x188 / +0x18c, count at +0x190):
//     +0x158 Tabs (STLport vector of CGUITab*: start, finish, end; one reference held on each)   +0x164 ActiveTab (-1)
//     +0x168 Border   +0x169 FillBackground   +0x16a ScrollControl   +0x16c TabHeight   +0x170 VerticalAlignment
//     +0x174 UpButton   +0x178 DownButton (one reference held on each)   +0x17c TabMaxWidth   +0x180 CurrentScrollTabIndex   +0x184 TabExtraWidth (20)
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIButton;
class CGUITab;

class IGUITab : public IGUIElement {
public:
    // 0x5537cc: the IGUIElement base with the type EGUIET_TAB.
    IGUITab(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x553f30 (D1), 0x554598 (D0 copy): empty.
    ~IGUITab() override;

    virtual int getNumber() const = 0;                       // K 0x7c
    virtual void setDrawBackground(bool draw) = 0;           // K 0x80
    virtual void setBackgroundColor(video::SColor color) = 0;  // K 0x84
    virtual bool isDrawingBackground() const = 0;            // K 0x88
    virtual video::SColor getBackgroundColor() const = 0;    // K 0x8c
    virtual void setTextColor(video::SColor color) = 0;      // K 0x90
    virtual video::SColor getTextColor() const = 0;          // K 0x94
};

class CGUITab : public IGUITab {
public:
    // 0x553850 (C1) / 0x553994 (C2): no background; the text colour is the skin's EGDC_BUTTON_TEXT (opaque black without a skin).
    CGUITab(int number, IGUIEnvironment* environment, IGUIElement* parent, const core::rect<int>& rectangle, int id);
    // 0x553fa4 (D1), 0x554034 (D2): empty.
    ~CGUITab() override;

    // K 0x20, 0x554690: the background colour fill when enabled, then the children.
    void draw() override;
    // K 0x74 / 0x78, 0x552140 and 0x553db0 (the latter also adds the tab to a tab control parent).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    int getNumber() const override;                          // 0x552040
    void setDrawBackground(bool draw) override;              // 0x552050
    void setBackgroundColor(video::SColor color) override;   // 0x552058
    bool isDrawingBackground() const override;               // 0x5520f0
    video::SColor getBackgroundColor() const override;       // 0x5520f8
    void setTextColor(video::SColor color) override;         // 0x552080
    video::SColor getTextColor() const override;             // 0x5520a8
    // K 0x98, 0x552048.
    virtual void setNumber(int number);

    int number = -1;                     // +0x158
    bool drawBackground = false;         // +0x15c
    video::SColor backColor{};           // +0x15d
    video::SColor textColor{};           // +0x161
};

class IGUITabControl : public IGUIElement {
public:
    // 0x552ec0: the IGUIElement base with the type EGUIET_TAB_CONTROL.
    IGUITabControl(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x554070 (D1), 0x554614 (D0 copy): empty.
    ~IGUITabControl() override;

    virtual IGUITab* addTab(const wchar_t* caption, int id = -1) = 0;       // K 0x7c
    virtual int getTabCount() const = 0;                                    // K 0x80
    virtual IGUITab* getTab(int idx) const = 0;                             // K 0x84
    virtual bool setActiveTab(int idx) = 0;                                 // K 0x88
    virtual bool setActiveTab(IGUIElement* tab) = 0;                        // K 0x8c
    virtual int getActiveTab() const = 0;                                   // K 0x90
    virtual void setTabHeight(int height) = 0;                              // K 0x94
    virtual int getTabHeight() const = 0;                                   // K 0x98
    virtual void setTabVerticalAlignment(EGUI_ALIGNMENT alignment) = 0;     // K 0x9c
    virtual EGUI_ALIGNMENT getTabVerticalAlignment() const = 0;             // K 0xa0
    virtual void setTabExtraWidth(int extraWidth) = 0;                      // K 0xa4
    virtual int getTabExtraWidth() const = 0;                               // K 0xa8
};

class CGUITabControl : public IGUITabControl {
public:
    // 0x552f44 (C1) / 0x5533b0 (C2): the tab height is the skin's button height plus 2 (32 without a skin); creates the two scroll buttons
    // (invisible) with the cursor icons of the skin; the vertical alignment starts at the upper edge.
    CGUITabControl(IGUIEnvironment* environment, IGUIElement* parent, const core::rect<int>& rectangle, bool fillBackground, bool border, int id);
    // 0x5540e4 (D1), 0x5541f4, 0x554210: drops the tabs and the two buttons.
    ~CGUITabControl() override;

    // K 0x08, 0x554310: a left press is consumed, the release selects the tab under the mouse; the two buttons scroll the tab row.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x552944: also re-checks the scroll buttons.
    void updateAbsolutePosition() override;
    // K 0x18, 0x552a60: removes a tab (drops it and renumbers the others).
    void removeChild(IGUIElement* child) override;
    // K 0x20, 0x554738: the tab buttons in the row (the active one framed), the body of the skin, then the children.
    void draw() override;
    // K 0x74 / 0x78, 0x55295c and 0x553ca4.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    IGUITab* addTab(const wchar_t* caption, int id = -1) override;     // 0x5543ec
    int getTabCount() const override;                                   // 0x552214
    IGUITab* getTab(int idx) const override;                            // 0x552228
    bool setActiveTab(int idx) override;                                // 0x552810
    bool setActiveTab(IGUIElement* tab) override;                       // 0x5528d4
    int getActiveTab() const override;                                  // 0x552808
    void setTabHeight(int height) override;                             // 0x5525c8
    int getTabHeight() const override;                                  // 0x55250c
    void setTabVerticalAlignment(EGUI_ALIGNMENT alignment) override;    // 0x55263c
    EGUI_ALIGNMENT getTabVerticalAlignment() const override;            // 0x552800
    void setTabExtraWidth(int extraWidth) override;                     // 0x5525bc
    int getTabExtraWidth() const override;                              // 0x552514
    // K 0xac, 0x553a94: adds a tab that was created elsewhere (a deserialized one), at its own number.
    virtual void addTab(CGUITab* tab);

    // 0x552244: whether the tabs from `startIndex` on do not fit in the control (leaving room for the scroll buttons when asked).
    bool needScrollControl(int startIndex, bool withScrollControl) const;
    // 0x552378: selects the tab under the point; false when the point is not on a tab.
    bool selectTab(core::position2d<int> point);
    // 0x55251c: shows the scroll buttons when some tabs do not fit (or the row is scrolled).
    void recalculateScrollBar();
    // 0x5525dc / 0x5525f0.
    void scrollLeft();
    void scrollRight();

    std::vector<CGUITab*> tabs;                      // +0x158
    int activeTab = -1;                              // +0x164
    bool border = false;                             // +0x168
    bool fillBackground = false;                     // +0x169
    bool scrollControl = false;                      // +0x16a
    int tabHeight = 0;                               // +0x16c
    EGUI_ALIGNMENT verticalAlignment = EGUIA_UPPERLEFT;  // +0x170
    IGUIButton* upButton = nullptr;                  // +0x174
    IGUIButton* downButton = nullptr;                // +0x178
    int tabMaxWidth = 0;                             // +0x17c
    int currentScrollTabIndex = 0;                   // +0x180
    int tabExtraWidth = 20;                          // +0x184
};

}  // namespace glitch::gui
