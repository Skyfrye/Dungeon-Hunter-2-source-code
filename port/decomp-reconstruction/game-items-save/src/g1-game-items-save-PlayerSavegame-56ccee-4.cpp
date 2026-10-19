// Batch g1-game-items-save-PlayerSavegame-56ccee-4 (owner PlayerSavegame, part 5 of 6).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Declarations and layout come from
// dh2/PlayerSavegame.hpp; the other classes come from their own dh2 headers.
//
// Covers the section handlers of the save file (spawn points, level names and quest acts, current faeries, faery
// records, quest logs, properties, player name and class, fast-travel bits, skill rows and sets, the inventory) and the
// init routines _InitFaeries and _InitSkills. _InitLevelStates is in the sibling file
// g1-game-items-save-PlayerSavegame-56ccee-4_levels.cpp: it reads Arrays::LevelList and Arrays::WorldMap through the
// w7 header, which cannot share a translation unit with the member_names header this file uses.
//
// Shared conventions in this file:
//  * Section handlers take (IStreamBase* stream, void* user). Hex-Rays shows the stream as `this` and the owner as `a2`,
//    so its `a2 + N` reads are the owner's fields at +N (N = 0x4c is m_useSpawnPoint[0]).
//  * ASSERT(expr) at PlayerSavegame_LoadSave.cpp:line. Level 2 aborts (the original writes to address 0), level 1 prints
//    the message, and the handler returns where the original does (the owner pointer it checks is still null then).
//  * Name tables: Arrays::X::m_memberNames rows are looked up with pydata::FindMemberName, whose result is the first row
//    with the name or -1, as the original's strcmp walk gives.
//  * Stream helpers are the typed IStreamBase::readAs<T> and writeAs<T> instantiations (unsigned int, int, unsigned short,
//    unsigned char, bool) and the std::string overloads.

#include "dh2/PlayerSavegame.hpp"

#include <bitset>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <stdexcept>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/QuestSavegame.hpp"
#include "pydata-accessors/member_names.hpp"     // Arrays::{ItemTable, ItemPowerTable, SkillTable, CharacterTable}
#include "pydata-accessors/structs_records.hpp"  // Structs::SkillList

namespace {

// The source file the original's ASSERT lines name: the load-save file of the savegame code.
const char kLoadSaveSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp";

// The property count the original's property section checks for (224 words per sheet).
constexpr std::int32_t kSavedPropertyCount = 224;

// The original's ASSERT(expr). Level 2 aborts, level 1 prints the message and the caller returns.
void PlayerSavegameAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The row of table called name, or -1. The original walks the table's rows with strcmp over its size.
int FindNameIndex(const pydata::NameTable& table, const char* name) {
    return pydata::FindMemberName(table, table.size, name);
}

}  // namespace

// 0x468af0 PlayerSavegame::__LoadUseSpawnPoint(IStreamBase*, void*)
// Reads the three spawn-point flags, one byte each, into m_useSpawnPoint (+0x4c, +0x4d, +0x4e).
void PlayerSavegame::__LoadUseSpawnPoint(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    stream->readAs<bool>(save->m_useSpawnPoint[0]);  // +0x4c
    stream->readAs<bool>(save->m_useSpawnPoint[1]);  // +0x4d
    stream->readAs<bool>(save->m_useSpawnPoint[2]);  // +0x4e
}

// 0x468b20 PlayerSavegame::__SaveLevelName(IStreamBase*, void*)
// The save date (+0x38), then for each difficulty three words: unk_50[d] (+0x50), m_seeds[d] (+0x5c) and the quest act
// of the quest log, m_questLog.m_act[d] (QuestSavegame +0x44, PlayerSavegame +0xfc).
void PlayerSavegame::__SaveLevelName(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    stream->writeAs<std::uint32_t>(save->m_saveDate);  // +0x38
    for (int d = 0; d != 3; ++d) {
        stream->writeAs<std::int32_t>(save->unk_50[d]);            // +0x50 + 4*d
        stream->writeAs<std::int32_t>(save->m_seeds[d]);           // +0x5c + 4*d
        stream->writeAs<std::int32_t>(save->m_questLog.m_act[d]);  // +0xfc + 4*d
    }
}

