// MenuConfirm: the "menu_confirm" modal dialog, a MenuConfirmBase singleton (GetInstance builds it as a
// function-local static). It adds no members and no virtual slots: its vtable is MenuConfirmBase's with the
// destructor slots pointing here. Original 32-bit size 0xc8 (200), the same as MenuConfirmBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x42acb8 / 0x42ad80, dtors 0x42aaa0 / 0x42aad4 /
// 0x42aaf0, GetInstance 0x42acf8, vtable _ZTV11MenuConfirm).
#pragma once

#include "dh2/MenuConfirmBase.hpp"

class MenuConfirm : public MenuConfirmBase {
public:
    MenuConfirm();                                          // 0x42acb8 (C1), 0x42ad80 (C2): MenuConfirmBase("menu_confirm")
    ~MenuConfirm() override;                                // +0x00, +0x04 dtor slots: 0x42aaa0 (D1), 0x42aad4 (D0), 0x42aaf0 (D2)

    static MenuConfirm* GetInstance();                      // 0x42acf8: function-local static

    // No members of its own. MenuConfirmBase occupies +0x00 .. +0xc7 (size 0xc8), so the object is
    // exactly the base layout.
};
