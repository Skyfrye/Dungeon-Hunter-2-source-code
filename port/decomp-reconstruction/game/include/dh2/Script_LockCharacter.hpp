// Script_LockCharacter: script command that locks a named character's input or, for the name "All"
// (case-insensitive), sets v2Controller::s_blocked. Execute runs only on the forward pass (a2 == 0).
// Named targets get the flag at +0x08 of their controller (v2Controller +0x08 = 1) when the object
// resolves to a Character. Blocking is never set.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_LockCharacter>, 0x458678, operator new(0x10), asm verified). No members of its
// own were recovered: ScriptCmdImpl occupies +0x00 .. +0x0f and the rest is unused.
// Argument record (m_args): +0x0c const char*, the character name or "All".
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45dda0, IsBlocking 0x4556bc).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_LockCharacter : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45dda0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4556bc returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered; past the 16-byte allocation (integrator to drop)
};
