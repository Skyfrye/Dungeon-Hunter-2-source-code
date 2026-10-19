// Script_FlushMessages: script command that drops every queued dialog, achievement, status and online
// status message. Execute flushes the dialog queue, then pops the remaining entries of the achievement,
// status and online status deques. It never blocks.
// Original 32-bit size 0x10 (16). Allocated by GetNewScriptCmdImplInstance<Script_FlushMessages> at 0x457714.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460a58, IsBlocking 0x455978).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_FlushMessages : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x460a58
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455978 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
