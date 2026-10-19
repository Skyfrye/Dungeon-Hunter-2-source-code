// Test for the PlayerSavegame batch (game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked whole, so its external symbols are stand-ins here: the save-slot queries (the names, the slot of
// a name, existence, loads and the file-name calls), the Savegame file operations, the QuestSavegame members the constructors
// build, the pydata name tables, and the multiplayer checkpoint helper. The helper's PlayerManager read lives in the _players
// companion, which needs dh2/PlayerManager.hpp and so cannot share this translation unit with the pydata name tables; the stand-in
// answers "not multiplayer", which is the answer the source's online-flag stub gives. The checks cover the batch source's own
// logic: the constructor state, the checkpoint sequencing and file names, the slot search, the fast-travel bits, and the faery,
// skill and map-location tables with their out-of-range results, and the ASSERT lines a map location prints.

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <string>
#include <vector>

#include "dh2/PlayerSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "pydata-accessors/member_names.hpp"

int gAssertLevel = 0;

// ---- pydata name lookup and tables (the batch reads the two tables through these) ----
namespace pydata {
int FindMemberName(const NameTable& table, int count, const char* name) {
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) return i;
    }
    return -1;
}
}  // namespace pydata

namespace Arrays {
pydata::NameTable FastTravelList::m_memberNames;
pydata::NameTable WorldMap::m_memberNames;
}  // namespace Arrays

// ---- recorded stand-in state ----
namespace {

std::vector<std::string> g_savedNames;       // what SG_GetSavegameList(false) returns
std::vector<std::uint32_t> g_existingSlots;  // slots for which SG_Exists answers true
std::vector<std::string> g_log;              // ordered calls into the load, file-name and Savegame stand-ins

int g_failures = 0;

#define CHECK(...)                                                                  \
    do {                                                                            \
        if (!(__VA_ARGS__)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #__VA_ARGS__);              \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

// Fills a name table with copies of the strings. The test owns the copies for the life of the process.
void SetNameTable(pydata::NameTable& table, const std::vector<std::string>& names) {
    table.names = new char*[names.size()];
    for (std::size_t i = 0; i < names.size(); ++i) {
        table.names[i] = new char[names[i].size() + 1];
        std::strcpy(table.names[i], names[i].c_str());
    }
    table.size = static_cast<int>(names.size());
}

bool LogIs(const std::vector<std::string>& expected) {
    return g_log == expected;
}

// ---- constructors ----
void TestConstructors() {
    g_log.clear();
    PlayerSavegame explicitSave(3, 8, false);
    CHECK(explicitSave.m_slot == 3);
    CHECK(explicitSave.m_savegame == nullptr);
    CHECK(explicitSave.m_saveBlocked == false);
    CHECK(explicitSave.m_playerLevel == 1);
    CHECK(explicitSave.m_playerClass == -1);
    CHECK(explicitSave.m_unlockedDifficulty == 0);
    CHECK(explicitSave.m_skills == nullptr && explicitSave.m_skillsSize == 0);
    CHECK(explicitSave.m_skillSets.empty());
    for (int d = 0; d < 3; ++d) {
        CHECK(explicitSave.m_faeries[d] == nullptr);
        CHECK(explicitSave.m_faeryCount[d] == 0);
        CHECK(explicitSave.m_currentFaery[d] == 0);
        CHECK(explicitSave.m_levelEntryPoint[d] == 0);
        CHECK(explicitSave.m_levelStates[d] == nullptr);
        CHECK(explicitSave.m_worldMapStates[d] == nullptr);
        CHECK(explicitSave.m_seeds[d] == 0);
        CHECK(explicitSave.unk_50[d] == 0);
        CHECK(explicitSave.m_fastTravelUnlocked[d].none());
    }
    CHECK(LogIs({"load:8"}));  // the explicit constructor loads the slot with its load mode

    g_log.clear();
    PlayerSavegame blank;
    CHECK(blank.m_slot == 0xFFFFFFFFu);
    CHECK(blank.m_playerLevel == 0);
    CHECK(blank.m_playerClass == -1);
    CHECK(blank.m_saveMode == 0);
    CHECK(blank.m_skillSets.size() == 2);  // two empty skill sets
    for (const auto& set : blank.m_skillSets) {
        CHECK(set.empty());
    }
    CHECK(blank.m_faeryCount[0] == 0 && blank.m_worldMapStates[2] == nullptr);
    CHECK(g_log.empty());  // the blank constructor does not load
}

// ---- quest-log selector (the online flag is stubbed to false) ----
void TestQuestLogSelector() {
    PlayerSavegame save(0, 0, false);
    CHECK(save.SG_GetQuestSG() == &save.m_questLog);
    const PlayerSavegame& constSave = save;
    CHECK(constSave.SG_GetQuestSG() == &save.m_questLog);
}

// ---- slot search ----
void TestNextFreeSlot() {
    g_savedNames.clear();
    g_existingSlots.clear();
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 0);

    g_savedNames = {"dh2_001"};
    g_existingSlots = {1};
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 0);  // slot 0 is free

    g_savedNames = {"dh2_001", "dh2_000"};  // sorted before the walk
    g_existingSlots = {0, 1};
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 2);

