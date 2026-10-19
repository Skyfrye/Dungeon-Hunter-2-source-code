// Batch g1-game-character-Character-ee9946-16 (Character, part 17 of 20): twenty SG_* savegame wrappers.
// Each wrapper reads m_savegame (the PlayerSavegame pointer at Character +0x14e8) and forwards to one PlayerSavegame
// method, or reads or writes one QuestSavegame member through PlayerSavegame::SG_GetQuestSG. With no savegame a getter
// returns -1 or null and a setter does nothing. A difficulty argument of -1 becomes the static
// PlayerSavegame::m_difficultyLevel before the call.
//
// Header changes made with this batch (dh2/Character.hpp):
//   - SG_HasSkillSlots returns int. Without a savegame the wrapper returns -1, and the caller in _InitSkillsSlots
//     tests the value as an integer, so the bool declaration was wrong.
//   - SG_NeedToResendQuestSyncMsg returns void. No path sets a return value, and the only caller (chunk_005.c) passes
//     the leftover register on to an unrelated call.
//
// Status: all twenty wrappers are reconstructed.

#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"

namespace {

// The original ASSERT of Character_SGProxy.cpp: level 2 stops the process, level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression,
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_SGProxy.cpp", line);
    }
}

// The original's "-1 means the current difficulty" rule.
int ResolveDifficulty(int difficulty) {
    return difficulty == -1 ? PlayerSavegame::m_difficultyLevel : difficulty;
}

}  // namespace

// 0x3bbdec _ZN9Character17SG_GetMapLocStateEii
// Returns PlayerSavegame::SG_GetMapLocState(location, difficulty), with -1 resolved. Returns -1 without a savegame.
int Character::SG_GetMapLocState(int location, int difficulty) {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_GetMapLocState(location, ResolveDifficulty(difficulty));
}

// 0x3bbe2c _ZN9Character15SG_ReloadSkillsEv
// Forwards to PlayerSavegame::SG_ReloadSkills, which returns SG_Load(8). The header declares this void, so the value
// is dropped. No-op without a savegame.
void Character::SG_ReloadSkills() {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->SG_ReloadSkills();
}

// 0x3bbe40 _ZN9Character12SG_TellSlotsEPFvijPvES0_
// Forwards the slot callback and its user pointer to PlayerSavegame::SG_TellSlots. No-op without a savegame.
void Character::SG_TellSlots(void (*callback)(int, unsigned int, void*), void* user) {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->SG_TellSlots(callback, user);
}

// 0x3bbe54 _ZN9Character17SG_SetSkillInSlotEij
// Forwards to PlayerSavegame::SG_SetSkillInSlot(slot, row). No-op without a savegame.
void Character::SG_SetSkillInSlot(int slot, unsigned int row) {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->SG_SetSkillInSlot(slot, row);
}

// 0x3bbe68 _ZN9Character17SG_GetSkillInSlotEi
// Returns PlayerSavegame::SG_GetSkillInSlot(slot). Returns -1 without a savegame.
int Character::SG_GetSkillInSlot(int slot) {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_GetSkillInSlot(slot);
}

// 0x3bbe84 _ZN9Character15SG_GetSkillSlotEj
// Returns PlayerSavegame::SG_GetSkillSlot(row). Returns -1 without a savegame.
int Character::SG_GetSkillSlot(unsigned int row) {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_GetSkillSlot(row);
}

// 0x3bbea0 _ZN9Character16SG_HasSkillSlotsEv
// Returns 1 or 0 from PlayerSavegame::SG_HasSkillSlots, which is a bool. Returns -1 without a savegame, so the
// return type is int (see the header note at the top of this file).
int Character::SG_HasSkillSlots() {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_HasSkillSlots() ? 1 : 0;
}

// 0x3bbebc _ZN9Character16SG_SetSkillLevelEji
// Forwards to PlayerSavegame::SG_SetSkillLevel(row, level). The savegame's int result is dropped, as the header
// declares void. No-op without a savegame.
void Character::SG_SetSkillLevel(unsigned int row, int level) {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->SG_SetSkillLevel(row, level);
}

// 0x3bbed0 _ZNK9Character16SG_GetSkillLevelEj
// Returns PlayerSavegame::SG_GetSkillLevel(row). Returns -1 without a savegame.
int Character::SG_GetSkillLevel(unsigned int row) const {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_GetSkillLevel(row);
}

// 0x3bbeec _ZN9Character13SG_GetSkillIdEj
// Returns PlayerSavegame::SG_GetSkillId(row). Returns -1 without a savegame.
int Character::SG_GetSkillId(unsigned int row) {
    if (m_savegame == nullptr) {
        return -1;
    }
    return m_savegame->SG_GetSkillId(row);
}

// 0x3bbf08 _ZN9Character16SG_SetPlayerNameEPKc
// Writes the name into PlayerSavegame::m_name, the 24-byte std::string at +0x18. The original calls
// std::string::_M_assign with the range [name, name + strlen(name)), which is an assignment from the C string. No-op
// without a savegame.
void Character::SG_SetPlayerName(const char* name) {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->m_name = name;
}

