// Script_PlayEffect: script command that plays a visual FX set at a named object's position.
// Init registers the FX set named by the command data (+0x08) with VisualFXManager for loading.
// Execute(bool, int) finds the target object by name (data +0x20), reads the FX set id (data +0x08)
// and the three integer offsets (data +0x10, +0x14, +0x18), and calls VisualFXManager::PlayAnimFXSet.
// Never blocks: IsBlocking returns false.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_PlayEffect> news 16 bytes and
// sets the vptr, unk_04 = 0, m_cmdId = -1 and m_args = 0. The command adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Init 0x4598b4, Execute 0x45fa9c,
// IsBlocking 0x4556ac, factory 0x4587a0).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayEffect : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Update (0x04) is inherited.
    void Init() override;                                               // slot 0x00: 0x4598b4 registers the FX set
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45fa9c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4556ac, returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. Nothing else in the object: size 0x10.
};
