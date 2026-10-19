// Script_EnterSafeZone: script command that switches the voice sound manager to safe-zone music.
// Execute reads the isTracingScriptCmd debug switch and calls VoxSoundManager::SetInSafeZoneMusic(true).
// IsBlocking is false.
// Adds no members to ScriptCmdImpl; the original allocation size is not recovered (base is 0x10).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45fc80, IsBlocking 0x455668).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_EnterSafeZone : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45fc80
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455668 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own were recovered.
};
