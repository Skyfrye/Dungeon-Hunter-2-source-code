// Test for the ItemInventory loot batch (game-items-save/src/g1-game-items-save-ItemInventory-cf6f6b-4.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Covers UnregisterQuestGatheringItemId (the reference count and the list removal) and _AddLootTable: direct entries,
// the extra list, the table B picks and percent-roll call, sub-tables, and the range check. The other batches, the
// engine and the item classes are stand-ins here. DebugSwitches is a stand-in that keeps a switch table and counts the
// isTracingItemInventory_Loot reads, so the checks can see each read the original makes. The stand-ins that AddLoot
// needs abort when reached; the checks below never reach them. The probability helpers are scripted.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <iterator>
#include <list>
#include <map>
#include <new>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#define private public
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#undef private

int gAssertLevel = 0;

// The Arrays::LootTable table block, defined in pydata-accessors/src/w7_arrays_00.cpp. Not linked here.
std::uint8_t* Arrays::LootTable::members = nullptr;
std::uint32_t Arrays::LootTable::size = 0;

// DebugSwitches stand-in. The real singleton is in game-app (DebugSwitches.cpp). This one keeps the switch table in the
// same member, stores a missing name as false like the original, and counts the trace reads of _AddLootTable.
namespace {
DebugSwitches g_switches;
int g_lootTraceReads = 0;
}  // namespace

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches* DebugSwitches::GetInstance() { return &g_switches; }
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) {
    if (name == "isTracingItemInventory_Loot") {
        ++g_lootTraceReads;
    }
    if (m_switches.find(name) == m_switches.end()) {
        m_switches[name] = false;
        m_switches.emplace("isTracingDebugSwitches", false);  // the original's trace lookup of this key
    }
    return m_switches[name];
}

// Stand-ins for the other batches (ItemInstance and the loot helpers). Only AddLoot reaches them.
ItemInstance::ItemInstance(int, unsigned int) { std::abort(); }
ItemInstance::~ItemInstance() { std::abort(); }
void ItemInstance::SetQty(int) { std::abort(); }

void ItemInventory::_AddLootItemPowers(const Structs::LootEntry*, ItemInstance*, int, int, int) { std::abort(); }
void ItemInventory::CalcLootItemValue(ItemInstance*, int) { std::abort(); }
int ItemInventory::_AddItemInstance(ItemInstance*, bool, bool) { std::abort(); }
void ItemInventory::_AddLootItems(const std::vector<const Structs::LootEntry*>&, std::vector<ItemInventory::LootInfo>&,
                                  bool) {
    std::abort();
}

// The probability helpers are scripted: the count is g_probCount, and each pick takes the next value of g_picks.
// The percent rolls are recorded, not run.
namespace {
int g_probCount = 0;
std::vector<unsigned int> g_picks;
std::size_t g_pickPos = 0;
int g_pctRollCalls = 0;
int g_pctRollLastCount = -1;
const Structs::LootEntry* g_pctRollEntry = nullptr;

unsigned int NextPick() {
    if (g_picks.empty()) {
        return 0;
    }
    return g_picks[g_pickPos++ % g_picks.size()];
}
}  // namespace

int ItemInventory::_GetProbQuantity(int, int) { return g_probCount; }
unsigned int ItemInventory::_GetRandomLootEntry(const std::vector<const Structs::LootEntry*>&) { return NextPick(); }
unsigned int ItemInventory::_GetRandomLootEntry(const Structs::Loot&) { return NextPick(); }

void ItemInventory::_DoPctRolls(std::vector<const Structs::LootEntry*>&,
                                const std::vector<const Structs::LootEntry*>& in) {
    ++g_pctRollCalls;
    g_pctRollLastCount = static_cast<int>(in.size());
    g_pctRollEntry = nullptr;
}

