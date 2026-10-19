// Batch g1-game-items-save-PlayerSavegame-56ccee-5 (owner PlayerSavegame, part 6 of 6).
// The four section handlers that read or write one save slot's inventory, level states and skills:
// __LoadInventory (0x46a3a0), __SaveLevelStates (0x46a7a0), __LoadLevelStates (0x46a9cc) and __LoadSkills (0x46ac74).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against dh2/PlayerSavegame.hpp.
//
// Shared conventions in this file:
//  * Section callbacks. Each handler is static with the Savegame callback signature (stream, user). The pseudocode types
//    the stream argument as PlayerSavegame* in __LoadLevelStates; it is the IStreamBase there too, and the user is the
//    second argument in all four.
//  * Asserts. ASSERT(expr) at PlayerSavegame_LoadSave.cpp:line. gAssertLevel 2 aborts (the original writes to address 0),
//    level 1 prints the ASSERT line. The handlers return where the original does, after its ASSERT.
//  * Name tables. The Arrays::X::m_memberNames tables (pydata-accessors/member_names.hpp) name the rows a file refers to.
//    pydata::FindMemberName returns the index of the first row with the name, or -1, as the original's strcmp walk does.
//    The count is the table's m_memberNames.size, which is the table's Arrays::X::size in the original.
//  * Sentinel users. __SaveLevelStates and __LoadLevelStates skip their body when the user pointer equals one of two
//    sentinel values, -104 or -116 (the pseudocode's IStreamBase* compares). Their origin is not recovered; the compare is
//    reproduced as written.
//  * Inventory. ItemInventory is a public base of Character at +0x37c, so the original's m_player + 892 is
//    static_cast<ItemInventory*>(m_player). The byte the original writes at m_player +938 (0x3aa) is ItemInventory::m_equipSet
//    (ItemInventory +0x2e), the current equipment set.
//  * Skill sets. The original reads exactly two skill-set maps (the loop runs from the vector's first map to +48). The
//    constructors push two, so m_skillSets is indexed 0 and 1 here.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"          // gAssertLevel
#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "pydata-accessors/member_names.hpp"   // Arrays::ItemTable, ItemPowerTable, SkillTable, LevelList, WorldMap name tables

namespace {

// The source file the original's ASSERT lines name. These handlers sit in the load-save file of the savegame code.
const char kLoadSaveSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp";

// The original's ASSERT(expr) at PlayerSavegame_LoadSave.cpp:line. gAssertLevel 2 stops the program (the original writes to
// address 0 to force the crash), level 1 prints the line and returns to the caller.
void ReportLoadSaveAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kLoadSaveSource, line);
    }
}

// The user values the level-state handlers compare against: -104 and -116 as IStreamBase pointers in the pseudocode. A
// user equal to either skips the whole handler. Integer sentinels in pointer slots use the static_cast<std::intptr_t> form.
bool IsSentinelUser(const void* user) {
    return user == reinterpret_cast<const void*>(static_cast<std::intptr_t>(-104)) ||
           user == reinterpret_cast<const void*>(static_cast<std::intptr_t>(-116));
}

// The index of the first row of a name table called name, or -1. The original's walk runs over the table's size.
int FindNameIndex(const pydata::NameTable& table, const char* name) {
    return pydata::FindMemberName(table, table.size, name);
}

// The skill row whose id is skillIndex. The original walks the rows from row 0 and takes the first match; null when none
// matches. A row count of zero gives no match, as the original's "if (m_skillsSize)" test does.
PlayerSavegame::SkillRecord* FindSkillRow(PlayerSavegame& save, std::int32_t skillIndex) {
    for (std::int32_t row = 0; row < save.m_skillsSize; ++row) {
        if (save.m_skills[row].id == skillIndex) {
            return &save.m_skills[row];
        }
    }
    return nullptr;
}

}  // namespace

