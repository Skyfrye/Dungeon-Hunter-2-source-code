// Batch g1-game-items-save-PlayerSavegame-56ccee-2 (owner PlayerSavegame, part 3 of 6).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Declarations and layout come from
// dh2/PlayerSavegame.hpp.
//
// Shared conventions in this file:
//  * ASSERT(expr): gAssertLevel 2 aborts (the original writes to address 0 to force a crash), 1 prints the message
//    and carries on, 0 stays silent. The original performs the access after a failed check; so does this port.
//  * Skill sets: m_skillSets[set] maps a skill slot (key) to a skill row (value). The original keeps each set as a
//    red-black tree and walks it in key order; the std::map walks below visit the entries in the same order.
//  * The current set is ItemInventory::GetCurrentSkillSet(-1) on the owner's inventory base (Character +0x37c). The
//    binary's getter is `mov r0, #0; bx lr`, so the set is 0; see CurrentSkillSet below.
//
//  * SG_DBG_TraceDetailedQuestInformation returns the register the callee left (see its comment); the value is not a result.

#include "dh2/PlayerSavegame.hpp"

#include "dh2/Character.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>

#include "core-platform/memory.hpp"
#include "dh2/StreamBuffer.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace {

const char kSaveDataSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp";

// The original's ASSERT(expr) in PlayerSavegame_Data.cpp.
void PlayerSavegameAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kSaveDataSource, line);
    }
}

// Constants::LevelState::Count as SG_SetLevelState checks it: the level states are 0 and 1 (the binary tests state > 1).
constexpr int kLevelStateCount = 2;

// The current skill set of the owner. The original calls ItemInventory::GetCurrentSkillSet(-1) on the inventory base
// of m_player (Character +0x37c). That getter is `mov r0, #0; bx lr` in the binary (0x3fc6a0), so the set is 0.
int CurrentSkillSet(const PlayerSavegame* owner) {
    return static_cast<ItemInventory*>(owner->m_player)->GetCurrentSkillSet(-1);
}

}  // namespace

// 0x466e30 _ZNK14PlayerSavegame15SG_IsMapLocSeenEii
bool PlayerSavegame::SG_IsMapLocSeen(int location, int difficulty) const {
    return SG_GetMapLocState(location, difficulty) == 2;
}

// 0x466e48 _ZN14PlayerSavegame16SG_SetLevelStateEiii
// Hex-Rays shows an int result, but that is r0 left over from the ASSERT calls (the function returns nothing).
// Character::SG_SetLevelState forwards (level, state, difficulty) in that order, which is the order used here.
void PlayerSavegame::SG_SetLevelState(int level, int state, int difficulty) {
    if (level < 0) {
        PlayerSavegameAssert("levelId >= 0", 91);
    }
    if (level >= static_cast<int>(Arrays::LevelList::size)) {
        PlayerSavegameAssert("levelId < (int)Arrays::LevelList::size", 92);
    }
    if (state < 0) {
        PlayerSavegameAssert("state >= 0", 93);
    } else if (state >= kLevelStateCount) {
        PlayerSavegameAssert("state < Constants::LevelState::Count", 94);
    }
    m_levelStates[difficulty][level] = state;
}

// 0x467040 _ZNK14PlayerSavegame16SG_GetLevelStateEii
// A level outside the table reads past m_levelStates[difficulty] (undefined here, as in the original) after the assert.
int PlayerSavegame::SG_GetLevelState(int level, int difficulty) const {
    if (level < 0) {
        PlayerSavegameAssert("levelId >= 0", 81);
    }
    if (level >= static_cast<int>(Arrays::LevelList::size)) {
        PlayerSavegameAssert("levelId < (int)Arrays::LevelList::size", 82);
    }
    return m_levelStates[difficulty][level];
}

// 0x467160 _ZN14PlayerSavegame18SG_UnpackQuestSyncER12StreamBuffer
// The call on the stream is the IStreamBase vtable slot at +0x20, seek(pos) with pos = 0 (the 64-bit argument sits in
// r2:r3; the register the decompiler shows as the second argument is the vptr load and carries no value).
void PlayerSavegame::SG_UnpackQuestSync(StreamBuffer& buffer) {
    QuestSavegame& quests = m_volatileQuestLog;
    quests.InitQuests();
    IStreamBase& stream = buffer;
    stream.seek(0);
    quests.UnpackQuests(m_difficultyLevel, &stream, true);
    quests.CompileQuests(true);
    m_questSynced = true;
}

// 0x4671d4 _ZN14PlayerSavegame21SG_VerifyCurrentQuestEi
void PlayerSavegame::SG_VerifyCurrentQuest(int difficulty) {
    SG_GetQuestSG()->SG_VerifyCurrentQuest(difficulty);
}

// 0x4671ec _ZN14PlayerSavegame25SG_GetCurrentPrimaryQuestEi
int PlayerSavegame::SG_GetCurrentPrimaryQuest(int difficulty) {
    return SG_GetQuestSG()->SG_GetCurrentPrimaryQuest(difficulty);
}

// 0x467204 _ZN14PlayerSavegame18SG_GetCurrentQuestEi
int PlayerSavegame::SG_GetCurrentQuest(int difficulty) {
    return SG_GetQuestSG()->SG_GetCurrentQuest(difficulty);
}

// 0x46721c _ZNK14PlayerSavegame15SG_GetPrevQuestEPFbPK5QuestEii
Quest* PlayerSavegame::SG_GetPrevQuest(bool (*pred)(const Quest*), int from, int difficulty) const {
    return SG_GetQuestSG()->SG_GetPrevQuest(pred, from, difficulty);
}

