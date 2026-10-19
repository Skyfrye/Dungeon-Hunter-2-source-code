// glitch::gui::IGUIComboBox and CGUIComboBox: the combo box (a button and a text, opening a list box). Canonical header of the scene-owner wave
// (gui family). It replaces the stand-ins of gui_elements.hpp, gui_simple_accessors.hpp, layouts/gui.hpp, recon/slice_24.hpp and recon/slice_33.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; IGUIComboBox constructor 0x6aae64 (element type 2), destructors 0x6acbbc / 0x6acd10;
// CGUIComboBox constructors 0x6ab38c / 0x6ab740, destructors 0x6acc30 / 0x6accd4; tools/decomp_vtable.py glitch::gui::CGUIComboBox; the object
// continues IGUIElement at +0x158; the virtual bases follow at +0x184 / +0x188, count at +0x18c):
//   +0x158 ListButton (IGUIButton, reference held)   +0x15c SelectedText (IGUIStaticText, reference held)   +0x160 ListBox (open list or null)
//   +0x164 Items (STLport vector of wide strings: start, finish, end)   +0x170 Selected (-1)   +0x174 HasFocus   +0x178 LastFocus
//   +0x17c HAlign   +0x180 VAlign
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/gui/IGUIElement.hpp"

namespace glitch::gui {

class IGUIButton;
class IGUIListBox;
class IGUIStaticText;

class IGUIComboBox : public IGUIElement {
public:
    // 0x6aae64: the IGUIElement base with the type EGUIET_COMBO_BOX.
    IGUIComboBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6acbbc (D1), 0x6acd10 (D0 copy): empty.
    ~IGUIComboBox() override;

    virtual std::uint32_t getItemCount() const = 0;                                                 // K 0x7c
    virtual const wchar_t* getItem(std::uint32_t idx) const = 0;                                    // K 0x80
    virtual std::uint32_t addItem(const wchar_t* text) = 0;                                         // K 0x84
    virtual void removeItem(std::uint32_t id) = 0;                                                  // K 0x88
    virtual void clear() = 0;                                                                       // K 0x8c
    virtual int getSelected() const = 0;                                                            // K 0x90
    virtual void setSelected(int idx) = 0;                                                          // K 0x94
    virtual void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) = 0;          // K 0x98
};

class CGUIComboBox : public IGUIComboBox {
public:
    // 0x6ab38c (C1) / 0x6ab740 (C2): a list button at the right edge (the skin's window button width), a static text for the selected item, a
    // tab stop, not clipped; the text starts upper-left / centred.
    CGUIComboBox(IGUIEnvironment* environment, IGUIElement* parent, int id, core::rect<int> rectangle);
    // 0x6acc30 (D1), 0x6accd4 (D2): frees the items.
    ~CGUIComboBox() override;

    // K 0x08, 0x6abb48: keys (Enter / Space open, Escape closes, arrows / Home / End / Page change the selection), the wheel, mouse presses
    // forwarded to the open list, a lost focus closing the list, the list box answers selecting an item.
    bool onEvent(const SEvent& event) override;
    // K 0x20, 0x6ac368: colours the selected text by the focus state, draws the sunken pane, the children.
    void draw() override;
    // K 0x48, 0x6aaafc: the selected item's text.
    const wchar_t* getText() const override;
    // K 0x74 / 0x78, 0x6ac12c and 0x6ac9bc.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;

    std::uint32_t getItemCount() const override;               // 0x6aaa88
    const wchar_t* getItem(std::uint32_t idx) const override;  // 0x6aaab8
    std::uint32_t addItem(const wchar_t* text) override;       // 0x6ac7a4
    void removeItem(std::uint32_t id) override;                // 0x6ac938
    void clear() override;                                     // 0x6ac760
    int getSelected() const override;                          // 0x6aab14
    void setSelected(int idx) override;                        // 0x6aab1c
    void setTextAlignment(EGUI_ALIGNMENT horizontal, EGUI_ALIGNMENT vertical) override;  // 0x6aaa64

    // 0x6aabb4: posts EGET_COMBO_BOX_CHANGED to the parent.
    void sendSelectionChangedEvent();
    // 0x6aac1c: closes the list box, or opens one below the combo box (up to five rows high) with the items.
    void openCloseMenu();

    IGUIButton* listButton = nullptr;            // +0x158
    IGUIStaticText* selectedText = nullptr;      // +0x15c
    IGUIListBox* listBox = nullptr;              // +0x160
    std::vector<std::wstring> items;             // +0x164
    int selected = -1;                           // +0x170
    bool hasFocus = false;                       // +0x174
    IGUIElement* lastFocus = nullptr;            // +0x178
    EGUI_ALIGNMENT hAlign = EGUIA_UPPERLEFT;     // +0x17c
    EGUI_ALIGNMENT vAlign = EGUIA_CENTER;        // +0x180
};

}  // namespace glitch::gui
