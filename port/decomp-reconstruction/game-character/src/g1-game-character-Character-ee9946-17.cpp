// Batch g1-game-character-Character-ee9946-17 (part 18 of 20 of Character): the savegame forwarders for quests, checkpoints
// and loads, the skill-list lookups, the sneaking cancel, the skill reset and the skill checks.
// Declarations come from dh2/Character.hpp, dh2/PlayerSavegame.hpp and dh2/CharAI.hpp. Partial bodies name what is missing
// in a PARTIAL comment; the ledger rows in game-character/ledger.d/g1-game-character-Character-ee9946-17.csv repeat it.
//
// Skill tables: Arrays::SkillListTable and Arrays::SkillTable are decoded at host element size (pydata decision 3), so
// rows are indexed as Structs::SkillList and Structs::Skill, never by the 12- and 76-byte file strides. The savegame
// skill rows (PlayerSavegame::SkillRecord, 8 bytes in the file) are the same host structs the Savegame decodes.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::Skill, Structs::SkillList
#include "pydata-accessors/w7_arrays_00.hpp"     // Arrays::SkillTable, Arrays::SkillListTable

namespace {

constexpr const char kCharacterSkillsFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Skills.cpp";

// The original ASSERT(expr) on its failing branch. gAssertLevel 2 stops the process (the original stores 0 to address 0),
// 1 prints the message to stderr and execution continues, 0 is silent.
void ReportAssertFailure(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The original's "-1 means the static difficulty" rule.
int ResolveDifficulty(int difficulty) {
    return difficulty == -1 ? PlayerSavegame::m_difficultyLevel : difficulty;
}

// The SkillList row for a list id (host element size of Arrays::SkillListTable).
const Structs::SkillList& SkillListRow(int id) {
    return reinterpret_cast<const Structs::SkillList*>(Arrays::SkillListTable::members)[id];
}

// The Skill row for a skill id (host element size of Arrays::SkillTable).
const Structs::Skill& SkillRow(std::int32_t id) {
    return reinterpret_cast<const Structs::Skill*>(Arrays::SkillTable::members)[id];
}

}  // namespace

// 0x3bc33c Character::SG_GetNumQuests(bool (*)(Quest const*), int)
// Returns -1 without a savegame. -1 as the difficulty selects PlayerSavegame::m_difficultyLevel. Forwards to the
// predicate overload of PlayerSavegame::SG_GetNumQuests.
int Character::SG_GetNumQuests(bool (*cb)(Quest const*), int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return save->SG_GetNumQuests(cb, ResolveDifficulty(difficulty));
}

// 0x3bc37c Character::SG_GetNumQuests(int)
// Returns -1 without a savegame. The original computes (end - begin) >> 2 of the per-difficulty quest vector at
// QuestSavegame +4 + 12 * d (three 12-byte vectors, 4-byte pointers). That is the element count, which is size() of
// the host vector m_quests[d]. Difficulty values are 0..2 as in the original's three vectors.
int Character::SG_GetNumQuests(int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    const int d = ResolveDifficulty(difficulty);
    QuestSavegame* quests = save->SG_GetQuestSG();
    return static_cast<int>(quests->m_quests[d].size());
}

// 0x3bc400 Character::SG_GetCurrentPrimaryQuest(int)
// Returns -1 without a savegame, else PlayerSavegame::SG_GetCurrentPrimaryQuest(difficulty) (an int, not a Quest pointer).
int Character::SG_GetCurrentPrimaryQuest(int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return save->SG_GetCurrentPrimaryQuest(ResolveDifficulty(difficulty));
}

// 0x3bc440 Character::SG_GetCurrentQuest(int)
// Returns -1 without a savegame, else PlayerSavegame::SG_GetCurrentQuest(difficulty) (an int).
int Character::SG_GetCurrentQuest(int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return save->SG_GetCurrentQuest(ResolveDifficulty(difficulty));
}

// 0x3bc480 Character::SG_Update(bool)
// Returns 0 without a savegame, else the result of PlayerSavegame::SG_Update(force) (an int).
int Character::SG_Update(bool force) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return 0;
    }
    return save->SG_Update(force);
}

// 0x3bc494 Character::SG_SaveCheckpoint()
// Forwards to PlayerSavegame::SG_SaveCheckpoint when a savegame is set. The callee is void, so nothing is returned.
void Character::SG_SaveCheckpoint() {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SaveCheckpoint();
    }
}