// 0x468b78 PlayerSavegame::__LoadLevelName(IStreamBase*, void*)
// The mirror of __SaveLevelName. The quest act read for each difficulty is stored in both quest logs (m_questLog and
// m_volatileQuestLog, the act word at QuestSavegame +0x44 of each).
void PlayerSavegame::__LoadLevelName(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    stream->readAs<std::uint32_t>(save->m_saveDate);  // +0x38
    for (int d = 0; d != 3; ++d) {
        stream->readAs<std::int32_t>(save->unk_50[d]);  // +0x50 + 4*d
        stream->readAs<std::int32_t>(save->m_seeds[d]);  // +0x5c + 4*d
        std::int32_t act = 0;
        stream->readAs<std::int32_t>(act);
        save->m_questLog.m_act[d] = act;               // +0xfc + 4*d
        save->m_volatileQuestLog.m_act[d] = act;       // +0x15c + 4*d
    }
}

// 0x468bf0 PlayerSavegame::__SaveCurrentFaery(IStreamBase*, void*)
// The current faery index of each difficulty (m_currentFaery, +0xac). A difficulty without a faery array is an ASSERT on
// m_faeries[j] and the section stops there.
void PlayerSavegame::__SaveCurrentFaery(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        if (save->m_faeries[d] == nullptr) {
            PlayerSavegameAssert("_this->m_faeries[j]", kLoadSaveSource, 596);
            return;
        }
        stream->writeAs<std::int32_t>(save->m_currentFaery[d]);  // +0xac + 4*d
    }
}

// 0x468cd4 PlayerSavegame::__LoadCurrentFaery(IStreamBase*, void*)
// The mirror of __SaveCurrentFaery: reads m_currentFaery[d] for each difficulty.
void PlayerSavegame::__LoadCurrentFaery(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        if (save->m_faeries[d] == nullptr) {
            PlayerSavegameAssert("_this->m_faeries[j]", kLoadSaveSource, 581);
            return;
        }
        stream->readAs<std::int32_t>(save->m_currentFaery[d]);  // +0xac + 4*d
    }
}

// 0x468f18 PlayerSavegame::__SaveFaeries(IStreamBase*, void*)
// Per difficulty: the current faery index, the record count m_faeryCount[d] (+0xa0), then each record's level (16 bits)
// and state (8 bits). A difficulty without a record array is an ASSERT on m_faeries[j] and the section stops there.
void PlayerSavegame::__SaveFaeries(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        if (save->m_faeries[d] == nullptr) {
            PlayerSavegameAssert("_this->m_faeries[j]", kLoadSaveSource, 556);
            return;
        }
        stream->writeAs<std::int32_t>(save->m_currentFaery[d]);  // +0xac + 4*d
        const std::uint32_t count = save->m_faeryCount[d];       // +0xa0 + 4*d
        stream->writeAs<std::uint32_t>(count);
        for (std::uint32_t i = 0; i < count; ++i) {
            stream->writeAs<std::uint16_t>(save->m_faeries[d][i].level);  // record +2
            stream->writeAs<std::uint8_t>(save->m_faeries[d][i].state);   // record +0
        }
    }
}

// 0x4691d0 PlayerSavegame::__LoadFaeries(IStreamBase*, void*)
// The mirror of __SaveFaeries. A record count that differs from m_faeryCount[d] ends the section, as the original's
// compare does; the records of the difficulties before it are kept.
void PlayerSavegame::__LoadFaeries(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        if (save->m_faeries[d] == nullptr) {
            PlayerSavegameAssert("_this->m_faeries[j]", kLoadSaveSource, 525);
            return;
        }
        stream->readAs<std::int32_t>(save->m_currentFaery[d]);  // +0xac + 4*d
        std::uint32_t count = 0;
        stream->readAs<std::uint32_t>(count);
        if (count != save->m_faeryCount[d]) {
            return;
        }
        for (std::uint32_t i = 0; i < count; ++i) {
            stream->readAs<std::uint16_t>(save->m_faeries[d][i].level);  // record +2
            stream->readAs<std::uint8_t>(save->m_faeries[d][i].state);   // record +0
        }
    }
}

// 0x46932c PlayerSavegame::__LoadProperties(IStreamBase*, void*)
// The property section: a count that must be 224, then one word per property read into the owner's saved sheet
// (m_savedProps, Character +0x8ec) when the property's type has the saved bit (0x20), then the bool unk_194 (+0x194).
// A null owner is an ASSERT on m_player and the section is skipped.
void PlayerSavegame::__LoadProperties(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    Character* player = save->m_player;
    if (player == nullptr) {
        PlayerSavegameAssert("_this->m_player", kLoadSaveSource, 794);
        return;
    }
    std::int32_t count = 0;
    stream->readAs<std::int32_t>(count);
    if (count != kSavedPropertyCount) {
        return;
    }
    for (std::int32_t i = 0; i < count; ++i) {
        std::int32_t value = 0;
        stream->readAs<std::int32_t>(value);
        if ((player->CharProperties::_GetType(i) & 0x20) != 0) {
            player->CharProperties::_SetProperty(player->CharProperties::m_savedProps, i, value);
        }
    }
    stream->readAs<bool>(save->unk_194);  // +0x194
}

