// Script_HideFlash: script command that hides a Flash menu, or the HUD when the name contains "HUD".
// Init resolves the menu by name once: null for the HUD, otherwise MenuManager::GetMenuByName. Execute
// calls the menu's virtual slot +0x10 when a menu was found, and for the HUD invokes the
// "DisplayOfCurrentHud" callback. IsBlocking waits while the menu's m_animOverCount (+0x78 in MenuBase)
// is still below the command's count.
// Original 32-bit size 0x14 (20). Allocated by GetNewScriptCmdImplInstance<Script_HideFlash> at 0x4586c0.
// Reconstructed from libDungeonHunter2.so pseudocode (Init 0x4597e8, Execute 0x45f78c, IsBlocking 0x455708).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class MenuBase;

class Script_HideFlash : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x00, 0x08 and 0x0c).
    void Init() override;                                               // slot 0x00: 0x4597e8
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45f78c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455708

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    MenuBase* m_menu;                                                   // +0x10 menu found by name in Init, null for "HUD"
};
