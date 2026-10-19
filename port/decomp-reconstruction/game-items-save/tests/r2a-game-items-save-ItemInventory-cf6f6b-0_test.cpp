// Test for the ItemInventory query batch r2a-game-items-save-ItemInventory-cf6f6b-0
// (game-items-save/src/r2a-game-items-save-ItemInventory-cf6f6b-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked alone. The calls it makes into other batches are small stand-ins here: GetCurrentEquipSet,
// GetNumItems, GetItem, the ItemInstance methods (constructor, destructor, GetItemId, GetItem, IsEquippable, operator==,
// UpdateLocalization) and the ItemInventory constructor, destructor and virtual slots (the vtable needs them). The
// stand-ins are simplified on purpose; the checks cover the batch source's own logic. The Character the equip gates read
// is a zeroed buffer: only its CharProperties sheet words m_props.m_w203 (+0x1320) and m_props.m_w204 (+0x1324) are used.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);              \
            ++g_failures;                                                    \
        }                                                                    \
    } while (0)

constexpr int kRowCount = 16;
constexpr int kTorso = 1;          // type 0, category 0 (slot 0)
constexpr int kHands = 2;          // type 1, category 1 (hands pair)
constexpr int kTwoHander = 3;      // type 1, category -4 (two-hander)
constexpr int kRanged = 4;         // type 4, category -4 (not a plain type)
constexpr int kHandsPair = 5;      // type 1, category -3 (slots 1 and 2)
constexpr int kFolded = 6;         // type 1, category -2 (slots 5 and 6)
constexpr int kNoCategory = 7;     // type 1, category -1
constexpr int kShield = 8;         // type 6, category 2 (slot 2)
constexpr int kNotEquippable = 9;  // type 1, category 0, not equippable
constexpr int kPotion = 10;        // type 14, category 0

struct RowStorage {
    alignas(8) unsigned char bytes[sizeof(Structs::Item)] = {};
};
RowStorage g_rows[kRowCount];
bool g_equippable[kRowCount];
int g_updateLocalizationCalls = 0;

Structs::Item* RowOf(int id) {
    return reinterpret_cast<Structs::Item*>(g_rows[id].bytes);
}

void SetRow(int id, int type, int category) {
    Structs::Item* row = RowOf(id);
    row->Type = type;      // +0x58
    row->EquipmentSlottingType = category;  // +0x68
}

// A zeroed Character buffer. Only the sheet words the equip gates read are written.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];

Character* MakeCharacter(int hands1320, int twoHander1324) {
    Character* c = reinterpret_cast<Character*>(g_characterStorage);
    c->m_props.Special_Equip_Main_In_Offhand = hands1320;     // Character +0x1320
    c->m_props.Special_Equip_2H_In_One = twoHander1324; // Character +0x1324
    return c;
}

ItemInstance* NewItem(int id, unsigned int qty = 1) {
    return new ItemInstance(id, qty);
}

// Adds an inventory entry with the given equipment slot per set (-1 = not equipped).
void AddEntry(ItemInventory& inv, ItemInstance* item, int set0, int set1) {
    ItemInventory::ItemSlot* slot = new ItemInventory::ItemSlot();
    slot->m_item = item;
    slot->m_equipSlot[0] = static_cast<std::int8_t>(set0);
    slot->m_equipSlot[1] = static_cast<std::int8_t>(set1);
    inv.m_items.push_back(slot);
}

// A test inventory: nine slots per equipment set, no character until a test sets one.
void InitInventory(ItemInventory& inv) {
    inv.m_character = nullptr;
    inv.m_potion = nullptr;
    inv.m_equipSet = 0;
    inv.m_equipment.assign(2, std::vector<ItemInventory::ItemSlot*>(9, nullptr));
}

}  // namespace

// ---- Stand-ins for the calls into other batches ----

ItemInstance::ItemInstance(int itemId, unsigned int qty) : m_itemId(itemId) {
    m_qty = static_cast<std::int16_t>(qty);
}

ItemInstance::~ItemInstance() {}

