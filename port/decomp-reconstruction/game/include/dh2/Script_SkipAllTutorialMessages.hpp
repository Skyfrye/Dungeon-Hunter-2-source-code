// Script_SkipAllTutorialMessages: script command that drops every queued tutorial message, then calls
// MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage. Execute walks the global TutorialMsg node
// queue. IsBlocking is always false. The command adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size (inferred, no operator new evidence).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x46033c, IsBlocking 0x455948).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SkipAllTutorialMessages : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x46033c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455948 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
