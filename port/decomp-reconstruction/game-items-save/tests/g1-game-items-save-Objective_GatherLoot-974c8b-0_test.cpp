// Test for g1-game-items-save-Objective_GatherLoot-974c8b-0.cpp. It links only that source and this file:
//   bash tools/trackb/check_tu.sh --test <this file> port/decomp-reconstruction/game-items-save/src/g1-game-items-save-Objective_GatherLoot-974c8b-0.cpp
// Returns non-zero when a check fails.
//
// The base classes, the engine calls and the lookups that the source reaches are defined here as recording stubs:
// Objective and Objective_EventReceiver members, the ItemInventory and ItemInstance members the source calls, the
// Application current level, the level index, the two name tables and the pydata row's virtuals. The owner is a
// Character-sized buffer. Only its ItemInventory base is used, and only its gathered list is constructed in place, so
// no ItemInventory vtable is needed.
//
// Covers InitWithCurrentQty, handleEvent (uncounted and carried quantities, the loot and owner matches, completion),
// Compile (the loot asserts at gAssertLevel 0 and 1, the quantity and level gates, completion), Register and
// Unregister (the gathered list and its reference count), and DBG_TraceDetailedObjectiveInformation (names and "na").

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <list>
#include <new>
#include <string>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Objective_GatherLoot.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"  // Arrays::ItemTable::size
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::LevelList::size

class Level;

// The engine's assert level (core-platform/memory.hpp). The test sets it per case.
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Recorded by the stubs below.
int g_setCompleted = 0;
int g_baseRegisters = 0;
int g_baseUnregisters = 0;
int g_findItemCalls = 0;
int g_lastFindId = -1;
const ItemInventory* g_lastFindThis = nullptr;
ItemInstance* g_findResult = nullptr;
int g_unregisterCalls = 0;
int g_lastUnregisterId = -1;
Level* g_currentLevel = nullptr;  // what Application::GetCurrentLevel returns
int g_levelIndex = -1;            // what LevelListIndexOfLevel returns for any level
int g_levelTag = 0;               // address used as a stand-in Level

const char* const kItemNames[] = {"Potion", "Sword", "Shield"};
const char* const kLevelNames[] = {"Town", "Dungeon"};

// The owner: a Character-sized buffer. Its ItemInventory base lies inside it at the base offset.
alignas(Character) unsigned char g_ownerBuffer[sizeof(Character)];
Character* const g_owner = reinterpret_cast<Character*>(g_ownerBuffer);
alignas(Application) unsigned char g_appBuffer[sizeof(Application)];

void ResetCounters() {
    g_setCompleted = 0;
    g_baseRegisters = 0;
    g_baseUnregisters = 0;
    g_findItemCalls = 0;
    g_lastFindId = -1;
    g_lastFindThis = nullptr;
    g_findResult = nullptr;
    g_unregisterCalls = 0;
    g_lastUnregisterId = -1;
    g_currentLevel = nullptr;
    g_levelIndex = -1;
}

// The row fields the objective reads: +0x20 level list index, +0x24 loot id, +0x28 required quantity.
void Configure(Objective_GatherLoot& g, Structs::v2QuestObjectiveStub& row, int levelId, int lootId, int qty) {
    row.OID1 = levelId;
    row.OID2 = lootId;
    row.Value = qty;
    g.m_type = 0;
    g.m_valid = false;
    g.m_pyData = &row;
    g.m_owner = g_owner;
    g.m_completed = false;
    g.m_registered = false;
    g.m_currentQty = 0;
}

void TestInitWithCurrentQty() {
    ResetCounters();
    Structs::v2QuestObjectiveStub row;
    Objective_GatherLoot g;
    Configure(g, row, -1, 2, 3);

    ItemInstance item(2, 7);
    g_findResult = &item;
    CHECK(g.InitWithCurrentQty() == &item);
    CHECK(g_findItemCalls == 1);
    CHECK(g_lastFindId == 2);  // the row's loot id
    CHECK(g_lastFindThis == static_cast<ItemInventory*>(g_owner));
    CHECK(g.m_currentQty == 7);

    // Not in the inventory: nothing is returned and the count stays.
    g_findResult = nullptr;
    g.m_currentQty = 4;
    CHECK(g.InitWithCurrentQty() == nullptr);
    CHECK(g.m_currentQty == 4);
}

