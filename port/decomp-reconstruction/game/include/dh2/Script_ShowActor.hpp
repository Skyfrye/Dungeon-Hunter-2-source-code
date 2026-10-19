// Script_ShowActor: script command that shows a named actor. Execute looks the object up by name in
// the command's argument object, disables its zoning and calls its virtual slot +0x40 with true.
// IsBlocking is always false. The command adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size (inferred, no operator new evidence).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45eb14, IsBlocking 0x455820).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_ShowActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45eb14
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455820 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
