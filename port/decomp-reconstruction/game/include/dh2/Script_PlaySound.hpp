// Script_PlaySound: script command that plays a sound or music cue through VoxSoundManager. Adds no
// members: Execute reads its argument block from ScriptCmdImpl m_args (+0x0c) and the block holds
// the cue id at +0x10, an int at +0x08, a flag at +0x0c and a byte at +0x0d. The flag at +0x0c
// selects VoxSoundManager::PlayMusic over VoxSoundManager::Play.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size; no own members, so the allocation is
// presumably the base size (not verified against the factory).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45fefc, IsBlocking 0x455650 returns false).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlaySound : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45fefc
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455650 returns false
};
