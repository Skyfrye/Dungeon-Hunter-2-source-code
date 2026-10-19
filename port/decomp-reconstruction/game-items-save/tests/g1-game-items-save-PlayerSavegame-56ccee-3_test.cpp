// Test for the PlayerSavegame batch g1-game-items-save-PlayerSavegame-56ccee-3
// (game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-3.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source> <net-transport/src/stream_buffer.cpp> <net-transport/src/buffer.cpp>
// Returns non-zero when a check fails.
//
// Covers the fast-travel and faery bits, the level and map locks, the skill-slot map walks, SG_GetPlayerName, the
// save-date stamp, the section table of _SetupSavedSections, the section handlers on a byte stream, and the online
// branches of SG_TryQuestSync and _SaveVolatileQuestsLog. The other batches (the game-app singletons, DebugSwitches,
// PlayerManager, QuestSavegame, the online session, the messaging calls and the other PlayerSavegame functions) are
// stand-ins here. The singletons are plain storage with no constructor run, so the test sets only the members it reads.
// StreamBuffer is the real net-transport implementation.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <ctime>
#include <map>
#include <stdexcept>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_online.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace {

int g_checks = 0;
int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        ++g_checks;                                                              \
        if (!(cond)) {                                                           \
            ++g_failures;                                                        \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
        }                                                                        \
    } while (0)

// ---- stand-in state written by the stubs below ----
std::vector<std::string> g_switchReads;  // names passed to DebugSwitches::GetSwitch
std::string g_switchOnName;              // the one switch that reads as on
std::vector<std::string> g_savedOptionReads;
bool g_savedOptionOn = false;
int g_levelState = 0;
int g_mapLocState = 0;
int g_skillInSlotCalls = 0;
int g_updateSkillsCalls = 0;
bool g_slotExists[3] = {true, false, true};
const char* g_slotNames[3] = {"Ann", "Bob", "Cyd"};
int g_ctorCalls = 0;
int g_dtorCalls = 0;
int g_isLocalPlayer = 1;
int g_isHosting = 0;
int g_receiveCalls = 0;
int g_sendCalls = 0;
std::vector<std::string> g_createdNames;
int g_packCalls = 0;
int g_packDifficulty = -1;
IStreamBase* g_packStream = nullptr;
int g_unpackCalls = 0;
struct SectionCall {
    std::string section;
    Savegame::SectionCallback onLoad;
    Savegame::SectionCallback onSave;
    void* user;
};
std::vector<SectionCall> g_sectionCalls;
Level* g_currentLevel = nullptr;

// Storage for the singletons and objects the batch reads by pointer. Never constructed; only plain members are set.
alignas(Application) unsigned char g_applicationStorage[sizeof(Application)];
alignas(COnline) unsigned char g_onlineStorage[sizeof(COnline)];
alignas(Level) unsigned char g_levelStorage[sizeof(Level)];
alignas(CMessaging) unsigned char g_messagingStorage[sizeof(CMessaging)];
alignas(CMessage) unsigned char g_messageStorage[sizeof(CMessage)];
alignas(Savegame) unsigned char g_savegameStorage[sizeof(Savegame)];
alignas(PlayerManager) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];

COnline* onlineStub() { return reinterpret_cast<COnline*>(g_onlineStorage); }
PlayerManager* playerManagerStub() { return reinterpret_cast<PlayerManager*>(g_playerManagerStorage); }

// A byte stream: writes append, reads come from the same buffer at the read position.
class FakeStream : public IStreamBase {
public:
    std::vector<unsigned char> bytes;
    std::uint64_t pos = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        std::memcpy(dst, bytes.data() + pos, static_cast<std::size_t>(n));
        return n;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        std::memcpy(dst, bytes.data() + pos, static_cast<std::size_t>(n));
        pos += n;
        return n;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        const auto* p = static_cast<const unsigned char*>(src);
        bytes.insert(bytes.end(), p, p + n);
        return n;
    }
    void seek(std::uint64_t p) override { pos = p; }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += n; }
};

}  // namespace