    g_savedNames = {"dh2_002", "dh2_000"};
    g_existingSlots = {0, 2};
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 1);  // slot 1 is missing before slot 2

    g_savedNames = {"dh2_000"};
    g_existingSlots = {};
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 0);  // the name exists but its file does not

    g_savedNames = {"dh2_000", "dh2_001", "dh2_002"};
    g_existingSlots = {0, 1, 2};
    CHECK(PlayerSavegame::SG_GetNextFreeSlot() == 3);
    g_savedNames.clear();
    g_existingSlots.clear();
}

// ---- checkpoints ----
void TestLoadCheckpoint() {
    PlayerSavegame noFile(5, 1, false);
    g_log.clear();
    noFile.SG_LoadCheckpoint(7);
    CHECK(LogIs({"load:7"}));  // no save file: a plain load

    Savegame file("dh2_005", true);
    PlayerSavegame withFile(5, 1, false);
    withFile.m_savegame = &file;
    g_log.clear();
    withFile.SG_LoadCheckpoint(7);
    CHECK(LogIs({"name:cp_005", "cache", "load:7", "name:dh2_005"}));
    CHECK(file.m_filename == "dh2_005");  // the normal file name is the last one set
}

void TestSaveCheckpoint() {
    Savegame file("dh2_005", true);

    PlayerSavegame none(5, 1, false);
    g_log.clear();
    none.SG_SaveCheckpoint();
    CHECK(g_log.empty());  // no save file

    PlayerSavegame blocked(5, 1, false);
    blocked.m_savegame = &file;
    blocked.m_saveBlocked = true;
    g_log.clear();
    blocked.SG_SaveCheckpoint();
    CHECK(g_log.empty());  // blocked by a script

    PlayerSavegame saving(5, 1, false);
    saving.m_savegame = &file;
    g_log.clear();
    saving.SG_SaveCheckpoint();
    CHECK(LogIs({"name:cp_005", "save", "name:dh2_005"}));  // offline: checkpoint name, save, normal name
    CHECK(saving.m_saveMode == 1);
    CHECK(file.m_filename == "dh2_005");
}

// ---- fast travel ----
void TestFastTravel() {
    SetNameTable(Arrays::FastTravelList::m_memberNames, {"Town", "Cave", "Keep"});

    PlayerSavegame save(0, 0, false);
    save.SG_UnlockAllFastTravels();
    for (int d = 0; d < 3; ++d) {
        CHECK(save.SG_GetFastTravelIdUnlocked("Town", d));
        CHECK(save.SG_GetFastTravelIdUnlocked("Cave", d));
        CHECK(save.SG_GetFastTravelIdUnlocked("Keep", d));
    }
    CHECK(!save.m_fastTravelUnlocked[0].test(3));  // only the three named ids are set
    CHECK(!save.SG_GetFastTravelIdUnlocked("Nope", 0));

    save.SG_SetFastTravelIdUnlocked("Town", false, 1);
    CHECK(!save.SG_GetFastTravelIdUnlocked("Town", 1));
    CHECK(save.SG_GetFastTravelIdUnlocked("Town", 0));  // other difficulties keep their bits

    PlayerSavegame fresh(0, 0, false);
    fresh.SG_SetFastTravelIdUnlocked("Keep", true, 2);
    CHECK(fresh.SG_GetFastTravelIdUnlocked("Keep", 2));
    CHECK(!fresh.SG_GetFastTravelIdUnlocked("Keep", 1));
    fresh.SG_SetFastTravelIdUnlocked("Nope", true, 0);  // not in the table: no change
    CHECK(fresh.m_fastTravelUnlocked[0].none());
}

