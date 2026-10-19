// Script_MoveActor: script command that moves a named actor to a named target object. Execute resolves
// the actor (Character) and the target by name, stores the actor and the actor's static flag, then either
// warps the actor (skipping pass, or the target is reached) or sets v2Controller::Cmd_MoveTo.
// Original allocation size 0x1C: GetNewScriptCmdImplInstance<Script_MoveActor> (0x4581e4) calls operator new(0x1C).
// The members below end at +0x18.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45f0a8, IsBlocking 0x459698).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Character;

class Script_MoveActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45f0a8
    bool IsBlocking() const override;                                  // slot 0x0c: 0x459698

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    bool unk_10;                                                       // +0x10 copied from the argument record (+0x1c); cleared when the target is missing
    uint8_t pad_11[3];                                                 // +0x11
    Character* m_actor;                                                // +0x14 actor resolved by name, null when absent
    uint8_t m_wasStatic;                                               // +0x18 ObjectBase m_static of the actor before the move (property "static")
};
