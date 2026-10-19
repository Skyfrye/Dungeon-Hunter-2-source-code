// Script_SetLevelState: script command that sets a level state on the local Player's Character through
// Character::SG_SetLevelState. Execute reads the command data (m_args at +0x0c of the base):
// +0x08 state index (I32), +0x0c state value (I32).
// Original 32-bit size 0x40 (64). Allocated by GetNewScriptCmdImplInstance<Script_SetLevelState>.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45cf40, IsBlocking 0x4558e4).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetLevelState : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45cf40, Character::SG_SetLevelState with a -1 last argument
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558e4 (8-byte body)

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No member is written by the command itself.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
