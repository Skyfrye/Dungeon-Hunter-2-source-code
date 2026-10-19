// Script_StopSound: script command that stops a sound or a music cue through VoxSoundManager. Adds no
// members. Execute reads its argument block from the ScriptCmdImpl m_args pointer: an int at +0x08 (the
// cue id), a flag byte at +0x0c (nonzero selects VoxSoundManager::StopMusic) and an int at +0x10 (the
// second argument of VoxSoundManager::Stop, used on the sound path only).
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_StopSound>); ScriptCmdImpl occupies
// +0x00 .. +0x0f and nothing of the rest was recovered.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45fe2c, IsBlocking 0x455658 returns false).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_StopSound : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45fe2c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455658 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
