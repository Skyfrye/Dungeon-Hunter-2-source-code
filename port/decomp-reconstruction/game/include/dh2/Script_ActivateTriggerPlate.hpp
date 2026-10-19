// Script_ActivateTriggerPlate: script command that finds the named trigger plate and, when its
// m_goId is 18, keeps a pointer to it and sets a flag byte on it (TriggerPlate +0x779, TriggerPlate::m_enabled in dh2/TriggerPlate.hpp; not declared
// here). Original 32-bit size 0x14 (20), allocated by GetNewScriptCmdImplInstance at 0x457d00.
// Reconstructed from libDungeonHunter2.so pseudocode and assembly.
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class ObjectBase;

class Script_ActivateTriggerPlate : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f.

    void Execute(bool, int) override;                               // 0x45d1d8: resolves the plate, stores it in m_triggerPlate
    bool IsBlocking() const override;                               // 0x4558cc: returns false

    ObjectBase* m_triggerPlate;                                     // +0x10 set by Execute, null when not found or not a plate
};
