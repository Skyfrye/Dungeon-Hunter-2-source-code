// Script_DeactivateTriggerPlate: script command that switches off a named trigger plate. Execute
// looks up the object by name, and only when its type code is 18 stores it and clears the byte at
// +0x779 of the object (the field's name is not declared). IsBlocking is always false.
// Original 32-bit size 0x44 (68). Allocated by GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d0e0, IsBlocking 0x4558d4).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class GameObject;

class Script_DeactivateTriggerPlate : public ScriptCmdImpl {
public:
    ~Script_DeactivateTriggerPlate();                                   // class-facts; not a vtable slot (ScriptCmdImpl's destructor is not virtual)

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45d0e0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558d4 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f (base layout pending, see open_questions).
    GameObject* m_plate;                                                // +0x10 trigger plate found by name, null when type is not 18
    uint8_t pad_14[0x30];                                               // +0x14 .. +0x43, nothing recovered

    // The argument object held in ScriptCmdImpl::m_args (+0x0c). Execute (0x45d0e0) reads the object name at +0x0c.
    struct Args {
        uint8_t pad_00[0x0c];                                           // +0x00 .. +0x0b, the vptr and the stream header, not recovered
        const char* objectName;                                         // +0x0c
    };
};
