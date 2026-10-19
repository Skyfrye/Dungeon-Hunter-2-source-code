// Test for the TrophyManager batch (game-items-save/src/g1-game-items-save-TrophyManager-f8fac6-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Covers the constructor's row fill (InitTrophies: the Structs::Trophy words land in the TrophyData fields, one debug-switch query
// per row), the lookups (GetTrophyData, IsTrophyUnlocked, IsTrophyUnlocking), UnlockTrophy's guards and its append to m_unlocking,
// TrophyUnlockedCB's effects (unlocked flag, title and description, type, grade and label, queue push while a level is loaded,
// the copy-and-erase that leaves m_unlocking unchanged), DBG_UnlockAllTrophies, UnloadTrophies, and CreateInstance/DeleteInstance.
// The savegame read and write (SaveTrophies, LoadTrophies) and the HUD popup are partial in the source and are not checked here.
//
// The engine is a stand-in here. The table rows are a host array, DebugSwitches counts its calls, Application gives a level
// marker and a string manager, StringManager::getString returns "text_<id>", the message queue is the real template with an
// empty destructor, and CustomAlloc and CustomFree are malloc and free. Nothing else from the engine is linked.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <deque>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyData.hpp"
#include "dh2/TrophyManager.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

namespace {

int g_failures = 0;
int g_trophyDeletes = 0;   // every ~TrophyData
int g_debugLoads = 0;      // every DebugSwitches::load
int g_switchQueries = 0;   // every DebugSwitches::GetSwitch
bool g_hasLevel = false;   // what Application::GetCurrentLevel reports
int g_levelMarker = 0;     // the address returned as the level when g_hasLevel is set
int g_stringMarker = 0;    // the address used as the string manager

// Three table rows. Row 2 has no name and no description (text id -1).
Structs::Trophy g_rows[3];

alignas(16) unsigned char g_appStorage[sizeof(Application)];

}  // namespace

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// ---- Stand-ins for the symbols the batch source references ------------------------------------------------------------

std::uint32_t Arrays::TrophyTable::size = 0;
std::uint8_t* Arrays::TrophyTable::members = nullptr;

void Structs::Trophy::finalize() {}
void Structs::Trophy::read(IStreamBase*) {}
Structs::Trophy::~Trophy() {}

TrophyData::~TrophyData() {
    ++g_trophyDeletes;
}

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {
    ++g_debugLoads;
}
bool DebugSwitches::GetSwitch(const std::string&) {
    ++g_switchQueries;
    return false;
}
DebugSwitches DebugSwitches::s_inst;

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}
Level* Application::GetCurrentLevel() const {
    return g_hasLevel ? reinterpret_cast<Level*>(&g_levelMarker) : nullptr;
}

const char* StringManager::getString(int id) const {
    static std::string buffer;
    buffer = "text_" + std::to_string(id);
    return buffer.c_str();
}

AchievementMsg::AchievementMsg(const std::string& name, const std::string& desc, int trophyType, int grade, int label)
    : std::string(name), m_desc(desc), m_trophyType(trophyType), m_grade(grade), m_label(label) {}
AchievementMsg::AchievementMsg(const AchievementMsg& other)
    : std::string(other),
      m_desc(other.m_desc),
      m_trophyType(other.m_trophyType),
      m_grade(other.m_grade),
      m_label(other.m_label) {}

template <>
MenuMessageManager<AchievementMsg, 1>::~MenuMessageManager() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static MenuMessageManager<AchievementMsg, 1> g_testInstance_1{};
template <>
MenuMessageManager<AchievementMsg, 1>& MenuMessageManager<AchievementMsg, 1>::s_inst = g_testInstance_1;

// CustomFree is inline in pydata-accessors/deps/stream_reader.hpp (malloc and free), so only CustomAlloc is defined here.
void* CustomAlloc(unsigned size) {
    return std::malloc(size);
}

// ---- Checks ----------------------------------------------------------------------------------------------------------

