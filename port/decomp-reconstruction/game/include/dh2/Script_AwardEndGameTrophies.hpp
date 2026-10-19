// Script command that unlocks the end-game quest-win trophies for the local player's class
// (quest_warriorwin, quest_berserkerwin, ...). Derives from ScriptCmdImpl and adds no members:
// GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies> allocates 0x10 bytes, the ScriptCmdImpl size.
// Original 32-bit size 0x10 (16). Inherited fields are ScriptCmdImpl's: +0x04 flag, +0x08 int, +0x0c argument block.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x459b04, IsBlocking 0x455918).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AwardEndGameTrophies : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                              // slot 0x08: 0x459b04
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455918 returns false
};
