// Test for LevelSavegame::ValidateCheckpoint (game-items-save/src/g1-game-items-save-LevelSavegame-0b011d-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is PARTIAL: its online flag and savefile existence check are stubs that report offline and no file.
// The checks cover the path those stubs take: GetOnline is called, the single-player checkpoint name is requested with
// the difficulty from +0x0c, the missing-file return happens before any savegame work, and the savegame is untouched.
// The name builders, the savegame, PlayerManager and COnline are stand-ins here. The stand-ins only record calls.

#include <cstdio>
#include <string>

#include "net-session-online/c_online_impl.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"

namespace {
int g_failures = 0;
int g_getOnlineCalls = 0;
int g_hostingCalls = 0;
int g_checkpointNameCalls = 0;
unsigned int g_checkpointLevel = 0;
int g_checkpointDifficulty = -1;
bool g_checkpointMultiplayer = true;
int g_getFilenameCalls = 0;
int g_cacheFileCalls = 0;
int g_loadCalls = 0;
}  // namespace

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);           \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

// Stand-ins for the engine and the other batches. Only the calls ValidateCheckpoint makes are defined.
// A real COnline (flag clear), as the original's GetOnline() returns.
static COnlineImpl g_testOnline;
COnline* GetOnline() {
    ++g_getOnlineCalls;
    return &g_testOnline;
}

static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

int PlayerManager::IsLocalPlayerHosting() {
    ++g_hostingCalls;
    return 0;
}

std::string& LevelSavegame::GetCheckpointFilename(unsigned int levelId, int difficulty, bool multiplayer,
                                                  std::string& name) {
    ++g_checkpointNameCalls;
    g_checkpointLevel = levelId;
    g_checkpointDifficulty = difficulty;
    g_checkpointMultiplayer = multiplayer;
    name = "dh2_checkpoint_test.checkpoint";
    return name;
}

std::string& LevelSavegame::GetFilename(unsigned int levelId, int fieldA, int fieldB, int difficulty,
                                        std::string& name) {
    (void)levelId;
    (void)fieldA;
    (void)fieldB;
    (void)difficulty;
    ++g_getFilenameCalls;
    name = "dh2_level_test.savegame";
    return name;
}

void Savegame::_cacheFile(StreamBuffer* source) {
    (void)source;
    ++g_cacheFileCalls;
}

void Savegame::load(const char* section, SectionCallback onLoad, SectionCallback onSave, void* user) {
    (void)section;
    (void)onLoad;
    (void)onSave;
    (void)user;
    ++g_loadCalls;
}

void LevelSavegame::__LoadLevelInfo(IStreamBase* stream, void* user) {
    (void)stream;
    (void)user;
}

void LevelSavegame::__SaveLevelInfo(IStreamBase* stream, void* user) {
    (void)stream;
    (void)user;
}

Savegame::Savegame(const char* name, bool flag) : m_filename(name), m_stream(nullptr) {
    (void)flag;
}

Savegame::~Savegame() {}

LevelSavegame::LevelSavegame(Level* level, unsigned int levelId, int fieldA, int fieldB, int difficulty,
                             bool checkpoint) {
    (void)level;
    (void)levelId;
    (void)fieldA;
    (void)fieldB;
    (void)difficulty;
    (void)checkpoint;
}

LevelSavegame::~LevelSavegame() {}

int main() {
    // A savegame named "before.savegame", and a LevelSavegame with difficulty 2 and file index 5.
    Savegame savegame("before.savegame", false);
    LevelSavegame level(nullptr, 1, 0, 0, 2, false);
    level.m_savegame = &savegame;
    level.m_difficulty = 2;
    level.m_loadedFileIndex = 5;

    // Offline stub, no checkpoint file: the call returns false even though fieldB matches m_loadedFileIndex.
    const bool result = level.ValidateCheckpoint(7, 3, 5);
    CHECK(!result);
    CHECK(g_getOnlineCalls == 1);
    CHECK(g_hostingCalls == 0);
    CHECK(g_checkpointNameCalls == 1);
    CHECK(g_checkpointLevel == 7);
    CHECK(g_checkpointDifficulty == 2);
    CHECK(!g_checkpointMultiplayer);
    CHECK(g_getFilenameCalls == 0);
    CHECK(g_cacheFileCalls == 0);
    CHECK(g_loadCalls == 0);
    CHECK(savegame.m_filename == "before.savegame");

    // A second call with a different fieldB: still false, and still no savegame work.
    const bool second = level.ValidateCheckpoint(9, 1, 6);
    CHECK(!second);
    CHECK(g_getOnlineCalls == 2);
    CHECK(g_checkpointNameCalls == 2);
    CHECK(g_checkpointLevel == 9);
    CHECK(g_loadCalls == 0);
    CHECK(savegame.m_filename == "before.savegame");

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("LevelSavegame::ValidateCheckpoint: all checks passed\n");
    return 0;
}
