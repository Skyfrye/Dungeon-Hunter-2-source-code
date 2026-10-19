// Script_IncFaeryLevel: script command that raises the local player's Character faery level by the
// amount in its data record. Execute reads the record from the command's m_args (ScriptCmdImpl +0x0c)
// and calls Character::IncFaeryLevel on the offline local player's character. Blocking is never set.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_IncFaeryLevel>). No members of its
// own were recovered: ScriptCmdImpl occupies +0x00 .. +0x0f and the rest is unused.
// Argument record (m_args): +0x08 int, the level increment.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45f5cc, IsBlocking 0x455774).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_IncFaeryLevel : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45f5cc
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455774 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
