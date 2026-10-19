// Batch g1-game-items-save-PlayerSavegame-56ccee-3 (owner PlayerSavegame, part 4 of 6).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Declarations and layout come from
// dh2/PlayerSavegame.hpp; the other classes come from their own dh2 headers.
//
// Shared conventions in this file:
//  * ASSERT(expr): gAssertLevel 2 aborts (the original writes to address 0 to force a crash), 1 prints the message
//    and carries on, 0 stays silent. The original goes on with the access after a failed check; so does this port.
//  * Section handlers (__Save*/__Load*) take (IStreamBase* stream, void* user). Hex-Rays shows the stream as `this`
//    and the owner as `a2`, so its `a2 + N` reads are the owner's fields at +N (N = 0x30 is m_playerLevel).
//  * Skill sets: m_skillSets[set] maps a skill slot (key) to a skill row (value). The original keeps each set as a
//    red-black tree and walks it in key order; the std::map walks here visit the entries in the same order.
//
// Partial in this batch:
//  * SG_TryQuestSync: the hosting branch sends CMsgQuestsSync without its payload (see the comment there).
//  * _LoadVolatileQuestsLog: the binary returns leftover registers on every path; the port returns 0 (see there).

#include "dh2/PlayerSavegame.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>
#include <map>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_msg_quests_sync.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_online.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace {

const char kDataSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp";
const char kLoadSaveSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_LoadSave.cpp";

// The original's ASSERT(expr). Level 2 aborts; level 1 prints the message and the caller goes on.
const char kStreamBufferSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources/Utils/StreamBuffer.h";

void PlayerSavegameAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// Set by a UnlockAllLevels switch or the AllLevels saved option. SG_IsLevelLocked and SG_IsMapLocLocked both
// read it in this order: the switch first, and the saved option only when the switch is off.
bool UnlockAllLevelsOn() {
    DebugSwitches::s_inst.load();
    const bool switchOn = DebugSwitches::s_inst.GetSwitch("UnlockAllLevels");
    return switchOn || ApplicationGetInstance().IsSavedOptionOn("AllLevels");
}

// The quest-sync state of the level the local player is in: the level has finished loading (m_loadStep == 38).
constexpr int kLevelLoadedStep = 38;

}  // namespace

// 0x467744 _ZN14PlayerSavegame14SG_SetSaveDateEv
// The binary's time_t is 32 bits and m_saveDate keeps that word, so the value is cut to 32 bits here too.
std::time_t PlayerSavegame::SG_SetSaveDate() {
    m_saveDate = static_cast<std::uint32_t>(std::time(nullptr));
    return static_cast<std::time_t>(m_saveDate);
}

// 0x4679e8 _ZN14PlayerSavegame15SG_TryQuestSyncEv
// The hosting branch packs the volatile quest log into a StreamBuffer, checks the buffer is sized (ASSERT "static_",
// StreamBuffer.h:130), and sends a CMsgQuestsSync whose block is a copy of the packed bytes (+0x50 length, +0x58 block).
void PlayerSavegame::SG_TryQuestSync() {
    if (!GetOnline()->IsOnlineGame()) {
        m_questSynced = true;
        return;
    }
    PlayerManager* playerManager = dword_99F76C;
    if (!playerManager->IsLocalPlayer(m_player)) {
        PlayerSavegameAssert("Application::GetInstance()->GetPlayerManager()->IsLocalPlayer(m_player)", kDataSource,
                             438);
    }
    if (m_questSynced) {
        return;
    }
    if (playerManager->IsLocalPlayerHosting()) {
        StreamBuffer buffer;
        buffer.expand(1000);
        m_volatileQuestLog.PackQuests(m_difficultyLevel, &buffer);
        CMessaging* messaging = GetMessaging();
        const std::uint32_t packedSize = buffer.buffer_.size();
        if (!buffer.buffer_.sized()) {
            PlayerSavegameAssert("static_", kStreamBufferSource, 130);
        }
        const std::uint8_t* packedBytes = buffer.buffer_.FirstBlock();
        CMessage* message = CMessage::CreateMessage("CMsgQuestsSync", true);
        static_cast<CMsgQuestsSync*>(message)->SetBlock(packedBytes, static_cast<std::int32_t>(packedSize));
        messaging->SendMsg(message);
        m_questSynced = true;
    } else {
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (playerManager->m_questSyncBuffered && level != nullptr && level->m_loadStep == kLevelLoadedStep) {
            playerManager->ReceiveQuestSync(this);
        }
    }
}