void TestHandleEvent() {
    ResetCounters();
    Structs::v2QuestObjectiveStub row;
    Objective_GatherLoot g;
    Configure(g, row, -1, 2, 5);
    ItemInstance inventoryItem(2, 3);
    g_findResult = &inventoryItem;  // the inventory holds 3

    QE_GatherLoot ev;
    ev.m_character = g_owner;
    ev.m_matchId = 2;
    ev.m_flag0 = 0;
    ev.m_flag1 = 0;
    ev.m_value = -1;

    // Uncounted event: the inventory quantity is passed back and the event is marked counted. 3 is below 5.
    CHECK(!g.handleEvent(&ev, nullptr));
    CHECK(g.m_currentQty == 3);
    CHECK(ev.m_flag0 == 1);
    CHECK(ev.m_value == 3);
    CHECK(g_setCompleted == 0);
    CHECK(!g.m_completed);

    // Carried quantity: it replaces the inventory value, and 6 reaches the requirement of 5.
    ev.m_flag1 = 1;
    ev.m_value = 6;
    CHECK(!g.handleEvent(&ev, nullptr));
    CHECK(g.m_currentQty == 6);
    CHECK(ev.m_value == 6);
    CHECK(g_setCompleted == 1);
    CHECK(g.m_completed);

    // Another loot id: the objective ignores the event and reads nothing.
    g.m_completed = false;
    g.m_currentQty = 0;
    g_setCompleted = 0;
    g_findItemCalls = 0;
    ev.m_matchId = 9;
    ev.m_flag0 = 0;
    ev.m_flag1 = 0;
    ev.m_value = -1;
    CHECK(!g.handleEvent(&ev, nullptr));
    CHECK(g_findItemCalls == 0);
    CHECK(g.m_currentQty == 0);
    CHECK(ev.m_flag0 == 0);
    CHECK(ev.m_value == -1);
    CHECK(g_setCompleted == 0);

    // Another owner: the same loot is ignored.
    ev.m_matchId = 2;
    ev.m_character = nullptr;
    CHECK(!g.handleEvent(&ev, nullptr));
    CHECK(g_findItemCalls == 0);
    CHECK(ev.m_flag0 == 0);

    // A carried count below the requirement does not complete the objective.
    ev.m_character = g_owner;
    ev.m_flag1 = 1;
    ev.m_value = 4;
    CHECK(!g.handleEvent(&ev, nullptr));
    CHECK(g.m_currentQty == 4);
    CHECK(g_setCompleted == 0);
    CHECK(!g.m_completed);
}

void TestCompile() {
    ResetCounters();
    Structs::v2QuestObjectiveStub row;
    Objective_GatherLoot g;
    ItemInstance item(2, 3);
    Level* levelTag = reinterpret_cast<Level*>(&g_levelTag);

    // Loot -1 at level 0: the asserts are silent and nothing runs.
    gAssertLevel = 0;
    Configure(g, row, -1, -1, 3);
    g_findResult = &item;
    g.Compile();
    CHECK(g_findItemCalls == 0);
    CHECK(!g.m_valid);
    CHECK(g_setCompleted == 0);

    // Loot -1 at level 1: the two asserts print and the objective still does nothing.
    gAssertLevel = 1;
    g.Compile();
    gAssertLevel = 0;
    CHECK(g_findItemCalls == 0);
    CHECK(!g.m_valid);

    // Loot 0 at level 0 is not gated: the quantity and level checks run (level -1 matches any level).
    ResetCounters();
    g_findResult = &item;
    Configure(g, row, -1, 0, 3);
    g.Compile();
    CHECK(g_findItemCalls == 1);
    CHECK(g_lastFindId == 0);
    CHECK(g.m_valid);
    CHECK(g.m_currentQty == 3);
    CHECK(g_setCompleted == 1);  // 3 meets the requirement of 3

    // A zero required quantity skips everything.
    ResetCounters();
    g_findResult = &item;
    Configure(g, row, -1, 2, 0);
    g.Compile();
    CHECK(g_findItemCalls == 0);
    CHECK(!g.m_valid);

    // A row level that differs from the current level's index: nothing runs.
    ResetCounters();
    g_findResult = &item;
    g_currentLevel = levelTag;
    g_levelIndex = 0;
    Configure(g, row, 1, 2, 5);
    g.Compile();
    CHECK(g_findItemCalls == 0);
    CHECK(!g.m_valid);

    // The same level: the inventory is read (3 is below 5, so no completion).
    ResetCounters();
    g_findResult = &item;
    g_currentLevel = levelTag;
    g_levelIndex = 1;
    Configure(g, row, 1, 2, 5);
    g.Compile();
    CHECK(g_findItemCalls == 1);
    CHECK(g.m_valid);
    CHECK(g.m_currentQty == 3);
    CHECK(g_setCompleted == 0);
    CHECK(!g.m_completed);

    // Level -1 runs even with no current level.
    ResetCounters();
    g_findResult = &item;
    Configure(g, row, -1, 2, 5);
    g.Compile();
    CHECK(g_findItemCalls == 1);
    CHECK(g.m_valid);

    // A row level with no current level: nothing runs.
    ResetCounters();
    g_findResult = &item;
    Configure(g, row, 1, 2, 5);
    g.Compile();
    CHECK(g_findItemCalls == 0);
    CHECK(!g.m_valid);
}

