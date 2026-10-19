// Test for the ItemInventory equipment batch (game-items-save/src/g1-game-items-save-ItemInventory-cf6f6b-2.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The equipment arrays are private, so this translation unit opens the class with a test-only #define. The other
// batches are not linked: the owner constructor, the lookups that live in other batches (GetCurrentEquipSet,
// GetItem, IsItemEquipped, _HasItemInstanceLike, _DelItemInstance), the ItemInstance methods and the virtual slots
// 4 to 7 are small stand-ins here. Those stand-ins are simplified on purpose; the checks cover the batch source's
// bookkeeping, not the stand-ins. The item rows are Structs::Item bytes read through the pydata member names.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <map>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#define private public
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#undef private

int gAssertLevel = 0;

namespace {

constexpr int kRowCount = 16;
constexpr int kTorsoId = 4;       // category 0
constexpr int kBowId = 1;         // ranged: type 4, subtype 4
constexpr int kSwordId = 2;       // one-handed melee: type 1, subtype 2
constexpr int kShieldId = 3;      // off-hand: type 6
constexpr int kStackableId = 7;   // stackable, feet
constexpr int kFoldedId = 5;      // category -2 (folds to 5)

struct RowStorage {
    alignas(8) unsigned char bytes[sizeof(Structs::Item)] = {};
};
RowStorage g_rows[kRowCount];

// The row of an item id. Only the pydata member names are used on it; no Structs::Item object is constructed.
Structs::Item* RowOf(int id) {
    return reinterpret_cast<Structs::Item*>(g_rows[id].bytes);
}

void SetRow(int id, int type, int category, int subtype, int a, int b, int c) {
    Structs::Item* row = RowOf(id);
    row->Type = type;      // +0x58
    row->EquipmentSlottingType = category;  // +0x68
    row->Param3 = subtype;   // +0x94
    row->Param4 = a;         // +0x98
    row->Param5 = b;         // +0x9c
    row->Param6 = c;         // +0xa0
}

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

ItemInventory::ItemSlot* AddItem(ItemInventory& inv, int id, int qty) {
    auto* slot = static_cast<ItemInventory::ItemSlot*>(std::malloc(sizeof(ItemInventory::ItemSlot)));
    slot->m_item = new ItemInstance(id, static_cast<unsigned int>(qty));
    slot->m_equipSlot[0] = -1;
    slot->m_equipSlot[1] = -1;
    inv.m_items.push_back(slot);
    return slot;
}

void Equip(ItemInventory& inv, ItemInventory::ItemSlot* slot, int set, int slotIdx) {
    inv.m_equipment[static_cast<std::size_t>(set)][static_cast<std::size_t>(slotIdx)] = slot;
    slot->m_equipSlot[set] = static_cast<std::int8_t>(slotIdx);
}

}  // namespace

// ---- Stand-ins for the parts of the class that other batches reconstruct ----

ItemInventory::ItemInventory()
    : m_character(nullptr),
      m_gold(0),
      m_potion(nullptr),
      m_maxGold(0x7FFFFFFF),
      m_maxPotions(-1),
      m_dropAllLoot(false),
      m_equipSet(0),
      m_infiniteInventory(false) {
    for (int set = 0; set < 2; ++set) {
        m_equipment.push_back(std::vector<ItemSlot*>(9u, nullptr));
    }
}

ItemInventory::~ItemInventory() {
    for (ItemSlot* slot : m_items) {
        delete slot->m_item;
        std::free(slot);
    }
    m_items.clear();
}

// Same rule as the -0 batch: negative slots and slots 1 and 2 report m_equipSet, every other slot reports set 0.
int ItemInventory::GetCurrentEquipSet(int slot) const {
    if (slot < 0 || static_cast<unsigned int>(slot) - 1u <= 1u) {
        return m_equipSet;
    }
    return 0;
}

ItemInstance* ItemInventory::GetItem(unsigned int idx) {
    if (idx < m_items.size()) {
        return m_items[idx]->m_item;
    }
    return nullptr;
}