// The static name buffer (0x9a6048). The name overload of SG_GetFastTravelIdUnlocked is in another batch.
std::string PlayerSavegame::s_playerNameTemp;

// 0x467c54 _ZN14PlayerSavegame26SG_GetFastTravelIdUnlockedEii
bool PlayerSavegame::SG_GetFastTravelIdUnlocked(int id, int difficulty) {
    const auto uid = static_cast<std::uint32_t>(id);
    if ((uid & 0x80000000u) != 0 || uid >= Arrays::FastTravelList::size) {
        return false;
    }
    // Ids 64 and up throw std::out_of_range here, as the binary's bitset does (__stl_throw_out_of_range("bitset")).
    return m_fastTravelUnlocked[difficulty].test(uid);
}

// 0x467ce4 _ZNK14PlayerSavegame19SG_IsFaerieUnlockedEji
bool PlayerSavegame::SG_IsFaerieUnlocked(std::uint32_t id, int difficulty) const {
    if (m_faeryCount[difficulty] <= id) {
        PlayerSavegameAssert("faerieId < m_faeriesSize[diff]", kDataSource, 316);
    }
    DebugSwitches::s_inst.load();
    const bool unlockAll = DebugSwitches::s_inst.GetSwitch("UnlockAllFaeries");
    if (unlockAll) {
        return true;
    }
    if (id < m_faeryCount[difficulty]) {
        return m_faeries[difficulty][id].state == 1;
    }
    return false;
}

// 0x467e58 _ZNK14PlayerSavegame17SG_IsMapLocLockedEii
bool PlayerSavegame::SG_IsMapLocLocked(int location, int difficulty) const {
    return !UnlockAllLevelsOn() && SG_GetMapLocState(location, difficulty) == 0;
}

// 0x467f70 _ZNK14PlayerSavegame16SG_IsLevelLockedEii
bool PlayerSavegame::SG_IsLevelLocked(int level, int difficulty) const {
    return !UnlockAllLevelsOn() && SG_GetLevelState(level, difficulty) == 0;
}

// 0x4680a8 _ZN14PlayerSavegame17SG_SetSkillInSlotEij
// row == -1 removes the slot from the current skill set. Any other row first removes every slot of the set that already
// holds that row, then stores the row in the slot, and only then runs CharAI::UpdateSkills on the owner.
void PlayerSavegame::SG_SetSkillInSlot(int slot, std::uint32_t row) {
    constexpr std::uint32_t kNoRow = 0xFFFFFFFFu;
    if (static_cast<std::uint32_t>(m_skillsSize) <= row && row != kNoRow) {
        PlayerSavegameAssert("skillIdx < m_skillsSize || skillIdx == (size_t)-1", kDataSource, 225);
    }
    if (slot < 0) {
        PlayerSavegameAssert("slot >= 0", kDataSource, 226);
    }
    if (m_skills == nullptr) {
        PlayerSavegameAssert("m_skills", kDataSource, 227);
    }
    const int currentSkillSet = static_cast<ItemInventory*>(m_player)->GetCurrentSkillSet(-1);
    SG_GetSkillInSlot(slot);  // the original calls it for its asserts; the result is not used
    std::map<int, int>& skills = m_skillSets[currentSkillSet];

    if (row == kNoRow) {
        const auto it = skills.find(slot);  // lower_bound(slot) and the key-equal test in the original
        if (it != skills.end()) {
            skills.erase(it);
        }
        return;
    }

    for (auto it = skills.begin(); it != skills.end();) {
        if (static_cast<std::uint32_t>(it->second) == row) {
            it = skills.erase(it);
        } else {
            ++it;
        }
    }
    auto it = skills.lower_bound(slot);
    if (it == skills.end() || slot < it->first) {
        it = skills.emplace_hint(it, slot, 0);
    }
    it->second = static_cast<int>(row);
    if (m_player != nullptr) {
        static_cast<CharAI*>(m_player)->UpdateSkills();
    }
}

// 0x468470 _ZN14PlayerSavegame16SG_GetPlayerNameEj
// The name of another slot is read through a temporary PlayerSavegame (its constructor loads the slot). The text is
// copied into the static s_playerNameTemp, and that copy's text is returned. Nothing is returned when the slot is empty.
const char* PlayerSavegame::SG_GetPlayerName(std::uint32_t slot) {
    if (!SG_Exists(slot)) {
        return nullptr;
    }
    PlayerSavegame* temp = new PlayerSavegame(slot, 1, false);
    const char* name = temp->m_name.c_str();
    s_playerNameTemp.assign(name, std::strlen(name));
    delete temp;
    return s_playerNameTemp.c_str();
}