int ItemInstance::GetItemId() const {
    return m_itemId;
}

const Structs::Item* ItemInstance::GetItem() const {
    return RowOf(m_itemId);
}

bool ItemInstance::IsEquippable() const {
    return g_equippable[m_itemId];
}

bool ItemInstance::operator==(const ItemInstance& other) const {
    return m_itemId == other.m_itemId;
}

void ItemInstance::UpdateLocalization() {
    ++g_updateLocalizationCalls;
}

ItemInventory::ItemInventory() {
    m_character = nullptr;
    m_potion = nullptr;
    m_equipSet = 0;
    m_gold = 0;
    m_maxGold = 0x7fffffff;
    m_maxPotions = -1;
    m_dropAllLoot = false;
    m_infiniteInventory = false;
}

ItemInventory::~ItemInventory() {}

bool ItemInventory::CanRangeAttack() const { return false; }
bool ItemInventory::CanRangeAttack(int&, int&, int&) const { return false; }
int ItemInventory::EquipItemAuto(unsigned int) { return 0; }
int ItemInventory::UnEquipItemAuto(unsigned int) { return 0; }
int ItemInventory::EquipItemToSlot(unsigned int, unsigned int) { return 0; }
int ItemInventory::EquipSlotAuto(unsigned int, Character*) { return 0; }
void ItemInventory::UnEquipItemFromSlot(unsigned int, int) {}

int ItemInventory::GetNumItems() const {
    return static_cast<int>(m_items.size());
}

ItemInstance* ItemInventory::GetItem(unsigned int idx) {
    return idx < m_items.size() ? m_items[idx]->m_item : nullptr;
}

int ItemInventory::GetCurrentEquipSet(int slot) const {
    if (slot < 0 || static_cast<unsigned int>(slot) - 1u <= 1u) {
        return m_equipSet;
    }
    return 0;
}

// ---- Checks ----

