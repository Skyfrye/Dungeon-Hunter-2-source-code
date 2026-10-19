// Batch g1-game-items-save-ItemInventory-cf6f6b-3 (owner ItemInventory, part 4 of 5).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the assembly where the decompile
// dropped arguments (_EquipSlotAuto, 0x4016e4). Layouts come from dh2/ItemInventory.hpp, dh2/ItemInstance.hpp and the
// pydata records in pydata-accessors.
//
// Shared conventions in this file:
//  * Equipment: m_equipment[set][slot] holds the ItemSlot* equipped in that set and slot (null when empty). ItemSlot
//    m_equipSlot[set] is the slot the item sits in for that set (int8, -1 when not equipped).
//  * Argument order of the equip helpers is slot first, item index second. The ASSERT strings of the original name the
//    arguments that way ("slotIdx < m_equipmentSlots[0].size()", "itemIdx < m_items.size()"), and so do the calls
//    _EquipItemAuto -> _EquipItemToSlot(1, itemIdx, false) and _EquipSlotAuto -> _EquipItemToSlot(slot, item, false).
//  * Static helpers. The loot functions below take the entry, list, item or table row they work on as their first
//    argument (the Hex-Rays "this"), so they are static members. Their extra Hex-Rays arguments are unused registers.
//  * Table rows. Arrays::X::members holds host records at host stride (decisions 2 and 3). A row is reached as an
//    element of the typed table (TableRow below), never by stepping the 32-bit listing stride. Pydata fields keep their
//    member names (m_w1, m_w2, m_off10 ...).
//  * Random::GetRandom(range, false). The loot call sites BL to the clone 0x401afc (ledger row there: GCC clone with
//    synced folded to false, ordinary stream).
//  * DebugSwitches reads with no effect on the result stay as calls, as the original makes them. GetInstance() loads the
//    file and returns the singleton, which is the original's load() then s_inst pair.
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0), level 1 prints the ASSERT line. Where the original
//    goes on after an ASSERT with an index or a null entry past the end (undefined), this port returns a defined value
//    instead; each such place is named in the ledger notes.

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <set>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Random.hpp"
#include "dh2/SortByValueAndClass.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// PlayerManager counts for _GetEffectiveProb, defined in g1-game-items-save-ItemInventory-cf6f6b-3_players.cpp. That file
// includes dh2/PlayerManager.hpp, which cannot share a translation unit with the pydata records: PlayerManager.hpp brings
// net-transport's IStreamBase and the pydata stream reader defines a second IStreamBase. The counts are taken in the
// original's order: mage, rogue, warrior (the global dword_99F76C).
namespace ItemInventoryLootPlayers {
void Counts(int& mage, int& rogue, int& warrior);
}  // namespace ItemInventoryLootPlayers

