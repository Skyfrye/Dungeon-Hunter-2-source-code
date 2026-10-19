// Script_SkipAllCharMenuTutorialMessages: script command that drops every queued character-menu tutorial
// message. Execute pops the front of the global CharMenuTutorialMsg deque until it is empty. IsBlocking
// is always false. The command adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size (inferred, no operator new evidence).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460428, IsBlocking 0x455960).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SkipAllCharMenuTutorialMessages : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x460428
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455960 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
