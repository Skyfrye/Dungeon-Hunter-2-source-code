// Script_SaveGame: script command that writes a quick save. Execute turns off the level and
// character save blocks, calls Level::QuickSave and Character::SG_Save on the local player. It is
// never blocking. Original 32-bit size 0x10 (16): no members of its own, the record is the
// ScriptCmdImpl base alone (no operator new size in class-facts, see open_questions).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45c994, IsBlocking 0x455928).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SaveGame : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45c994
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455928 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