namespace {

std::deque<AchievementMsg>& queue() {
    return MenuMessageManager<AchievementMsg, 1>::s_inst.m_queues[0];
}

void SetUpRows() {
    g_rows[0].Desc = 10;
    g_rows[0].GLIndex = 100;
    g_rows[0].GLLive = 1;
    g_rows[0].Grade = 2;
    g_rows[0].Label = 3;
    g_rows[0].Name = 20;
    g_rows[0].Type = 5;

    g_rows[1].Desc = 11;
    g_rows[1].GLIndex = 101;
    g_rows[1].GLLive = 0;
    g_rows[1].Grade = 1;
    g_rows[1].Label = 4;
    g_rows[1].Name = 21;
    g_rows[1].Type = 6;

    g_rows[2].Desc = -1;
    g_rows[2].GLIndex = 102;
    g_rows[2].GLLive = 0;
    g_rows[2].Grade = 0;
    g_rows[2].Label = 0;
    g_rows[2].Name = -1;
    g_rows[2].Type = 7;

    Arrays::TrophyTable::members = reinterpret_cast<std::uint8_t*>(g_rows);
    Arrays::TrophyTable::size = 3;
}

void CheckRowFill(TrophyManager& tm) {
    CHECK(tm.m_trophies.size() == 3);
    for (int i = 0; i < 3 && i < static_cast<int>(tm.m_trophies.size()); ++i) {
        CHECK(tm.m_trophies[i]->m_id == i);
        CHECK(!tm.m_trophies[i]->m_unlocked);
    }
    if (tm.m_trophies.size() < 3) {
        return;
    }
    const TrophyData* r0 = tm.m_trophies[0];
    CHECK(r0->m_nameTextId == 20);  // m_w6
    CHECK(r0->m_descTextId == 10);  // m_w1
    CHECK(r0->m_type == 5);         // m_w7
    CHECK(r0->m_grade == 2);        // m_w4
    CHECK(r0->m_label == 3);        // m_w5
    CHECK(r0->m_glLive == 1);       // m_w3
    CHECK(r0->m_glIndex == 100);    // m_w2
    const TrophyData* r2 = tm.m_trophies[2];
    CHECK(r2->m_nameTextId == -1);
    CHECK(r2->m_descTextId == -1);
    CHECK(r2->m_glIndex == 102);
}

void TestConstructionAndLookups() {
    g_switchQueries = 0;
    g_debugLoads = 0;
    TrophyManager tm;  // InitTrophies runs from the constructor
    CHECK(g_switchQueries == 3);  // one trace-switch lookup per row
    CHECK(g_debugLoads == 3);
    CheckRowFill(tm);

    CHECK(tm.Init() == 1);
    CHECK(tm.Terminate() == 1);
    tm.UnlockTrophiesGameCenter();
    tm.UnlockTrophiesGLLive();  // partial: nothing unlocked, so no call would be made in any case

    TrophyManager::s_instance = &tm;
    CHECK(tm.GetTrophyData(1) == tm.m_trophies[1]);
    CHECK(tm.GetTrophyData(0) == tm.m_trophies[0]);

    const int before = g_switchQueries;
    CHECK(tm.GetTrophyData(9) == nullptr);
    CHECK(g_switchQueries == before + 1);  // a miss looks up the trace switch once

    CHECK(!tm.IsTrophyUnlocked(0));
    CHECK(!tm.IsTrophyUnlocked(9));
    CHECK(!tm.IsTrophyUnlocking(0));
    TrophyManager::s_instance = nullptr;
}

void TestUnlockFlow() {
    TrophyManager tm;
    TrophyManager::s_instance = &tm;
    g_hasLevel = false;
    queue().clear();

    tm.UnlockTrophy(-1);  // negative ids are ignored
    CHECK(tm.m_unlocking.empty());

    const int queriesBefore = g_switchQueries;
    tm.UnlockTrophy(0);   // no level: the row is unlocked, nothing is queued
    CHECK(g_switchQueries == queriesBefore + 3);  // TrophyUnlockedCB's three trace-switch lookups
    CHECK(tm.m_unlocking.size() == 1);
    CHECK(tm.IsTrophyUnlocked(0));
    // The original erases the id from a copy of m_unlocking, so the id stays in m_unlocking.
    CHECK(tm.IsTrophyUnlocking(0));
    CHECK(queue().empty());

    tm.UnlockTrophy(0);   // already unlocked: no second entry
    CHECK(tm.m_unlocking.size() == 1);

    g_hasLevel = true;
    tm.UnlockTrophy(1);   // level loaded: the message is queued with the row's texts and words
    CHECK(tm.IsTrophyUnlocked(1));
    CHECK(queue().size() == 1);
    if (queue().size() == 1) {
        const AchievementMsg& front = queue().front();
        CHECK(static_cast<const std::string&>(front) == "text_21");  // name text id m_w6
        CHECK(front.m_desc == "text_11");                            // description text id m_w1
        CHECK(front.m_trophyType == 6);                              // m_w7
        CHECK(front.m_grade == 1);                                   // m_w4
        CHECK(front.m_label == 4);                                   // m_w5
    }

    tm.UnlockTrophy(2);   // row without text: empty name and description
    CHECK(queue().size() == 2);
    if (queue().size() == 2) {
        const AchievementMsg& back = queue().back();
        CHECK(static_cast<const std::string&>(back).empty());
        CHECK(back.m_desc.empty());
        CHECK(back.m_trophyType == 7);
        CHECK(back.m_grade == 0);
        CHECK(back.m_label == 0);
    }

    tm.UnlockTrophy(99);  // no row: the id is still appended to m_unlocking, but nothing is unlocked or queued
    CHECK(tm.IsTrophyUnlocking(99));
    CHECK(!tm.IsTrophyUnlocked(99));
    CHECK(queue().size() == 2);
    tm.UnlockTrophy(99);  // already in m_unlocking
    CHECK(tm.m_unlocking.size() == 4);

    queue().clear();
    g_hasLevel = false;
    TrophyManager::s_instance = nullptr;
}

void TestUnlockAllAndUnload() {
    TrophyManager tm;
    TrophyManager::s_instance = &tm;
    g_hasLevel = false;

    tm.DBG_UnlockAllTrophies();
    CHECK(tm.m_unlocking.size() == 3);
    CHECK(tm.IsTrophyUnlocked(0));
    CHECK(tm.IsTrophyUnlocked(1));
    CHECK(tm.IsTrophyUnlocked(2));

    const int deletesBefore = g_trophyDeletes;
    tm.UnloadTrophies();
    CHECK(g_trophyDeletes == deletesBefore + 3);
    CHECK(tm.m_trophies.empty());
    TrophyManager::s_instance = nullptr;
}

void TestCreateAndDeleteInstance() {
    TrophyManager::s_instance = nullptr;
    TrophyManager::CreateInstance();
    CHECK(TrophyManager::s_instance != nullptr);
    if (TrophyManager::s_instance == nullptr) {
        return;
    }
    TrophyManager* made = TrophyManager::s_instance;
    CHECK(made->m_trophies.size() == 3);

    TrophyManager::CreateInstance();  // already there: nothing changes
    CHECK(TrophyManager::s_instance == made);

    const int deletesBefore = g_trophyDeletes;
    TrophyManager::DeleteInstance();
    CHECK(g_trophyDeletes == deletesBefore + 3);
    // The original does not clear s_instance after the delete. The pointer is only compared here, never read.
    CHECK(TrophyManager::s_instance == made);
    TrophyManager::s_instance = nullptr;
}

}  // namespace

int main() {
    SetUpRows();
    ApplicationGetInstance().m_stringManager = reinterpret_cast<StringManager*>(&g_stringMarker);
    // A zeroed MenuManager: its HUD root is null, so the popup step of TrophyUnlockedCB finds no HUD and does nothing.
    alignas(16) static char s_menuManager[sizeof(MenuManager)];
    alignas(16) static char s_multiMenuManager[sizeof(MultiMenuManager)];
    ApplicationGetInstance().m_menuManager = reinterpret_cast<MenuManager*>(s_menuManager);
    ApplicationGetInstance().m_menuManager->m_multiMenuManager = reinterpret_cast<MultiMenuManager*>(s_multiMenuManager);

    TestConstructionAndLookups();
    TestUnlockFlow();
    TestUnlockAllAndUnload();
    TestCreateAndDeleteInstance();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("TrophyManager batch test: all checks passed\n");
    return 0;
}
