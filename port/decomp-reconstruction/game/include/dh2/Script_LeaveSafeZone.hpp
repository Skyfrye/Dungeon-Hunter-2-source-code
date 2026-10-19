// Script_LeaveSafeZone: script command that turns off the safe-zone music on the VoxSoundManager
// singleton. Execute takes no arguments from the data record. Blocking is never set.
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_LeaveSafeZone>). No members of its
// own were recovered: ScriptCmdImpl occupies +0x00 .. +0x0f and the rest is unused.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45fbe0, IsBlocking 0x455670).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_LeaveSafeZone : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45fbe0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455670 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
