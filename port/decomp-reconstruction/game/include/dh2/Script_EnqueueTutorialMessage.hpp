// Script_EnqueueTutorialMessage: script command that appends a TutorialMsg id pair from the command's
// argument object to the global TutorialMsg deque, and invokes the tutorial start function when the
// deque was empty before the push. IsBlocking is false.
// Adds no members to ScriptCmdImpl; the original allocation size is not recovered (base is 0x10).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4613d4, IsBlocking 0x455938).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_EnqueueTutorialMessage : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x4613d4
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455938 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. The argument object (m_args, +0x0c) is read by Execute;
    // its layout belongs to the argument class and is not declared here.
};
