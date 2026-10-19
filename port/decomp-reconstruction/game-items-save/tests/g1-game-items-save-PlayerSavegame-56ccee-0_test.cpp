// Test for the PlayerSavegame batch g1-game-items-save-PlayerSavegame-56ccee-0 (game-items-save/src).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is PARTIAL: the savegame file system and the COnline flag are placeholders. The file checks therefore pin
// the placeholder results (no file, nothing removed, empty list), and the online branches are not taken. The checks cover the
// name builders, the slot parse, SG_GetFilename, SG_Synchronize, the savegame creation in _Load and its section flags, the
// name read by SG_GetSavefileName, and the offline SG_Save. Methods of other batches and engine calls are stand-ins here that
// only record calls.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"
#include "net-session-online/c_online_impl.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"

namespace {

int g_failures = 0;
int g_loadCalls = 0;
int g_saveAllCalls = 0;
int g_cacheFileCalls = 0;
int g_setupCalls = 0;
int g_saveVolatileCalls = 0;
int g_initLevelStates = 0;
int g_initSkills = 0;
int g_initFaeries = 0;
int g_initQuests = 0;
int g_tryQuestSyncCalls = 0;
int g_updateQuestsCalls = 0;
bool g_updateForce = false;
int g_synchronizeCalls = 0;
bool g_synchronizeResult = false;
bool g_syncCurrentOnly = false;
const void* g_syncThis = nullptr;
const void* g_syncOther = nullptr;
int g_getOnlineCalls = 0;
int g_deleteCalls = 0;
int g_loadVolatileResult = 7;

}  // namespace

#define CHECK(cond)                                             \
    do {                                                        \
        if (!(cond)) {                                          \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond); \
            ++g_failures;                                       \
        }                                                       \
    } while (0)

// ---- engine and other-batch stand-ins (record calls only) ----

// A real COnline (flag clear), as the original's GetOnline() returns.
static COnlineImpl g_testOnline;
COnline* GetOnline() {
    ++g_getOnlineCalls;
    return &g_testOnline;
}

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

int PlayerManager::IsLocalPlayerHosting() {
    return 0;
}

std::int32_t PlayerSavegame::m_difficultyLevel = 0;

PlayerSavegame::PlayerSavegame() {
    m_slot = 0;
    m_savegame = nullptr;
    m_saveBlocked = false;
    m_unlockedDifficulty = 0;
    m_saveMode = 0;
    for (int i = 0; i < 3; ++i) {
        m_levelStates[i] = nullptr;
        m_worldMapStates[i] = nullptr;
        m_faeries[i] = nullptr;
    }
    m_skills = nullptr;
}

QuestSavegame::QuestSavegame() {}

QuestSavegame::~QuestSavegame() {}

bool QuestSavegame::Synchronize(const QuestSavegame& other, bool currentOnly) {
    ++g_synchronizeCalls;
    g_syncThis = this;
    g_syncOther = &other;
    g_syncCurrentOnly = currentOnly;
    return g_synchronizeResult;
}

void QuestSavegame::UpdateQuests(bool force) {
    ++g_updateQuestsCalls;
    g_updateForce = force;
}

void QuestSavegame::InitQuests() {
    ++g_initQuests;
}

Savegame::Savegame(const char* name, bool flag) : m_filename(name), m_stream(nullptr), unk_38(flag) {}

Savegame::~Savegame() {}

void Savegame::load(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user) {
    (void)section;
    (void)onLoad;
    (void)onSave;
    (void)user;
    ++g_loadCalls;
}

void Savegame::saveAll() {
    ++g_saveAllCalls;
}

void Savegame::_cacheFile(StreamBuffer* source) {
    (void)source;
    ++g_cacheFileCalls;
}

int LevelSavegame::Delete(unsigned int levelId, int fieldA, int fieldB, int difficulty, bool checkpoint,
                          bool multiplayer) {
    (void)levelId;
    (void)fieldA;
    (void)fieldB;
    (void)difficulty;
    (void)checkpoint;
    (void)multiplayer;
    ++g_deleteCalls;
    return 0;
}

void PlayerSavegame::_SetupSavedSections(bool online, bool flag) {
    (void)online;
    (void)flag;
    ++g_setupCalls;
}

void PlayerSavegame::_SaveVolatileQuestsLog() {
    ++g_saveVolatileCalls;
}