void TestRegisterUnregister() {
    ResetCounters();
    ItemInventory* inventory = static_cast<ItemInventory*>(g_owner);
    // The gathered list is the ItemInventory member; construct it in place.
    new (&inventory->m_activeQuestGatheredItemIds) std::list<ItemInventory::QuestGatheredItem>();
    std::list<ItemInventory::QuestGatheredItem>& gathered = inventory->m_activeQuestGatheredItemIds;

    Structs::v2QuestObjectiveStub rowA;
    Structs::v2QuestObjectiveStub rowB;
    Objective_GatherLoot a;
    Objective_GatherLoot b;
    Configure(a, rowA, -1, 2, 1);
    Configure(b, rowB, -1, 4, 1);

    // An invalid objective only registers with its base.
    a.Register();
    CHECK(g_baseRegisters == 1);
    CHECK(gathered.empty());

    // A valid objective appends its loot id with a count of 1.
    a.m_valid = true;
    a.Register();
    CHECK(g_baseRegisters == 2);
    CHECK(gathered.size() == 1);
    CHECK(gathered.front().m_itemId == 2);
    CHECK(gathered.front().m_refCount == 1);

    // The same loot id again adds a reference and no entry.
    a.Register();
    CHECK(gathered.size() == 1);
    CHECK(gathered.front().m_refCount == 2);

    // Another loot id is appended after it.
    b.m_valid = true;
    b.Register();
    CHECK(gathered.size() == 2);
    CHECK(gathered.back().m_itemId == 4);
    CHECK(gathered.back().m_refCount == 1);

    // Unregister: only a valid objective removes its loot id from the inventory.
    b.m_valid = false;
    b.Unregister();
    CHECK(g_baseUnregisters == 1);
    CHECK(g_unregisterCalls == 0);

    a.Unregister();
    CHECK(g_baseUnregisters == 2);
    CHECK(g_unregisterCalls == 1);
    CHECK(g_lastUnregisterId == 2);

    gathered.clear();
}

// Runs the DBG trace into a scratch file and returns what it wrote.
std::string TraceText(Objective_GatherLoot& g, int* returned) {
    const char* path = "gather_loot_dbg_test.tmp";
    std::FILE* fp = std::fopen(path, "w+b");
    if (fp == nullptr) {
        std::fprintf(stderr, "cannot open %s\n", path);
        ++g_failures;
        return std::string();
    }
    *returned = g.DBG_TraceDetailedObjectiveInformation(reinterpret_cast<__sFILE*>(fp));
    std::rewind(fp);
    char text[512] = {};
    const std::size_t got = std::fread(text, 1, sizeof(text) - 1, fp);
    std::fclose(fp);
    std::remove(path);
    return std::string(text, got);
}

