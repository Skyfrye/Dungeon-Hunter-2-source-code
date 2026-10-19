// Script_SkipTutorialMessage: script command that skips the enqueued tutorial message. Execute is a
// thunk to MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage. IsBlocking is always false.
// Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_SkipTutorialMessage> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460338, IsBlocking 0x455940,
// factory 0x45790c).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SkipTutorialMessage : public ScriptCmdImpl {
public:
    ~Script_SkipTutorialMessage();                                      // deleting destructor, class-facts

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x460338, thunk
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455940 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
