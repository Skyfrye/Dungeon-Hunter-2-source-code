// Script_SetCameraTarget: script command that points the camera at a named object, or back at the
// local Player when the name is empty. Execute reads the command data (m_args at +0x0c of the base):
// +0x08 blend duration (I32, zeroed when the command is skipping), +0x10 name (C string, first byte
// 0 selects the local Player), +0x14 bool (script field 2, not read by Execute).
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_SetCameraTarget> allocates 0x10 (asm 0x458b00, MOV R0,#0x10),
// which is the ScriptCmdImpl base alone. pad_10 below lies past that allocation.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x460004, IsBlocking 0x4592cc).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetCameraTarget : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x460004, CameraTarget::SetTarget on the level
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4592cc (88-byte body, not decoded)

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No member is written by the command itself.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered. Lies past the 0x10-byte original allocation; drop in a later wave (not deleted here: members are not removed in this wave)
};
