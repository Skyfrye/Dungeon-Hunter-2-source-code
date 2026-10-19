// Script_PlayActorAnim: script command that plays an animation state on a named character's state
// machine. Init (0x45a2ec) is not yet read. Execute (forward pass only) resolves the
// actor by name into m_actor, then writes two values from the argument record into Arrays::AnimTable
// entries and calls CharStateMachine::SM_SetAnimState on the actor.
// Original allocation size not recovered (no factory size in class-facts). The members below end at
// +0x1b (ObjectHandle is 12 bytes on 32-bit); the original size is at least 0x1c.
// Reconstructed from libDungeonHunter2.so pseudocode (Init 0x45a2ec, Execute 0x45e890, IsBlocking 0x459628).
#pragma once

#include "dh2/ObjectHandle.hpp"
#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayActorAnim : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x00, 0x08 and 0x0c).
    void Init() override;                                              // slot 0x00: 0x45a2ec
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45e890
    bool IsBlocking() const override;                                  // slot 0x0c: 0x459628

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    ObjectHandle m_actor;                                              // +0x10 actor resolved by name (Character handle)
};
