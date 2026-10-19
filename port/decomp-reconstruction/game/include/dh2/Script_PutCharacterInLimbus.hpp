// Script_PutCharacterInLimbus: script command that puts a named character into the limbus state.
// Adds no members. Execute reads its argument block from ScriptCmdImpl m_args (+0x0c): the limbus
// state byte at +0x08 and the character name (const char*) at +0x10.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size; no own members (not verified against the factory).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45f4e8, IsBlocking 0x45577c returns false).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PutCharacterInLimbus : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45f4e8
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45577c returns false
};
