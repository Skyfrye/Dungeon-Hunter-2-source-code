// Script_ReEquipHands: script command that re-equips both hands of a named character. Adds no members.
// Execute reads the character name (const char*) from the ScriptCmdImpl m_args block at +0x0c. It then
// finds the character with ObjectManager::GetObjectByName and, when the character's hand slots unk_14f4 and
// unk_14f8 (Character +0x14f4 and +0x14f8, declared in dh2/Character.hpp) are not -1, calls
// Character::EquipItemToSlot (vtable byte +0x13c) with item 1 and slot unk_14f4, then item 2 and slot unk_14f8.
// Original 32-bit size 0x10 (16), the ScriptCmdImpl size; no own members (not verified against the factory).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d95c, IsBlocking 0x455808 returns false).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_ReEquipHands : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45d95c
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455808 returns false
};