// ---- faeries ----
void TestFaeries() {
    PlayerSavegame::FaeryRecord faeries[3] = {};
    PlayerSavegame save(0, 0, false);
    save.m_faeries[0] = faeries;
    save.m_faeryCount[0] = 3;

    CHECK(save.SG_SetFaerieState(1, 1, 0) == 3);  // returns the count
    CHECK(faeries[1].state == 1);
    CHECK(faeries[0].state == 0);

    CHECK(save.SG_SetFaerieLevel(2, 7, 0) == 3);
    CHECK(faeries[2].level == 7);
    CHECK(save.SG_GetFaerieLevel(2, 0) == 7);
    CHECK(save.SG_GetFaerieLevel(1, 0) == 0);

    CHECK(save.SG_SetFaerieState(3, 1, 0) == 3);  // past the end: not stored
    CHECK(save.SG_SetFaerieLevel(3, 9, 0) == 3);
    CHECK(save.SG_GetFaerieLevel(3, 0) == 0);     // past the end: 0
}

// ---- skill rows ----
void TestSkills() {
    PlayerSavegame::SkillRecord rows[2] = {{100, 0, {0, 0}}, {200, 0, {0, 0}}};
    PlayerSavegame skills(0, 0, false);
    skills.m_skills = rows;
    skills.m_skillsSize = 2;

    skills.SG_SetSkillLevel(1, 4);
    CHECK(skills.SG_GetSkillLevel(1) == 4);
    CHECK(skills.SG_GetSkillId(0) == 100);
    CHECK(skills.SG_GetSkillId(1) == 200);

    skills.SG_SetSkillLevel(2, 9);  // past the end: not stored
    CHECK(rows[0].level == 0 && rows[1].level == 4);
    CHECK(skills.SG_GetSkillLevel(2) == -1);
    CHECK(skills.SG_GetSkillId(2) == -1);

    skills.m_skills = nullptr;  // no rows at all
    CHECK(skills.SG_GetSkillLevel(0) == -1);
    CHECK(skills.SG_GetSkillId(0) == -1);
    skills.SG_SetSkillLevel(0, 5);  // not stored
}

// ---- map locations ----
void TestMapLocations() {
    SetNameTable(Arrays::WorldMap::m_memberNames, {"L0", "L1", "L2", "L3"});
    std::int32_t states0[4] = {0, 0, 0, 0};
    PlayerSavegame map(0, 0, false);
    map.m_worldMapStates[0] = states0;

    map.SG_SetMapLocState(2, 1, 0);  // location, state, difficulty
    CHECK(states0[2] == 1);
    CHECK(map.SG_GetMapLocState(2, 0) == 1);

    map.SG_SetMapLocState(4, 1, 0);  // past the table: not stored
    CHECK(map.SG_GetMapLocState(4, 0) == 0);
    map.SG_SetMapLocState(-1, 1, 0);
    CHECK(map.SG_GetMapLocState(-1, 0) == 0);

    map.SG_SetMapLocState(1, 7, 0);  // a state past the count is stored as given
    CHECK(states0[1] == 7);
}

// ---- the ASSERT lines a map location prints ----
// At gAssertLevel 1 the batch source prints one line per failed ASSERT to stderr. The test sends stderr to a file for four
// out-of-range calls and reads it back. A negative location prints only the lower-bound line, and a location at or past the
// count prints only the upper-bound line: the original's compare is signed, so a negative location does not reach the upper
// bound.

#ifdef _WIN32
const char kNullDevice[] = "NUL";
#else
const char kNullDevice[] = "/dev/null";
#endif

// True when text is "ASSERT(<expr>) FAILED: <source>:<line>" for the given expression and line number.
bool PrintedAssert(const std::string& text, const std::string& expr, int line) {
    const std::string head = "ASSERT(" + expr + ") FAILED: ";
    const std::string tail = ":" + std::to_string(line);
    return text.compare(0, head.size(), head) == 0 && text.size() >= tail.size() &&
           text.compare(text.size() - tail.size(), tail.size(), tail) == 0;
}