// 0x4684f0 _ZN14PlayerSavegame22_SaveVolatileQuestsLogEv
// Only an online game packs the volatile log. A hosting player does so only after the host changed (m_hostChanged).
void PlayerSavegame::_SaveVolatileQuestsLog() {
    if (!GetOnline()->IsOnlineGame()) {
        return;
    }
    PlayerManager* playerManager = dword_99F76C;
    if (playerManager->IsLocalPlayerHosting() && !playerManager->m_hostChanged) {
        return;
    }
    playerManager->m_questSyncBuffer.clear();
    m_volatileQuestLog.PackQuests(m_difficultyLevel, &playerManager->m_questSyncBuffer);
}

// 0x468574 _ZN14PlayerSavegame22_LoadVolatileQuestsLogEi
// PARTIAL on the return value. The binary returns whatever is left in r0 on each path: the PlayerSavegame pointer
// when loadMode has neither bit 2 nor bit 4 (the flags are tested on the high word of the 64-bit argument, which is
// loadMode), the COnline pointer when the game is offline, the IsLocalPlayerHosting result on the hosting early out,
// the buffer size 0 when the buffer is empty, and the leftover of UnpackQuests (void in QuestSavegame.hpp) on the
// main path. The port performs the same side effects and returns 0 on every path.
int PlayerSavegame::_LoadVolatileQuestsLog(int loadMode) {
    if ((loadMode & 0x14) == 0) {
        return 0;
    }
    if (!GetOnline()->IsOnlineGame()) {
        return 0;
    }
    PlayerManager* playerManager = dword_99F76C;
    if (playerManager->IsLocalPlayerHosting() && !playerManager->m_hostChanged) {
        return 0;
    }
    if (playerManager->m_questSyncBuffer.size() != 0) {
        playerManager->m_questSyncBuffer.seek(0);
        m_volatileQuestLog.UnpackQuests(m_difficultyLevel, &playerManager->m_questSyncBuffer, false);
    }
    return 0;
}

// 0x468630 _ZN14PlayerSavegame19_SetupSavedSectionsEbb
// The two flags pick the section table: when `online` is set, only the load callbacks are registered and the
// flag must be clear; otherwise the load and save callbacks are both registered, again only with the flag clear.
// The save callback argument of the online branch is the flag itself, which is false there, so it is nullptr.
void PlayerSavegame::_SetupSavedSections(bool online, bool flag) {
    Savegame* savegame = m_savegame;
    if (online) {
        if (!flag) {
            savegame->initSectionInfo("PDFL", &PlayerSavegame::__LoadDifficultyLevel, nullptr, this);
            savegame->initSectionInfo("LNAM", &PlayerSavegame::__LoadLevelName, nullptr, this);
            savegame->initSectionInfo("LEPT", &PlayerSavegame::__LoadLevelEntryPoint, nullptr, this);
            savegame->initSectionInfo("LUSP", &PlayerSavegame::__LoadUseSpawnPoint, nullptr, this);
            savegame->initSectionInfo("LVLS", &PlayerSavegame::__LoadLevelStates, nullptr, this);
            savegame->initSectionInfo("FAES", &PlayerSavegame::__LoadFaeries, nullptr, this);
            savegame->initSectionInfo("FTVL", &PlayerSavegame::__LoadFastTravelList, nullptr, this);
        }
    } else if (!flag) {
        savegame->initSectionInfo("PDFL", &PlayerSavegame::__LoadDifficultyLevel,
                                  &PlayerSavegame::__SaveDifficultyLevel, this);
        savegame->initSectionInfo("LNAM", &PlayerSavegame::__LoadLevelName, &PlayerSavegame::__SaveLevelName, this);
        savegame->initSectionInfo("LEPT", &PlayerSavegame::__LoadLevelEntryPoint,
                                  &PlayerSavegame::__SaveLevelEntryPoint, this);
        savegame->initSectionInfo("LUSP", &PlayerSavegame::__LoadUseSpawnPoint, &PlayerSavegame::__SaveUseSpawnPoint,
                                  this);
        savegame->initSectionInfo("LVLS", &PlayerSavegame::__LoadLevelStates, &PlayerSavegame::__SaveLevelStates,
                                  this);
        savegame->initSectionInfo("FAES", &PlayerSavegame::__LoadFaeries, &PlayerSavegame::__SaveFaeries, this);
        savegame->initSectionInfo("FTVL", &PlayerSavegame::__LoadFastTravelList, &PlayerSavegame::__SaveFastTravelList,
                                  this);
    }
}

