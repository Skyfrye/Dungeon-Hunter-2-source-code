// Script_EnqueueCharMenuTutorialMessage: script command that builds a CharMenuTutorialMsg from the
// command's argument object (title and body strings, plus an id) and pushes it onto the global
// CharMenuTutorialMsg deque. IsBlocking is false.
// Adds no members to ScriptCmdImpl; the original allocation size is not recovered (base is 0x10).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460b1c, IsBlocking 0x455950).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_EnqueueCharMenuTutorialMessage : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x460b1c
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455950 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. The argument object (m_args, +0x0c) is read by Execute;
    // its layout belongs to the argument class and is not declared here.
};
