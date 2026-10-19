// Script command that saves every player, then loads another level by name. The target level name
// and level id are read from the argument block that ScriptCmdImpl holds at +0x0c (block +0x08 and
// +0x10). Derives from ScriptCmdImpl and adds no members:
// GetNewScriptCmdImplInstance<Script_ChangeLevel> allocates 0x10 bytes, the ScriptCmdImpl size.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45cba0, IsBlocking 0x4558fc).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_ChangeLevel : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                              // slot 0x08: 0x45cba0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558fc returns false

    // The argument object held in ScriptCmdImpl::m_args (+0x0c). Execute reads the entry point name at +0x08,
    // passed as the second argument of Application::LoadLevel (Application.hpp declares that parameter int
    // entryPointId: decision needed), and the level name at +0x10, matched against Arrays::LevelList names.
    struct Args {
        uint8_t pad_00[8];                                              // +0x00 .. +0x07, the vptr, not recovered
        const char* entryPoint;                                         // +0x08
        const char* levelName;                                          // +0x10
    };
};