// 0x3bbf40 _ZN9Character16SG_SetCurrentActEii
// Raises the act of one difficulty. QuestSavegame::m_act[d] (+0x44, one int per difficulty) takes act when act is
// higher, so the value only goes up. -1 selects the static difficulty. No-op without a savegame.
void Character::SG_SetCurrentAct(int act, int difficulty) {
    if (m_savegame == nullptr) {
        return;
    }
    const int d = ResolveDifficulty(difficulty);
    QuestSavegame* quests = m_savegame->SG_GetQuestSG();
    if (act > quests->m_act[d]) {
        quests->m_act[d] = act;
    }
}

// 0x3bbfbc _ZN9Character25SG_SetCurrentPrimaryQuestEii
// Stores the current primary quest index of one difficulty in QuestSavegame::m_currentPrimaryQuest (+0x38, one int
// per difficulty). -1 selects the static difficulty. No-op without a savegame.
void Character::SG_SetCurrentPrimaryQuest(int primaryQuest, int difficulty) {
    if (m_savegame == nullptr) {
        return;
    }
    QuestSavegame* quests = m_savegame->SG_GetQuestSG();
    quests->m_currentPrimaryQuest[ResolveDifficulty(difficulty)] = primaryQuest;
}

// 0x3bc01c _ZN9Character18SG_SetCurrentQuestEii
// Stores the current quest index of one difficulty in QuestSavegame::m_currentQuest (+0x2c, one int per difficulty).
// -1 selects the static difficulty. No-op without a savegame.
void Character::SG_SetCurrentQuest(int index, int difficulty) {
    if (m_savegame == nullptr) {
        return;
    }
    QuestSavegame* quests = m_savegame->SG_GetQuestSG();
    quests->m_currentQuest[ResolveDifficulty(difficulty)] = index;
}

// 0x3bc07c _ZN9Character27SG_NeedToResendQuestSyncMsgEv
// Two asserts (Character_SGProxy.cpp lines 279 and 280): the local player hosts (PlayerManager::IsLocalPlayerHosting on dword_99F76C), and the game is
// online (the COnline flag). When the game is online, the local player hosts and m_initFinalDone (Character +0x1395) is set, the savegame's
// m_questSynced (+0x14) is cleared so the quest sync is sent again. The original returns the leftover register; the header is void.
void Character::SG_NeedToResendQuestSyncMsg() {
    if (!dword_99F76C->IsLocalPlayerHosting()) {
        ReportAssert("Application::GetInstance()->GetPlayerManager()->IsLocalPlayerHosting()", 279);
    }
    if (!GetOnlineGameFlag()) {
        ReportAssert("GetOnline().IsOnlineGame()", 280);
    }
    if (GetOnlineGameFlag() && dword_99F76C->IsLocalPlayerHosting() && m_initFinalDone != 0 && m_savegame != nullptr) {
        m_savegame->m_questSynced = false;
    }
}

// 0x3bc1dc _ZN9Character36SG_DBG_TraceDetailedQuestInformationEP7__sFILEii
// Forwards to PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(stream, state, difficulty), with -1 resolved. The
// savegame returns a Quest*, which the header drops (void). No-op without a savegame.
void Character::SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty) {
    if (m_savegame == nullptr) {
        return;
    }
    m_savegame->SG_DBG_TraceDetailedQuestInformation(stream, state, ResolveDifficulty(difficulty));
}

// 0x3bc228 _ZN9Character15SG_GetNextQuestEPFbPK5QuestEii
// Returns PlayerSavegame::SG_GetNextQuest(pred, from, difficulty), with -1 resolved. Returns null without a savegame.
Quest* Character::SG_GetNextQuest(bool (*pred)(const Quest*), int from, int difficulty) {
    if (m_savegame == nullptr) {
        return nullptr;
    }
    return m_savegame->SG_GetNextQuest(pred, from, ResolveDifficulty(difficulty));
}

// 0x3bc274 _ZN9Character17SG_GetQuestByNameEPKci
// Returns PlayerSavegame::SG_GetQuestByName(name, difficulty), with -1 resolved. Returns null without a savegame.
Quest* Character::SG_GetQuestByName(const char* name, int difficulty) {
    if (m_savegame == nullptr) {
        return nullptr;
    }
    return m_savegame->SG_GetQuestByName(name, ResolveDifficulty(difficulty));
}

// 0x3bc2ac _ZN9Character15SG_GetQuestByIDEPFbPK5QuestEii
// Returns PlayerSavegame::SG_GetQuestByID(pred, nth, difficulty), with -1 resolved. Returns null without a savegame.
Quest* Character::SG_GetQuestByID(bool (*pred)(const Quest*), int nth, int difficulty) {
    if (m_savegame == nullptr) {
        return nullptr;
    }
    return m_savegame->SG_GetQuestByID(pred, nth, ResolveDifficulty(difficulty));
}

// 0x3bc2f8 _ZN9Character15SG_GetQuestByIDEii
// Returns PlayerSavegame::SG_GetQuestByID(id, difficulty, compile) with compile set (the original passes 1), and -1
// resolved. Returns null without a savegame.
Quest* Character::SG_GetQuestByID(int id, int difficulty) {
    if (m_savegame == nullptr) {
        return nullptr;
    }
    constexpr bool kCompile = true;
    return m_savegame->SG_GetQuestByID(id, ResolveDifficulty(difficulty), kCompile);
}
