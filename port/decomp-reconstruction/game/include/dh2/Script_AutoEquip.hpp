// Script_AutoEquip: script command that asks the named Character to equip its items automatically
// (a virtual call on the Character, slot +0x138). It adds no state to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), allocated by GetNewScriptCmdImplInstance at 0x457fa4.
// Reconstructed from libDungeonHunter2.so pseudocode and assembly.
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AutoEquip : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    void Execute(bool, int) override;                               // 0x45db88: resolves the object, calls its Character slot +0x138
    bool IsBlocking() const override;                               // 0x4557f0: returns false
};
