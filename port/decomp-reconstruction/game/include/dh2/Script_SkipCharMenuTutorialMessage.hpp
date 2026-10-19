// Script_SkipCharMenuTutorialMessage: script command that pops the front character-menu tutorial
// message and invokes its skip function. Execute does nothing when the queue is empty, and
// IsBlocking is always false. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4603d0, IsBlocking 0x455958,
// factory 0x457834).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SkipCharMenuTutorialMessage : public ScriptCmdImpl {
public:
    ~Script_SkipCharMenuTutorialMessage();                              // deleting destructor, class-facts

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x4603d0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455958 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
