// Script_DropLoot: script command that makes a named Character drop loot, optionally for a named
// second object (the loot source). Execute resolves both by name and calls Character::DropLoot.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_DropLoot> 0x457fec news 0x10): the ScriptCmdImpl base alone.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e374, IsBlocking 0x4557e8).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_DropLoot : public ScriptCmdImpl {
public:
    // The argument object at ScriptCmdImpl::m_args (+0x0c), which Execute reads (0x45e374 uses v4 = this + 0x0c).
    // Only the two name pointers are recovered; the record's own vptr and the rest are not declared. Host-width pointers.
    struct DropLootArgs {
        uint8_t pad_00[0x0c];                                           // +0x00 .. +0x0b, not recovered
        const char* m_characterName;                                    // +0x0c name of the character that drops the loot (ObjectManager::GetObjectByName)
        uint8_t pad_10[0x04];                                           // +0x10 .. +0x13, not recovered
        const char* m_lootSourceName;                                   // +0x14 name of the loot source object, resolved the same way; null when none
    };

    ~Script_DropLoot();                                                 // class-facts; not a vtable slot (ScriptCmdImpl's destructor is not virtual)

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45e374
    bool IsBlocking() const override;                                   // slot 0x0c: 0x4557e8 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f (base layout pending, see open_questions).
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
