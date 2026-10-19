// Script_ShowTrophies: script command that shows the trophies screen. Execute is empty in the original
// and IsBlocking is always true. The command adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size (inferred, no operator new evidence).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x455904, IsBlocking 0x455908).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_ShowTrophies : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x455904 (empty)
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455908 returns true

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