namespace {

const char kEquipmentSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp";
const char kLootsSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Loots.cpp";

// The original's ASSERT(expr) at file:line. Level 2 aborts; level 1 prints.
void ReportAssert(const char* file, const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// DebugSwitches::load() and GetSwitch(name). GetInstance() performs the load.
bool ReadDebugSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

// Typed row of a pydata table: element `index` of the host-stride table whose element 0 is `members`.
template <class Row>
const Row* TableRow(const std::uint8_t* members, int index) {
    return reinterpret_cast<const Row*>(members) + index;
}

// A pydata probability or key field read as the original reads it: sign-extended, then used as unsigned.
std::uint32_t UnsignedOf(std::int32_t value) {
    return static_cast<std::uint32_t>(value);
}

// One LootInfo row (16 bytes in the original) built from an item list element.
ItemInventory::LootInfo MakeLootInfo(int itemId, const Structs::LootEntry* entry, std::int8_t flag) {
    ItemInventory::LootInfo info{};
    info.m_itemId = static_cast<std::int16_t>(itemId);
    info.m_entry = entry;
    info.m_flag = static_cast<std::uint8_t>(flag);
    info.m_row = TableRow<Structs::Item>(Arrays::ItemTable::members, itemId);
    return info;
}

}  // namespace

// 0x400630 ItemInventory::UnEquipItemAuto(uint)
// Thunk: forwards to _UnEquipItemAuto (vtable slot 5).
int ItemInventory::UnEquipItemAuto(unsigned int itemIdx) {
    return _UnEquipItemAuto(itemIdx);
}

// 0x400634 ItemInventory::_EquipItemToSlot(uint,uint,bool)
// The category -4 becomes 1 when the item type is neither 4 nor 5 and Character +0x1324 (m_props.m_w204) is set.
// PARTIAL: the return value. On its no-op paths the original returns a stale register (the array end or an assert
// result); this port returns 0 there. On the equipped path the original returns the item pointer left in r0; this port
// returns 1. The callers checked (Character::EquipItemToSlot, _EquipItemAuto) ignore the value.
int ItemInventory::_EquipItemToSlot(unsigned int slot, unsigned int itemIdx, bool flag) {
    bool valid = true;
    if (slot >= m_equipment[0].size()) {
        ReportAssert(kEquipmentSource, "slotIdx < m_equipmentSlots[0].size()", 188);
        valid = false;
    }
    if (itemIdx >= m_items.size()) {
        ReportAssert(kEquipmentSource, "itemIdx < m_items.size()", 189);
        valid = false;
    }
    if (!valid) {
        return 0;  // the original reads past the end of an array here (undefined)
    }

    ItemSlot* entry = m_items[itemIdx];
    if (entry == nullptr || entry->m_item == nullptr) {
        return 0;
    }
    const int curSet = GetCurrentEquipSet(static_cast<int>(slot));
    const Structs::Item* row = entry->m_item->GetItem();
    int category = row->EquipmentSlottingType;  // +0x68 equipment category, -4 = both hands
    if (row->Type != 5 && row->Type != 4 && category == -4 && m_character->m_props.Special_Equip_2H_In_One != 0) {
        category = 1;  // Character +0x1324 set: a two-hander of another item type is equipped as category 1
    }
    if (!entry->m_item->IsEquippable()) {
        return 0;
    }
    if (static_cast<int>(entry->m_equipSlot[curSet]) == static_cast<int>(slot) && m_equipment[curSet][slot] == entry) {
        return 1;  // already in this slot of the current set
    }

    // Release whatever sits in the target slot, then the item's own old slot for this set.
    _UnEquipItemFromSlot(slot, -1);
    const int previous = entry->m_equipSlot[curSet];
    if (previous != -1 && m_equipment[curSet][static_cast<std::size_t>(previous)] == entry) {
        _UnEquipItemFromSlot(static_cast<unsigned int>(previous), -1);
    }

    unsigned int dest = slot;
    if (category == -4) {
        // Two-handed: the off hand (2) and the main hand (1) are released; the item goes to the main hand.
        if (!flag) {
            _UnEquipItemFromSlot(2u, -1);
        }
        _UnEquipItemFromSlot(1u, -1);
        dest = 1u;
    } else if (slot == 2u && HasTwoHander(false) && !flag) {
        // An off-hand item with a two-handed weapon in the main hand releases the main hand.
        _UnEquipItemFromSlot(1u, -1);
    }

    ItemInstance* original = entry->m_item;
    const int qty = original->m_qty;
    if (qty == 1) {
        m_equipment[curSet][dest] = entry;
        entry->m_equipSlot[curSet] = static_cast<std::int8_t>(dest);
        return 1;
    }
    // A stack: one unit is equipped and the rest goes back to the inventory.
    ItemInstance* rest = original->Split(qty - 1);
    if (rest == nullptr) {
        ReportAssert(kEquipmentSource, "oldStack", 256);
    }
    m_equipment[curSet][dest] = entry;
    entry->m_equipSlot[curSet] = static_cast<std::int8_t>(dest);
    return _AddItemInstance(rest, true, true);
}

// 0x4009f0 ItemInventory::EquipItemToSlot(uint,uint)
// Virtual slot 6. Forwards to _EquipItemToSlot with flag false.
int ItemInventory::EquipItemToSlot(unsigned int slot, unsigned int itemIdx) {
    return _EquipItemToSlot(slot, itemIdx, false);
}

// 0x4009f8 ItemInventory::_EquipItemAuto(uint)
// Chooses the slot from the item's category. Two Character gates take part: +0x1320 (m_props.m_w203) for category 1
// (the hands pair) and +0x1324 (m_props.m_w204) for category -4 (two-handed). The rest of the choice and the equip
// calls follow the original. An index past the end of m_items gives 0 after the ASSERT (the original reads past the end).
int ItemInventory::_EquipItemAuto(unsigned int itemIdx) {
    if (itemIdx >= m_items.size()) {
        ReportAssert(kEquipmentSource, "itemIdx < m_items.size()", 35);
        return 0;  // the original reads past the end of m_items here (undefined)
    }
    ItemSlot* entry = m_items[itemIdx];
    if (!entry->m_item->IsEquippable()) {
        return 0;
    }
    const Structs::Item* row = entry->m_item->GetItem();
    int category = row->EquipmentSlottingType;
    const bool plainType = row->Type != 5 && row->Type != 4;
    const bool gate1320 = m_character->m_props.Special_Equip_Main_In_Offhand != 0;  // Character +0x1320
    const bool gate1324 = m_character->m_props.Special_Equip_2H_In_One != 0;  // Character +0x1324

    auto twoHand = [this, itemIdx]() {
        _UnEquipItemFromSlot(2u, -1);
        _EquipItemToSlot(1u, itemIdx, false);
        return 1;
    };
    auto handPair = [this, itemIdx]() {
        if (!IsEquipmentSlotTaken(1u)) {
            _EquipItemToSlot(1u, itemIdx, false);
            return 1;
        }
        if (!IsEquipmentSlotTaken(2u)) {
            _EquipItemToSlot(2u, itemIdx, false);
            return 1;
        }
        return 0;
    };

    if (category == -4) {
        if (!plainType || !gate1324) {
            return twoHand();
        }
        category = 1;
    } else if (category == 1 && plainType && gate1320) {
        return handPair();
    }

    const int slotCount = static_cast<int>(m_equipment[0].size());
    if (category < 0 || category >= slotCount) {
        if (category == -3) {
            return handPair();
        }
        if (category == -2) {
            if (!IsEquipmentSlotTaken(5u)) {
                _EquipItemToSlot(5u, itemIdx, false);
                return 1;
            }
            if (!IsEquipmentSlotTaken(6u)) {
                _EquipItemToSlot(6u, itemIdx, false);
                return 1;
            }
            return 0;
        }
        if (category == -4) {
            return twoHand();
        }
        return 0;
    }

    if (category == 2 && HasTwoHander(false)) {
        _UnEquipItemFromSlot(1u, -1);
    }
    _EquipItemToSlot(static_cast<unsigned int>(category), itemIdx, false);
    return 1;
}

// 0x400c84 ItemInventory::EquipItemAuto(uint)
// Thunk: forwards to _EquipItemAuto (vtable slot 4).
int ItemInventory::EquipItemAuto(unsigned int itemIdx) {
    return _EquipItemAuto(itemIdx);
}

// 0x4016e4 ItemInventory::_EquipSlotAuto(uint,Character *)
// The items for the slot are copied into a local vector and sorted with SortByValueAndClass, keyed on the character
// given or else on the owner. The first entry the character can equip and that is not already equipped goes into the
// slot (flag false). Returns 1 when an item was equipped, 0 otherwise. Asm 0x4016e4 checked: the sort is called with
// the character argument when it is set and with m_character otherwise, and the equippability test is
// IsEquippableBy(c) in the first case and IsEquippable() in the second.
int ItemInventory::_EquipSlotAuto(unsigned int slot, Character* c) {
    if (slot >= m_equipment[0].size()) {
        ReportAssert(kEquipmentSource, "slotIdx < m_equipmentSlots[0].size()", 145);
    }
    std::vector<Item> list;
    GetItemListForSlot(slot, &list);
    SortByValueAndClass byValue;
    byValue.m_character = (c != nullptr) ? c : m_character;
    std::sort(list.begin(), list.end(), byValue);
    for (const Item& it : list) {
        if (c != nullptr) {
            if (!it.m_item->IsEquippableBy(c)) {
                continue;
            }
        } else if (!it.m_item->IsEquippable()) {
            continue;
        }
        if (IsItemEquipped(it.m_index)) {
            continue;
        }
        _EquipItemToSlot(slot, it.m_index, false);
        return 1;
    }
    return 0;
}

// 0x401940 ItemInventory::EquipSlotAuto(uint,Character *)
// Thunk: forwards to _EquipSlotAuto (vtable slot 7).
int ItemInventory::EquipSlotAuto(unsigned int slot, Character* c) {
    return _EquipSlotAuto(slot, c);
}

// 0x401b90 ItemInventory::_GetProbQuantity(int,int)
// Rolls a quantity from the NumProb row numProbId. Each NumProb entry is a (value at m_w1, probability at m_off6) pair.
// The roll is Random(total) + bonus, clamped to total - 1, and the first entry whose range holds it gives the value.
// Returns 0 after the ASSERT on any failure.
int ItemInventory::_GetProbQuantity(int numProbId, int bonus) {
    if (numProbId < 0 || static_cast<std::uint32_t>(numProbId) >= Arrays::NumProbArray::size) {
        ReportAssert(kLootsSource, "numItemProbsId >= 0 && numItemProbsId < (int)Arrays::NumProbArray::size", 119);
        return 0;  // the original reads the row past the table here (undefined)
    }
    const Structs::NumProbList* row = TableRow<Structs::NumProbList>(Arrays::NumProbArray::members, numProbId);
    const auto* entries = static_cast<const Structs::NumProb*>(row->list_entries);
    const std::uint32_t count = row->list_entriesSize;
    std::uint32_t total = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        total += UnsignedOf(entries[i].Prob);
    }
    if (count != 0 && total != 0) {
        std::uint32_t v13 = Random::GetRandom(static_cast<int>(total), false) + static_cast<std::uint32_t>(bonus);
        if (v13 >= total) {
            v13 = total - 1;
        }
        for (std::uint32_t i = 0; i < count; ++i) {
            const std::uint32_t prob = UnsignedOf(entries[i].Prob);
            if (v13 < prob) {
                return entries[i].Num;
            }
            v13 -= prob;
        }
        ReportAssert(kLootsSource, "!\"WTF! Something went wrong guys! (_GetProbQuantity)\"", 152);
        return 0;
    }
    ReportAssert(kLootsSource, "!\"Invalid probabilities (_GetProbQuantity)\"", 132);
    return 0;
}