// ---- stand-ins for symbols the batch source uses but other batches define (global scope: they define externs) ----
int gAssertLevel = 0;
std::uint32_t Arrays::FastTravelList::size = 80;
std::int32_t PlayerSavegame::m_difficultyLevel = 0;
static PlayerManager* g_test_dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) {
    g_switchReads.push_back(name);
    return name == g_switchOnName;
}

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_applicationStorage); }
bool Application::IsSavedOptionOn(const char* name) {
    g_savedOptionReads.push_back(name);
    return g_savedOptionOn;
}
Level* Application::GetCurrentLevel() const { return g_currentLevel; }

COnline* GetOnline() { return onlineStub(); }
CMessaging* GetMessaging() { return reinterpret_cast<CMessaging*>(g_messagingStorage); }
void CMessaging::SendMsg(CMessage*) { ++g_sendCalls; }
CMessage* CMessage::CreateMessage(const char* typeName, bool) {
    g_createdNames.push_back(typeName);
    return reinterpret_cast<CMessage*>(g_messageStorage);
}

int PlayerManager::IsLocalPlayer(const Character*) { return g_isLocalPlayer; }
int PlayerManager::IsLocalPlayerHosting() { return g_isHosting; }
int PlayerManager::ReceiveQuestSync(PlayerSavegame*) {
    ++g_receiveCalls;
    return 0;
}

QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}
void QuestSavegame::PackQuests(int difficulty, IStreamBase* stream) {
    ++g_packCalls;
    g_packDifficulty = difficulty;
    g_packStream = stream;
}
void QuestSavegame::UnpackQuests(int, IStreamBase*, bool) { ++g_unpackCalls; }

PlayerSavegame::PlayerSavegame() {}
PlayerSavegame::PlayerSavegame(std::uint32_t slot, int, bool) {
    ++g_ctorCalls;
    m_slot = slot;
    m_name = g_slotNames[slot];
}
PlayerSavegame::~PlayerSavegame() { ++g_dtorCalls; }
int PlayerSavegame::SG_Exists(std::uint32_t slot) { return g_slotExists[slot] ? 1 : 0; }
int PlayerSavegame::SG_GetMapLocState(int, int) const { return g_mapLocState; }
int PlayerSavegame::SG_GetLevelState(int, int) const { return g_levelState; }
int PlayerSavegame::SG_GetSkillInSlot(int) const {
    ++g_skillInSlotCalls;
    return -1;
}
void PlayerSavegame::__LoadLevelName(IStreamBase*, void*) {}
void PlayerSavegame::__SaveLevelName(IStreamBase*, void*) {}
void PlayerSavegame::__LoadUseSpawnPoint(IStreamBase*, void*) {}
void PlayerSavegame::__LoadLevelStates(IStreamBase*, void*) {}
void PlayerSavegame::__SaveLevelStates(IStreamBase*, void*) {}
void PlayerSavegame::__LoadFaeries(IStreamBase*, void*) {}
void PlayerSavegame::__SaveFaeries(IStreamBase*, void*) {}
void PlayerSavegame::__LoadFastTravelList(IStreamBase*, void*) {}
void PlayerSavegame::__SaveFastTravelList(IStreamBase*, void*) {}

void Savegame::initSectionInfo(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user) {
    g_sectionCalls.push_back(SectionCall{section, onLoad, onSave, user});
}

int ItemInventory::GetCurrentSkillSet(int) { return 0; }
void CharAI::UpdateSkills() { ++g_updateSkillsCalls; }
int CharProperties::_GetProperty(const Structs::CharacterProperties&, int propId) const { return 1000 + propId; }

// IStreamBase members the batch's stream calls reach. The typed helpers are the explicit specializations below.
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }
void IStreamBase::writeAs(const std::string& value) { write(value.data(), value.size()); }
template <>
void IStreamBase::writeAs<int>(const int& value) {
    write(&value, sizeof(int));
}
template <>
void IStreamBase::writeAs<bool>(const bool& value) {
    write(&value, sizeof(bool));
}
template <>
void IStreamBase::readAs<int>(int& value) {
    read(&value, sizeof(int));
}

