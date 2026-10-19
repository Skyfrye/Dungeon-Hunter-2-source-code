// Test for batch r2a-game-app-global-f216b6-3. Covers the six armor-set trophy checks: Marksman, Angelic and Rage compare
// the m_w34 word of each equipped item's Structs::Item row, and Archmage, Jester and Lordly compare the item ids. The batch
// source reads the equipped items through ItemInventory::GetEquippedItem(), ItemInstance::GetItemId() and
// ItemInstance::GetItem(), and looks the set name up with Arrays::GetMemberIDByString<Arrays::TrophyTable>. This file defines
// those engine symbols as small stubs: the equipped items are raw storage slots, and the test sets their ids and rows.
// Exit status 0 means every check passed.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/global/TrophyCheckArmorSet.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// ---- Stubs for the engine symbols the batch source references. ----

// Structs::Item, ItemBase: the virtual members that the Item vtable refers to. The test only builds Item rows, so these
// bodies do nothing.
namespace Structs {
ItemBase::~ItemBase() {}
void ItemBase::finalize() {}
void ItemBase::read(IStreamBase*) {}
void Item::finalize() {}
void Item::read(IStreamBase*) {}
}  // namespace Structs

namespace {

constexpr int kSlotCount = 9;

// Storage for the equipped item of each slot. The objects are never constructed; only their addresses identify the slot.
alignas(ItemInstance) unsigned char g_slotItems[kSlotCount][sizeof(ItemInstance)];
// Item id of each slot, set by the checks below.
int g_slotIds[kSlotCount] = {};
// Structs::Item row of each slot (its m_w34 word is the armor-set value the checks compare).
Structs::Item g_slotRows[kSlotCount];
// Storage for the inventory the checks receive. Its members are not used.
alignas(ItemInventory) unsigned char g_inventoryStorage[sizeof(ItemInventory)];

// Codes the stub table returns for the set names.
constexpr int kGearArcher = 4;
constexpr int kGearPaladin = 5;
constexpr int kGearBerserker = 6;
constexpr int kGearMage = 1;
constexpr int kGearRogue = 2;
constexpr int kGearWarrior = 3;
constexpr int kUnknownName = 99;

// Slot whose storage the pointer is in, or -1.
int SlotOf(const void* item) {
    const unsigned char* self = static_cast<const unsigned char*>(item);
    for (int slot = 0; slot < kSlotCount; ++slot) {
        if (self == g_slotItems[slot]) {
            return slot;
        }
    }
    return -1;
}

}  // namespace

ItemInstance* ItemInventory::GetEquippedItem(unsigned int slot) {
    return reinterpret_cast<ItemInstance*>(g_slotItems[slot]);
}

int ItemInstance::GetItemId() const {
    const int slot = SlotOf(this);
    return slot < 0 ? -1 : g_slotIds[slot];
}

const Structs::Item* ItemInstance::GetItem() const {
    const int slot = SlotOf(this);
    return slot < 0 ? nullptr : &g_slotRows[slot];
}

namespace Arrays {
template <>
int GetMemberIDByString<TrophyTable>(const char* name) {
    if (std::strcmp(name, "gear_archer") == 0) {
        return kGearArcher;
    }
    if (std::strcmp(name, "gear_paladin") == 0) {
        return kGearPaladin;
    }
    if (std::strcmp(name, "gear_berserker") == 0) {
        return kGearBerserker;
    }
    if (std::strcmp(name, "gear_mage") == 0) {
        return kGearMage;
    }
    if (std::strcmp(name, "gear_rogue") == 0) {
        return kGearRogue;
    }
    if (std::strcmp(name, "gear_warrior") == 0) {
        return kGearWarrior;
    }
    return kUnknownName;
}
}  // namespace Arrays

// ---- Test helpers ----

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

ItemInventory* Inventory() {
    return reinterpret_cast<ItemInventory*>(g_inventoryStorage);
}

// Sets the ids of the five equipment slots the armor sets read: 3, 4, 8, 0 and 7.
void SetFiveSlotIds(int id3, int id4, int id8, int id0, int id7) {
    g_slotIds[3] = id3;
    g_slotIds[4] = id4;
    g_slotIds[8] = id8;
    g_slotIds[0] = id0;
    g_slotIds[7] = id7;
}

// Sets the m_w34 word of the five equipment slots the m_w34 sets read: 3, 4, 8, 0 and 7.
void SetFiveSlotW34(int value3, int value4, int value8, int value0, int value7) {
    g_slotRows[3].ClassRequirement = value3;
    g_slotRows[4].ClassRequirement = value4;
    g_slotRows[8].ClassRequirement = value8;
    g_slotRows[0].ClassRequirement = value0;
    g_slotRows[7].ClassRequirement = value7;
}