// 0x401dbc ItemInventory::_GetRandomItem(Structs::ItemListEntryList const&)
// Weighted pick over an item list. Each ItemListEntry carries its probability in m_w2 (int16). Returns the index of the
// chosen entry.
int ItemInventory::_GetRandomItem(const Structs::ItemListEntryList& list) {
    const auto* entries = static_cast<const Structs::ItemListEntry*>(list.list_entries);
    const std::uint32_t count = list.list_entriesSize;
    std::uint32_t total = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        total += UnsignedOf(entries[i].Prob);
    }
    if (count == 0 || total == 0) {
        ReportAssert(kLootsSource, "!\"Invalid probabilities (_GetRandomItem)\"", 382);
        return 0;
    }
    std::uint32_t v12 = Random::GetRandom(static_cast<int>(total), false);
    std::uint32_t v13 = UnsignedOf(entries[0].Prob);
    if (v12 < v13) {
        return 0;
    }
    int result = 0;
    while (true) {
        ++result;
        v12 -= v13;
        if (static_cast<std::uint32_t>(result) == count) {
            break;
        }
        v13 = UnsignedOf(entries[result].Prob);
        if (v13 > v12) {
            return result;
        }
    }
    ReportAssert(kLootsSource, "!\"WTF! Something went wrong guys! (_GetRandomItem)\"", 396);
    return 0;
}