void ItemInventory::_DoPctRolls(std::vector<const Structs::LootEntry*>&, const Structs::LootEntry* entry, int count) {
    ++g_pctRollCalls;
    g_pctRollLastCount = count;
    g_pctRollEntry = entry;
}

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                 \
    do {                                                                            \
        if (!(cond)) {                                                              \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

// Loot records and LootEntry rows, in raw storage. Only the fields the batch reads are set. No virtual function of
// these records is called, so they are not constructed.
alignas(Structs::Loot) unsigned char g_lootRaw[3 * sizeof(Structs::Loot)];
alignas(Structs::LootEntry) unsigned char g_entryRaw[8 * sizeof(Structs::LootEntry)];

Structs::Loot* LootAt(int i) { return reinterpret_cast<Structs::Loot*>(g_lootRaw) + i; }
const Structs::LootEntry* EntryAt(int i) { return reinterpret_cast<const Structs::LootEntry*>(g_entryRaw) + i; }

void ResetLootTables() {
    std::memset(g_lootRaw, 0, sizeof g_lootRaw);
    std::memset(g_entryRaw, 0, sizeof g_entryRaw);
    Arrays::LootTable::members = g_lootRaw;
    Arrays::LootTable::size = 3;
    g_probCount = 0;
    g_picks.clear();
    g_pickPos = 0;
    g_pctRollCalls = 0;
    g_pctRollLastCount = -1;
    g_pctRollEntry = nullptr;
    g_lootTraceReads = 0;
    g_switches.m_switches.clear();
}

// Quest gather bookkeeping: the list lives at its member offset in an object that is never constructed. The member
// function reads only that list, so it is enough to construct the list in place.
alignas(ItemInventory) unsigned char g_invRaw[sizeof(ItemInventory)];

void TestUnregisterQuestGatheringItemId() {
    ItemInventory* inv = reinterpret_cast<ItemInventory*>(g_invRaw);
    new (&inv->m_activeQuestGatheredItemIds) std::list<ItemInventory::QuestGatheredItem>();
    auto& list = inv->m_activeQuestGatheredItemIds;
    list.push_back(ItemInventory::QuestGatheredItem{3, 1});
    list.push_back(ItemInventory::QuestGatheredItem{7, 2});
    list.push_back(ItemInventory::QuestGatheredItem{5, 1});

    // One reference of 7 is released: the node stays, with a count of 1.
    inv->UnregisterQuestGatheringItemId(7);
    CHECK(list.size() == 3);
    auto it = list.begin();
    std::advance(it, 1);
    CHECK(it->m_itemId == 7);
    CHECK(it->m_refCount == 1);

    // The last reference is released: the node is removed and the order of the others is kept.
    inv->UnregisterQuestGatheringItemId(7);
    CHECK(list.size() == 2);
    CHECK(list.front().m_itemId == 3);
    CHECK(list.back().m_itemId == 5);

    // An id that is not registered changes nothing (the original's ASSERT is silent at level 0).
    inv->UnregisterQuestGatheringItemId(9);
    CHECK(list.size() == 2);

    // A node with one reference is removed at once, leaving the last one.
    inv->UnregisterQuestGatheringItemId(3);
    CHECK(list.size() == 1);
    CHECK(list.front().m_itemId == 5);

    list.~list();
}

void TestAddLootTableDirectEntries() {
    // Table 0: two direct entries (m_w6, count m_w5), no table B, no sub-tables.
    ResetLootTables();
    Structs::Loot* t0 = LootAt(0);
    t0->FixedLootEntriesSize = 2;
    t0->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(0));

    std::vector<const Structs::LootEntry*> out;
    CHECK(g_switches.m_switches.count("isTracingItemInventory_Loot") == 0);
    ItemInventory::_AddLootTable(0, out, nullptr);
    CHECK(out.size() == 2);
    CHECK(out.size() == 2 && out[0] == EntryAt(0) && out[1] == EntryAt(1));
    CHECK(g_pctRollCalls == 0);
    // Reads: 3 at entry, 1 per direct entry (2), 1 for the m_w3 == 0 branch, 1 after the local list is initialised.
    CHECK(g_lootTraceReads == 7);
    // The first read inserts the key as false, as the original's GetSwitch does.
    CHECK(g_switches.m_switches.count("isTracingItemInventory_Loot") == 1);
    CHECK(g_switches.m_switches.count("isTracingItemInventory_Loot") == 1 &&
          g_switches.m_switches["isTracingItemInventory_Loot"] == false);
}

void TestAddLootTableExtraList() {
    // Table 1: one direct entry (entry 4) and table B of two entries (entries 2 and 3).
    ResetLootTables();
    Structs::Loot* t1 = LootAt(1);
    t1->FixedLootEntriesSize = 1;
    t1->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(4));
    t1->RandomLootEntriesSize = 2;
    t1->RandomLootEntries = const_cast<Structs::LootEntry*>(EntryAt(2));

    std::vector<const Structs::LootEntry*> out;
    std::vector<const Structs::LootEntry*> extra;
    ItemInventory::_AddLootTable(1, out, &extra);
    CHECK(out.size() == 1 && out[0] == EntryAt(4));
    CHECK(extra.size() == 2 && extra[0] == EntryAt(2) && extra[1] == EntryAt(3));
    CHECK(g_pctRollCalls == 0);
    // Reads: 3 at entry, 1 for the direct entry, none for table B with an extra list, 1 after the local list is initialised.
    CHECK(g_lootTraceReads == 5);
}

