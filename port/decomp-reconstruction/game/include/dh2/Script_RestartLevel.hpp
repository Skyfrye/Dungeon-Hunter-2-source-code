// Script_RestartLevel: script command that restarts the current level. Adds no members and reads
// no argument block: Execute gets Application::GetCurrentLevel and calls Level::Restart on it when non-null.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size; no own members (not verified against the factory).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45cdd0, IsBlocking 0x4558f4 returns false).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_RestartLevel : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45cdd0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4558f4 returns false
};
