// Script_StopEffect: script command that drops an animated visual FX set by id through
// VisualFXManager::DropAnimatedFXSetByID. Adds no members. Execute reads the FX set id (int) from the
// ScriptCmdImpl m_args block at +0x08. Blocking is never set.
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_StopEffect>); ScriptCmdImpl occupies
// +0x00 .. +0x0f and nothing of the rest was recovered.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x459890, IsBlocking 0x4556b4 returns false).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_StopEffect : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x459890
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4556b4 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
