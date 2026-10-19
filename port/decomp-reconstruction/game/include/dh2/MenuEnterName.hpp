// MenuEnterName: the name-entry page ("menu_EnterName"), a function-local singleton (GetInstance).
// Original 32-bit size 0xc4 (196): no members of its own, as far as the constructor and the queued methods show.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x42afa0 / 0x42afec, dtor 0x42af6c).
#pragma once

#include "dh2/MenuBase.hpp"

class MenuEnterName : public MenuBase {
public:
    MenuEnterName();                                                    // 0x42afa0 / 0x42afec
    ~MenuEnterName() override;                                          // +0x00, +0x04 (0x42af1c, 0x42af50); D2 0x42af6c

    static MenuEnterName* GetInstance();                                // 0x42b038

    // Overrides of MenuBase slots, in vtable order.
    void Show() override;                                               // +0x0c 0x42aef0: calls IsValidMenu (+0x3c), then MenuBase::Show
    void Hide() override;                                               // +0x10 0x42aec4: calls IsValidMenu (+0x3c), then MenuBase::Hide
    void GotFocus() override;                                           // +0x14 0x42aec0: tail branch to static GSKeyboard::ClearString (0x385914)
    void LostFocus() override;                                          // +0x18 0x42ae9c: empty (bx lr)
};
