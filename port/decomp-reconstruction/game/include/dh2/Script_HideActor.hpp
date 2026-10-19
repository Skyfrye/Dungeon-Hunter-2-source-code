// Script_HideActor: script command that hides the named object. Execute looks the object up by the
// name in its argument record and calls its virtual slot +0x40 with false. It never blocks.
// Original 32-bit size 0x10 (16). Allocated by GetNewScriptCmdImplInstance<Script_HideActor> at 0x45810c.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e028, IsBlocking 0x455828).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_HideActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45e028
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455828 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
