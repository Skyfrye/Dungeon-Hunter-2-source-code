// Script_SetStatic: script command that looks up a named object and, when the flag is set, marks the
// Character static (byte +0x84 of the object set to 1). Execute reads the command data (m_args at
// +0x0c of the base): +0x08 flag (bool), +0x10 object name (C string).
// Original 32-bit size 0x40 (64). Allocated by GetNewScriptCmdImplInstance<Script_SetStatic>.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d868, IsBlocking 0x455810).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetStatic : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45d868, ObjectManager::GetObjectByName then the static byte
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455810 (8-byte body)

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No member is written by the command itself.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