// 0x4688c0 _ZN14PlayerSavegame16__SavePlayerNameEP11IStreamBasePv
void PlayerSavegame::__SavePlayerName(IStreamBase* stream, void* user) {
    stream->writeAs(static_cast<PlayerSavegame*>(user)->m_name);
}

// 0x4688c8 _ZN14PlayerSavegame21__SaveLevelEntryPointEP11IStreamBasePv
void PlayerSavegame::__SaveLevelEntryPoint(IStreamBase* stream, void* user) {
    auto* self = static_cast<PlayerSavegame*>(user);
    stream->writeAs(self->m_levelEntryPoint[0]);  // +0x40
    stream->writeAs(self->m_levelEntryPoint[1]);  // +0x44
    stream->writeAs(self->m_levelEntryPoint[2]);  // +0x48
}

// 0x4688f8 _ZN14PlayerSavegame21__SaveDifficultyLevelEP11IStreamBasePv
void PlayerSavegame::__SaveDifficultyLevel(IStreamBase* stream, void* user) {
    stream->writeAs(m_difficultyLevel);
    stream->writeAs(static_cast<PlayerSavegame*>(user)->m_unlockedDifficulty);  // +0x3c
}

// 0x468930 _ZN14PlayerSavegame17__SavePlayerLevelEP11IStreamBasePv
void PlayerSavegame::__SavePlayerLevel(IStreamBase* stream, void* user) {
    stream->writeAs(static_cast<PlayerSavegame*>(user)->m_playerLevel);  // +0x30
}

// 0x468938 _ZN14PlayerSavegame21__LoadLevelEntryPointEP11IStreamBasePv
void PlayerSavegame::__LoadLevelEntryPoint(IStreamBase* stream, void* user) {
    auto* self = static_cast<PlayerSavegame*>(user);
    stream->readAs(self->m_levelEntryPoint[0]);  // +0x40
    stream->readAs(self->m_levelEntryPoint[1]);  // +0x44
    stream->readAs(self->m_levelEntryPoint[2]);  // +0x48
}

// 0x468968 _ZN14PlayerSavegame21__LoadDifficultyLevelEP11IStreamBasePv
void PlayerSavegame::__LoadDifficultyLevel(IStreamBase* stream, void* user) {
    stream->readAs(m_difficultyLevel);
    stream->readAs(static_cast<PlayerSavegame*>(user)->m_unlockedDifficulty);  // +0x3c
}

// 0x4689a0 _ZN14PlayerSavegame17__LoadPlayerLevelEP11IStreamBasePv
void PlayerSavegame::__LoadPlayerLevel(IStreamBase* stream, void* user) {
    stream->readAs(static_cast<PlayerSavegame*>(user)->m_playerLevel);  // +0x30
}

// 0x4689a8 _ZN14PlayerSavegame19__SaveUseSpawnPointEP11IStreamBasePv
void PlayerSavegame::__SaveUseSpawnPoint(IStreamBase* stream, void* user) {
    auto* self = static_cast<PlayerSavegame*>(user);
    stream->writeAs(self->m_useSpawnPoint[0]);  // +0x4c
    stream->writeAs(self->m_useSpawnPoint[1]);  // +0x4d
    stream->writeAs(self->m_useSpawnPoint[2]);  // +0x4e
}

// 0x4689d8 _ZN14PlayerSavegame16__SavePropertiesEP11IStreamBasePv
// Writes the owner's property count (224), then each property word of its saved sheet (Character +0x8ec, which is
// CharProperties::m_savedProps), then unk_194. Property i is the word CharProperties::_GetProperty reads, which is
// sheet + Structs::CharacterProperties::m_dataOffsets[i] + 4 in the binary.
void PlayerSavegame::__SaveProperties(IStreamBase* stream, void* user) {
    auto* self = static_cast<PlayerSavegame*>(user);
    Character* player = self->m_player;
    if (player == nullptr) {
        PlayerSavegameAssert("_this->m_player", kLoadSaveSource, 836);
        return;
    }
    std::int32_t count = Structs::CharacterProperties::kCount;  // 224
    stream->writeAs(count);
    const Structs::CharacterProperties& sheet = player->CharProperties::m_savedProps;
    for (std::int32_t i = 0; i < count; ++i) {
        const std::int32_t value = player->CharProperties::_GetProperty(sheet, i);
        stream->writeAs(value);
    }
    stream->writeAs(self->unk_194);
}