void PlayerSavegame::_InitLevelStates() {
    ++g_initLevelStates;
}

void PlayerSavegame::_InitSkills() {
    ++g_initSkills;
}

void PlayerSavegame::_InitFaeries() {
    ++g_initFaeries;
}

int PlayerSavegame::_LoadVolatileQuestsLog(int loadMode) {
    (void)loadMode;
    return g_loadVolatileResult;
}

void PlayerSavegame::SG_TryQuestSync() {
    ++g_tryQuestSyncCalls;
}

QuestSavegame* PlayerSavegame::SG_GetQuestSG() {
    return &m_questLog;
}

// Section callbacks named by _Load. They are not run by these checks.
#define SECTION_CALLBACK_STUB(fn) \
    void PlayerSavegame::fn(IStreamBase*, void*) {}

SECTION_CALLBACK_STUB(__LoadPlayerName)
SECTION_CALLBACK_STUB(__SavePlayerName)
SECTION_CALLBACK_STUB(__LoadPlayerLevel)
SECTION_CALLBACK_STUB(__SavePlayerLevel)
SECTION_CALLBACK_STUB(__LoadPlayerClass)
SECTION_CALLBACK_STUB(__SavePlayerClass)
SECTION_CALLBACK_STUB(__LoadDifficultyLevel)
SECTION_CALLBACK_STUB(__SaveDifficultyLevel)
SECTION_CALLBACK_STUB(__LoadLevelName)
SECTION_CALLBACK_STUB(__SaveLevelName)
SECTION_CALLBACK_STUB(__LoadLevelEntryPoint)
SECTION_CALLBACK_STUB(__SaveLevelEntryPoint)
SECTION_CALLBACK_STUB(__LoadUseSpawnPoint)
SECTION_CALLBACK_STUB(__SaveUseSpawnPoint)
SECTION_CALLBACK_STUB(__LoadLevelStates)
SECTION_CALLBACK_STUB(__SaveLevelStates)
SECTION_CALLBACK_STUB(__LoadSkills)
SECTION_CALLBACK_STUB(__SaveSkills)
SECTION_CALLBACK_STUB(__LoadFaeries)
SECTION_CALLBACK_STUB(__SaveFaeries)
SECTION_CALLBACK_STUB(__LoadCurrentFaery)
SECTION_CALLBACK_STUB(__SaveCurrentFaery)
SECTION_CALLBACK_STUB(__LoadQuests)
SECTION_CALLBACK_STUB(__SaveQuests)
SECTION_CALLBACK_STUB(__LoadProperties)
SECTION_CALLBACK_STUB(__SaveProperties)
SECTION_CALLBACK_STUB(__LoadInventory)
SECTION_CALLBACK_STUB(__SaveInventory)
SECTION_CALLBACK_STUB(__LoadFastTravelList)
SECTION_CALLBACK_STUB(__SaveFastTravelList)

