// Script_UnlockCharacter: script command that clears the lock flag of a named character.
// Execute reads its data record (ScriptCmdImpl::m_args) and takes the character name at record +0x0c.
// The name "All" instead clears the global controller block (v2Controller::s_blocked). Otherwise the
// object is looked up by name and, when it is a Character, a byte in its secondary block is cleared.
// It adds no state to ScriptCmdImpl.
// Original 32-bit size not recovered (no factory size in class-facts); ScriptCmdImpl is 0x10.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45dc80, IsBlocking 0x45574c).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_UnlockCharacter : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45dc80
    bool IsBlocking() const override;                                  // slot 0x0c: 0x45574c returns false
};