// Stand-in: an item is equipped when either set holds it.
bool ItemInventory::IsItemEquipped(unsigned int idx) const {
    const ItemSlot* slot = m_items[idx];
    return slot->m_equipSlot[0] != -1 || slot->m_equipSlot[1] != -1;
}

// Stand-in: the first other slot whose item has the same id (not the item itself).
int ItemInventory::_HasItemInstanceLike(const ItemInstance* item, unsigned int& idx) {
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        const ItemInstance* other = m_items[i]->m_item;
        if (other != item && other->m_itemId == item->m_itemId) {
            idx = static_cast<unsigned int>(i);
            return 1;
        }
    }
    return 0;
}

// Stand-in: removes the slot that holds the item, then deletes the item and frees the slot.
void ItemInventory::_DelItemInstance(ItemInstance* item) {
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        if (m_items[i]->m_item == item) {
            ItemSlot* slot = m_items[i];
            if (m_potion == item) {
                m_potion = nullptr;
            }
            delete item;
            std::free(slot);
            m_items.erase(m_items.begin() + static_cast<std::ptrdiff_t>(i));
            return;
        }
    }
}

int ItemInventory::EquipItemAuto(unsigned int) {
    return 0;
}

int ItemInventory::UnEquipItemAuto(unsigned int) {
    return 0;
}

int ItemInventory::EquipItemToSlot(unsigned int, unsigned int) {
    return 0;
}

int ItemInventory::EquipSlotAuto(unsigned int, Character*) {
    return 0;
}

ItemInstance::ItemInstance(int itemId, unsigned int qty)
    : m_itemId(itemId),
      m_qty(static_cast<std::int16_t>(qty)),
      m_value(0),
      m_pickUpType(-1),
      unk_68(true),
      unk_69(false) {}

ItemInstance::~ItemInstance() {}

// Stand-in: only the stackable test id stacks.
bool ItemInstance::IsStackable() const {
    return m_itemId == kStackableId;
}

const Structs::Item* ItemInstance::GetItem() const {
    return RowOf(m_itemId);
}

void ItemInstance::AddQty(int delta) {
    m_qty = static_cast<std::int16_t>(m_qty + delta);
}

// ---- Checks ----

