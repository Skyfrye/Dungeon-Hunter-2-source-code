// Script_SetCamera: script command for the camera. Its Execute is empty in the shipped binary
// (0x455678), so it adds no state and does nothing when run. Original 32-bit size 0x10 (16): no members
// of its own, the record is the ScriptCmdImpl base alone (no operator new size in class-facts, see
// open_questions).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x455678, IsBlocking 0x45567c).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetCamera : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x455678, empty
    bool IsBlocking() const override;                                   // slot 0x0c: 0x45567c returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
