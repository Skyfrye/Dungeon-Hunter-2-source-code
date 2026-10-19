// Script_AIEnableTimer: script command that enables an AI timer. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45579c, IsBlocking 0x4557a0, factory 0x4583e8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AIEnableTimer : public ScriptCmdImpl {
public:
    void Execute(bool skipping, int module) override;                  // 0x45579c: empty body in the original
    bool IsBlocking() const override;                                  // 0x4557a0: always false
};