namespace {

void TestGetNumPotions() {
    ItemInventory inv;
    InitInventory(inv);
    CHECK(inv.GetNumPotions() == 0);
    inv.m_potion = NewItem(kPotion, 5);
    CHECK(inv.GetNumPotions() == 5);
    inv.m_potion->m_qty = 12;
    CHECK(inv.GetNumPotions() == 12);
}

void TestFindItem() {
    ItemInventory inv;
    InitInventory(inv);
    ItemInstance* torso = NewItem(kTorso);
    ItemInstance* hands = NewItem(kHands);
    AddEntry(inv, torso, -1, -1);
    AddEntry(inv, hands, -1, -1);
    ItemInstance* potion = NewItem(kPotion, 3);

    // No potion stack: the inventory is searched in order.
    CHECK(inv.FindItem(kHands) == hands);
    CHECK(inv.FindItem(kTorso) == torso);
    CHECK(inv.FindItem(kShield) == nullptr);

    // A potion stack whose id matches answers first.
    inv.m_potion = potion;
    CHECK(inv.FindItem(kPotion) == potion);
    CHECK(inv.FindItem(kHands) == hands);

    // A potion stack with another id does not answer; the inventory is searched.
    CHECK(inv.FindItem(kShield) == nullptr);
    inv.m_potion = nullptr;
    CHECK(inv.FindItem(kPotion) == nullptr);
}

void TestIsItemEquipped() {
    ItemInventory inv;
    InitInventory(inv);
    g_equippable[kTorso] = true;
    g_equippable[kHands] = true;
    SetRow(kTorso, 0, 0);
    SetRow(kHands, 1, 1);
    SetRow(kFolded, 1, -2);
    SetRow(kNoCategory, 1, -1);

    AddEntry(inv, NewItem(kTorso), -1, -1);      // 0: not equipped
    AddEntry(inv, NewItem(kHands), 1, -1);       // 1: set 0, slot 1
    AddEntry(inv, NewItem(kFolded), 4, -1);      // 2: category -2 folds to 5, set 0
    AddEntry(inv, NewItem(kNoCategory), -1, 2);  // 3: category -1 uses the current set

    CHECK(!inv.IsItemEquipped(0));
    CHECK(inv.IsItemEquipped(1));
    CHECK(inv.IsItemEquipped(2));
    // Set 0 is current: the category -1 entry is equipped only through set 0.
    CHECK(!inv.IsItemEquipped(3));
    inv.m_equipSet = 1;
    CHECK(!inv.IsItemEquipped(1));  // set 1 is now current for category 1, and entry 1 has nothing in set 1
    CHECK(inv.IsItemEquipped(3));   // set 1 entry is 2
    CHECK(inv.IsItemEquipped(2));   // category -2 folds to 5, which always uses set 0

    // Out of range: no crash, not equipped (gAssertLevel 0).
    CHECK(!inv.IsItemEquipped(99));

    // A slot with no item object answers false.
    ItemInventory::ItemSlot* empty = new ItemInventory::ItemSlot();
    empty->m_equipSlot[0] = 3;
    inv.m_items.push_back(empty);
    CHECK(!inv.IsItemEquipped(4));
}

void TestIsItemEquippableOneArg() {
    ItemInventory inv;
    InitInventory(inv);
    g_equippable[kTorso] = true;
    g_equippable[kNotEquippable] = false;
    AddEntry(inv, NewItem(kTorso), -1, -1);
    AddEntry(inv, NewItem(kNotEquippable), -1, -1);
    ItemInventory::ItemSlot* empty = new ItemInventory::ItemSlot();
    inv.m_items.push_back(empty);

    CHECK(inv.IsItemEquippable(0u));
    CHECK(!inv.IsItemEquippable(1u));
    CHECK(!inv.IsItemEquippable(2u));  // no item object
    CHECK(!inv.IsItemEquippable(99u));
}

void TestIsItemEquippableTwoArg() {
    ItemInventory inv;
    InitInventory(inv);
    for (int id = 0; id < kRowCount; ++id) {
        g_equippable[id] = true;
    }
    g_equippable[kNotEquippable] = false;
    SetRow(kTorso, 0, 0);
    SetRow(kHands, 1, 1);
    SetRow(kTwoHander, 1, -4);
    SetRow(kRanged, 4, -4);
    SetRow(kHandsPair, 1, -3);
    SetRow(kFolded, 1, -2);
    SetRow(kNoCategory, 1, -1);
    SetRow(kShield, 6, 2);
    SetRow(kNotEquippable, 1, 0);

    inv.m_character = MakeCharacter(0, 0);
    AddEntry(inv, NewItem(kTorso), -1, -1);        // 0
    AddEntry(inv, NewItem(kHands), -1, -1);        // 1
    AddEntry(inv, NewItem(kTwoHander), -1, -1);    // 2
    AddEntry(inv, NewItem(kRanged), -1, -1);       // 3
    AddEntry(inv, NewItem(kHandsPair), -1, -1);    // 4
    AddEntry(inv, NewItem(kFolded), -1, -1);       // 5
    AddEntry(inv, NewItem(kNoCategory), -1, -1);   // 6
    AddEntry(inv, NewItem(kShield), -1, -1);       // 7
    AddEntry(inv, NewItem(kNotEquippable), -1, -1); // 8

    // Category 0: exactly its own slot.
    CHECK(inv.IsItemEquippable(0u, 0u));
    CHECK(!inv.IsItemEquippable(0u, 1u));
    CHECK(!inv.IsItemEquippable(0u, 8u));

    // Category 1 with the hands gate (+0x1320) clear: slot 1 only.
    CHECK(inv.IsItemEquippable(1u, 1u));
    CHECK(!inv.IsItemEquippable(1u, 2u));
    // With the gate set: slots 1 and 2.
    inv.m_character = MakeCharacter(1, 0);
    CHECK(inv.IsItemEquippable(1u, 1u));
    CHECK(inv.IsItemEquippable(1u, 2u));
    CHECK(!inv.IsItemEquippable(1u, 3u));

    // Category -4 (two-hander) of a plain type: the +0x1324 gate decides.
    inv.m_character = MakeCharacter(0, 0);
    CHECK(inv.IsItemEquippable(2u, 1u));
    CHECK(!inv.IsItemEquippable(2u, 2u));
    inv.m_character = MakeCharacter(1, 1);
    CHECK(inv.IsItemEquippable(2u, 1u));   // category 1: main hand only
    CHECK(!inv.IsItemEquippable(2u, 2u));

    // Category -4 of a type 4 item: not a plain type, so the +0x1324 gate is not read; slot 1 only.
    inv.m_character = MakeCharacter(0, 1);
    CHECK(inv.IsItemEquippable(3u, 1u));
    CHECK(!inv.IsItemEquippable(3u, 2u));

    // Category -3: the hands pair, slots 1 and 2.
    CHECK(inv.IsItemEquippable(4u, 1u));
    CHECK(inv.IsItemEquippable(4u, 2u));
    CHECK(!inv.IsItemEquippable(4u, 3u));

    // Category -2: slots 5 and 6.
    CHECK(inv.IsItemEquippable(5u, 5u));
    CHECK(inv.IsItemEquippable(5u, 6u));
    CHECK(!inv.IsItemEquippable(5u, 4u));

    // Category -1: nothing.
    CHECK(!inv.IsItemEquippable(6u, 1u));
    CHECK(!inv.IsItemEquippable(6u, 2u));

    // Category 2 (shield): slot 2 only.
    CHECK(inv.IsItemEquippable(7u, 2u));
    CHECK(!inv.IsItemEquippable(7u, 1u));

    // Not equippable, and an index past the inventory.
    CHECK(!inv.IsItemEquippable(8u, 0u));
    CHECK(!inv.IsItemEquippable(99u, 0u));
}

void TestUpdateLocalizationForItems() {
    ItemInventory inv;
    InitInventory(inv);
    g_updateLocalizationCalls = 0;
    inv.UpdateLocalizationForItems();
    CHECK(g_updateLocalizationCalls == 0);

    AddEntry(inv, NewItem(kTorso), -1, -1);
    AddEntry(inv, NewItem(kHands), -1, -1);
    ItemInventory::ItemSlot* empty = new ItemInventory::ItemSlot();
    inv.m_items.push_back(empty);
    g_updateLocalizationCalls = 0;
    inv.UpdateLocalizationForItems();
    CHECK(g_updateLocalizationCalls == 2);  // the empty entry is skipped
}

void TestHasItemInstanceLike() {
    ItemInventory inv;
    InitInventory(inv);
    g_equippable[kTorso] = true;
    ItemInstance* equippedTorso = NewItem(kTorso);
    ItemInstance* freeTorso = NewItem(kTorso);
    ItemInstance* hands = NewItem(kHands);
    AddEntry(inv, equippedTorso, 0, -1);  // 0: equipped in set 0 (the current set)
    AddEntry(inv, freeTorso, -1, -1);     // 1: an equal item, not equipped
    AddEntry(inv, hands, -1, -1);         // 2

    unsigned int idx = 99;
    ItemInstance query(kTorso, 1);
    CHECK(inv._HasItemInstanceLike(&query, idx) == 1);
    CHECK(idx == 1u);  // index 0 is equipped, so the match is index 1

    // The same object never matches itself.
    idx = 99;
    CHECK(inv._HasItemInstanceLike(freeTorso, idx) == 0);
    CHECK(idx == 99u);

    // No equal item.
    ItemInstance other(kShield, 1);
    idx = 99;
    CHECK(inv._HasItemInstanceLike(&other, idx) == 0);
    CHECK(idx == 99u);
}

}  // namespace

int main() {
    TestGetNumPotions();
    TestFindItem();
    TestIsItemEquipped();
    TestIsItemEquippableOneArg();
    TestIsItemEquippableTwoArg();
    TestUpdateLocalizationForItems();
    TestHasItemInstanceLike();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("r2a-game-items-save-ItemInventory-cf6f6b-0: all checks passed\n");
    return 0;
}
