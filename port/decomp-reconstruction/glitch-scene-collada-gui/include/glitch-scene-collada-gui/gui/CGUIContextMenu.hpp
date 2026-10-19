// glitch::gui::IGUIContextMenu, CGUIContextMenu and CGUIMenu: the pop-up menu and the menu bar. Canonical header of the scene-owner wave (gui
// family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_02.hpp, recon/slice_25.hpp and
// recon/slice_33.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIContextMenu constructor 0x6adcf0 (element type 3), destructors 0x545bb4 / 0x545f58;
// CGUIContextMenu constructors 0x6adfb8 / 0x6ae100, destructors 0x6ae858 / 0x6ae974 / 0x6ae990; CGUIMenu constructors 0x545928 / 0x545a10,
// destructors 0x5458b4 / 0x545edc; tools/decomp_vtable.py glitch::gui::CGUIContextMenu): Irrlicht's CGUIContextMenu / CGUIMenu (1.7.x) with
// setSubMenu instead of addSubMenu. The object continues IGUIElement at +0x158; the virtual bases follow at +0x180 / +0x184, count at +0x188.
//   CGUIContextMenu: +0x158 HighLighted (-1)   +0x15c Items (vector of SItem, 96 bytes each)   +0x168 Pos (the upper-left corner of the
//   rectangle)   +0x170 ChangeTime (os::Timer time of the last highlight)   +0x174 EventParent   +0x178 AllowFocus   +0x17c LastFont
//   SItem: +0x00 Text (STLport wide string, 72 bytes)   +0x48 IsSeparator   +0x49 Enabled   +0x4a Checked   +0x4c Dim   +0x54 PosY
//   +0x58 SubMenu (reference held)   +0x5c CommandId
//   The menu bar changes the type to EGUIET_MENU (4) and makes the element clipped again; its PosY is the x offset of the item and Dim.Width its
//   width.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIFont;
class CGUIContextMenu;

class IGUIContextMenu : public IGUIElement {
public:
    // 0x6adcf0: the IGUIElement base with the type EGUIET_CONTEXT_MENU.
    IGUIContextMenu(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x545bb4 (D1), 0x545f58 (D0 copy): empty.
    ~IGUIContextMenu() override;

    virtual std::uint32_t getItemCount() const = 0;                                                         // K 0x7c
    virtual std::uint32_t addItem(const wchar_t* text, int commandId = -1, bool enabled = true, bool hasSubMenu = false,
                                  bool checked = false) = 0;                                                // K 0x80
    virtual std::uint32_t addSeparator() = 0;                                                               // K 0x84
    virtual const wchar_t* getItemText(std::uint32_t index) const = 0;                                      // K 0x88
    virtual void setItemText(std::uint32_t index, const wchar_t* text) = 0;                                 // K 0x8c
    virtual bool isItemEnabled(std::uint32_t index) const = 0;                                              // K 0x90
    virtual void setItemEnabled(std::uint32_t index, bool enabled) = 0;                                     // K 0x94
    virtual void setItemChecked(std::uint32_t index, bool checked) = 0;                                     // K 0x98
    virtual bool isItemChecked(std::uint32_t index) const = 0;                                              // K 0x9c
    virtual void removeItem(std::uint32_t index) = 0;                                                       // K 0xa0
    virtual void removeAllItems() = 0;                                                                      // K 0xa4
    virtual int getSelectedItem() const = 0;                                                                // K 0xa8
    virtual int getItemCommandId(std::uint32_t index) const = 0;                                            // K 0xac
    virtual void setItemCommandId(std::uint32_t index, int commandId) = 0;                                  // K 0xb0
    virtual IGUIContextMenu* getSubMenu(std::uint32_t index) const = 0;                                     // K 0xb4
};

class CGUIContextMenu : public IGUIContextMenu {
public:
    struct SItem {
        std::wstring text;                    // +0x00 (start +0x44)
        bool isSeparator = false;             // +0x48
        bool enabled = true;                  // +0x49
        bool checked = false;                 // +0x4a
        core::dimension2d<int> dim{};         // +0x4c
        int posY = 0;                         // +0x54
        CGUIContextMenu* subMenu = nullptr;   // +0x58
        int commandId = -1;                   // +0x5c
    };

    // 0x6adfb8 (C1) / 0x6ae100 (C2): the position is the upper-left corner of the rectangle; the size follows from the items; the element is
    // not clipped; `getFocus` takes the focus of the environment, `allowFocus` is the state kept in AllowFocus.
    CGUIContextMenu(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool getFocus, bool allowFocus);
    // 0x6ae858 (D1), 0x6ae974, 0x6ae990: drops the sub menus and the font, frees the items.
    ~CGUIContextMenu() override;