// 0x401f38 ItemInventory::_GetRandomItemPowerEntry(Structs::ItemPowerEntryList const&)
// Weighted pick over a power list. Each ItemPowerEntry carries its probability in m_w2 (int8). Returns the index.
int ItemInventory::_GetRandomItemPowerEntry(const Structs::ItemPowerEntryList& list) {
    const auto* entries = static_cast<const Structs::ItemPowerEntry*>(list.list_entries);
    const std::uint32_t count = list.list_entriesSize;
    std::uint32_t total = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        total += UnsignedOf(entries[i].Prob);
    }
    if (count == 0 || total == 0) {
        ReportAssert(kLootsSource, "!\"Invalid probabilities (_GetRandomItemPowerEntry)\"", 543);
        return 0;
    }
    std::uint32_t v12 = Random::GetRandom(static_cast<int>(total), false);
    std::uint32_t v13 = UnsignedOf(entries[0].Prob);
    if (v12 < v13) {
        return 0;
    }
    int result = 0;
    while (true) {
        ++result;
        v12 -= v13;
        if (static_cast<std::uint32_t>(result) == count) {
            break;
        }
        v13 = UnsignedOf(entries[result].Prob);
        if (v13 > v12) {
            return result;
        }
    }
    ReportAssert(kLootsSource, "!\"WTF! Something went wrong guys! (_GetRandomItemPowerEntry)\"", 557);
    return 0;
}

