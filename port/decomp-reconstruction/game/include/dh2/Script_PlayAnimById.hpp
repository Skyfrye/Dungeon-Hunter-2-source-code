// Script_PlayAnimById: script command that plays an animation by its numeric id on a named object.
// Execute(bool, int) finds the object by name (data +0x14) from the command data record, takes the
// object's animation controller and calls its play slot with the id (data +0x08) and the flag byte (data +0x0c).
// Never blocks: IsBlocking returns false. Init and Update are inherited from ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_PlayAnimById> news 16 bytes and
// sets the vptr, unk_04 = 0, m_cmdId = -1 and m_args = 0. The command adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e24c, IsBlocking 0x45569c,
// factory 0x458830).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayAnimById : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c). Init (0x00) and
    // Update (0x04) are inherited.
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45e24c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45569c, returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. Nothing else in the object: size 0x10.
};
