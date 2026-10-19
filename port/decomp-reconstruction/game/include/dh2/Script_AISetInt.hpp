// Script_AISetInt: script command that calls LuaScript::SetInt on the named character's AI script,
// with the name and value taken from its command data. It adds no state to ScriptCmdImpl.
// Original 32-bit size 0x10 (16), allocated by GetNewScriptCmdImplInstance at 0x458280.
// Reconstructed from libDungeonHunter2.so pseudocode and assembly.
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AISetInt : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    void Execute(bool, int) override;                               // 0x45f2fc: resolves the object, calls LuaScript::SetInt
    bool IsBlocking() const override;                               // 0x4557d8: returns false
};
