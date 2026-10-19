// Script_ActivateProjectileTrap: script command that looks up the object named by its argument and,
// when that object's m_goId is 17 (ProjectileTrap, GetNewInstance<ProjectileTrap>), keeps a pointer to it and
// sets its flag byte, which is ProjectileTrap::m_active at +0x40c. When the lookup fails the pointer is cleared. Original 32-bit size 0x14 (20):
// ScriptCmdImpl (0x10) plus m_trap. The factory's allocation size is not in class-facts.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d3cc, IsBlocking 0x4558bc).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class ObjectBase;

class Script_ActivateProjectileTrap : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. Init and Update are inherited (empty).

    void Execute(bool, int) override;                               // 0x45d3cc: reads the name from m_args (+0x0c), stores the trap in m_trap
    bool IsBlocking() const override;                               // 0x4558bc: returns false

    ObjectBase* m_trap;                                             // +0x10 set by Execute, null when the named object is not found or has the wrong m_goId
};
