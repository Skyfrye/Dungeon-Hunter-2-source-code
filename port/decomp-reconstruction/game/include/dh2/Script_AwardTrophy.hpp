// Script command that unlocks one trophy. The trophy id is read from the argument block that
// ScriptCmdImpl holds at +0x0c (block +0x08). Derives from ScriptCmdImpl and adds no members:
// GetNewScriptCmdImplInstance<Script_AwardTrophy> allocates 0x10 bytes, the ScriptCmdImpl size.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4593c4, IsBlocking 0x455920).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AwardTrophy : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                              // slot 0x08: 0x4593c4
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455920 returns false
};
