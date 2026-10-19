// Script_UnEquipItemFromSlot: script command that unequips one slot of a named character.
// Execute reads its data record (ScriptCmdImpl::m_args): the slot argument at record +0x08 and the
// character name at record +0x10. It looks the object up by name and, when it is a Character, makes
// the virtual call at vtable byte +0x144 with the slot. It adds no state to ScriptCmdImpl.
// Original 32-bit size not recovered (no factory size in class-facts); ScriptCmdImpl is 0x10.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45da8c, IsBlocking 0x4557f8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_UnEquipItemFromSlot : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45da8c
    bool IsBlocking() const override;                                  // slot 0x0c: 0x4557f8 returns false
};
