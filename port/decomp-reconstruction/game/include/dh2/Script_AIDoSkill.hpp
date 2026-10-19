// Script_AIDoSkill: script command that makes an AI use a skill. Adds no members to ScriptCmdImpl.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x4557b4, IsBlocking 0x4557b8, factory 0x458358).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AIDoSkill : public ScriptCmdImpl {
public:
    void Execute(bool skipping, int module) override;                  // 0x4557b4: empty body in the original
    bool IsBlocking() const override;                                  // 0x4557b8: always false
};
