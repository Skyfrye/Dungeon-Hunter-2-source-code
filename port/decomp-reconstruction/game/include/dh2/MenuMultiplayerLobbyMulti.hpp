// MenuMultiplayerLobbyMulti: the "menu_MultiplayerLobbyMulti" page. A singleton (GetInstance) that
// pushes the player list into its Flash movie on every update. Adds no members to MenuBase.
// Original 32-bit size: 0xc4 (196), the size of MenuBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4357e8, GetInstance 0x435880).
#pragma once

#include "dh2/MenuBase.hpp"

class MenuMultiplayerLobbyMulti : public MenuBase {
public:
    MenuMultiplayerLobbyMulti();                                      // 0x4357e8 (C1) / 0x435834 (C2)

    // Overrides in vtable slot order. Slots +0x08 .. +0x4c are MenuBase's (MenuBase occupies +0x00 .. +0xc3).
    ~MenuMultiplayerLobbyMulti() override;                            // +0x00, +0x04: D1 0x435764, D0 0x435798; D2 0x4357b4
    void Show() override;                                             // +0x0c 0x435760, a thunk to MenuBase::Show
    void Hide() override;                                             // +0x10 0x43575c, a thunk to MenuBase::Hide
    void Update() override;                                           // +0x1c 0x435714: MenuBase::Update, then the "updatePlayerList" callback on m_character

    static MenuMultiplayerLobbyMulti* GetInstance();                  // 0x435880, function-local static
};
