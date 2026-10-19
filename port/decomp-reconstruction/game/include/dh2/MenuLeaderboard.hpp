// MenuLeaderboard: the "Multiplayer_Leaderboard" menu page. A singleton (GetInstance) that the
// constructor registers with MenuManager. Its constructor and methods add no members to MenuBase.
// Original 32-bit size: 0xc4 (196), the size of MenuBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x42b8a0, GetInstance 0x42b8ec).
#pragma once

#include "dh2/MenuBase.hpp"

class MenuLeaderboard : public MenuBase {
public:
    MenuLeaderboard();                                                // 0x42b8a0 (C1) / 0x42b970 (C2)

    // Overrides in vtable slot order. Slots +0x08 .. +0x4c are MenuBase's (MenuBase occupies +0x00 .. +0xc3).
    ~MenuLeaderboard() override;                                      // +0x00, +0x04: D1 0x42b81c, D0 0x42b850; D2 0x42b86c
    void Show() override;                                             // +0x0c 0x42b818, a thunk to MenuBase::Show
    void Hide() override;                                             // +0x10 0x42b7f4: clears the global `leader`, then MenuBase::Hide

    static MenuLeaderboard* GetInstance();                            // 0x42b8ec, function-local static
};