// 0x4020b4 ItemInventory::CalcLootItemValue(ItemInstance *,int)
// Sets the item value. A type-13 item (gold) takes a random amount between its base (Structs::Item m_w27) and m_w28,
// scaled by 100 + (level >> 8) percent. Any other item takes m_w27 * m_w28 plus m_w6 * m_w8 for each power. The power
// rows come from ItemInstance::GetPower, which returns the Arrays::ItemPowerTable row (ItemPowerRef).
void ItemInventory::CalcLootItemValue(ItemInstance* item, int level) {
    const Structs::Item* row = item->GetItem();
    int value = 0;
    if (row->Type == 13) {
        const std::int32_t base = row->Value;
        const int rolled = static_cast<int>(Random::GetRandom(row->GoldValueMultiplier + 1 - base, false) +
                                            static_cast<std::uint32_t>(base));
        const float scale = (static_cast<float>(level >> 8) + 100.0f) / 100.0f;
        value = static_cast<int>(static_cast<float>(rolled) * scale);
    } else {
        value = static_cast<int>(static_cast<std::uint32_t>(row->Value) * static_cast<std::uint32_t>(row->GoldValueMultiplier));
        const int powers = item->GetNumPowers();
        for (int i = 0; i < powers; ++i) {
            const auto* power = reinterpret_cast<const Structs::ItemPowerRef*>(
                item->GetPower(static_cast<unsigned int>(i)));
            value = static_cast<int>(static_cast<std::uint32_t>(value) +
                                     static_cast<std::uint32_t>(power->GoldBonusMultiplier) * static_cast<std::uint32_t>(power->GoldBonus));
        }
    }
    item->SetValue(value);
}

// 0x4027a4 ItemInventory::_IsLootEntryUsingPct(Structs::LootEntry const&)
// True when the debug switch InfiniteLootDrops is set, or when the entry's percentage (m_w5) is 100 or less.
bool ItemInventory::_IsLootEntryUsingPct(const Structs::LootEntry& entry) {
    const bool infinite = ReadDebugSwitch("InfiniteLootDrops");
    return infinite || static_cast<std::uint32_t>(entry.Pct) <= 0x64u;
}

// 0x402854 ItemInventory::_GetEffectiveProb(Structs::LootEntry const&)
// Zero for a percentage entry. Otherwise the base (m_w6) plus the mage count times m_w3, the rogue count times m_w7 and
// the warrior count times m_w8, counted from the PlayerManager global (dword_99F76C).
int ItemInventory::_GetEffectiveProb(const Structs::LootEntry& entry) {
    if (_IsLootEntryUsingPct(entry)) {
        return 0;
    }
    int mage = 0;
    int rogue = 0;
    int warrior = 0;
    ItemInventoryLootPlayers::Counts(mage, rogue, warrior);
    return entry.RProb * rogue + entry.MProb * mage + entry.Prob + entry.WProb * warrior;
}

