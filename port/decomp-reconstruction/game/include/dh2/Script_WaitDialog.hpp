// Script_WaitDialog: script command that blocks the script while a dialog is active on the current level.
// It adds no state to ScriptCmdImpl. IsBlocking asks the current Level whether a dialog is active.
// Execute only traces the isTracingScriptCmd debug switch.
// Original 32-bit size not recovered (no factory size in class-facts); ScriptCmdImpl is 0x10.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45c4d8, IsBlocking 0x4598d8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_WaitDialog : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45c4d8
    bool IsBlocking() const override;                                  // slot 0x0c: 0x4598d8 Level::hasActiveDialog
};
