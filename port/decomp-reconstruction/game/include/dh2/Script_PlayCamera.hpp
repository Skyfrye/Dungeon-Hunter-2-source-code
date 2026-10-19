// Script_PlayCamera: script command that plays a camera animation on the current level's camera.
// Execute(bool, int) takes the level's camera (CameraLevel, level +0x128) and calls PlayAnim with the
// animation id from the command data (+0x08), or, when the skipping flag is set, with the animation
// id looked up in Arrays::CamAnimSetTable. IsBlocking reports the camera's busy byte while the current
// level's camera is playing an animation (requires the command's blocking flag, data +0x0c).
// Init and Update are inherited from ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_PlayCamera> news 16 bytes and
// sets the vptr, unk_04 = 0, m_cmdId = -1 and m_args = 0. The command adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460110, IsBlocking 0x459370,
// factory 0x458bd8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayCamera : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c). Init (0x00) and
    // Update (0x04) are inherited.
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x460110
    bool IsBlocking() const override;                                   // slot 0x0c: 0x459370

    // ScriptCmdImpl occupies +0x00 .. +0x0f. Nothing else in the object: size 0x10.
};
