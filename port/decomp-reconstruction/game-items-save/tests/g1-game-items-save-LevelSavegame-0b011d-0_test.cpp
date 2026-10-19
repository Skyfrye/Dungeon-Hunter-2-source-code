// Test for the LevelSavegame batch (game-items-save/src/g1-game-items-save-LevelSavegame-0b011d-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked whole, so the external symbols it uses are stand-ins here: the Savegame slot file (which records
// the section and save calls), IStreamBase's typed readAs/writeAs, the Application load call, the object lookups and
// PlayerManager and PlayerSavegame. The checks cover the batch source's own logic: file names, constructor state, section
// callbacks, and the Load, Save and checkpoint sequencing. The file-system and online probes are stubbed in the source
// (they answer "absent" and "offline"), so these checks do not cover them.

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Savegame.hpp"

int gAssertLevel = 0;

// ---- stand-ins for the globals the batch reads ----
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// Singleton<Application>::s_inst. The batch takes its address as the Application; the storage is only needed to link.
alignas(16) char g_applicationInstance[1024] __asm__("_ZN9SingletonI11ApplicationE6s_instE");

namespace {

// A stream that is never read or written; the typed helpers below are the stand-ins that record values.
struct FakeStream : IStreamBase {
    std::uint32_t size() const override { return 0; }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        (void)dst;
        (void)n;
        return 0;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        (void)dst;
        (void)n;
        return 0;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        (void)src;
        (void)n;
        return 0;
    }
    void seek(std::uint64_t pos) override { (void)pos; }
    std::uint64_t tell() const override { return 0; }
    void skip(std::uint64_t n) override { (void)n; }
};

int gFailures = 0;
std::vector<std::string> gLoadedSections;
std::vector<std::string> gInitializedSections;
int gSaveCount = 0;
std::string gSavedFilename;
int gCacheCount = 0;
bool gCacheWasNull = false;
int gWrittenInt = -1;
int gReadInt = 0;
std::string gReadString;
int gLoadLevelCount = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++gFailures;
    }
}

void ResetRecords() {
    gLoadedSections.clear();
    gInitializedSections.clear();
    gSaveCount = 0;
    gSavedFilename.clear();
    gCacheCount = 0;
    gCacheWasNull = false;
}

}  // namespace

// ---- Savegame (the slot file) ----
Savegame::Savegame(const char* name, bool flag) : m_filename(name) {
    (void)flag;
}
Savegame::~Savegame() {}
void Savegame::load(const char* section, void (*onLoad)(IStreamBase*, void*), void (*onSave)(IStreamBase*, void*),
                    void* user) {
    (void)onLoad;
    (void)onSave;
    (void)user;
    gLoadedSections.push_back(section);
}
void Savegame::initSectionInfo(const char* section, void (*onLoad)(IStreamBase*, void*),
                               void (*onSave)(IStreamBase*, void*), void* user) {
    (void)onLoad;
    (void)onSave;
    (void)user;
    gInitializedSections.push_back(section);
}
void Savegame::saveAll() {
    ++gSaveCount;
    gSavedFilename = m_filename;
}
void Savegame::_cacheFile(StreamBuffer* source) {
    ++gCacheCount;
    gCacheWasNull = source == nullptr;
}

// ---- IStreamBase: the typed helpers and the base's out-of-line members ----
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) {
    seek(pos);
}
std::uint64_t IStreamBase::tellWrite() const {
    return tell();
}
template <>
void IStreamBase::readAs<int>(int& value) {
    value = gReadInt;
}
template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    value = 0;
}
template <>
void IStreamBase::readAs<unsigned long long>(unsigned long long& value) {
    value = 0;
}
template <>
void IStreamBase::writeAs<int>(const int& value) {
    gWrittenInt = value;
}
void IStreamBase::readAs(std::string& value) {
    value = gReadString;
}

// ---- Application, the object lookups and the player manager ----
void Application::LoadLevel(const char* name, int entryPointId, std::uint32_t savegameSlot, bool resume,
                            bool useSpawnPoint, int difficulty, bool isRemotelyTriggered, std::uint32_t seed,
                            std::uint32_t syncedSeed) {
    (void)name;
    (void)entryPointId;
    (void)savegameSlot;
    (void)resume;
    (void)useSpawnPoint;
    (void)difficulty;
    (void)isRemotelyTriggered;
    (void)seed;
    (void)syncedSeed;
    ++gLoadLevelCount;
}
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectBase* ObjectHandle::GetObject(bool assertFound) {
    (void)assertFound;
    return nullptr;
}
ObjectHandle ObjectManager::GetObjectByName(const char* name, int flags, bool active, const char* type) {
    (void)name;
    (void)flags;
    (void)active;
    (void)type;
    return ObjectHandle();
}
PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    return nullptr;
}
int PlayerManager::IsLocalPlayerHosting() {
    return 0;
}
QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}
PlayerSavegame::PlayerSavegame(std::uint32_t slot, int loadMode, bool unused) {
    (void)slot;
    (void)loadMode;
    (void)unused;
}
PlayerSavegame::~PlayerSavegame() {}

