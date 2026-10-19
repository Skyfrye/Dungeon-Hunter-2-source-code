// Script command that blocks saving: sets the blocked flag on the local player's character and on
// the current level. Derives from ScriptCmdImpl and adds no members:
// GetNewScriptCmdImplInstance<Script_BlockSaveGame> allocates 0x10 bytes, the ScriptCmdImpl size.
// Original 32-bit size 0x10 (16).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45c8c0, IsBlocking 0x455930).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_BlockSaveGame : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                              // slot 0x08: 0x45c8c0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455930 returns false
};
