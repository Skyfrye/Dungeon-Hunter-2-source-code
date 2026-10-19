// Script_MarkCharacterAsScripted: script command that sets or clears the scripted flag of a named
// character. The argument record's bool at +0x08 selects Set or Unset; the named object is resolved
// through Script_CharacterState_Callback, which calls the chosen static function with the object.
// Set and Unset write Character::m_isDummy (+0x1480 of Character, layout request: name the field
// m_isDummy in the Character header, currently declared there with the same offset).
// Original allocation size not recovered (no factory size in class-facts). The command keeps no
// state of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d4c8, Set 0x45958c, Unset 0x459550,
// IsBlocking 0x455794).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class ObjectBase;

class Script_MarkCharacterAsScripted : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45d4c8
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455794

    // Callbacks handed to Script_CharacterState_Callback. Not in the vtable.
    static void Set(ObjectBase* object);                               // 0x45958c: Character m_isDummy = 1
    static void Unset(ObjectBase* object);                             // 0x459550: Character m_isDummy = 0

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own were recovered.
};
