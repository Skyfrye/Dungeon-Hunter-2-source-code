// Script_PlayAnimByName: script command that plays an animation by name on a named object.
// Execute(bool, int) finds the object by name (data +0x18) from the command data record, takes the
// object's animation controller and calls its play slot with the value at data +0x0c and the flag byte
// (data +0x10). Never blocks: IsBlocking returns false. Init and Update are inherited from ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_PlayAnimByName> news 16 bytes and
// sets the vptr, unk_04 = 0, m_cmdId = -1 and m_args = 0. The command adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e124, IsBlocking 0x4556a4,
// factory 0x4587e8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayAnimByName : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c). Init (0x00) and
    // Update (0x04) are inherited.
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45e124
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4556a4, returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. Nothing else in the object: size 0x10.
};