namespace {

void ResetStubs() {
    g_switchReads.clear();
    g_switchOnName.clear();
    g_savedOptionReads.clear();
    g_savedOptionOn = false;
    g_levelState = 0;
    g_mapLocState = 0;
    g_skillInSlotCalls = 0;
    g_updateSkillsCalls = 0;
    g_ctorCalls = 0;
    g_dtorCalls = 0;
    g_isLocalPlayer = 1;
    g_isHosting = 0;
    g_receiveCalls = 0;
    g_sendCalls = 0;
    g_createdNames.clear();
    g_packCalls = 0;
    g_packDifficulty = -1;
    g_packStream = nullptr;
    g_unpackCalls = 0;
    g_sectionCalls.clear();
    g_currentLevel = nullptr;
    onlineStub()->SetIsOnlineGame(false);
    playerManagerStub()->m_hostChanged = false;
    playerManagerStub()->m_questSyncBuffered = false;
}

// SG_SetSaveDate: stamps the 32-bit save date and returns the same value.
void TestSaveDate() {
    PlayerSavegame ps;
    const std::time_t before = std::time(nullptr);
    const std::time_t got = ps.SG_SetSaveDate();
    const std::time_t after = std::time(nullptr);
    CHECK(got == static_cast<std::time_t>(ps.m_saveDate));
    CHECK(got >= before && got <= after);
}

// SG_GetFastTravelIdUnlocked: one 64-bit bitset per difficulty; ids outside the list are false, ids 64 and up throw.
void TestFastTravel() {
    PlayerSavegame ps;
    ps.m_fastTravelUnlocked[1].set(5);
    ps.m_fastTravelUnlocked[2].set(63);
    CHECK(ps.SG_GetFastTravelIdUnlocked(5, 1));
    CHECK(!ps.SG_GetFastTravelIdUnlocked(5, 0));
    CHECK(!ps.SG_GetFastTravelIdUnlocked(6, 1));
    CHECK(ps.SG_GetFastTravelIdUnlocked(63, 2));
    CHECK(!ps.SG_GetFastTravelIdUnlocked(-1, 1));
    CHECK(!ps.SG_GetFastTravelIdUnlocked(80, 1));  // at the list size: false, no throw
    bool threw = false;
    try {
        ps.SG_GetFastTravelIdUnlocked(70, 1);  // inside the list but past the 64-bit bitset
    } catch (const std::out_of_range&) {
        threw = true;
    }
    CHECK(threw);
}

// SG_IsFaerieUnlocked: a faery is unlocked when its record state is 1; the UnlockAllFaeries switch wins over that.
void TestFaeries() {
    PlayerSavegame ps;
    PlayerSavegame::FaeryRecord records[3][2] = {};
    records[0][1].state = 1;
    records[2][0].state = 1;
    for (int d = 0; d < 3; ++d) {
        ps.m_faeries[d] = records[d];
        ps.m_faeryCount[d] = 2;
    }
    CHECK(ps.SG_IsFaerieUnlocked(1, 0));
    CHECK(!ps.SG_IsFaerieUnlocked(0, 0));
    CHECK(ps.SG_IsFaerieUnlocked(0, 2));
    CHECK(!ps.SG_IsFaerieUnlocked(5, 0));  // past the faery count: false
    CHECK(!g_switchReads.empty() && g_switchReads.back() == "UnlockAllFaeries");
    g_switchOnName = "UnlockAllFaeries";
    CHECK(ps.SG_IsFaerieUnlocked(0, 0));
    CHECK(ps.SG_IsFaerieUnlocked(9, 1));  // the switch returns before the range test
    g_switchOnName.clear();
}

// SG_IsLevelLocked and SG_IsMapLocLocked: locked when the state is 0 and neither unlock-all source is on.
void TestLocks() {
    PlayerSavegame ps;
    g_levelState = 0;
    CHECK(ps.SG_IsLevelLocked(3, 1));
    g_levelState = 1;
    CHECK(!ps.SG_IsLevelLocked(3, 1));
    g_levelState = 0;
    g_switchOnName = "UnlockAllLevels";
    CHECK(!ps.SG_IsLevelLocked(3, 1));
    g_switchOnName.clear();
    g_savedOptionOn = true;
    CHECK(!ps.SG_IsLevelLocked(3, 1));
    CHECK(!g_savedOptionReads.empty() && g_savedOptionReads.back() == "AllLevels");
    g_savedOptionOn = false;

    g_mapLocState = 0;
    CHECK(ps.SG_IsMapLocLocked(2, 0));
    g_mapLocState = 2;
    CHECK(!ps.SG_IsMapLocLocked(2, 0));
    g_mapLocState = 0;
    g_switchOnName = "UnlockAllLevels";
    CHECK(!ps.SG_IsMapLocLocked(2, 0));
    g_switchOnName.clear();
}

// SG_SetSkillInSlot on the single skill set: a row is kept in one slot at a time, and row -1 clears the slot.
void TestSkillSlots() {
    PlayerSavegame ps;
    PlayerSavegame::SkillRecord rows[4] = {};
    ps.m_skills = rows;
    ps.m_skillsSize = 100;
    ps.m_player = nullptr;
    ps.m_skillSets.assign(1, std::map<int, int>());
    g_skillInSlotCalls = 0;
    g_updateSkillsCalls = 0;
    const std::uint32_t none = 0xFFFFFFFFu;

    ps.SG_SetSkillInSlot(1, 10);
    ps.SG_SetSkillInSlot(3, 30);
    CHECK((ps.m_skillSets[0] == std::map<int, int>{{1, 10}, {3, 30}}));
    ps.SG_SetSkillInSlot(4, 10);  // row 10 moves from slot 1 to slot 4
    CHECK((ps.m_skillSets[0] == std::map<int, int>{{3, 30}, {4, 10}}));
    ps.SG_SetSkillInSlot(3, none);  // clears slot 3
    CHECK((ps.m_skillSets[0] == std::map<int, int>{{4, 10}}));
    ps.SG_SetSkillInSlot(2, none);  // clearing an empty slot changes nothing
    CHECK((ps.m_skillSets[0] == std::map<int, int>{{4, 10}}));
    ps.SG_SetSkillInSlot(4, 10);  // the same row again keeps one entry
    CHECK((ps.m_skillSets[0] == std::map<int, int>{{4, 10}}));
    CHECK(g_skillInSlotCalls == 6);
    CHECK(g_updateSkillsCalls == 0);  // no owner, so CharAI::UpdateSkills is not reached
}

// SG_GetPlayerName: the name of an existing slot comes back through the static copy; an empty slot gives null.
void TestPlayerName() {
    ResetStubs();
    CHECK(std::strcmp(PlayerSavegame::SG_GetPlayerName(2), "Cyd") == 0);
    CHECK(PlayerSavegame::SG_GetPlayerName(1) == nullptr);
    CHECK(std::strcmp(PlayerSavegame::SG_GetPlayerName(0), "Ann") == 0);
    CHECK(g_ctorCalls == 2);
    CHECK(g_dtorCalls == 2);
    CHECK(PlayerSavegame::s_playerNameTemp == "Ann");
}

// _SetupSavedSections: the online flag registers the seven load-only sections; otherwise the load and save pairs are
// registered when the flag is clear, and nothing is when it is set.
void TestSetupSections() {
    ResetStubs();
    PlayerSavegame ps;
    ps.m_savegame = reinterpret_cast<Savegame*>(g_savegameStorage);

    ps._SetupSavedSections(false, false);
    CHECK(g_sectionCalls.size() == 7);
    if (g_sectionCalls.size() == 7) {
        CHECK(g_sectionCalls[0].section == "PDFL");
        CHECK(g_sectionCalls[0].onSave == &PlayerSavegame::__SaveDifficultyLevel);
        CHECK(g_sectionCalls[0].onLoad == &PlayerSavegame::__LoadDifficultyLevel);
        CHECK(g_sectionCalls[0].user == &ps);
        CHECK(g_sectionCalls[1].section == "LNAM");
        CHECK(g_sectionCalls[2].section == "LEPT");
        CHECK(g_sectionCalls[2].onSave == &PlayerSavegame::__SaveLevelEntryPoint);
        CHECK(g_sectionCalls[3].section == "LUSP");
        CHECK(g_sectionCalls[4].section == "LVLS");
        CHECK(g_sectionCalls[5].section == "FAES");
        CHECK(g_sectionCalls[6].section == "FTVL");
        CHECK(g_sectionCalls[6].onSave == &PlayerSavegame::__SaveFastTravelList);
    }

    g_sectionCalls.clear();
    ps._SetupSavedSections(true, false);
    CHECK(g_sectionCalls.size() == 7);
    bool anySave = false;
    for (const SectionCall& call : g_sectionCalls) {
        anySave = anySave || call.onSave != nullptr;
    }
    CHECK(!anySave);
    if (!g_sectionCalls.empty()) {
        CHECK(g_sectionCalls[0].onLoad == &PlayerSavegame::__LoadDifficultyLevel);
    }

    g_sectionCalls.clear();
    ps._SetupSavedSections(false, true);
    ps._SetupSavedSections(true, true);
    CHECK(g_sectionCalls.empty());
}

// The section handlers write and read the fields at their file offsets, in the order the file layout gives.
void TestSectionHandlers() {
    ResetStubs();
    PlayerSavegame ps;
    ps.m_levelEntryPoint[0] = 7;
    ps.m_levelEntryPoint[1] = 8;
    ps.m_levelEntryPoint[2] = 9;
    ps.m_useSpawnPoint[0] = true;
    ps.m_useSpawnPoint[1] = false;
    ps.m_useSpawnPoint[2] = true;
    ps.m_playerLevel = 12;
    ps.m_unlockedDifficulty = 3;
    ps.m_name = "Dana";
    PlayerSavegame::m_difficultyLevel = 2;

    // File layout: 3 ints (LEPT, 12 bytes), 3 bools (LUSP, 3 bytes), the level int (4), the difficulty pair (8),
    // then the name string.
    FakeStream out;
    PlayerSavegame::__SaveLevelEntryPoint(&out, &ps);
    CHECK(out.bytes.size() == 12);
    PlayerSavegame::__SaveUseSpawnPoint(&out, &ps);
    CHECK(out.bytes.size() == 15);
    PlayerSavegame::__SavePlayerLevel(&out, &ps);
    CHECK(out.bytes.size() == 19);
    PlayerSavegame::__SaveDifficultyLevel(&out, &ps);
    CHECK(out.bytes.size() == 27);
    PlayerSavegame::__SavePlayerName(&out, &ps);
    CHECK(out.bytes.size() == 31);
    CHECK(out.bytes[27] == 'D' && out.bytes[30] == 'a');

    FakeStream in;
    in.bytes = out.bytes;
    PlayerSavegame loaded;
    PlayerSavegame::__LoadLevelEntryPoint(&in, &loaded);
    CHECK(loaded.m_levelEntryPoint[0] == 7 && loaded.m_levelEntryPoint[1] == 8 && loaded.m_levelEntryPoint[2] == 9);
    in.pos = 15;  // past the entry points and the three spawn-point bytes
    PlayerSavegame::__LoadPlayerLevel(&in, &loaded);
    CHECK(loaded.m_playerLevel == 12);
    PlayerSavegame::m_difficultyLevel = 0;
    PlayerSavegame::__LoadDifficultyLevel(&in, &loaded);
    CHECK(PlayerSavegame::m_difficultyLevel == 2);
    CHECK(loaded.m_unlockedDifficulty == 3);
}

// Spawn points are one byte each; SaveUseSpawnPoint writes them in order.
void TestSpawnBytes() {
    ResetStubs();
    PlayerSavegame ps;
    ps.m_useSpawnPoint[0] = true;
    ps.m_useSpawnPoint[1] = false;
    ps.m_useSpawnPoint[2] = true;
    FakeStream out;
    PlayerSavegame::__SaveUseSpawnPoint(&out, &ps);
    CHECK(out.bytes.size() == 3 && out.bytes[0] == 1 && out.bytes[1] == 0 && out.bytes[2] == 1);
}

// __SaveProperties with no owner writes nothing and returns (the original's ASSERT path at gAssertLevel 0).
void TestSavePropertiesNoOwner() {
    ResetStubs();
    PlayerSavegame ps;
    ps.m_player = nullptr;
    FakeStream out;
    PlayerSavegame::__SaveProperties(&out, &ps);
    CHECK(out.bytes.empty());
}

// _SaveVolatileQuestsLog: packs only in an online game, and a hosting player packs only after a host change.
void TestSaveVolatileQuests() {
    ResetStubs();
    PlayerSavegame ps;
    PlayerSavegame::m_difficultyLevel = 1;

    onlineStub()->SetIsOnlineGame(false);
    ps._SaveVolatileQuestsLog();
    CHECK(g_packCalls == 0);

    onlineStub()->SetIsOnlineGame(true);
    g_isHosting = 1;
    playerManagerStub()->m_hostChanged = false;
    ps._SaveVolatileQuestsLog();
    CHECK(g_packCalls == 0);

    playerManagerStub()->m_hostChanged = true;
    ps._SaveVolatileQuestsLog();
    CHECK(g_packCalls == 1);
    CHECK(g_packDifficulty == 1);
    CHECK(g_packStream == &playerManagerStub()->m_questSyncBuffer);

    g_isHosting = 0;
    ps._SaveVolatileQuestsLog();
    CHECK(g_packCalls == 2);
}

// _LoadVolatileQuestsLog: with neither load bit set, or offline, nothing is unpacked.
void TestLoadVolatileQuestsEarlyOut() {
    ResetStubs();
    PlayerSavegame ps;
    CHECK(ps._LoadVolatileQuestsLog(0x01) == 0);
    CHECK(g_unpackCalls == 0);
    onlineStub()->SetIsOnlineGame(false);
    CHECK(ps._LoadVolatileQuestsLog(0x14) == 0);
    CHECK(g_unpackCalls == 0);
}

// SG_TryQuestSync: offline marks the sync done; online, a synced save does nothing; a client receives the sync when
// the level has loaded and a sync is buffered; a hosting player sends CMsgQuestsSync and marks the sync done.
void TestTryQuestSync() {
    ResetStubs();
    PlayerSavegame ps;
    ps.m_player = nullptr;

    onlineStub()->SetIsOnlineGame(false);
    ps.m_questSynced = false;
    ps.SG_TryQuestSync();
    CHECK(ps.m_questSynced);

    onlineStub()->SetIsOnlineGame(true);
    ps.m_questSynced = true;
    ps.SG_TryQuestSync();
    CHECK(g_receiveCalls == 0 && g_sendCalls == 0);

    Level* level = reinterpret_cast<Level*>(g_levelStorage);
    g_currentLevel = level;
    level->m_loadStep = 38;
    ps.m_questSynced = false;
    g_isHosting = 0;
    playerManagerStub()->m_questSyncBuffered = true;
    ps.SG_TryQuestSync();
    CHECK(g_receiveCalls == 1);
    CHECK(!ps.m_questSynced);

    level->m_loadStep = 12;  // still loading: no receive
    ps.SG_TryQuestSync();
    CHECK(g_receiveCalls == 1);

    level->m_loadStep = 38;
    playerManagerStub()->m_questSyncBuffered = false;
    ps.SG_TryQuestSync();
    CHECK(g_receiveCalls == 1);

    g_isHosting = 1;
    ps.SG_TryQuestSync();
    CHECK(g_sendCalls == 1);
    CHECK(ps.m_questSynced);
    CHECK(!g_createdNames.empty() && g_createdNames.back() == "CMsgQuestsSync");
    CHECK(g_packCalls == 1);
    g_currentLevel = nullptr;
}

}  // namespace

int main() {
    TestSaveDate();
    TestFastTravel();
    TestFaeries();
    TestLocks();
    TestSkillSlots();
    TestPlayerName();
    TestSetupSections();
    TestSectionHandlers();
    TestSpawnBytes();
    TestSavePropertiesNoOwner();
    TestSaveVolatileQuests();
    TestLoadVolatileQuestsEarlyOut();
    TestTryQuestSync();
    std::printf("%d checks, %d failures\n", g_checks, g_failures);
    return g_failures == 0 ? 0 : 1;
}