// 0x467244 _ZNK14PlayerSavegame15SG_GetNextQuestEPFbPK5QuestEii
Quest* PlayerSavegame::SG_GetNextQuest(bool (*pred)(const Quest*), int from, int difficulty) const {
    return SG_GetQuestSG()->SG_GetNextQuest(pred, from, difficulty);
}

// 0x46726c _ZNK14PlayerSavegame15SG_GetQuestByIDEPFbPK5QuestEii
Quest* PlayerSavegame::SG_GetQuestByID(bool (*pred)(const Quest*), int nth, int difficulty) const {
    return SG_GetQuestSG()->SG_GetQuestByID(pred, nth, difficulty);
}

// 0x467294 _ZNK14PlayerSavegame15SG_GetNumQuestsEPFbPK5QuestEi
int PlayerSavegame::SG_GetNumQuests(bool (*pred)(const Quest*), int difficulty) const {
    return SG_GetQuestSG()->SG_GetNumQuests(pred, difficulty);
}

// 0x4672b4 _ZN14PlayerSavegame36SG_DBG_TraceDetailedQuestInformationEP7__sFILEii
// PARTIAL: QuestSavegame::SG_DBG_TraceDetailedQuestInformation (0x46b8b0) returns a Quest* in the binary, but
// QuestSavegame.hpp declares it void, so its result cannot be forwarded here. The trace runs and nullptr is returned.
// Fix: declare the callee as returning Quest* in QuestSavegame.hpp, then return its value here.
Quest* PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty) {
    SG_GetQuestSG()->SG_DBG_TraceDetailedQuestInformation(stream, state, difficulty);
    return nullptr;
}

// 0x4672dc _ZN14PlayerSavegame17SG_GetQuestByNameEPKci
Quest* PlayerSavegame::SG_GetQuestByName(const char* name, int difficulty) {
    return SG_GetQuestSG()->SG_GetQuestByName(name, difficulty);
}

// 0x4672fc _ZN14PlayerSavegame15SG_GetQuestByIDEiib
Quest* PlayerSavegame::SG_GetQuestByID(int id, int difficulty, bool compile) {
    return SG_GetQuestSG()->SG_GetQuestByID(id, difficulty, compile);
}

// 0x467324 _ZN14PlayerSavegame15SG_ReloadSkillsEv
// Frees the skill rows (CustomFree, then m_skills = null), rebuilds the empty skill tables and loads the savegame
// with load mode 8.
int PlayerSavegame::SG_ReloadSkills() {
    if (m_skills != nullptr) {
        CustomFree(m_skills);
        m_skills = nullptr;
    }
    _InitSkills();
    return SG_Load(8);
}

// 0x46735c _ZNK14PlayerSavegame12SG_TellSlotsEPFvijPvES0_
// Calls callback(slot, row, user) for each entry of the current skill set, in slot order.
void PlayerSavegame::SG_TellSlots(void (*callback)(int, unsigned int, void*), void* user) const {
    if (callback == nullptr) {
        PlayerSavegameAssert("callback", 273);
        // The original calls the null pointer once per entry (a crash). This port makes no calls.
        return;
    }
    const std::map<int, int>& skills = m_skillSets[CurrentSkillSet(this)];
    for (const auto& entry : skills) {
        callback(entry.first, static_cast<unsigned int>(entry.second), user);
    }
}

// 0x467488 _ZNK14PlayerSavegame17SG_GetSkillInSlotEi
// The original's lower-bound walk ends on the node whose key equals the slot, or on the end of the set. Either
// way the result is the find: the row of the slot, or -1.
int PlayerSavegame::SG_GetSkillInSlot(int slot) const {
    const std::map<int, int>& skills = m_skillSets[CurrentSkillSet(this)];
    const auto found = skills.find(slot);
    if (found == skills.end()) {
        return -1;
    }
    return found->second;
}

// 0x46752c _ZNK14PlayerSavegame15SG_GetSkillSlotEj
// Reverse lookup: the first slot, in slot order, whose row equals the argument, or -1 when none has it.
int PlayerSavegame::SG_GetSkillSlot(std::uint32_t row) const {
    if (static_cast<std::uint32_t>(m_skillsSize) <= row) {
        PlayerSavegameAssert("skillIdx < m_skillsSize", 192);
    }
    if (m_skills == nullptr) {
        PlayerSavegameAssert("m_skills", 193);
    }
    const std::map<int, int>& skills = m_skillSets[CurrentSkillSet(this)];
    for (const auto& entry : skills) {
        if (static_cast<std::uint32_t>(entry.second) == row) {
            return entry.first;
        }
    }
    return -1;
}

// 0x4676e4 _ZNK14PlayerSavegame16SG_HasSkillSlotsEv
bool PlayerSavegame::SG_HasSkillSlots() const {
    return !m_skillSets[CurrentSkillSet(this)].empty();
}

// 0x467718 _ZN14PlayerSavegame16SG_GenerateSeedsEv
// The seeds are the current time (m_seeds[0]), then time + 21371 and time + 86186. The Hex-Rays call passes this in
// r0, but glitch::os::Timer::getRealTime is static and takes no argument.
void PlayerSavegame::SG_GenerateSeeds() {
    const std::uint32_t now = glitch::os::Timer::getRealTime();
    m_seeds[0] = static_cast<std::int32_t>(now);
    m_seeds[1] = static_cast<std::int32_t>(now + 21371u);
    m_seeds[2] = static_cast<std::int32_t>(now + 86186u);
}
