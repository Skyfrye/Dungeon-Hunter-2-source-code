// Batch r2a-game-app-global-f216b6-3 (<global>, part 4 of 8): the armor-set trophy checks
// TrophyCheckArmorSet{Marksman,Angelic,Rage,Archmage,Jester,Lordly}(ItemInventory*). Declarations: dh2/global/TrophyCheckArmorSet.hpp.
// The zoom, menu and online natives of this batch are defined in place in g1-game-app-global-f216b6-5.cpp and -6.cpp.
//
// Each check reads the five equipment slots 3, 4, 8, 0 and 7, in that order, through ItemInventory::GetEquippedItem().
// When every slot passes, it returns Arrays::GetMemberIDByString<Arrays::TrophyTable>(name); otherwise it returns -1.
// The original does not test the equipped pointer for null, and neither does the port.
//
// Marksman, Angelic and Rage compare the m_w34 word of the item's Structs::Item row (+0x88) with one value per slot.
// Archmage, Jester and Lordly compare ItemInstance::GetItemId() with three ids per slot.

#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/global/TrophyCheckArmorSet.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace {

// True when the item equipped in slot has m_w34 (+0x88 of its Structs::Item row) equal to value.
bool ArmorSetSlotW34Is(ItemInventory* inventory, unsigned int slot, int value) {
    return inventory->GetEquippedItem(slot)->GetItem()->ClassRequirement == value;
}

// True when the item equipped in slot has one of the three ids of the set. The original tests them in order.
bool ArmorSetSlotItemIdIn(ItemInventory* inventory, unsigned int slot, int id0, int id1, int id2) {
    const int itemId = inventory->GetEquippedItem(slot)->GetItemId();
    return itemId == id0 || itemId == id1 || itemId == id2;
}

}  // namespace

// 0x3fc8e8 int TrophyCheckArmorSetMarksman(ItemInventory*)
// Slots 3, 4, 8, 0 and 7 all have m_w34 == 6, then "gear_archer"; otherwise -1.
int TrophyCheckArmorSetMarksman(ItemInventory* inventory) {
    if (ArmorSetSlotW34Is(inventory, 3, 6) && ArmorSetSlotW34Is(inventory, 4, 6) &&
        ArmorSetSlotW34Is(inventory, 8, 6) && ArmorSetSlotW34Is(inventory, 0, 6) &&
        ArmorSetSlotW34Is(inventory, 7, 6)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_archer");
    }
    return -1;
}

// 0x3fc994 int TrophyCheckArmorSetAngelic(ItemInventory*)
// Slots 3, 4, 8, 0 and 7 all have m_w34 == 3, then "gear_paladin"; otherwise -1.
int TrophyCheckArmorSetAngelic(ItemInventory* inventory) {
    if (ArmorSetSlotW34Is(inventory, 3, 3) && ArmorSetSlotW34Is(inventory, 4, 3) &&
        ArmorSetSlotW34Is(inventory, 8, 3) && ArmorSetSlotW34Is(inventory, 0, 3) &&
        ArmorSetSlotW34Is(inventory, 7, 3)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_paladin");
    }
    return -1;
}

// 0x3fca40 int TrophyCheckArmorSetRage(ItemInventory*)
// Slots 3, 4, 8, 0 and 7 all have m_w34 == 2, then "gear_berserker"; otherwise -1.
int TrophyCheckArmorSetRage(ItemInventory* inventory) {
    if (ArmorSetSlotW34Is(inventory, 3, 2) && ArmorSetSlotW34Is(inventory, 4, 2) &&
        ArmorSetSlotW34Is(inventory, 8, 2) && ArmorSetSlotW34Is(inventory, 0, 2) &&
        ArmorSetSlotW34Is(inventory, 7, 2)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_berserker");
    }
    return -1;
}

// 0x3fcaec int TrophyCheckArmorSetArchmage(ItemInventory*)
// Slot 3 id in {289,290,291}, slot 4 in {325,326,327}, slot 8 in {361,362,363}, slot 0 in {217,218,219} and slot 7 in
// {253,254,255}, then "gear_mage"; otherwise -1.
int TrophyCheckArmorSetArchmage(ItemInventory* inventory) {
    if (ArmorSetSlotItemIdIn(inventory, 3, 289, 290, 291) && ArmorSetSlotItemIdIn(inventory, 4, 325, 326, 327) &&
        ArmorSetSlotItemIdIn(inventory, 8, 361, 362, 363) && ArmorSetSlotItemIdIn(inventory, 0, 217, 218, 219) &&
        ArmorSetSlotItemIdIn(inventory, 7, 253, 254, 255)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_mage");
    }
    return -1;
}

// 0x3fcc98 int TrophyCheckArmorSetJester(ItemInventory*)
// Slot 3 id in {583,584,585}, slot 4 in {619,620,621}, slot 8 in {655,656,657}, slot 0 in {511,512,513} and slot 7 in
// {547,548,549}, then "gear_rogue"; otherwise -1.
int TrophyCheckArmorSetJester(ItemInventory* inventory) {
    if (ArmorSetSlotItemIdIn(inventory, 3, 583, 584, 585) && ArmorSetSlotItemIdIn(inventory, 4, 619, 620, 621) &&
        ArmorSetSlotItemIdIn(inventory, 8, 655, 656, 657) && ArmorSetSlotItemIdIn(inventory, 0, 511, 512, 513) &&
        ArmorSetSlotItemIdIn(inventory, 7, 547, 548, 549)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_rogue");
    }
    return -1;
}

// 0x3fce48 int TrophyCheckArmorSetLordly(ItemInventory*)
// Slot 3 id in {844,845,846}, slot 4 in {880,881,882}, slot 8 in {916,917,918}, slot 0 in {772,773,774} and slot 7 in
// {808,809,810}, then "gear_warrior"; otherwise -1.
int TrophyCheckArmorSetLordly(ItemInventory* inventory) {
    if (ArmorSetSlotItemIdIn(inventory, 3, 844, 845, 846) && ArmorSetSlotItemIdIn(inventory, 4, 880, 881, 882) &&
        ArmorSetSlotItemIdIn(inventory, 8, 916, 917, 918) && ArmorSetSlotItemIdIn(inventory, 0, 772, 773, 774) &&
        ArmorSetSlotItemIdIn(inventory, 7, 808, 809, 810)) {
        return Arrays::GetMemberIDByString<Arrays::TrophyTable>("gear_warrior");
    }
    return -1;
}
