// Script_AIChangeScript: script command that changes an AI's script. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4557cc, IsBlocking 0x4557d0, factory 0x4582c8).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AIChangeScript : public ScriptCmdImpl {
public:
    void Execute(bool skipping, int module) override;                  // 0x4557cc: empty body in the original
    bool IsBlocking() const override;                                  // 0x4557d0: always false
};