// 0x469454 PlayerSavegame::__SaveQuests(IStreamBase*, void*)
// Writes the quest log that the save mode selects: m_questLog (+0xb8) when m_saveMode bit 0 is set, otherwise
// m_volatileQuestLog (+0x118).
void PlayerSavegame::__SaveQuests(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    QuestSavegame& log = (save->m_saveMode & 1) != 0 ? save->m_questLog : save->m_volatileQuestLog;
    log.SaveQuests(stream);
}

// 0x469478 PlayerSavegame::__LoadQuests(IStreamBase*, void*)
// Loads m_questLog, rewinds the stream to where the section started, then loads m_volatileQuestLog from the same bytes.
void PlayerSavegame::__LoadQuests(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    const std::uint64_t start = stream->tell();
    save->m_questLog.LoadQuests(stream);
    stream->seek(start);
    save->m_volatileQuestLog.LoadQuests(stream);
}

// 0x4694c8 PlayerSavegame::_InitFaeries(void)
// For each difficulty without a record array: five records (m_faeryCount = 5), each with state and level zeroed.
void PlayerSavegame::_InitFaeries() {
    for (int d = 0; d != 3; ++d) {
        if (m_faeries[d] != nullptr) {
            continue;
        }
        m_faeryCount[d] = 5;
        m_faeries[d] = new FaeryRecord[5]();
        for (std::uint32_t i = 0; i < m_faeryCount[d]; ++i) {
            m_faeries[d][i].state = 0;
            m_faeries[d][i].level = 0;
        }
    }
}

// 0x469764 PlayerSavegame::_InitSkills(void)
// When there is no skill row table yet: one row per skill of the character's skill list (Structs::SkillList: count at +4,
// ids at +8), each with level 0, and every skill set is emptied. Nothing happens when the rows already exist.
void PlayerSavegame::_InitSkills() {
    if (m_skills != nullptr) {
        return;
    }
    const auto* list = static_cast<const Structs::SkillList*>(m_player->GetCharSkillList());
    m_skillsSize = static_cast<std::int32_t>(list->ListSize);
    m_skills = new SkillRecord[m_skillsSize]();
    const auto* ids = static_cast<const std::int32_t*>(list->List);
    for (std::int32_t row = 0; row < m_skillsSize; ++row) {
        m_skills[row].id = ids[row];
        m_skills[row].level = 0;
    }
    for (auto& skillSet : m_skillSets) {
        skillSet.clear();
    }
}

// 0x4698dc PlayerSavegame::__LoadPlayerName(IStreamBase*, void*)
// Reads the player name into m_name (+0x18).
void PlayerSavegame::__LoadPlayerName(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    stream->readAs(save->m_name);
}

// 0x4698e4 PlayerSavegame::__SavePlayerClass(IStreamBase*, void*)
// Writes the name of the class row m_playerClass (+0x34) of Arrays::CharacterTable. Nothing is written for a class index
// outside the table.
// DEVIATION: the original tests the index with <= size, so the index equal to size reads the row past the end of the
// table (undefined there). The port tests < size and writes nothing in that case.
void PlayerSavegame::__SavePlayerClass(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    const std::int32_t playerClass = save->m_playerClass;
    const int rows = Arrays::CharacterTable::m_memberNames.size;
    if (playerClass >= 0 && playerClass < rows) {
        stream->writeAs(std::string(Arrays::CharacterTable::m_memberNames.names[playerClass]));
    }
}

// 0x469d88 PlayerSavegame::__LoadPlayerClass(IStreamBase*, void*)
// Reads a class name and stores the Arrays::CharacterTable row it names into m_playerClass, or -1 when there is none.
void PlayerSavegame::__LoadPlayerClass(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    std::string name;
    stream->readAs(name);
    save->m_playerClass = FindNameIndex(Arrays::CharacterTable::m_memberNames, name.c_str());
}

// 0x469b18 PlayerSavegame::__LoadFastTravelList(IStreamBase*, void*)
// Three strings, one per difficulty, of '0' and '1' characters: the last character is bit 0 of m_fastTravelUnlocked[d]
// (the form std::bitset reads). A string longer than 64 characters ends the section before any later difficulty.
void PlayerSavegame::__LoadFastTravelList(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        std::string bits;
        stream->readAs(bits);
        if (bits.size() > 64) {
            return;
        }
        save->m_fastTravelUnlocked[d] = std::bitset<64>(bits);  // throws invalid_argument on a character other than 0 or 1
    }
}