// 0x4028d0 ItemInventory::_GetRandomLootEntry(std::vector<Structs::LootEntry const*> const&)
// Weighted pick over a list of loot entries by their effective probability. Percentage entries are skipped. Returns the
// index of the chosen entry, or 0 after the ASSERT.
unsigned int ItemInventory::_GetRandomLootEntry(const std::vector<const Structs::LootEntry*>& entries) {
    const std::size_t n = entries.size();
    if (n == 0) {
        return 0;
    }
    std::uint32_t total = 0;
    for (std::size_t i = 0; i < n; ++i) {
        if (_IsLootEntryUsingPct(*entries[i])) {
            continue;
        }
        total += static_cast<std::uint32_t>(_GetEffectiveProb(*entries[i]));
    }
    if (total == 0) {
        return 0;
    }
    std::uint32_t v13 = Random::GetRandom(static_cast<int>(total), false);
    for (std::size_t i = 0; i < n; ++i) {
        if (_IsLootEntryUsingPct(*entries[i])) {
            continue;
        }
        const std::uint32_t prob = static_cast<std::uint32_t>(_GetEffectiveProb(*entries[i]));
        if (prob > v13) {
            return static_cast<unsigned int>(i);
        }
        v13 -= prob;
    }
    ReportAssert(kLootsSource, "!\"WTF! Something went wrong guys! (_GetRandomLootEntry)\"", 327);
    return 0;
}

// 0x402a60 ItemInventory::_GetRandomLootEntry(Structs::Loot const&)
// The same weighted pick over the entries of a Loot record (m_w3 entries at m_w4). Returns the index of the chosen
// entry, or 0 after the ASSERT.
unsigned int ItemInventory::_GetRandomLootEntry(const Structs::Loot& loot) {
    const std::uint32_t count = loot.RandomLootEntriesSize;
    if (count == 0) {
        return 0;
    }
    const auto* entries = static_cast<const Structs::LootEntry*>(loot.RandomLootEntries);
    std::uint32_t total = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        if (_IsLootEntryUsingPct(entries[i])) {
            continue;
        }
        total += static_cast<std::uint32_t>(_GetEffectiveProb(entries[i]));
    }
    if (total == 0) {
        return 0;
    }
    std::uint32_t v12 = Random::GetRandom(static_cast<int>(total), false);
    for (std::uint32_t i = 0; i < count; ++i) {
        if (_IsLootEntryUsingPct(entries[i])) {
            continue;
        }
        const std::uint32_t prob = static_cast<std::uint32_t>(_GetEffectiveProb(entries[i]));
        if (prob > v12) {
            return i;
        }
        v12 -= prob;
    }
    ReportAssert(kLootsSource, "!\"WTF! Something went wrong guys! (_GetRandomLootEntry)\"", 290);
    return 0;
}

// 0x402bdc ItemInventory::_DoPctRoll(Structs::LootEntry const&)
// True when the InfiniteLootDrops switch is set. Otherwise true when the entry is a percentage entry and a roll of 0..99
// is at most its m_w5.
bool ItemInventory::_DoPctRoll(const Structs::LootEntry& entry) {
    if (ReadDebugSwitch("InfiniteLootDrops")) {
        return true;
    }
    if (_IsLootEntryUsingPct(entry) && static_cast<int>(Random::GetRandom(100, false)) <= entry.Pct) {
        (void)ReadDebugSwitch("isTracingItemPctRoll");
        return true;
    }
    return false;
}

// 0x402ce4 ItemInventory::_DoPctRolls(std::vector<...>&, std::vector<...> const&)
// Appends to out each entry of in that passes _DoPctRoll, in order.
void ItemInventory::_DoPctRolls(std::vector<const Structs::LootEntry*>& out,
                                const std::vector<const Structs::LootEntry*>& in) {
    for (const Structs::LootEntry* entry : in) {
        if (_DoPctRoll(*entry)) {
            out.push_back(entry);
        }
    }
}

// 0x402d70 ItemInventory::_DoPctRolls(std::vector<...>&, Structs::LootEntry const*, int)
// Appends to out each of the count entries starting at entry that passes _DoPctRoll, in order.
void ItemInventory::_DoPctRolls(std::vector<const Structs::LootEntry*>& out, const Structs::LootEntry* entry,
                                int count) {
    for (int i = 0; i < count; ++i) {
        const Structs::LootEntry* current = entry + i;
        if (_DoPctRoll(*current)) {
            out.push_back(current);
        }
    }
}

