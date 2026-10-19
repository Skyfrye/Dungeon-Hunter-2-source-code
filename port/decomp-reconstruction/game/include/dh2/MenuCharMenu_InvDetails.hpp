// MenuCharMenu_InvDetails: the inventory details page of the character menu ("menu_InventorySheetDetails"),
// a MenuBase singleton. It has no members of its own. Show and Hide reuse the avatar camera of
// MenuCharMenu_InvMain (its statics), so the layout is MenuBase's.
// Original 32-bit size 0xc4 (196): the same as MenuBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x452cec / 0x452d34, Init 0x452cd4,
// GetInstance 0x452d7c, Show 0x453014, Hide 0x4528b8).
#pragma once

#include "dh2/MenuBase.hpp"

class MenuCharMenu_InvDetails : public MenuBase {
public:
    MenuCharMenu_InvDetails();                                          // 0x452cec (C1), 0x452d34 (C2)
    ~MenuCharMenu_InvDetails() override;                                // +0x00, +0x04: 0x452c50 (D1), 0x452c84 (D0), 0x452ca0 (D2)

    static MenuCharMenu_InvDetails* GetInstance();                      // 0x452d7c static local, constructed on first use

    void Init();                                                        // 0x452cd4 registers the menu with MenuManager

    // Overrides of MenuBase slots, in vtable order. MenuBase's other slots are inherited.
    void Show() override;                                               // +0x0c 0x453014
    void Hide() override;                                               // +0x10 0x4528b8
};