void TestAddLootTablePercentRoll() {
    // Same table without an extra list: one pick (count 1, scripted index 1) from table B into out, after the direct
    // entry. Then the percentages of table B are rolled on m_w4 with count m_w3.
    ResetLootTables();
    Structs::Loot* t1 = LootAt(1);
    t1->FixedLootEntriesSize = 1;
    t1->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(4));
    t1->RandomLootEntriesSize = 2;
    t1->RandomLootEntries = const_cast<Structs::LootEntry*>(EntryAt(2));
    g_probCount = 1;
    g_picks = {1};

    std::vector<const Structs::LootEntry*> out;
    ItemInventory::_AddLootTable(1, out, nullptr);
    CHECK(out.size() == 2);
    CHECK(out.size() == 2 && out[0] == EntryAt(4) && out[1] == EntryAt(3));
    CHECK(g_pctRollCalls == 1);
    CHECK(g_pctRollLastCount == 2);
    CHECK(g_pctRollEntry == EntryAt(2));
    // Reads: 3 at entry, 1 for the direct entry, 1 after the table B count, 1 for the one pick, 1 after the local list
    // is initialised.
    CHECK(g_lootTraceReads == 7);
}

void TestAddLootTableSubTables() {
    // Table 0: direct entries 0 and 1. Table 1: direct entry 4, table B entries 2 and 3. Table 2: direct entry 5,
    // sub-tables 0 and 1, and no table B.
    // Table 1's table B entries (2, 3) go to the local list of table 2 (table 1 is walked with that list as its extra).
    // Table 2 then picks one of them (count 1, scripted index 0: entry 2) into out, and rolls the percentages of the
    // local list (2 entries).
    ResetLootTables();
    Structs::Loot* t0 = LootAt(0);
    t0->FixedLootEntriesSize = 2;
    t0->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(0));

    Structs::Loot* t1 = LootAt(1);
    t1->FixedLootEntriesSize = 1;
    t1->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(4));
    t1->RandomLootEntriesSize = 2;
    t1->RandomLootEntries = const_cast<Structs::LootEntry*>(EntryAt(2));

    std::int32_t subIds[2] = {0, 1};
    Structs::Loot* t2 = LootAt(2);
    t2->FixedLootEntriesSize = 1;
    t2->FixedLootEntries = const_cast<Structs::LootEntry*>(EntryAt(5));
    t2->SubLootsSize = 2;
    t2->SubLoots = subIds;
    g_probCount = 1;
    g_picks = {0};

    std::vector<const Structs::LootEntry*> out;
    ItemInventory::_AddLootTable(2, out, nullptr);
    CHECK(out.size() == 5);
    CHECK(out.size() == 5 && out[0] == EntryAt(5) && out[1] == EntryAt(0) && out[2] == EntryAt(1) &&
          out[3] == EntryAt(4) && out[4] == EntryAt(2));
    CHECK(g_pctRollCalls == 1);
    CHECK(g_pctRollLastCount == 2);
    // Reads, top table 2: 3 at entry, 1 direct, 1 for m_w3 == 0, 1 after the local list is initialised (6).
    //   sub-table 0: 3 + 2 direct + 1 (m_w3 == 0) + 1 (local list) = 7.
    //   sub-table 1: 3 + 1 direct + 0 (table B with an extra list) + 1 (local list) = 5.
    //   local list: 4 after the count, 1 for the one pick = 5. Total 23.
    CHECK(g_lootTraceReads == 23);
}

void TestAddLootTableOutOfRange() {
    // The index is past the table size: the batch returns after its ASSERT, so nothing is added. The three entry reads
    // still run after the ASSERT (silent at level 0), as the original makes them before it goes on into the row.
    ResetLootTables();
    std::vector<const Structs::LootEntry*> out;
    ItemInventory::_AddLootTable(3, out, nullptr);
    CHECK(out.empty());
    ItemInventory::_AddLootTable(-1, out, nullptr);
    CHECK(out.empty());
    CHECK(g_pctRollCalls == 0);
    CHECK(g_lootTraceReads == 6);
}

}  // namespace

int main() {
    TestUnregisterQuestGatheringItemId();
    TestAddLootTableDirectEntries();
    TestAddLootTableExtraList();
    TestAddLootTablePercentRoll();
    TestAddLootTableSubTables();
    TestAddLootTableOutOfRange();
    if (g_failures == 0) {
        std::printf("ItemInventory cf6f6b-4 loot checks: all passed\n");
        return 0;
    }
    std::printf("ItemInventory cf6f6b-4 loot checks: %d failed\n", g_failures);
    return 1;
}
