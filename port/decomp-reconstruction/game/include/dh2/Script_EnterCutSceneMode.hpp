// Script_EnterCutSceneMode: script command that switches the HUD into cutscene mode. Execute hides
// the HUD and status bar when a level is current, invokes the HUD "StartCutscene" callback, clears
// the cutscene scaling flag, and marks each player as in a cutscene (also calling the player's
// cutscene-enter hook when it has one). IsBlocking is false.
// Adds no members to ScriptCmdImpl; the original allocation size is not recovered (base is 0x10).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45a384, IsBlocking 0x455638).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_EnterCutSceneMode : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45a384
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455638 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own were recovered.
};