// 0x46a3a0 PlayerSavegame::__LoadInventory(IStreamBase*, void*)
// The GEAR section reader. The header is the gold, the current equipment set and the item count. Each item is read as a
// name, two equipment slots (-1 when not equipped), a quantity, a value, a pick-up flag and a list of powers. The item is
// added to the inventory, then equipped into each slot it names, with the equipment set forced to 0 for the first slot and
// 1 for the second. The original restores the set after each equip call, and so does this code.
// ASSERT(_this->m_player) at line 655 when m_player is null: the section is skipped.
void PlayerSavegame::__LoadInventory(IStreamBase* stream, void* user) {
    PlayerSavegame* save = static_cast<PlayerSavegame*>(user);
    if (save->m_player == nullptr) {
        ReportLoadSaveAssert("_this->m_player", 655);
        return;
    }
    // Character +0x37c, the ItemInventory base (its m_equipSet is Character +0x3aa, the original's byte at +938).
    ItemInventory* inventory = static_cast<ItemInventory*>(save->m_player);

    std::uint32_t gold = 0;
    std::uint32_t equipSet = 0;
    std::uint32_t itemCount = 0;
    stream->readAs<std::uint32_t>(gold);
    stream->readAs<std::uint32_t>(equipSet);
    stream->readAs<std::uint32_t>(itemCount);
    inventory->SetGold(static_cast<int>(gold));
    inventory->m_equipSet = static_cast<std::int8_t>(equipSet);  // ItemInventory +0x2e

    for (std::uint32_t i = 0; i < itemCount; ++i) {
        std::string itemName;
        stream->readAs(itemName);
        const int itemId = FindNameIndex(Arrays::ItemTable::m_memberNames, itemName.c_str());

        int firstSlot = 0;   // equipment slot in set 0, -1 when the item is not equipped there
        int secondSlot = 0;  // equipment slot in set 1, -1 when not equipped there
        int qty = 0;
        int value = 0;
        std::uint8_t pickUpFlag = 0;
        std::uint32_t powerCount = 0;
        stream->readAs<int>(firstSlot);
        stream->readAs<int>(secondSlot);
        stream->readAs<int>(qty);
        stream->readAs<int>(value);
        stream->readAs<std::uint8_t>(pickUpFlag);
        stream->readAs<std::uint32_t>(powerCount);

        ItemInstance* item = new ItemInstance(itemId, static_cast<unsigned int>(qty));
        item->SetValue(value);
        item->unk_68 = pickUpFlag != 0;  // ItemInstance +0x68: 1 when the flag byte is nonzero
        for (std::uint32_t p = 0; p < powerCount; ++p) {
            std::string powerName;
            stream->readAs(powerName);
            const int powerId = FindNameIndex(Arrays::ItemPowerTable::m_memberNames, powerName.c_str());
            item->AddPower(powerId, -1);
        }

        const unsigned int index = static_cast<unsigned int>(inventory->_AddItemInstance(item, true, true));
        if (firstSlot != -1) {
            const std::int8_t savedSet = inventory->m_equipSet;
            inventory->m_equipSet = 0;
            inventory->_EquipItemToSlot(static_cast<unsigned int>(firstSlot), index, true);
            inventory->m_equipSet = savedSet;
        }
        if (secondSlot != -1) {
            const std::int8_t savedSet = inventory->m_equipSet;
            inventory->m_equipSet = 1;
            inventory->_EquipItemToSlot(static_cast<unsigned int>(secondSlot), index, true);
            inventory->m_equipSet = savedSet;
        }
    }
}

// 0x46a7a0 PlayerSavegame::__SaveLevelStates(IStreamBase*, void*)
// The LVLS section writer. For each of the three difficulties it writes the LevelList count, then each level name with its
// state (SG_GetLevelState). Then for each difficulty it writes the WorldMap count, then each location name with its state
// (SG_GetMapLocState). Names are written as strings; the counts are the table sizes.
void PlayerSavegame::__SaveLevelStates(IStreamBase* stream, void* user) {
    if (IsSentinelUser(user)) {
        return;
    }
    PlayerSavegame* save = static_cast<PlayerSavegame*>(user);
    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        const int levelCount = Arrays::LevelList::m_memberNames.size;
        stream->writeAs<int>(levelCount);
        for (int level = 0; level < levelCount; ++level) {
            const std::string name(Arrays::LevelList::m_memberNames.names[level]);
            stream->writeAs(name);
            const int state = save->SG_GetLevelState(level, difficulty);
            stream->writeAs<int>(state);
        }
    }
    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        const int locationCount = Arrays::WorldMap::m_memberNames.size;
        stream->writeAs<int>(locationCount);
        for (int location = 0; location < locationCount; ++location) {
            const std::string name(Arrays::WorldMap::m_memberNames.names[location]);
            stream->writeAs(name);
            const int state = save->SG_GetMapLocState(location, difficulty);
            stream->writeAs<int>(state);
        }
    }
}

