// glitch::gui::IGUIListBox and CGUIListBox: the list box. Canonical header of the scene-owner wave (gui family). It replaces the
// stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_01.hpp, recon/slice_02.hpp and recon/slice_31.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIListBox constructor 0x542568 (element type 10), destructors 0x544428 / 0x544660;
// CGUIListBox constructors 0x542a40 / 0x542c64, destructors 0x54449c / 0x544578 / 0x544594; tools/decomp_vtable.py glitch::gui::CGUIListBox;
// the object continues IGUIElement at +0x158; the virtual bases follow at +0x1dc / +0x1e0, count at +0x1e4, size 0x1e8):
//   +0x158 Items (STLport vector of 96-byte items: start, finish, end)   +0x164 Selected (-1)   +0x168 ItemHeight   +0x16c TotalItemHeight
//   +0x170 ItemsIconWidth   +0x174 Font (reference held)   +0x178 IconBank (reference held)   +0x17c ScrollBar (CGUIScrollBar, reference held)
//   +0x180 Selecting   +0x181 DrawBack   +0x182 MoveOverSelect   +0x184 selectTime   +0x188 AutoScroll
//   +0x18c KeyBuffer (STLport wide string, 72 bytes)   +0x1d4 LastKeyTime   +0x1d8 HighlightWhenNotFocused
// An item is 96 bytes: +0x00 the text (a wide string), +0x48 the icon (-1), +0x4c four override colours of 5 bytes (a flag and the colour).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/allocator.hpp"  // core::stringc / stringw / svector (STLPORT-DECISION.md section 6)
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class CGUIScrollBar;
class IGUIFont;
class IGUISpriteBank;

// The colour kinds of an item (Irrlicht's EGUI_LISTBOX_COLOR).
enum EGUI_LISTBOX_COLOR : std::int32_t {
    EGUI_LBC_TEXT = 0,
    EGUI_LBC_TEXT_HIGHLIGHT,
    EGUI_LBC_ICON,
    EGUI_LBC_ICON_HIGHLIGHT,
    EGUI_LBC_COUNT,
};

class IGUIListBox : public IGUIElement {
public:
    // 0x542568: the IGUIElement base with the type EGUIET_LIST_BOX.
    IGUIListBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x544428 (D1), 0x544660 (D0 copy): empty.
    ~IGUIListBox() override;

    virtual std::uint32_t getItemCount() const = 0;                                                         // K 0x7c
    virtual const wchar_t* getListItem(std::uint32_t id) const = 0;                                         // K 0x80
    virtual std::uint32_t addItem(const wchar_t* text) = 0;                                                 // K 0x84
    virtual std::uint32_t addItem(const wchar_t* text, int icon) = 0;                                       // K 0x88
    virtual void removeItem(std::uint32_t index) = 0;                                                       // K 0x8c
    virtual int getIcon(std::uint32_t index) const = 0;                                                     // K 0x90
    virtual void setSpriteBank(IGUISpriteBank* bank) = 0;                                                   // K 0x94
    virtual void clear() = 0;                                                                               // K 0x98
    virtual int getSelected() const = 0;                                                                    // K 0x9c
    virtual void setSelected(int index) = 0;                                                                // K 0xa0
    virtual void setAutoScrollEnabled(bool scroll) = 0;                                                     // K 0xa4
    virtual bool isAutoScrollEnabled() const = 0;                                                           // K 0xa8
    virtual void setItemOverrideColor(std::uint32_t index, const video::SColor& color) = 0;                  // K 0xac
    virtual void setItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType, const video::SColor& color) = 0;  // K 0xb0
    virtual void clearItemOverrideColor(std::uint32_t index) = 0;                                           // K 0xb4
    virtual void clearItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) = 0;             // K 0xb8
    virtual bool hasItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const = 0;         // K 0xbc
    virtual video::SColor getItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const = 0;  // K 0xc0
    virtual video::SColor getItemDefaultColor(EGUI_LISTBOX_COLOR colorType) const = 0;                      // K 0xc4
    virtual void setItem(std::uint32_t index, const wchar_t* text, int icon) = 0;                           // K 0xc8
    virtual std::int32_t insertItem(std::uint32_t index, const wchar_t* text, int icon) = 0;                // K 0xcc
    virtual void swapItems(std::uint32_t index1, std::uint32_t index2) = 0;                                 // K 0xd0
};

class CGUIListBox : public IGUIListBox {
public:
    // One override colour of an item: a flag and the colour (5 bytes in the original).
    struct SOverrideColor {
        bool use = false;
        video::SColor color{};
    };
    // One item (96 bytes in the original).
    struct ListItem {
        std::wstring text;                           // +0x00
        int icon = -1;                               // +0x48
        SOverrideColor overrideColors[EGUI_LBC_COUNT];  // +0x4c
    };

