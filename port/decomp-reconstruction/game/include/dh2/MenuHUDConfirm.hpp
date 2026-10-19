// MenuHUDConfirm: the "menu_hud_confirm" dialog, a MenuConfirmBase singleton (GetInstance builds it as a
// function-local static). It adds no members and no virtual slots: its vtable is MenuConfirmBase's with the
// destructor slots pointing here. Original 32-bit size 0xc8 (200), the same as MenuConfirmBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x42abb4 / 0x42ac78, dtors 0x42aa1c / 0x42aa50 /
// 0x42aa6c, GetInstance 0x42abf4, vtable _ZTV14MenuHUDConfirm).
#pragma once

#include "dh2/MenuConfirmBase.hpp"

class MenuHUDConfirm : public MenuConfirmBase {
public:
    MenuHUDConfirm();                                       // 0x42abb4 (C1), 0x42ac78 (C2): MenuConfirmBase("menu_hud_confirm")
    ~MenuHUDConfirm() override;                             // +0x00, +0x04 dtor slots: 0x42aa1c (D1), 0x42aa50 (D0), 0x42aa6c (D2)

    static MenuHUDConfirm* GetInstance();                   // 0x42abf4: function-local static

    // No members of its own. MenuConfirmBase occupies +0x00 .. +0xc7 (size 0xc8), so the object is
    // exactly the base layout.
};