// 0x402dfc ItemInventory::_AddLootItems(std::vector<...> const&, std::vector<ItemInventory::LootInfo>&, bool)
// For each loot entry, the entry's item list (ItemListID) gives the items. With all clear, one item is picked at random
// from the list and appended to out. With all set, every item of the list is appended. A LootInfo is 16 bytes in the
// original: item id, the loot entry, the list element's flag byte (+10) and the Arrays::ItemTable row.
// Deviations: a null entry or an out-of-range list id (after its ASSERT) is skipped; the original reads past the end.
void ItemInventory::_AddLootItems(const std::vector<const Structs::LootEntry*>& entries, std::vector<LootInfo>& out,
                                  bool all) {
    for (const Structs::LootEntry* entry : entries) {
        if (entry == nullptr) {
            ReportAssert(kLootsSource, "lootEntry", 339);
            continue;  // the original dereferences the null entry here
        }
        const int listId = entry->ItemListID;
        if (listId < 0 || static_cast<std::uint32_t>(listId) >= Arrays::ItemList::size) {
            ReportAssert(kLootsSource,
                         "lootEntry->ItemListID >= 0 && lootEntry->ItemListID < (int)Arrays::ItemList::size", 340);
            continue;  // the original reads the list row past the table here
        }
        const Structs::ItemListEntryList* list =
            TableRow<Structs::ItemListEntryList>(Arrays::ItemList::members, listId);
        const auto* elements = static_cast<const Structs::ItemListEntry*>(list->list_entries);
        if (!all) {
            const int index = _GetRandomItem(*list);
            const Structs::ItemListEntry& elem = elements[index];
            const int itemId = elem.ItemID;
            if (itemId < 0 || static_cast<std::uint32_t>(itemId) >= Arrays::ItemTable::size) {
                ReportAssert(kLootsSource,
                             "itemEntry.ItemID >= 0 && itemEntry.ItemID < (int)Arrays::ItemTable::size", 361);
            }
            (void)ReadDebugSwitch("isTracingItemInventory_Loot");
            out.push_back(MakeLootInfo(itemId, entry, elem.Qty));
        } else {
            for (std::uint32_t j = 0; j < list->list_entriesSize; ++j) {
                const Structs::ItemListEntry& elem = elements[j];
                const int itemId = elem.ItemID;
                if (itemId < 0 || static_cast<std::uint32_t>(itemId) >= Arrays::ItemTable::size) {
                    ReportAssert(kLootsSource,
                                 "itemEntry.ItemID >= 0 && itemEntry.ItemID < (int)Arrays::ItemTable::size", 350);
                }
                (void)ReadDebugSwitch("isTracingItemInventory_Loot");
                out.push_back(MakeLootInfo(itemId, entry, elem.Qty));
            }
        }
    }
}

