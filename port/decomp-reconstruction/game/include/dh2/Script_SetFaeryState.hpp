// Script_SetFaeryState: script command that sets one faery's state on the local Player's savegame,
// through Character::SetFaeryState. Execute reads the command data (m_args at +0x0c of the base):
// +0x08 faery index (I32), +0x0c state (I32).
// Original 32-bit size 0x10 (16, the ScriptCmdImpl size). GetNewScriptCmdImplInstance<Script_SetFaeryState> (0x458598)
// allocates operator new(0x10). The pad_10 member below is not in the original object (not recovered; kept).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45f6c8, IsBlocking 0x45576c).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetFaeryState : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45f6c8, Character::SetFaeryState on the local Player
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45576c (8-byte body)

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No member is written by the command itself.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
