// Batch g1-game-items-save-ItemInventory-cf6f6b-4 (owner ItemInventory, part 5 of 5).
// Loot: the loot table walk (_AddLootTable), AddLoot, DBG_DropAllLoots and UnregisterQuestGatheringItemId.
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so.
//
// Shared conventions in this file:
//  * gAssertLevel: level 2 aborts (the original writes to address 0), level 1 prints the ASSERT line. Where the original
//    goes on after an ASSERT with an out-of-range index (undefined there), this port returns.
//  * Loot records are host-width (pydata::ReadArrayTable). Arrays::LootTable::members is a block of Structs::Loot
//    objects indexed by the host type. Loot m_w4, m_w6 and m_w8 are host arrays of LootEntry and int32, so they are
//    indexed as typed arrays; the 36-byte file stride is never used to address memory.
//  * The loot helpers take no ItemInventory object in the original: their first argument is in r0. _AddLootItemPowers
//    gets the LootInfo entry, CalcLootItemValue the new item, _GetProbQuantity the table word at Loot +0x08 and 0,
//    _GetRandomLootEntry the table or the local vector. The owner header declares them static, and they are called so.
//  * The isTracingItemInventory_Loot trace reads of _AddLootTable are kept at the sites of the listing (see
//    ReadLootTraceSwitch). GetSwitch is not pure: a missing name is stored as false, so the reads change the switch
//    table. AddLoot still drops its own trace reads (see its note).
//  * The owner header ItemInventory.hpp is not edited here.
//  * Arrays::X is declared once (pydata-accessors/arrays.hpp), so the element table (members, size) and the name table
//    (m_memberNames) are used together.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <vector>

#include "core-platform/memory.hpp"           // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "pydata-accessors/structs_records.hpp"  // Structs::LootEntry
#include "pydata-accessors/w7_arrays_00.hpp"     // Arrays::LootTable
#include "pydata-accessors/w7_structs_2.hpp"     // Structs::Loot, Structs::Item


namespace {

const char kLootSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp";
const char kInventorySource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Items/ItemInventory.h";

// The original's ASSERT(expr) at file:line. gAssertLevel 2 stops the program, 1 prints the line and goes on.
void ReportLootAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// One trace read of the original: DebugSwitches::load() on the singleton, then GetSwitch("isTracingItemInventory_Loot")
// with the value discarded. GetSwitch stores a missing name as false, so the read is not pure: it adds the key to the
// switch table on its first call, and DebugSwitches::save writes that table out.
void ReadLootTraceSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    (void)switches->GetSwitch("isTracingItemInventory_Loot");
}

}  // namespace

