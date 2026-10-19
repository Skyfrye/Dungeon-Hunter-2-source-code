// Script_SpawnContainer: script command that looks up a Container by exact object name and calls
// Container::Spawn on it. It does not allocate a Container. The name comes from the command's
// argument object (m_args at +0x0c, name pointer at its +0x0c); that argument record is not laid out
// here. IsBlocking is always false. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_SpawnContainer> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d008, IsBlocking 0x4558dc,
// factory 0x457c6c).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SpawnContainer : public ScriptCmdImpl {
public:
    ~Script_SpawnContainer();                                           // deleting destructor, class-facts

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    // The original returns the Container::Spawn result as a pointer; the slot is void in the base.
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45d008
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558dc returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
