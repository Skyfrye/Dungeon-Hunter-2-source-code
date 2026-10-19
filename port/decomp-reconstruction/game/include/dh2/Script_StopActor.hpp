// Script_StopActor: script command that stops the current action of a named character, or of every
// character when the name is "All" (case-insensitive). For each matched Character it sets the controller
// flag at +0x09 for the duration of v2Controller::Cmd_Stop. Adds no members.
// Execute reads the actor name (const char*) from the ScriptCmdImpl m_args block at +0x0c.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_StopActor> at 0x458238 passes 0x10 to new),
// which is the ScriptCmdImpl size; the class adds nothing. The pad_10 filler below (+0x10 .. +0x3f) has no
// counterpart in the original and should be removed when the integrator applies layout requests.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45eec0, IsBlocking 0x4557e0 returns false).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_StopActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45eec0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4557e0 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