// ---- the checks ----
int main() {
    // File names. The slot is the first %03u field, the difficulty the %01u field, then the two fields.
    {
        std::string name;
        LevelSavegame::GetFilename(7, 12, 3, 2, name);
        Check(name == "dh2_007_2_012_003_level.savegame", "GetFilename formats slot, difficulty and both fields");

        LevelSavegame::GetFilename(7, -4, -1, 0, name);
        Check(name == "dh2_007_0_000_000_level.savegame", "GetFilename prints negative fields as 0");

        LevelSavegame::GetCheckpointFilename(12, 3, false, name);
        Check(name == "dh2_012_3_single_level.checkpoint", "GetCheckpointFilename single-player name");

        LevelSavegame::GetCheckpointFilename(12, 3, true, name);
        Check(name == "dh2_012_3_multi_level.checkpoint", "GetCheckpointFilename multiplayer name");
    }

    // Constructor state and the slot file it creates.
    {
        ResetRecords();
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        Check(save.m_difficulty == 2, "constructor stores the difficulty");
        Check(save.m_fileIndex == 3, "constructor stores the second file field as m_fileIndex");
        Check(save.m_loadedFileIndex == -1, "constructor sets m_loadedFileIndex to -1");
        Check(save.unk_30 == -1 && save.unk_34 == -1, "constructor sets unk_30 and unk_34 to -1");
        Check(save.unk_38 == false, "constructor clears unk_38 once the sections are built");
        Check(save.m_blocked == false, "constructor clears m_blocked");
        Check(save.m_savegame != nullptr, "constructor creates the slot file");
        Check(save.m_savegame != nullptr && save.m_savegame->m_filename == "dh2_007_2_012_003_level.savegame",
              "slot file name comes from GetFilename");
        Check(gInitializedSections.size() == 2 && gInitializedSections[0] == "INFO" &&
                  gInitializedSections[1] == "OBJS",
              "constructor registers the INFO and OBJS sections in order");
    }

    // The checkpoint constructor builds the checkpoint name.
    {
        ResetRecords();
        LevelSavegame save(nullptr, 7, 12, 3, 2, true);
        Check(save.m_savegame != nullptr &&
                  save.m_savegame->m_filename == "dh2_007_2_single_level.checkpoint",
              "checkpoint constructor names the slot file after the checkpoint");
    }

    // Section callbacks: the file index goes out through writeAs<int> and comes back through readAs<int>.
    {
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        FakeStream stream;
        gWrittenInt = -1;
        LevelSavegame::__SaveLevelInfo(&stream, &save);
        Check(gWrittenInt == 3, "__SaveLevelInfo writes m_fileIndex");

        gReadInt = 9;
        LevelSavegame::__LoadLevelInfo(&stream, &save);
        Check(save.m_loadedFileIndex == 9, "__LoadLevelInfo reads into m_loadedFileIndex");
    }

    // Load reads the INFO section and then the OBJS section of the slot file.
    {
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        ResetRecords();
        save.Load();
        Check(gLoadedSections.size() == 2 && gLoadedSections[0] == "INFO" && gLoadedSections[1] == "OBJS",
              "Load reads INFO then OBJS");
    }

    // Save writes the slot file when it is not blocked, and nothing when it is (offline game).
    {
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        ResetRecords();
        save.Save();
        Check(gSaveCount == 1, "Save writes the slot file when the level is not blocked");

        ResetRecords();
        save.m_blocked = true;
        save.Save();
        Check(gSaveCount == 0, "Save writes nothing while m_blocked is set");
    }

    // SaveCheckPoint writes the checkpoint name, then puts the slot name back.
    {
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        ResetRecords();
        save.SaveCheckPoint(12, 3, 4);
        Check(gSaveCount == 1 && gSavedFilename == "dh2_012_2_single_level.checkpoint",
              "SaveCheckPoint saves the checkpoint file name");
        Check(save.m_savegame->m_filename == "dh2_012_2_003_004_level.savegame",
              "SaveCheckPoint restores the slot file name afterwards");
    }

    // LoadCheckPoint points the slot at the checkpoint, loads it, then points the slot back.
    {
        LevelSavegame save(nullptr, 7, 12, 3, 2, false);
        ResetRecords();
        save.LoadCheckPoint(12, 3, 4);
        Check(gCacheCount == 1 && gCacheWasNull, "LoadCheckPoint caches the file with a null source");
        Check(gLoadedSections.size() == 2 && gLoadedSections[0] == "INFO" && gLoadedSections[1] == "OBJS",
              "LoadCheckPoint loads INFO then OBJS");
        Check(save.m_savegame->m_filename == "dh2_012_2_003_004_level.savegame",
              "LoadCheckPoint restores the slot file name afterwards");
    }

    // DeleteAllLevelSave reports success even when the stubbed file system lists nothing.
    Check(LevelSavegame::DeleteAllLevelSave(7) == 1, "DeleteAllLevelSave returns 1");

    if (gFailures == 0) {
        std::printf("all LevelSavegame checks passed\n");
        return 0;
    }
    std::printf("%d LevelSavegame check(s) failed\n", gFailures);
    return 1;
}