void TestMarksmanAngelicRage() {
    SetFiveSlotW34(6, 6, 6, 6, 6);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == kGearArcher, "marksman when every slot has m_w34 6");
    SetFiveSlotW34(6, 6, 6, 6, 5);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == -1, "marksman fails when slot 7 has m_w34 5");
    SetFiveSlotW34(6, 6, 6, 5, 6);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == -1, "marksman fails when slot 0 has m_w34 5");
    SetFiveSlotW34(6, 6, 9, 6, 6);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == -1, "marksman fails when slot 8 has m_w34 9");
    SetFiveSlotW34(6, 7, 6, 6, 6);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == -1, "marksman fails when slot 4 has m_w34 7");
    SetFiveSlotW34(5, 6, 6, 6, 6);
    Check(TrophyCheckArmorSetMarksman(Inventory()) == -1, "marksman fails when slot 3 has m_w34 5");

    SetFiveSlotW34(3, 3, 3, 3, 3);
    Check(TrophyCheckArmorSetAngelic(Inventory()) == kGearPaladin, "angelic when every slot has m_w34 3");
    SetFiveSlotW34(3, 3, 3, 3, 2);
    Check(TrophyCheckArmorSetAngelic(Inventory()) == -1, "angelic fails when slot 7 has m_w34 2");
    SetFiveSlotW34(3, 3, 3, 6, 3);
    Check(TrophyCheckArmorSetAngelic(Inventory()) == -1, "angelic fails when slot 0 has m_w34 6");

    SetFiveSlotW34(2, 2, 2, 2, 2);
    Check(TrophyCheckArmorSetRage(Inventory()) == kGearBerserker, "rage when every slot has m_w34 2");
    SetFiveSlotW34(2, 2, 2, 2, 3);
    Check(TrophyCheckArmorSetRage(Inventory()) == -1, "rage fails when slot 7 has m_w34 3");
    SetFiveSlotW34(2, 4, 2, 2, 2);
    Check(TrophyCheckArmorSetRage(Inventory()) == -1, "rage fails when slot 4 has m_w34 4");

    // A set of another m_w34 value does not match the Rage check: the values are compared, not counted.
    SetFiveSlotW34(3, 3, 3, 3, 3);
    Check(TrophyCheckArmorSetRage(Inventory()) == -1, "angelic items are not rage");
}

void TestArchmage() {
    // Every slot has its lowest id, then its highest id, then the middle id.
    SetFiveSlotIds(289, 325, 361, 217, 253);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == kGearMage, "archmage with the first id of every slot");
    SetFiveSlotIds(291, 327, 363, 219, 255);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == kGearMage, "archmage with the last id of every slot");
    SetFiveSlotIds(290, 326, 362, 218, 254);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == kGearMage, "archmage with the middle id of every slot");

    // One slot outside its list breaks the set, whichever slot it is.
    SetFiveSlotIds(288, 326, 362, 218, 254);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "slot 3 outside its list is not archmage");
    SetFiveSlotIds(290, 328, 362, 218, 254);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "slot 4 outside its list is not archmage");
    SetFiveSlotIds(290, 326, 364, 218, 254);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "slot 8 outside its list is not archmage");
    SetFiveSlotIds(290, 326, 362, 216, 254);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "slot 0 outside its list is not archmage");
    SetFiveSlotIds(290, 326, 362, 218, 256);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "slot 7 outside its list is not archmage");

    // Jester items in the Archmage slots do not make an archmage.
    SetFiveSlotIds(583, 619, 655, 511, 547);
    Check(TrophyCheckArmorSetArchmage(Inventory()) == -1, "jester items are not archmage");
}

void TestJester() {
    SetFiveSlotIds(583, 619, 655, 511, 547);
    Check(TrophyCheckArmorSetJester(Inventory()) == kGearRogue, "jester with the first id of every slot");
    SetFiveSlotIds(585, 621, 657, 513, 549);
    Check(TrophyCheckArmorSetJester(Inventory()) == kGearRogue, "jester with the last id of every slot");

    SetFiveSlotIds(586, 619, 655, 511, 547);
    Check(TrophyCheckArmorSetJester(Inventory()) == -1, "slot 3 outside its list is not jester");
    SetFiveSlotIds(583, 622, 655, 511, 547);
    Check(TrophyCheckArmorSetJester(Inventory()) == -1, "slot 4 outside its list is not jester");
    SetFiveSlotIds(583, 619, 654, 511, 547);
    Check(TrophyCheckArmorSetJester(Inventory()) == -1, "slot 8 outside its list is not jester");
    SetFiveSlotIds(583, 619, 655, 510, 547);
    Check(TrophyCheckArmorSetJester(Inventory()) == -1, "slot 0 outside its list is not jester");
    SetFiveSlotIds(583, 619, 655, 511, 550);
    Check(TrophyCheckArmorSetJester(Inventory()) == -1, "slot 7 outside its list is not jester");
}

void TestLordly() {
    SetFiveSlotIds(844, 880, 916, 772, 808);
    Check(TrophyCheckArmorSetLordly(Inventory()) == kGearWarrior, "lordly with the first id of every slot");
    SetFiveSlotIds(846, 882, 918, 774, 810);
    Check(TrophyCheckArmorSetLordly(Inventory()) == kGearWarrior, "lordly with the last id of every slot");

    SetFiveSlotIds(847, 880, 916, 772, 808);
    Check(TrophyCheckArmorSetLordly(Inventory()) == -1, "slot 3 outside its list is not lordly");
    SetFiveSlotIds(844, 883, 916, 772, 808);
    Check(TrophyCheckArmorSetLordly(Inventory()) == -1, "slot 4 outside its list is not lordly");
    SetFiveSlotIds(844, 880, 919, 772, 808);
    Check(TrophyCheckArmorSetLordly(Inventory()) == -1, "slot 8 outside its list is not lordly");
    SetFiveSlotIds(844, 880, 916, 775, 808);
    Check(TrophyCheckArmorSetLordly(Inventory()) == -1, "slot 0 outside its list is not lordly");
    SetFiveSlotIds(844, 880, 916, 772, 811);
    Check(TrophyCheckArmorSetLordly(Inventory()) == -1, "slot 7 outside its list is not lordly");
}

}  // namespace

int main() {
    TestMarksmanAngelicRage();
    TestArchmage();
    TestJester();
    TestLordly();
    if (g_failures == 0) {
        std::printf("r2a-game-app-global-f216b6-3: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