// 0x4039a0 _ZN13ItemInventory13_AddLootTableEiRSt6vectorIPKN7Structs9LootEntryESaIS4_EEPS6_
// Walks one loot table into `out`. The table has three parts, in this order:
//   A. m_w6 (+0x18), m_w5 (+0x14) entries: all go to out.
//   B. m_w4 (+0x10), m_w3 (+0x0c) entries: all go to `extra` when the caller gave one. Otherwise a count from
//      _GetProbQuantity(m_w2, 0) picks that many entries into out with _GetRandomLootEntry(loot), then the table's
//      percentages are rolled with _DoPctRolls.
//   C. m_w8 (+0x20), m_w7 (+0x1c) sub-table ids: each one is walked into out, and into `extra` or a local list.
// Then, when there is no `extra`, the local list is picked the same way (count from _GetProbQuantity, picks by
// _GetRandomLootEntry over the list) and its percentages are rolled.
void ItemInventory::_AddLootTable(int lootTableId, std::vector<const Structs::LootEntry*>& out,
                                  std::vector<const Structs::LootEntry*>* extra) {
    const bool inRange = lootTableId >= 0 && static_cast<std::uint32_t>(lootTableId) < Arrays::LootTable::size;
    if (!inRange) {
        ReportLootAssert("lootTableId >= 0 && lootTableId < (int)Arrays::LootTable::size", kLootSource, 160);
    }
    // Three trace reads at entry, after the ASSERT and before the table row is used (the original's order). The reads
    // come before the return too: the original makes them after its ASSERT and then goes on into undefined memory.
    ReadLootTraceSwitch();
    ReadLootTraceSwitch();
    ReadLootTraceSwitch();
    if (!inRange) {
        return;
    }
    const Structs::Loot& loot = reinterpret_cast<const Structs::Loot*>(Arrays::LootTable::members)[lootTableId];

    // A. Direct entries (m_w6, count m_w5). One trace read per entry, before the entry is added.
    const auto* direct = static_cast<const Structs::LootEntry*>(loot.FixedLootEntries);
    for (std::uint32_t i = 0; i < loot.FixedLootEntriesSize; ++i) {
        ReadLootTraceSwitch();
        out.push_back(&direct[i]);
    }

    // B. Table with count m_w3 (+0x0c) and entries m_w4 (+0x10).
    if (loot.RandomLootEntriesSize != 0) {
        const auto* tableB = static_cast<const Structs::LootEntry*>(loot.RandomLootEntries);
        if (extra != nullptr) {
            for (std::uint32_t i = 0; i < loot.RandomLootEntriesSize; ++i) {
                extra->push_back(&tableB[i]);
            }
        } else {
            const int count = _GetProbQuantity(loot.NumRandomItemProbs, 0);
            ReadLootTraceSwitch();  // after the table B count
            for (int k = 0; k < count; ++k) {
                const unsigned int pick = _GetRandomLootEntry(loot);
                ReadLootTraceSwitch();  // per table B pick
                out.push_back(&tableB[pick]);
            }
            _DoPctRolls(out, tableB, static_cast<int>(loot.RandomLootEntriesSize));
        }
    } else {
        ReadLootTraceSwitch();  // the m_w3 == 0 branch
    }

    // C. Sub-tables: count m_w7 (+0x1c), int32 ids in m_w8 (+0x20). Each sub-table adds its entries to out, and its
    // table B entries to `extra` or to the local list.
    std::vector<const Structs::LootEntry*> local;
    ReadLootTraceSwitch();  // after the local list is initialised, before the sub-tables are walked
    const auto* subIds = static_cast<const std::int32_t*>(loot.SubLoots);
    for (std::uint32_t i = 0; i < loot.SubLootsSize; ++i) {
        _AddLootTable(subIds[i], out, extra != nullptr ? extra : &local);
    }

    // D. The local list, only when there is no extra: picks from it, then its percentages are rolled.
    if (extra == nullptr && !local.empty()) {
        const int count = _GetProbQuantity(loot.NumRandomItemProbs, 0);
        for (int r = 0; r < 4; ++r) {  // the original makes four trace reads after the count
            ReadLootTraceSwitch();
        }
        for (int k = 0; k < count; ++k) {
            const unsigned int pick = _GetRandomLootEntry(local);
            ReadLootTraceSwitch();  // per local-list pick
            out.push_back(local[pick]);
        }
        _DoPctRolls(out, local);
    }
}

