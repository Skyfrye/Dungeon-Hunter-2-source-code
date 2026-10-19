// Script_ExecScript: script command that starts another script. Execute picks the script to run from
// the command's argument record (a fixed id, or one of a list picked by the engine's Random), adds the
// debug offset when the record asks for it, and calls ScriptManager::StartScript. IsBlocking waits for
// that script to finish when the record's flag is set.
// Original 32-bit size 0x14 (20). Allocated by GetNewScriptCmdImplInstance<Script_ExecScript> at 0x458d40.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4607f4, IsBlocking 0x455c08).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_ExecScript : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x4607f4
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455c08

    // ScriptCmdImpl occupies +0x00 .. +0x0f. m_args is the argument record read by Execute.
    int unk_10;                                                         // +0x10 id of the script Execute started, read by IsBlocking
};