// 0x3bc4a8 Character::SG_Save()
// Returns 0 without a savegame, else the result of PlayerSavegame::SG_Save() (an int).
int Character::SG_Save() {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return 0;
    }
    return save->SG_Save();
}

// 0x3bc4bc Character::SG_LoadCheckpoint(int)
// Forwards to PlayerSavegame::SG_LoadCheckpoint when a savegame is set. The callee is void.
void Character::SG_LoadCheckpoint(int loadMode) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_LoadCheckpoint(loadMode);
    }
}

// 0x3bc4d0 Character::SG_Load(int)
// Returns 0 without a savegame, else the result of PlayerSavegame::SG_Load(loadMode) (an int).
int Character::SG_Load(int loadMode) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return 0;
    }
    return save->SG_Load(loadMode);
}

// 0x3bc5c0 Character::GetCharSkillListId() const
// The original reads the word at this+0x1068 (Hex-Rays *((_DWORD *)this + 1050)) and returns it when it is a valid row of
// Arrays::SkillListTable (signed 0 <= id < size: CMP then BXLT), else the fallback 3. That word is the final sheet's
// property word: CharProperties::m_props is at this+0xff4 (as IsSneaking uses it), 0x1068 - 0xff4 = 0x74 is m_w29 in the
// sheet, and property i is word m_w(i+1). So PROPS_Get(28, false) reads the same word, raw and unchanged.
int Character::GetCharSkillListId() const {
    const int id = CharProperties::PROPS_Get(28, false);
    if (id < 0 || id >= static_cast<int>(Arrays::SkillListTable::size)) {
        return 3;
    }
    return id;
}

// 0x3bc5fc Character::GetCharSkillList() const
// Returns the Arrays::SkillListTable row of GetCharSkillListId(), at host element size (Structs::SkillList).
const void* Character::GetCharSkillList() const {
    return &SkillListRow(GetCharSkillListId());
}

// 0x3bc62c Character::GetSkillIDFromOID(int) const
// Scans the character's skill list for the oid. Index 0 is tested first, then 1 upward. The result is the list index
// of the oid, or -1 when it is not in the list (or the list is empty).
int Character::GetSkillIDFromOID(int oid) const {
    const auto* list = static_cast<const Structs::SkillList*>(GetCharSkillList());
    const std::uint32_t count = list->ListSize;
    if (count != 0) {
        const auto* ids = static_cast<const std::int32_t*>(list->List);
        if (ids[0] == oid) {
            return 0;
        }
        for (std::uint32_t i = 1; i != count; ++i) {
            if (ids[i] == oid) {
                return static_cast<int>(i);
            }
        }
    }
    return -1;
}

// 0x3bc688 Character::IsUsingFreezingRay() const
// Returns false unconditionally (8 bytes in the original).
bool Character::IsUsingFreezingRay() const {
    return false;
}

// 0x3bc690 Character::IsSneaking() const
// The original calls CharProperties::_GetProperty with the sheet at this+4084 (CharProperties +0xa94, which is m_props)
// and property 198. PROPS_Get(id, false) reads m_props and nothing else (the clones in the CharProperties batch), so it
// is the same read. The private _GetProperty is not called from here.
bool Character::IsSneaking() const {
    return CharProperties::PROPS_Get(198, false) > 0;
}

// 0x3bc6b8 Character::CancelSneaking()
// For a player (virtual IsPlayer, vtable +0x28) the original removes buff 146 and then stores 1 at this+0x415, which is
// CharAI::unk_4d (CharAI +0x4d, set to 1 by the CharAI constructor; public in dh2/CharAI.hpp). While the character is
// sneaking, the skill list is scanned from index 0 upward; the first skill whose flags word (Structs::Skill +0x1c, m_w7)
// has bit 0x02000000 set is cancelled with CharAI::AI_CancelSkill and its list index.
void Character::CancelSneaking() {
    if (IsPlayer()) {
        CharProperties::PROPS_DelBuff(146, nullptr);
        CharAI::unk_4d = true;
    }
    if (IsSneaking()) {
        const auto* list = static_cast<const Structs::SkillList*>(GetCharSkillList());
        const std::uint32_t count = list->ListSize;
        if (count != 0) {
            const auto* ids = static_cast<const std::int32_t*>(list->List);
            for (std::uint32_t i = 0; i != count; ++i) {
                if ((SkillRow(ids[i]).Flags & 0x2000000) != 0) {
                    CharAI::AI_CancelSkill(i);
                    return;
                }
            }
        }
    }
}

