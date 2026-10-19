// Script_SetActorPosition: script command that moves one named object onto another's position. Execute
// resolves both objects by name from the argument record (ScriptCmdImpl::m_args), sets the actor's
// position to the reference object's position (floats at +0x160 of GameObject) and forces an update.
// When the object's current handle resolves to a Character, Execute also idles its CharStateMachine
// and, when a virtual check (vtable slot 0x28) passes, moves the players in slots 1 to 3 to fixed
// offsets of +/-200 from the reference position. Never blocking. Original 32-bit size 0x10 (16): no members of its own,
// the record is the ScriptCmdImpl base alone (no operator new size in class-facts, see open_questions).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e5c8, IsBlocking 0x455838).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetActorPosition : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45e5c8
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455838 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