// 0x469cdc PlayerSavegame::__SaveFastTravelList(IStreamBase*, void*)
// Writes the three 64-character bit strings of m_fastTravelUnlocked (bit 63 first).
void PlayerSavegame::__SaveFastTravelList(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    for (int d = 0; d != 3; ++d) {
        stream->writeAs(save->m_fastTravelUnlocked[d].to_string());
    }
}

// 0x469e6c PlayerSavegame::__SaveSkills(IStreamBase*, void*)
// Writes the skill rows: the row count, then per row the skill name (Arrays::SkillTable row of its id) and the 16-bit
// level. Then the two skill sets: each an entry count, then the (slot, row) pairs in key order.
// A null row table is an ASSERT on m_skills and the section is skipped.
void PlayerSavegame::__SaveSkills(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    if (save->m_skills == nullptr) {
        PlayerSavegameAssert("_this->m_skills", kLoadSaveSource, 463);
        return;
    }
    const std::int32_t rowCount = save->m_skillsSize;
    stream->writeAs<std::int32_t>(rowCount);
    for (std::int32_t row = 0; row < rowCount; ++row) {
        const SkillRecord& record = save->m_skills[row];
        stream->writeAs(std::string(Arrays::SkillTable::m_memberNames.names[record.id]));
        stream->writeAs<std::uint16_t>(record.level);
    }
    for (std::size_t set = 0; set != 2; ++set) {
        const std::map<int, int>& skillSet = save->m_skillSets[set];
        stream->writeAs<std::uint32_t>(static_cast<std::uint32_t>(skillSet.size()));
        for (const auto& entry : skillSet) {
            stream->writeAs<std::int32_t>(entry.first);
            stream->writeAs<std::int32_t>(entry.second);
        }
    }
}

// 0x46a0b4 PlayerSavegame::__SaveInventory(IStreamBase*, void*)
// The GEAR section writer, the mirror of __LoadInventory. The header is the gold (ItemInventory::m_gold), the current
// equipment set and the item count. Each item: its name (Arrays::ItemTable row), its two equipment slots, its quantity,
// its value, the pick-up flag byte (ItemInstance +0x68), then the power count and the names of its powers
// (Arrays::ItemPowerTable rows).
// A null owner is an ASSERT on m_player and the section is skipped.
void PlayerSavegame::__SaveInventory(IStreamBase* stream, void* user) {
    auto* save = static_cast<PlayerSavegame*>(user);
    Character* player = save->m_player;
    if (player == nullptr) {
        PlayerSavegameAssert("_this->m_player", kLoadSaveSource, 734);
        return;
    }
    // ItemInventory is the base of Character at +0x37c, so the original's m_player + 892 is this cast.
    const ItemInventory& inventory = *static_cast<const ItemInventory*>(player);
    const std::uint32_t gold = static_cast<std::uint32_t>(inventory.m_gold);
    const std::uint32_t equipSet = static_cast<std::uint32_t>(inventory.GetCurrentEquipSet(-1));
    const std::uint32_t itemCount = static_cast<std::uint32_t>(inventory.m_items.size());
    stream->writeAs<std::uint32_t>(gold);
    stream->writeAs<std::uint32_t>(equipSet);
    stream->writeAs<std::uint32_t>(itemCount);
    for (const ItemInventory::ItemSlot* slot : inventory.m_items) {
        const ItemInstance* item = slot->m_item;
        stream->writeAs(std::string(Arrays::ItemTable::m_memberNames.names[item->GetItemId()]));
        stream->writeAs<std::int32_t>(slot->m_equipSlot[0]);  // sign-extended, as the original's signed char read
        stream->writeAs<std::int32_t>(slot->m_equipSlot[1]);
        stream->writeAs<std::int32_t>(item->m_qty);
        stream->writeAs<std::int32_t>(item->m_value);
        stream->writeAs<std::uint8_t>(static_cast<std::uint8_t>(item->unk_68));  // ItemInstance +0x68
        const std::uint32_t numPowers = static_cast<std::uint32_t>(item->GetNumPowers());
        stream->writeAs<std::uint32_t>(numPowers);
        for (std::uint32_t p = 0; p < numPowers; ++p) {
            stream->writeAs(std::string(Arrays::ItemPowerTable::m_memberNames.names[item->GetPowerId(p)]));
        }
    }
}
