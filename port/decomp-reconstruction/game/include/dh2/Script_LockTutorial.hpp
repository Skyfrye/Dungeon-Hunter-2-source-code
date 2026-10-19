// Script_LockTutorial: script command that clears the per-tutorial flag for the tutorial id in its data
// record, then either saves settings (when the last opened menu id is 17) or starts the update job
// thread. Blocking is never set.
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_LockTutorial>). No members of its
// own were recovered: ScriptCmdImpl occupies +0x00 .. +0x0f and the rest is unused.
// Argument record (m_args): +0x08 int, the tutorial id used as an index into the settings block (+0x29).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45925c, IsBlocking 0x455968).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_LockTutorial : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45925c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455968 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