// 0x403310 ItemInventory::_AddLootItemPowers(Structs::LootEntry const*,ItemInstance *,int,int,int)
// Adds powers to item for a loot entry. probQuantity is b when b is not -1, else the NumProb roll of the entry's m_w4
// with bonus a >> 8. When probQuantity covers the whole power list, every power of the list is added with variant c.
// Otherwise powers are drawn at random while a power's monopoly attributes (ItemBonusAttrMonopoly, m_w2 ids) do not
// clash with the attributes already added (a set of ids, from each power's AttrBonusEntry m_w1). After ten clashes in a
// row the random draw stops; a second pass then walks the list in order and adds the powers that fit.
// Deviations: an out-of-range power list, power id or monopoly id (after its ASSERT) ends the call; the original reads
// past the end.
void ItemInventory::_AddLootItemPowers(const Structs::LootEntry* entry, ItemInstance* item, int a, int b, int c) {
    const int powerListId = entry->ItemPowerList;
    if (powerListId == -1) {
        return;
    }
    if (powerListId < 0 || static_cast<std::uint32_t>(powerListId) >= Arrays::ItemPowerList::size) {
        ReportAssert(kLootsSource,
                     "lootEntry->ItemPowerList >= 0 && lootEntry->ItemPowerList < (int)Arrays::ItemPowerList::size",
                     408);
        return;
    }
    const std::uint32_t probQuantity = (b == -1) ? static_cast<std::uint32_t>(_GetProbQuantity(entry->NumPowerProbs, a >> 8))
                                                 : static_cast<std::uint32_t>(b);
    const Structs::ItemPowerEntryList* list =
        TableRow<Structs::ItemPowerEntryList>(Arrays::ItemPowerList::members, powerListId);
    const auto* elements = static_cast<const Structs::ItemPowerEntry*>(list->list_entries);
    const std::uint32_t count = list->list_entriesSize;
    (void)ReadDebugSwitch("isTracingItemInventory_Loot");
    (void)ReadDebugSwitch("isTracingItemInventory_Loot");

    if (probQuantity >= count) {
        for (std::uint32_t j = 0; j < count; ++j) {
            item->AddPower(elements[j].Power, c);
        }
        return;
    }

    // Attribute ids already used by the powers added so far. The original keeps them in an std::set<int>.
    std::set<int> used;
    std::uint32_t clashes = 0;
    while (probQuantity > static_cast<std::uint32_t>(item->GetNumPowers())) {
        const int pick = _GetRandomItemPowerEntry(*list);
        const int powerId = elements[pick].Power;
        if (powerId < 0 || static_cast<std::uint32_t>(powerId) >= Arrays::ItemPowerTable::size) {
            ReportAssert(kLootsSource,
                         "powerEntry.Power >= 0 && powerEntry.Power < (int)Arrays::ItemPowerTable::size", 443);
            return;
        }
        const Structs::ItemPowerRef* power = TableRow<Structs::ItemPowerRef>(Arrays::ItemPowerTable::members, powerId);
        if (power->AttrMonopoly < 0 || static_cast<std::uint32_t>(power->AttrMonopoly) >= Arrays::ItemBonusAttrMonopoly::size) {
            ReportAssert(kLootsSource,
                         "power.AttrMonopoly >= 0 && power.AttrMonopoly < (int)Arrays::ItemBonusAttrMonopoly::size",
                         446);
            return;
        }
        const Structs::ItemBonusAttrList* monopoly =
            TableRow<Structs::ItemBonusAttrList>(Arrays::ItemBonusAttrMonopoly::members, power->AttrMonopoly);
        const auto* monopolyIds = static_cast<const std::int32_t*>(monopoly->list_entries);
        bool clash = false;
        for (std::uint32_t k = 0; k < monopoly->list_entriesSize; ++k) {
            if (used.count(monopolyIds[k]) != 0) {
                clash = true;
                break;
            }
        }
        if (clash) {
            ++clashes;
            (void)ReadDebugSwitch("isTracingItemInventory_Loot");
            if (clashes > 9) {
                break;
            }
            continue;
        }
        item->AddPower(powerId, c);
        const auto* attrs = static_cast<const Structs::AttrBonusEntry*>(power->AttrBonusList);
        for (std::uint32_t k = 0; k < power->AttrBonusListSize; ++k) {
            used.insert(attrs[k].Attr);
        }
        clashes = 0;
    }

    if (probQuantity > static_cast<std::uint32_t>(item->GetNumPowers())) {
        for (std::uint32_t i = 0; i < count; ++i) {
            const int powerId = elements[i].Power;
            const Structs::ItemPowerRef* power =
                TableRow<Structs::ItemPowerRef>(Arrays::ItemPowerTable::members, powerId);
            const Structs::ItemBonusAttrList* monopoly =
                TableRow<Structs::ItemBonusAttrList>(Arrays::ItemBonusAttrMonopoly::members, power->AttrMonopoly);
            const auto* monopolyIds = static_cast<const std::int32_t*>(monopoly->list_entries);
            bool clash = false;
            for (std::uint32_t k = 0; k < monopoly->list_entriesSize; ++k) {
                if (used.count(monopolyIds[k]) != 0) {
                    clash = true;
                    break;
                }
            }
            if (clash) {
                continue;
            }
            item->AddPower(powerId, c);
            if (probQuantity <= static_cast<std::uint32_t>(item->GetNumPowers())) {
                break;
            }
            const auto* attrs = static_cast<const Structs::AttrBonusEntry*>(power->AttrBonusList);
            for (std::uint32_t k = 0; k < power->AttrBonusListSize; ++k) {
                used.insert(attrs[k].Attr);
            }
        }
    }
}