    // K 0x08, 0x6ae1f4: a left release sends the click (and drops the focus unless a sub menu took it), a move highlights; a lost focus
    // (with AllowFocus) hands the sub menus to the parent and removes the menu; a focus gained with AllowFocus off is refused.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x6aec08: the menu pane, the items (highlight, text, sub menu arrow, check mark), the children.
    void draw() override;
    // K 0x30, 0x6adc3c: also clears the highlight and hides the sub menus.
    void setVisible(bool visible) override;
    // K 0x74 / 0x78, 0x6af2bc and 0x6af62c: Position, ParentItem, ItemCount and per item IsSeparator / Text / CommandID / Enabled (Checked is
    // read but not written).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    std::uint32_t getItemCount() const override;                                          // 0x6acdac
    std::uint32_t addItem(const wchar_t* text, int commandId = -1, bool enabled = true, bool hasSubMenu = false,
                          bool checked = false) override;                                // 0x6aea9c
    std::uint32_t addSeparator() override;                                                // 0x6aced4
    const wchar_t* getItemText(std::uint32_t index) const override;                       // 0x6acf08
    void setItemText(std::uint32_t index, const wchar_t* text) override;                  // 0x6ad8cc
    bool isItemEnabled(std::uint32_t index) const override;                               // 0x6acf44
    void setItemEnabled(std::uint32_t index, bool enabled) override;                      // 0x6acfbc
    void setItemChecked(std::uint32_t index, bool checked) override;                      // 0x6acff4
    bool isItemChecked(std::uint32_t index) const override;                               // 0x6acf80
    void removeItem(std::uint32_t index) override;                                        // 0x6ae7bc
    void removeAllItems() override;                                                       // 0x6ae480
    int getSelectedItem() const override;                                                 // 0x6ad4d4
    int getItemCommandId(std::uint32_t index) const override;                             // 0x6ad518
    void setItemCommandId(std::uint32_t index, int commandId) override;                   // 0x6ad554
    IGUIContextMenu* getSubMenu(std::uint32_t index) const override;                      // 0x6ad4dc
    // K 0xb8, 0x6acdd4: replaces the sub menu of an item (the menu is hidden, referenced, loses AllowFocus).
    virtual void setSubMenu(std::uint32_t index, CGUIContextMenu* menu);
    // K 0xbc, 0x6ad260: the size from the items (width at least 100, 40 more than the widest text; the height from the item heights) and the
    // positions of the sub menus.
    virtual void recalculateSize();
    // K 0xc0, 0x6ad9e8: highlights the item under the point (delegating to an open sub menu first, opening or closing sub menus); true when
    // an item is hit.
    virtual bool highlight(const core::position2d<int>& point, bool canOpenSubMenu);
    // K 0xc4, 0x6ad02c: 0 not inside, 1 an item was selected (EGET_MENU_ITEM_SELECTED posted), 2 a disabled / separator / sub menu item.
    virtual std::uint32_t sendClick(const core::position2d<int>& point);
    // K 0xc8, 0x6ad1d0 and K 0xcc, 0x6ad214: the item rectangles (full line; text part without the 20 pixel margin).
    virtual core::rect<int> getHRect(const SItem& item, const core::rect<int>& absolute) const;
    virtual core::rect<int> getRect(const SItem& item, const core::rect<int>& absolute) const;

    // 0x6ad58c: the receiver of the selection events (also set in the sub menus).
    void setEventParent(IGUIElement* parent);
    // 0x6ad620: any sub menu is visible.
    bool hasOpenSubMenu() const;
    // 0x6ad6c4: hides every sub menu.
    void closeAllSubMenus();

    int highLighted = -1;                       // +0x158
    std::vector<SItem> items;                   // +0x15c
    core::position2d<int> pos{};                // +0x168
    std::uint32_t changeTime = 0;               // +0x170
    IGUIElement* eventParent = nullptr;         // +0x174
    bool allowFocus = true;                     // +0x178
    IGUIFont* lastFont = nullptr;               // +0x17c
};

class CGUIMenu : public CGUIContextMenu {
public:
    // 0x545928 (C1) / 0x545a10 (C2): a context menu that does not take the focus, with the type EGUIET_MENU, clipped.
    CGUIMenu(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x5458b4 (D1), 0x545edc (D0 copy): empty.
    ~CGUIMenu() override;

    // K 0x08, 0x545c18: a left release takes the focus, brings the bar to the front and highlights (closing sub menus); a move highlights
    // while focused; a lost focus closes the sub menus.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x545878: the width follows the parent.
    void updateAbsolutePosition() override;
    // K 0x20, 0x545fc4: the tool bar pane and the centred item texts (a sunken pane under the highlighted one).
    void draw() override;
    // K 0xbc, 0x5455b8: the items are laid out left to right (text width + 20, a separator has no width); the sub menus hang below.
    void recalculateSize() override;
    // K 0xc8, 0x545818 and K 0xcc, 0x54585c: the item rectangles of the bar (PosY is the x offset).
    core::rect<int> getHRect(const SItem& item, const core::rect<int>& absolute) const override;
    core::rect<int> getRect(const SItem& item, const core::rect<int>& absolute) const override;
};

}  // namespace glitch::gui
