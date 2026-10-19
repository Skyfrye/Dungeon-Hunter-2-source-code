// Script_AIResetTimer: script command that resets the AI timer of the named character. It adds no
// state to ScriptCmdImpl. Original 32-bit size 0x10 (16), allocated by GetNewScriptCmdImplInstance
// at 0x4583a0. Reconstructed from libDungeonHunter2.so assembly and pseudocode.
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AIResetTimer : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    void Execute(bool, int) override;                               // 0x4557a8: empty, returns at once
    bool IsBlocking() const override;                               // 0x4557ac: returns false
};