void TestMapLocationAsserts() {
    SetNameTable(Arrays::WorldMap::m_memberNames, {"L0", "L1", "L2", "L3"});
    std::int32_t states0[4] = {0, 0, 0, 0};
    PlayerSavegame map(0, 0, false);
    map.m_worldMapStates[0] = states0;

    const char* dir = std::getenv("TEMP");
    if (dir == nullptr) dir = std::getenv("TMP");
    if (dir == nullptr) dir = ".";
    const std::string path = std::string(dir) + "/g1-pso-maploc-assert.log";

    gAssertLevel = 1;
    if (std::freopen(path.c_str(), "w", stderr) == nullptr) {
        gAssertLevel = 0;
        CHECK(false);  // stderr could not be redirected to the log file
        return;
    }
    map.SG_SetMapLocState(-1, 1, 0);
    map.SG_SetMapLocState(4, 1, 0);
    (void)map.SG_GetMapLocState(-1, 0);
    (void)map.SG_GetMapLocState(4, 0);
    std::fflush(stderr);
    std::freopen(kNullDevice, "w", stderr);  // closes the log file
    gAssertLevel = 0;

    std::vector<std::string> lines;
    std::ifstream in(path);
    for (std::string line; std::getline(in, line);) {
        lines.push_back(line);
    }
    in.close();
    std::remove(path.c_str());

    CHECK(lines.size() == 4);
    if (lines.size() == 4) {
        CHECK(PrintedAssert(lines[0], "mapLocId >= 0", 125));                            // SetMapLocState, negative
        CHECK(PrintedAssert(lines[1], "mapLocId < (int)Arrays::WorldMap::size", 126));  // SetMapLocState, past the count
        CHECK(PrintedAssert(lines[2], "mapLocId >= 0", 115));                            // GetMapLocState, negative
        CHECK(PrintedAssert(lines[3], "mapLocId < (int)Arrays::WorldMap::size", 116));  // GetMapLocState, past the count
    }
    CHECK(states0[0] == 0 && states0[1] == 0 && states0[2] == 0 && states0[3] == 0);  // nothing stored
}

}  // namespace

// ---- stand-ins for the external symbols the batch source references ----

namespace PlayerSavegamePlayers {
// The companion _players file holds the PlayerManager read. The online flag is stubbed to false in the batch source, so the
// PlayerManager is not read on any path this test takes.
bool IsMultiplayerCheckpointName(bool online) {
    (void)online;
    return false;
}
}  // namespace PlayerSavegamePlayers

int PlayerSavegame::SG_Load(int loadMode) {
    g_log.push_back("load:" + std::to_string(loadMode));
    return 0;
}

std::vector<std::string> PlayerSavegame::SG_GetSavegameList(bool checkpoints) {
    if (checkpoints) return {};
    return g_savedNames;
}

void PlayerSavegame::SG_GetFilename(std::uint32_t slot, std::string& name, bool checkpoint, bool multi) {
    char buf[32];
    std::snprintf(buf, sizeof buf, "%s%03u", checkpoint ? "cp_" : "dh2_", static_cast<unsigned>(slot));
    name = buf;
    g_log.push_back(std::string("name:") + buf + (multi ? ":multi" : ""));
}

int PlayerSavegame::SG_GetSlotFromFilename(const char* name) {
    return std::atoi(std::strrchr(name, '_') + 1);
}

int PlayerSavegame::SG_Exists(std::uint32_t slot) {
    return std::find(g_existingSlots.begin(), g_existingSlots.end(), slot) != g_existingSlots.end() ? 1 : 0;
}

void PlayerSavegame::_SetupSavedSections(bool online, bool flag) {
    g_log.push_back(std::string("sections:") + (online ? "online" : "offline") + (flag ? ":flag" : ""));
}

PlayerSavegame::~PlayerSavegame() {}

QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}

Savegame::Savegame(const char* name, bool flag) : m_filename(name), m_stream(nullptr), unk_38(flag) {}
Savegame::~Savegame() {}

void Savegame::_cacheFile(StreamBuffer* source) {
    (void)source;
    static char streamMarker;  // the cache is only tested for null, never read
    m_stream = reinterpret_cast<IStreamBase*>(&streamMarker);
    g_log.push_back("cache");
}

void Savegame::saveAll() {
    g_log.push_back("save");
}

int main() {
    TestConstructors();
    TestQuestLogSelector();
    TestNextFreeSlot();
    TestLoadCheckpoint();
    TestSaveCheckpoint();
    TestFastTravel();
    TestFaeries();
    TestSkills();
    TestMapLocations();
    TestMapLocationAsserts();

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("PlayerSavegame-56ccee-1: all checks passed\n");
    return 0;
}