// 0x40407c _ZN13ItemInventory7AddLootEiiiib
// Rolls the loot table lootTableId and adds the resulting items to the inventory.
// The table entries are collected by _AddLootTable, expanded into per-row LootInfo records by _AddLootItems, and each
// record becomes one item. The item gets its powers from _AddLootItemPowers, its value from CalcLootItemValue, and it
// is added with _AddItemInstance (stack true, convert gold false).
// The difficulty variant: at level 1 (or 2) of the current level the row is swapped for its "<name>_Hard" ("<name>_VeryHard")
// sibling when the name table has one next to it (id + 1 or id + 2), unless `flag` is set. A row of class 2 or 3 is added once
// per owned character (PlayerManager::m_numCharacters) and skipped when that count is 0 or less. The difficulty (Level +0x118)
// also goes to _AddLootItemPowers.
// The original reads the isTracingItemInventory_Loot switch twice at each stage (the table walk, the expanded list, the exits).
void ItemInventory::AddLoot(int lootTableId, int a, int b, int c, bool flag) {
    if (lootTableId < 0 || lootTableId >= static_cast<int>(Arrays::LootTable::size)) {
        return;
    }
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    if (switches->GetSwitch("MP_MinimalRandoms")) {
        return;
    }

    ReadLootTraceSwitch();
    ReadLootTraceSwitch();
    std::vector<const Structs::LootEntry*> entries;
    _AddLootTable(lootTableId, entries, nullptr);
    if (entries.empty()) {
        ReadLootTraceSwitch();
        ReadLootTraceSwitch();
        return;
    }

    ReadLootTraceSwitch();
    ReadLootTraceSwitch();
    std::vector<LootInfo> infos;
    _AddLootItems(entries, infos, m_dropAllLoot);
    if (infos.empty()) {
        ReadLootTraceSwitch();
        ReadLootTraceSwitch();
        return;
    }

    ReadLootTraceSwitch();
    ReadLootTraceSwitch();
    for (LootInfo& info : infos) {
        int copies = 1;
        if (static_cast<std::uint32_t>(info.m_row->DistType - 2) <= 1u) {
            copies = dword_99F76C->m_numCharacters;
            if (copies <= 0) {
                continue;
            }
        }
        for (int n = 0; n < copies; ++n) {
            const int itemId = info.m_itemId;
            Level* currentLevel = ApplicationGetInstance().GetCurrentLevel();
            const int difficulty = currentLevel != nullptr ? currentLevel->m_difficulty : 0;
            int variantId = itemId + 2;
            bool substituted = false;
            if (!flag && static_cast<std::uint32_t>(variantId) < Arrays::ItemTable::size) {
                char variantName[64];
                if (difficulty == 1) {
                    std::strcpy(variantName, Arrays::ItemTable::m_memberNames.names[itemId]);
                    std::strcpy(&variantName[std::strlen(variantName)], "_Hard");
                    if (std::strcmp(variantName, Arrays::ItemTable::m_memberNames.names[itemId + 1]) == 0) {
                        variantId = itemId + 1;
                        substituted = true;
                    }
                } else if (difficulty == 2) {
                    std::strcpy(variantName, Arrays::ItemTable::m_memberNames.names[itemId]);
                    std::strcpy(&variantName[std::strlen(variantName)], "_VeryHard");
                    if (std::strcmp(variantName, Arrays::ItemTable::m_memberNames.names[variantId]) == 0) {
                        substituted = true;
                    }
                }
            }
            const int rowId = substituted ? variantId : itemId;
            if (info.m_itemId != rowId) {
                info.m_itemId = static_cast<std::int16_t>(rowId);
                info.m_row = reinterpret_cast<const Structs::Item*>(Arrays::ItemTable::members) + rowId;
            }
            ItemInstance* item = new ItemInstance(rowId, 1u);
            int qty = static_cast<std::int8_t>(info.m_flag);
            if (qty == -2) {
                info.m_flag = 99;  // the original stores the substituted quantity back into the record
                qty = 99;
            }
            item->SetQty(qty);
            _AddLootItemPowers(info.m_entry, item, b, c, difficulty);
            CalcLootItemValue(item, a);
            _AddItemInstance(item, true, false);
        }
    }
}

// 0x404658 _ZN13ItemInventory16DBG_DropAllLootsEv
// Debug helper: AddLoot on loot table 5 with m_dropAllLoot set (it is passed to _AddLootItems as the `all` flag).
void ItemInventory::DBG_DropAllLoots() {
    m_dropAllLoot = true;
    AddLoot(5, 0, 0, -1, false);
    m_dropAllLoot = false;
}

// 0x47d5fc _ZN13ItemInventory30UnregisterQuestGatheringItemIdEi
// Releases one reference to the quest gather bookkeeping of itemId. The node is removed when its count reaches zero.
// The count is a byte that wraps like the original's uint8 arithmetic.
void ItemInventory::UnregisterQuestGatheringItemId(int itemId) {
    auto it = m_activeQuestGatheredItemIds.begin();
    while (it != m_activeQuestGatheredItemIds.end() && it->m_itemId != itemId) {
        ++it;
    }
    if (it == m_activeQuestGatheredItemIds.end()) {
        ReportLootAssert("iter != m_activeQuestGatheredItemIds.end()", kInventorySource, 335);
        return;
    }
    it->m_refCount = static_cast<std::uint8_t>(it->m_refCount - 1);
    if (it->m_refCount == 0) {
        m_activeQuestGatheredItemIds.erase(it);
    }
}