void TestDbgTrace() {
    ResetCounters();
    Structs::v2QuestObjectiveStub row;
    Objective_GatherLoot g;

    // Loot 2 is "Shield" (below the item count of 3), level 1 is "Dungeon" (below the level count of 2).
    Configure(g, row, 1, 2, 9);
    g.m_currentQty = 4;
    int returned = -1;
    const std::string text = TraceText(g, &returned);
    const std::string expected =
        "\t  Objective_GatherLoot\n\t    Loot : Shield\n\t    Qty : 9\n\t    Level : Dungeon\n\t    CurrentQty : 4\n";
    CHECK(text == expected);
    // The original returns the count of its last fprintf only (the CurrentQty line).
    CHECK(returned == static_cast<int>(std::strlen("\t    CurrentQty : 4\n")));

    // Loot 3 is past the item count and level -1 is negative: both print "na".
    Configure(g, row, -1, 3, 0);
    g.m_currentQty = 0;
    const std::string fallback = TraceText(g, &returned);
    const std::string expectedFallback =
        "\t  Objective_GatherLoot\n\t    Loot : na\n\t    Qty : 0\n\t    Level : na\n\t    CurrentQty : 0\n";
    CHECK(fallback == expectedFallback);
    CHECK(returned == static_cast<int>(std::strlen("\t    CurrentQty : 0\n")));
}

}  // namespace

// ---- Stubs for the definitions other batches provide. The objective's vtables and the base constructors need them. ----

// Objective (game-items-save Objective batch).
Objective::Objective() {}
Objective::~Objective() {}
void Objective::Compile() {}
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective::InstallObjectiveMarker(int, int) {}
void Objective::RemoveObjectiveMarker() {}
std::string Objective::GetDesc() const { return std::string(); }
void Objective::_loadData(IStreamBase*) {}
void Objective::_saveData(IStreamBase*) {}
void Objective::_resetData() {}
void Objective::SetIsCompleted() {
    ++g_setCompleted;
    m_completed = true;
}

// Objective_EventReceiver and Objective_Qty (other batches).
Objective_EventReceiver::~Objective_EventReceiver() {}
int Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective_EventReceiver::Register() { ++g_baseRegisters; }
void Objective_EventReceiver::Unregister() { ++g_baseUnregisters; }
bool Objective_EventReceiver::onEvent(const IEvent*, const EventManager*) { return false; }
Objective_Qty::~Objective_Qty() {}

// QuestEvent and QE_GatherLoot (other batches).
QuestEvent::~QuestEvent() {}
QE_GatherLoot::~QE_GatherLoot() {}
void QE_GatherLoot::FillNetworkMsg(tMsgRaisedEventData&) const {}

// The pydata row the objective points at (structs_records.hpp, defined in the pydata accessors).
Structs::v2QuestObjective::~v2QuestObjective() {}
void Structs::v2QuestObjective::finalize() {}
void Structs::v2QuestObjective::read(IStreamBase*) {}
Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub() {}
void Structs::v2QuestObjectiveStub::finalize() {}
void Structs::v2QuestObjectiveStub::read(IStreamBase*) {}

// ItemInstance and ItemInventory (game-items-save batches). The test builds the instances; the inventory is only used
// through the two calls below and its gathered list.
ItemInstance::ItemInstance(int itemId, unsigned int qty) : m_itemId(itemId) {
    m_qty = static_cast<std::int16_t>(qty);
}
ItemInstance::~ItemInstance() {}
ItemInstance* ItemInventory::FindItem(int itemId) {
    ++g_findItemCalls;
    g_lastFindId = itemId;
    g_lastFindThis = this;
    return g_findResult;
}
void ItemInventory::UnregisterQuestGatheringItemId(int itemId) {
    ++g_unregisterCalls;
    g_lastUnregisterId = itemId;
}

// Application and the level lookups (other batches).
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appBuffer);
}
Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}
int LevelListIndexOfLevel(const Level*) {
    return g_levelIndex;
}

// The name tables and the element counts of the two Arrays tables.
namespace Arrays {
const char* ItemTableMemberNameAt(int index) {
    return kItemNames[index];
}
const char* LevelListMemberNameAt(int index) {
    return kLevelNames[index];
}
}  // namespace Arrays
std::uint32_t Arrays::ItemTable::size = 3;
std::uint32_t Arrays::LevelList::size = 2;

int main() {
    TestInitWithCurrentQty();
    TestHandleEvent();
    TestCompile();
    TestRegisterUnregister();
    TestDbgTrace();
    gAssertLevel = 0;
    if (g_failures == 0) {
        std::printf("g1-game-items-save-Objective_GatherLoot-974c8b-0 test: all checks passed\n");
    } else {
        std::printf("g1-game-items-save-Objective_GatherLoot-974c8b-0 test: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
