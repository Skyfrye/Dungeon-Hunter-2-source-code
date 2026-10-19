// Script_LookActor: script command that turns one named actor to face another named object. Execute
// resolves the looker by name from the argument record, then the target by name (or the highest-threat
// player when the target name is "HighestThreatPlayer"), and calls v2Controller::Cmd_LookAt on the
// looker's controller. It also sets the controller's flag at +0x09 around that call, and does the same
// for every local player (1..3) when the looker is the current player's controller.
// Original allocation size not recovered (no factory size in class-facts). The command keeps no state
// of its own: Execute reads only the argument record (m_args at +0x0c) and writes nothing back.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45ec50, IsBlocking 0x455818).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_LookActor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45ec50
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455818

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own were recovered.
};