namespace {

void TestModularCategoryNames() {
    ItemInventory inv;
    Check(std::strcmp(inv.GetModularCategoryName(0), "MC_Torso") == 0, "category 0 is MC_Torso");
    Check(std::strcmp(inv.GetModularCategoryName(1), "MC_RWeapon") == 0, "category 1 is MC_RWeapon");
    Check(std::strcmp(inv.GetModularCategoryName(2), "MC_LWeapon") == 0, "category 2 is MC_LWeapon");
    Check(std::strcmp(inv.GetModularCategoryName(3), "MC_Feet") == 0, "category 3 is MC_Feet");
    Check(std::strcmp(inv.GetModularCategoryName(4), "MC_Hands") == 0, "category 4 is MC_Hands");
    Check(std::strcmp(inv.GetModularCategoryName(8), "MC_Head") == 0, "category 8 is MC_Head");
    Check(inv.GetModularCategoryName(5) == nullptr, "category 5 has no name");
    Check(inv.GetModularCategoryName(9) == nullptr, "category 9 has no name");
}

void TestLeftHandSlot() {
    ItemInventory inv;
    Check(inv.IsEquipmentSlotLeftHand(2), "slot 2 is the left hand");
    Check(!inv.IsEquipmentSlotLeftHand(1), "slot 1 is not the left hand");
    Check(!inv.IsEquipmentSlotLeftHand(0), "slot 0 is not the left hand");
    Check(!inv.IsEquipmentSlotLeftHand(3), "slot 3 is not the left hand");
    Check(!inv.IsEquipmentSlotLeftHand(9), "slot 9 (past the set) is not the left hand");
}

void TestRangedMainHand() {
    ItemInventory inv;
    const ItemInventory& cinv = inv;
    ItemInventory::ItemSlot* bow = AddItem(inv, kBowId, 1);
    Equip(inv, bow, 0, 1);

    Check(inv.HasMainHandWeapon(), "main hand is taken by the bow");
    Check(inv.GetEquippedItem(1) == bow->m_item, "GetEquippedItem(1) is the bow");
    Check(cinv.GetEquippedItem(1) == bow->m_item, "const GetEquippedItem(1) is the bow");
    Check(inv.GetEquippedItem(0) == nullptr, "slot 0 is empty");
    Check(inv.GetEquippedItem(9) == nullptr, "slot 9 (past the set) gives null");
    Check(inv.IsEquipmentSlotTaken(1), "slot 1 is taken");
    Check(!inv.IsEquipmentSlotTaken(0), "slot 0 is free");
    Check(!inv.IsEquipmentSlotTaken(9), "slot 9 (past the set) is not taken");

    Check(inv.HasRangedWeapon(), "bow is a ranged weapon");
    Check(inv.HasBow(), "bow subtype 4");
    Check(!inv.HasStaff(), "bow is not a staff");
    Check(!inv.HasAxeOrMace(), "bow is not an axe or mace");
    Check(!inv.HasShield(), "no shield");
    Check(!inv.HasOffHandWeapon(), "no off-hand weapon");
    Check(!inv.IsDualWielding(), "not dual wielding");

    Check(cinv.CanRangeAttack(), "CanRangeAttack() through the virtual slot");
    int a = -1;
    int b = -1;
    int c = -1;
    Check(cinv.CanRangeAttack(a, b, c) && a == 10 && b == 20 && c == 30, "range outputs are +0x98, +0x9c, +0xa0");
    int melee = -1;
    Check(!inv.CanMeleeAttack(melee), "no melee attack while shooting");
}

void TestSwordAfterBow() {
    ItemInventory inv;
    ItemInventory::ItemSlot* bow = AddItem(inv, kBowId, 1);
    Equip(inv, bow, 0, 1);
    inv.UnEquipItemFromSlot(1, -1);
    Check(!inv.HasMainHandWeapon(), "bow released by the virtual slot 8");
    Check(bow->m_equipSlot[0] == -1, "bow forgot its slot in set 0");
    Check(!inv.IsEquipmentSlotTaken(1), "slot 1 free after release");

    ItemInventory::ItemSlot* sword = AddItem(inv, kSwordId, 1);
    Equip(inv, sword, 0, 1);
    Check(inv.HasAxeOrMace(), "sword has subtype 2 (axe or mace)");
    Check(!inv.HasRangedWeapon(), "sword is not ranged");
    Check(!inv.CanRangeAttack(), "no ranged attack with a sword");
    int a = -1;
    int b = -1;
    int c = -1;
    Check(!inv.CanRangeAttack(a, b, c), "CanRangeAttack(a, b, c) is false with a sword");
    int melee = -1;
    Check(inv.CanMeleeAttack(melee) && melee == 21, "melee output is the sword's +0x9c");
}

void TestEmptyMainHand() {
    ItemInventory inv;
    int melee = -1;
    Check(!inv.HasMainHandWeapon(), "empty main hand");
    Check(inv.CanMeleeAttack(melee) && melee == 0, "empty main hand gives melee output 0");
    Check(!inv.HasShield(), "empty main hand: no shield");
}

void TestStackReleasedIntoInventory() {
    ItemInventory inv;
    ItemInventory::ItemSlot* stackA = AddItem(inv, kStackableId, 3);
    Equip(inv, stackA, 0, 3);
    AddItem(inv, kStackableId, 5);
    ItemInventory::ItemSlot* stackB = inv.m_items.back();
    const std::size_t before = inv.m_items.size();

    inv.UnEquipItemFromSlot(3, -1);
    Check(inv.m_items.size() == before - 1, "equipped stack is deleted once it merges");
    Check(stackB->m_item->m_qty == 8, "the like item gained the released quantity");
    Check(!inv.IsEquipmentSlotTaken(3), "slot 3 is free after release");
}

void TestUnEquipOutOfRange() {
    ItemInventory inv;
    ItemInventory::ItemSlot* sword = AddItem(inv, kSwordId, 1);
    Equip(inv, sword, 0, 1);
    inv.UnEquipItemFromSlot(9, -1);
    Check(inv.m_equipment[0].size() == 9u, "set 0 keeps nine slots");
    Check(inv.IsEquipmentSlotTaken(1), "out-of-range release changes nothing");
}

void TestSecondEquipmentSet() {
    ItemInventory inv;
    inv.m_equipSet = 1;
    ItemInventory::ItemSlot* shield = AddItem(inv, kShieldId, 1);
    Equip(inv, shield, 1, 2);
    Check(inv.HasShield(), "shield is in set 1, the current set");
    Check(!inv.HasOffHandWeapon(), "a shield is not an off-hand weapon");

    inv.m_equipSet = 0;
    Check(!inv.HasShield(), "set 0 holds no shield");
    Check(!inv.IsEquipmentSlotTaken(2), "slot 2 of set 0 is free");
}

void TestOffHandAndShield() {
    ItemInventory inv;
    ItemInventory::ItemSlot* sword = AddItem(inv, kSwordId, 1);
    Equip(inv, sword, 0, 2);
    Check(inv.HasOffHandWeapon(), "a sword in the off hand is an off-hand weapon");
    Check(inv.IsDualWielding(), "IsDualWielding follows HasOffHandWeapon");
    Check(!inv.HasShield(), "a sword is not a shield");

    inv.UnEquipItemFromSlot(2, -1);
    ItemInventory::ItemSlot* shield = AddItem(inv, kShieldId, 1);
    Equip(inv, shield, 0, 2);
    Check(inv.HasShield(), "shield in the off hand");
    Check(!inv.HasOffHandWeapon(), "shield is not an off-hand weapon");
    Check(!inv.IsDualWielding(), "no dual wielding with a shield");
}

void TestUnEquipAutoByCategory() {
    ItemInventory inv;
    ItemInventory::ItemSlot* torso = AddItem(inv, kTorsoId, 1);
    Equip(inv, torso, 0, 0);
    inv._UnEquipItemAuto(0);
    Check(!inv.IsEquipmentSlotTaken(0), "torso (category 0) released through its slot");
    Check(torso->m_equipSlot[0] == -1, "torso forgot its slot");

    // Category -2 folds to 5, so the item is released from slot 5 of the current set.
    ItemInventory::ItemSlot* folded = AddItem(inv, kFoldedId, 1);
    Equip(inv, folded, 0, 5);
    inv._UnEquipItemAuto(1);
    Check(!inv.IsEquipmentSlotTaken(5), "category -2 folds to slot 5 and is released");

    inv._UnEquipItemAuto(99);  // past the inventory: nothing to release, no crash
    Check(inv.m_items.size() == 2u, "out-of-range auto release changes nothing");
}

}  // namespace

int main() {
    // Item rows: type (+0x58), equipment category (+0x68), subtype (+0x94), then the three attack words.
    SetRow(kBowId, 4, 1, 4, 10, 20, 30);
    SetRow(kSwordId, 1, 1, 2, 11, 21, 31);
    SetRow(kShieldId, 6, 2, 0, 0, 0, 0);
    SetRow(kStackableId, 1, 3, 0, 0, 0, 0);
    SetRow(kTorsoId, 1, 0, 0, 0, 0, 0);
    SetRow(kFoldedId, 1, -2, 0, 0, 0, 0);

    TestModularCategoryNames();
    TestLeftHandSlot();
    TestRangedMainHand();
    TestSwordAfterBow();
    TestEmptyMainHand();
    TestStackReleasedIntoInventory();
    TestUnEquipOutOfRange();
    TestSecondEquipmentSet();
    TestOffHandAndShield();
    TestUnEquipAutoByCategory();

    std::printf("%s: %d failure(s)\n", g_failures == 0 ? "PASS" : "FAIL", g_failures);
    return g_failures == 0 ? 0 : 1;
}
