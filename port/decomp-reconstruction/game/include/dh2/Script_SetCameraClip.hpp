// Script_SetCameraClip: script command that sets the camera near and far clip planes. The argument record
// (ScriptCmdImpl::m_args) holds the near value at +0x0c and the far value at +0x08. Execute reads the
// current Level and its camera object, then calls the camera's two setters (vtable slots 0x130 and
// 0x134 of the camera class, per the pseudocode's +304 and +308). A value of -2 selects the level's
// LevelConfig default plane. Other values are passed through as ints. Never blocking.
// Original 32-bit size 0x10 (16): no members of its own, the record is the ScriptCmdImpl base alone
// (no operator new size in class-facts, see open_questions).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45c670, IsBlocking 0x455684).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetCameraClip : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45c670
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455684 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
