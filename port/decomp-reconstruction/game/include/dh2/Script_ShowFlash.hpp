// Script_ShowFlash: script command that shows a Flash menu, or the HUD when the name contains "HUD".
// Init resolves the menu by name once: null for the HUD, otherwise MenuManager::GetMenuByName. Execute
// calls the menu's virtual slot +0x0c when a menu was found. For the HUD it invokes the
// "DisplayRightHud", "FillActionIcon" and "DisplayOfCurrentHud" callbacks. IsBlocking waits while the
// menu's animation count (+0x78 in MenuBase) is below the command's count, when the command's flag is set.
// Original 32-bit size 0x14 (20). Reconstructed from libDungeonHunter2.so pseudocode
// (Init 0x45983c, Execute 0x45f8c8, IsBlocking 0x4556c4).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class MenuBase;

class Script_ShowFlash : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x00, 0x08 and 0x0c). Update is inherited (0x04).
    void Init() override;                                               // slot 0x00: 0x45983c
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45f8c8
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4556c4

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    MenuBase* m_menu;                                                   // +0x10 menu found by name in Init, null for "HUD"
};
