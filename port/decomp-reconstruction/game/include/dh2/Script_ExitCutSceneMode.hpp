// Script_ExitCutSceneMode: script command that leaves cutscene mode. Execute tells the HUD to stop
// the cutscene, re-enables animation scaling, and sends a CMsgScriptCmd online message. For each
// player it clears the in-cutscene flag, or calls the player's slot +0x40 when the player has an
// extra object. It never blocks.
// Original 32-bit size 0x10 (16). Allocated by GetNewScriptCmdImplInstance<Script_ExitCutSceneMode> at 0x458cb0.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4599ac, IsBlocking 0x455640).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_ExitCutSceneMode : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x4599ac
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455640 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