// 0x46a9cc PlayerSavegame::__LoadLevelStates(IStreamBase*, void*)
// The LVLS section reader, the mirror of __SaveLevelStates. Each block is an entry count, then each entry is a name and a
// state. Every state is read. A name found in its table sets that level or location for the block's difficulty; a name that
// is not in the table is read and dropped.
void PlayerSavegame::__LoadLevelStates(IStreamBase* stream, void* user) {
    if (IsSentinelUser(user)) {
        return;
    }
    PlayerSavegame* save = static_cast<PlayerSavegame*>(user);
    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        std::int32_t entries = 0;
        stream->readAs<int>(entries);
        for (std::int32_t e = 0; e < entries; ++e) {
            std::string name;
            stream->readAs(name);
            const int level = FindNameIndex(Arrays::LevelList::m_memberNames, name.c_str());
            std::int32_t state = 0;
            stream->readAs<int>(state);
            if (level != -1) {
                save->SG_SetLevelState(level, state, difficulty);
            }
        }
    }
    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        std::int32_t entries = 0;
        stream->readAs<int>(entries);
        for (std::int32_t e = 0; e < entries; ++e) {
            std::string name;
            stream->readAs(name);
            const int location = FindNameIndex(Arrays::WorldMap::m_memberNames, name.c_str());
            std::int32_t state = 0;
            stream->readAs<int>(state);
            if (location != -1) {
                save->SG_SetMapLocState(location, state, difficulty);
            }
        }
    }
}

// 0x46ac74 PlayerSavegame::__LoadSkills(IStreamBase*, void*)
// The SKIL section reader. It needs m_skills and m_player: ASSERT(_this->m_skills) at line 402 and ASSERT(_this->m_player) at
// line 403 are both reported, and the section is skipped when either is null.
// The first part is the skill rows: a count, then each entry is a skill name and a 16-bit level. The level is stored in the row
// whose id is the skill's index in the SkillTable. A name that matches no row is read and dropped.
// The second part is two skill sets. Each is an entry count, then (skill slot, value) pairs, stored in m_skillSets[set] by
// slot. A new slot gets the value 0 first, as std::map::operator[] does, which is the original's insert_unique.
void PlayerSavegame::__LoadSkills(IStreamBase* stream, void* user) {
    PlayerSavegame* save = static_cast<PlayerSavegame*>(user);
    if (save->m_skills == nullptr) {
        ReportLoadSaveAssert("_this->m_skills", 402);
    }
    if (save->m_player == nullptr) {
        ReportLoadSaveAssert("_this->m_player", 403);
    }
    if (save->m_skills == nullptr || save->m_player == nullptr) {
        return;
    }

    std::int32_t rowCount = 0;
    stream->readAs<int>(rowCount);
    for (std::int32_t n = 0; n < rowCount; ++n) {
        std::string name;
        stream->readAs(name);
        const int skillIndex = FindNameIndex(Arrays::SkillTable::m_memberNames, name.c_str());
        PlayerSavegame::SkillRecord* row = FindSkillRow(*save, skillIndex);
        if (row != nullptr) {
            stream->readAs<std::uint16_t>(row->level);  // SkillRecord +0x04
        } else {
            std::uint16_t unused = 0;
            stream->readAs<std::uint16_t>(unused);
        }
    }

    // Two skill sets, one per map in m_skillSets (the original's loop over the two 24-byte maps from +0x88).
    for (int set = 0; set < 2; ++set) {
        std::int32_t entries = 0;
        stream->readAs<int>(entries);
        for (std::int32_t e = 0; e < entries; ++e) {
            std::int32_t slot = 0;
            stream->readAs<int>(slot);
            std::int32_t& value = save->m_skillSets[set][slot];
            stream->readAs<int>(value);
        }
    }
}