int main() {
    // Name builders and the file name for each slot and flag.
    CHECK(std::strcmp(PlayerSavegame::SG_GetFilenamePrefix(), "dh2_") == 0);
    CHECK(std::strcmp(PlayerSavegame::SG_GetFilenameExtension(), ".savegame") == 0);
    CHECK(std::strcmp(PlayerSavegame::SG_GetCheckpointFilenameExtension(), ".checkpoint") == 0);

    std::string name;
    PlayerSavegame::SG_GetFilename(12, name, false, false);
    CHECK(name == "dh2_012.savegame");
    PlayerSavegame::SG_GetFilename(5, name, true, true);
    CHECK(name == "dh2_005_multi.checkpoint");
    PlayerSavegame::SG_GetFilename(7, name, true, false);
    CHECK(name == "dh2_007_single.checkpoint");
    PlayerSavegame::SG_GetFilename(1234, name, false, true);
    CHECK(name == "dh2_1234.savegame");

    CHECK(PlayerSavegame::SG_GetSlotFromFilename("dh2_012.savegame") == 12);
    CHECK(PlayerSavegame::SG_GetSlotFromFilename("dh2_007_single.checkpoint") == 7);

    // File-system placeholders: no file exists, nothing is removed, the list is empty.
    CHECK(PlayerSavegame::SG_Exists(static_cast<const char*>(nullptr)) == 0);
    CHECK(PlayerSavegame::SG_Exists("dh2_001.savegame") == 0);
    CHECK(PlayerSavegame::SG_Delete("dh2_001.savegame") == 0);
    CHECK(PlayerSavegame::SG_Exists(1u) == 0);
    CHECK(PlayerSavegame::SG_Delete(1u) == 0);
    CHECK(PlayerSavegame::SG_DeleteCheckpoint(1u, true) == 0);
    CHECK(PlayerSavegame::SG_GetSavegameList(true).empty());

    // SG_Synchronize: below the difficulty and online it returns 0 without the quest sync.
    {
        PlayerSavegame ps;
        PlayerSavegame::m_difficultyLevel = 2;
        ps.m_unlockedDifficulty = 1;
        CHECK(ps.SG_Synchronize(true) == 0 && g_synchronizeCalls == 0);

        g_synchronizeResult = true;
        CHECK(ps.SG_Synchronize(false) == 1);
        CHECK(g_synchronizeCalls == 1 && g_syncThis == &ps.m_questLog && g_syncOther == &ps.m_volatileQuestLog);
        CHECK(!g_syncCurrentOnly);

        ps.m_unlockedDifficulty = 2;
        CHECK(ps.SG_Synchronize(true) == 1 && g_synchronizeCalls == 2 && g_syncCurrentOnly);
    }

    // _Load creates the savegame from the slot when none exists, and not for slot -1.
    {
        PlayerSavegame ps;
        ps.m_slot = 3;
        ps._Load(0);
        CHECK(ps.m_savegame != nullptr);
        CHECK(ps.m_savegame != nullptr && ps.m_savegame->m_filename == "dh2_003.savegame");

        delete ps.m_savegame;
        ps.m_savegame = nullptr;
        ps.m_slot = 0xFFFFFFFFu;
        ps._Load(0);
        CHECK(ps.m_savegame == nullptr);

        // Section flags with a savegame present: 1 is seven names, 4 is eight sections, 8 and 0x20 one each, 0x10 two quest
        // inits and one section.
        ps.m_slot = 3;
        ps._Load(0);
        g_loadCalls = 0;
        ps._Load(1);
        CHECK(g_loadCalls == 7);

        g_loadCalls = 0;
        ps._Load(4);
        CHECK(g_loadCalls == 8);

        g_loadCalls = 0;
        ps._Load(8 | 0x20);
        CHECK(g_loadCalls == 2);

        g_loadCalls = 0;
        g_initQuests = 0;
        ps._Load(0x10);
        CHECK(g_loadCalls == 1 && g_initQuests == 2);

        // Flag 2 runs the four state inits and two quest inits.
        g_initLevelStates = 0;
        g_initSkills = 0;
        g_initFaeries = 0;
        g_initQuests = 0;
        ps._Load(2);
        CHECK(g_initLevelStates == 1 && g_initSkills == 1 && g_initFaeries == 1 && g_initQuests == 2);

        // SG_Load returns the volatile quest log result.
        CHECK(ps.SG_Load(0) == g_loadVolatileResult);
    }

    // SG_GetSavefileName reads the name of the Savegame.
    {
        PlayerSavegame ps;
        ps.m_savegame = new Savegame("dh2_004.savegame", false);
        CHECK(std::strcmp(ps.SG_GetSavefileName(), "dh2_004.savegame") == 0);
    }

    // SG_Update forwards to the quest update with the force flag.
    {
        PlayerSavegame ps;
        g_tryQuestSyncCalls = 0;
        g_updateQuestsCalls = 0;
        ps.SG_Update(true);
        CHECK(g_tryQuestSyncCalls == 1 && g_updateQuestsCalls == 1 && g_updateForce);
    }

    // Offline SG_Save: one save of the savegame and the volatile log. A blocked savegame writes nothing.
    {
        PlayerSavegame ps;
        ps.m_savegame = new Savegame("dh2_006.savegame", false);
        g_saveAllCalls = 0;
        g_saveVolatileCalls = 0;
        g_setupCalls = 0;
        ps.SG_Save();
        CHECK(g_saveAllCalls == 1 && g_saveVolatileCalls == 1 && g_setupCalls == 0);
        CHECK(ps.m_saveMode == 1);

        ps.m_saveBlocked = true;
        ps.SG_Save();
        CHECK(g_saveAllCalls == 1 && g_saveVolatileCalls == 1);
    }

    if (g_failures == 0) {
        std::printf("PlayerSavegame batch g1-game-items-save-PlayerSavegame-56ccee-0: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