    // 0x542a40 (C1) / 0x542c64 (C2): the scroll bar (a vertical CGUIScrollBar, one scroll bar width wide, invisible until needed) is created;
    // `clip` false makes the list box and the bar not clipped.
    CGUIListBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle, bool clip = true, bool drawBack = false,
                bool moveOverSelect = false);
    // 0x54449c (D1), 0x544578, 0x544594: drops the scroll bar, the font and the icon bank.
    ~CGUIListBox() override;

    // K 0x08, 0x542f54: keys (arrows, Page up / down, Home, End), type-ahead search, the mouse (press / drag / release select, the wheel scrolls
    // the bar); changes are posted to the parent as EGET_LISTBOX_CHANGED / EGET_LISTBOX_SELECTED_AGAIN.
    bool onEvent(const SEvent& event) override;
    // K 0x0c, 0x541dcc: also recomputes the item height.
    void updateAbsolutePosition() override;
    // K 0x20, 0x5439b4: the sunken pane, then the visible items (the selected one highlighted when the list box or its bar has the focus, unless
    // HighlightWhenNotFocused), with their icons and texts in the item or default colours; the children.
    void draw() override;
    // K 0x74 / 0x78, 0x5449b8 and 0x544d7c.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    std::uint32_t getItemCount() const override;                                  // 0x541bcc
    const wchar_t* getListItem(std::uint32_t id) const override;                  // 0x541bf4
    std::uint32_t addItem(const wchar_t* text) override;                          // 0x541c6c
    std::uint32_t addItem(const wchar_t* text, int icon) override;                // 0x545480
    void removeItem(std::uint32_t index) override;                                // 0x544390
    int getIcon(std::uint32_t index) const override;                              // 0x541c30
    void setSpriteBank(IGUISpriteBank* bank) override;                            // 0x541de4
    void clear() override;                                                        // 0x544280
    int getSelected() const override;                                             // 0x541dc4
    void setSelected(int index) override;                                         // 0x542518
    void setAutoScrollEnabled(bool scroll) override;                              // 0x541ee4
    bool isAutoScrollEnabled() const override;                                    // 0x541eec
    void setItemOverrideColor(std::uint32_t index, const video::SColor& color) override;  // 0x541ff4
    void setItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType, const video::SColor& color) override;  // 0x542050
    void clearItemOverrideColor(std::uint32_t index) override;                    // 0x5420d4
    void clearItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) override;  // 0x542114
    bool hasItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const override;  // 0x542168
    video::SColor getItemOverrideColor(std::uint32_t index, EGUI_LISTBOX_COLOR colorType) const override;  // 0x5421c8
    video::SColor getItemDefaultColor(EGUI_LISTBOX_COLOR colorType) const override;  // 0x542258
    void setItem(std::uint32_t index, const wchar_t* text, int icon) override;    // 0x544828
    std::int32_t insertItem(std::uint32_t index, const wchar_t* text, int icon) override;  // 0x545304
    void swapItems(std::uint32_t index1, std::uint32_t index2) override;          // 0x5446dc

    // 0x541c84: the item height (the font's "A" height plus 4), the total height and the scroll bar range / visibility.
    void recalculateItemHeight();
    // 0x541e18: scrolls the bar so that the selected item is in view (when auto scroll is on).
    void recalculateScrollPos();
    // 0x541ef4: grows ItemsIconWidth to the width of the icon's first frame.
    void recalculateItemWidth(int icon);
    // 0x542400: selects the item at the mouse height and posts the change (not when `onlyHover`).
    void selectNew(int ypos, bool onlyHover = false);
    // 0x5448ac: the attribute names of an override colour kind ("UseColText" / "ColText", ...); false for an unknown kind.
    bool getSerializationLabels(EGUI_LISTBOX_COLOR colorType, core::stringc& useColorLabel, core::stringc& colorLabel) const;

    std::vector<ListItem> items;                  // +0x158
    int selected = -1;                            // +0x164
    int itemHeight = 0;                           // +0x168
    int totalItemHeight = 0;                      // +0x16c
    int itemsIconWidth = 0;                       // +0x170
    IGUIFont* font = nullptr;                     // +0x174
    IGUISpriteBank* iconBank = nullptr;           // +0x178
    CGUIScrollBar* scrollBar = nullptr;           // +0x17c
    bool selecting = false;                       // +0x180
    bool drawBack = false;                        // +0x181
    bool moveOverSelect = false;                  // +0x182
    std::uint32_t selectTime = 0;                 // +0x184
    bool autoScroll = true;                       // +0x188
    std::wstring keyBuffer;                       // +0x18c
    std::uint32_t lastKeyTime = 0;                // +0x1d4
    bool highlightWhenNotFocused = true;          // +0x1d8
};

}  // namespace glitch::gui
