// Script_SpawnCharacter: script command that looks up a Character by exact object name and puts it
// into its spawn state (CharStateMachine::SM_SetSpawnState). It does not allocate a Character.
// The name comes from the command's argument object (m_args at +0x0c, name pointer at its +0x0c);
// that argument record is not laid out here. IsBlocking is always false. Adds no members to
// ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_SpawnCharacter> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45f400, IsBlocking 0x455784,
// factory 0x4584c0).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SpawnCharacter : public ScriptCmdImpl {
public:
    ~Script_SpawnCharacter();                                           // deleting destructor, class-facts

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    // The original returns int (the SM_SetSpawnState result or null); the slot is void in the base.
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45f400
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455784 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
