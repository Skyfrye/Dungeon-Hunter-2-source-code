// Script_UnEquipHands: script command that unequips both hands of a named character. Adds no members.
// Execute reads the character name (const char*) from the ScriptCmdImpl m_args block at +0x0c, finds the
// character with ObjectManager::GetObjectByName, records the item index of the equipped item in each hand
// (ItemInventory::GetEquippedItem slots 1 and 2, inventory at Character +0x37c) in two Character fields
// (+0x14f4 and +0x14f8 in the original, not declared in Character.hpp yet), then calls the Character
// virtual at vtable byte +0x144 with 1 and then 2.
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_UnEquipHands>); ScriptCmdImpl occupies
// +0x00 .. +0x0f and nothing of the rest was recovered.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45ded0, IsBlocking 0x455800 returns false).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_UnEquipHands : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45ded0
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455800 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