// 0x3bc784 Character::GetCharSkill(int) const
// Returns the Skill row of list index skill: the list entry m_w2[skill] names the skill id. An index outside the list
// fails ASSERT(skillId >= 0 && skillId < ListSize) (Character_Skills.cpp line 61). the original goes on and reads
// the list entry past its end (undefined), which this port does not reproduce; it returns nullptr instead. Callers
// that need a row treat nullptr as the no-skill answer.
const void* Character::GetCharSkill(int skill) const {
    const Structs::SkillList& list = SkillListRow(GetCharSkillListId());
    const int count = static_cast<int>(list.ListSize);
    if (skill < 0 || skill >= count) {
        ReportAssertFailure("skillId >= 0 && skillId < (int)charSkillList.ListSize", kCharacterSkillsFile, 61);
        return nullptr;
    }
    const auto* ids = static_cast<const std::int32_t*>(list.List);
    return &SkillRow(ids[skill]);
}

// 0x3bc860 Character::ResetSkills()
// Zeroes every skill row and clears the skill slots that held a non-zero row. The levels removed, less one for skill row
// 0 (which is set back to level 1), are added to property 157. Then this character is unloaded from s_concurrentAI
// (passed as the end() iterator, as every original caller does), the CharAI script process is unloaded and reloaded,
// and it is initialised. The result is SG_Save().
//
// without a savegame the original dereferences the null savegame (count at +0x84) and crashes. This port stops
// with 0 after the assert message. An assert level of 2 aborts, as the original's store to address 0 does.
int Character::ResetSkills() {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr || save->m_skills == nullptr) {
        ReportAssertFailure("m_playerSavegame && m_playerSavegame->SG_GetSkills()", kCharacterSkillsFile, 195);
    }
    if (save == nullptr) {
        return 0;
    }
    const std::uint32_t skillCount = static_cast<std::uint32_t>(save->m_skillsSize);
    std::int32_t total = 0;
    for (std::uint32_t row = 0; row != skillCount; ++row) {
        total += SG_GetSkillLevel(row);
        SG_SetSkillLevel(row, 0);
        if (row == 0) {
            --total;
            SG_SetSkillLevel(0, 1);
        } else {
            const int slot = SG_GetSkillSlot(row);
            if (slot != -1) {
                SG_SetSkillInSlot(slot, 0xFFFFFFFFu);
            }
        }
    }
    CharProperties::PROPS_AddInt(157, total);
    UnLoadScriptProcess(s_concurrentAI.end(), true);
    CharAI::LoadScriptProcess();
    CharAI::InitScriptProcess(true);
    return SG_Save();
}

// 0x3bc9ec Character::CanIncrementSkill(int)
// False without a savegame or without its skill rows. Otherwise the skill's required level (savegame row +0x04, a 16-bit
// word) must not exceed GetLevel() minus the skill's level word (Structs::Skill +0x20, m_w8).
// an index outside the savegame rows or an index outside the skill list (GetCharSkill) is undefined in the
// original, which reads past the array. This port returns false for both.
bool Character::CanIncrementSkill(int skill) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr || save->m_skills == nullptr) {
        return false;
    }
    if (skill < 0 || skill >= save->m_skillsSize) {
        return false;
    }
    const int required = static_cast<int>(save->m_skills[skill].level);
    const int level = GetLevel();
    const auto* record = static_cast<const Structs::Skill*>(GetCharSkill(skill));
    if (record == nullptr) {
        return false;
    }
    return required <= level - record->Level;
}

// 0x3bca50 Character::IsSkillAvailable(int) const
// True when GetLevel() is at least the skill's level word (Structs::Skill +0x20, m_w8).
// an out-of-range skill (GetCharSkill returns nullptr) gives false here; the original reads past the list.
bool Character::IsSkillAvailable(int skill) const {
    const int level = GetLevel();
    const auto* record = static_cast<const Structs::Skill*>(GetCharSkill(skill));
    if (record == nullptr) {
        return false;
    }
    return level >= record->Level;
}

// 0x3bca84 Character::IsSkillEquippable(int) const
// True when the skill is available, its word +0x48 (Structs::Skill m_w18) is not -1, and its savegame level is above 0.
// an out-of-range skill gives false (see IsSkillAvailable); the original reads past the list.
bool Character::IsSkillEquippable(int skill) const {
    if (!IsSkillAvailable(skill)) {
        return false;
    }
    const auto* record = static_cast<const Structs::Skill*>(GetCharSkill(skill));
    if (record == nullptr) {
        return false;
    }
    return record->Type != -1 && SG_GetSkillLevel(static_cast<unsigned int>(skill)) > 0;
}
