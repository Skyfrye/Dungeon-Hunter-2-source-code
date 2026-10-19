// Script_DeactivateProjectileTrap: script command that switches off a named projectile trap. Execute
// looks up the object by name, and only when its type code is 17 (ProjectileTrap) stores it in m_trap and clears
// ProjectileTrap::m_active (+0x40c). IsBlocking is always false.
// Original 32-bit size 0x14 (20): GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap> news 20 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d2d4, IsBlocking 0x4558c4, factory 0x457d4c).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class GameObject;

class Script_DeactivateProjectileTrap : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c). Init and Update are inherited.
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45d2d4
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558c4 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    GameObject* m_trap;                                                 // +0x10 trap found by name, null when the type code is not 17 (the factory zeroes it)
};
