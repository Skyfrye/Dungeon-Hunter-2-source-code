// Batch r2a-game-items-save-ItemInventory-cf6f6b-0 (owner ItemInventory, redo pass). Reconstructed from the Hex-Rays
// pseudocode of libDungeonHunter2.so. Layouts come from dh2/ItemInventory.hpp, dh2/ItemInstance.hpp, dh2/Character.hpp
// and the Structs::Item row (pydata-accessors/w7_structs_2.hpp).
//
// This file holds the batch functions that had no body anywhere: GetNumPotions, FindItem, IsItemEquipped, both
// IsItemEquippable overloads, UpdateLocalizationForItems and _HasItemInstanceLike. The other batch functions (SetGold,
// TrophyCheckArmorSet, _AddItemInstance, TransferInventoryTo, SetPotionQty, HasTwoHander, _UnEquipItemAuto,
// _EquipItemToSlot, _EquipItemAuto) are completed in place in their existing batch files.
//
// Shared conventions in this file:
//  * Item row: ItemInstance::GetItem() is the Structs::Item row. m_w22 (+0x58) is the item type (13 gold, 14 potion,
//    4 and 5 the two-hander types) and m_w26 (+0x68) the equipment category. The category fold (-4 and -3 to 1, -2 to 5,
//    -1 unchanged) is the one IsItemEquipped uses.
//  * Character gates: Character +0x1320 and +0x1324 are the sheet words m_props.m_w203 and m_props.m_w204
//    (CharProperties +0xdc0 and +0xdc4, with m_props at CharProperties +0xa94). Character derives from CharProperties
//    at +0x560, so the gates are read as named members of the owner's character.
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0), level 1 prints the ASSERT line and goes on.
//    Where the original reads past the end of m_items after its ASSERT (undefined), this port answers false.

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace {

const char kItemInventorySource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory.cpp";

// The original's ASSERT(expr) at ItemInventory.cpp:line. Level 2 aborts; level 1 prints and the caller goes on.
void ReportItemInventoryAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kItemInventorySource, line);
    }
}

// Equipment category fold of an item row value: -4 and -3 become 1, -2 becomes 5, every other value (including -1)
// stays as it is. Same fold as the equip and unequip paths.
int FoldEquipCategory(int category) {
    if (category == -4 || category == -3) {
        return 1;
    }
    if (category == -2) {
        return 5;
    }
    return category;
}

}  // namespace

// 0x3fc690 _ZNK13ItemInventory13GetNumPotionsEv
int ItemInventory::GetNumPotions() const {
    // The potion stack's quantity (int16 at ItemInstance +0x50). Zero when there is no potion stack.
    return m_potion != nullptr ? static_cast<int>(m_potion->m_qty) : 0;
}

// 0x3fd15c _ZN13ItemInventory8FindItemEi
// The potion stack answers first when its id matches. Otherwise the first inventory entry, in order, with that id.
ItemInstance* ItemInventory::FindItem(int itemId) {
    if (m_potion != nullptr && m_potion->GetItemId() == itemId) {
        return m_potion;
    }
    for (ItemSlot* slot : m_items) {
        if (slot != nullptr && slot->m_item != nullptr && slot->m_item->GetItemId() == itemId) {
            return slot->m_item;
        }
    }
    return nullptr;
}

// 0x3fdaf0 _ZNK13ItemInventory14IsItemEquippedEj
// True when the entry's slot for the current set of its category is not -1. An item with no item object answers false.
bool ItemInventory::IsItemEquipped(unsigned int itemIdx) const {
    if (itemIdx >= m_items.size()) {
        ReportItemInventoryAssert("itemIdx < m_items.size()", 588);
        return false;  // the original reads past the end of m_items here (undefined)
    }
    const ItemSlot* slot = m_items[itemIdx];
    if (slot->m_item == nullptr) {
        return false;
    }
    const int category = FoldEquipCategory(slot->m_item->GetItem()->EquipmentSlottingType);  // +0x68
    return slot->m_equipSlot[GetCurrentEquipSet(category)] != -1;
}

// 0x3fdcbc _ZNK13ItemInventory16IsItemEquippableEjj
// Whether the item at itemIdx can be equipped in slot. Category 1 (the hands pair) is gated by Character +0x1320, and
// category -4 (two-hander) by Character +0x1324; both are read as m_props.m_w203 and m_props.m_w204.
bool ItemInventory::IsItemEquippable(unsigned int itemIdx, unsigned int slot) const {
    const bool itemInRange = itemIdx < m_items.size();
    if (!itemInRange) {
        ReportItemInventoryAssert("itemIdx < m_items.size()", 634);
    }
    if (slot >= m_equipment[0].size()) {
        ReportItemInventoryAssert("slotIdx < m_equipmentSlots[0].size()", 635);
    }
    if (!itemInRange) {
        return false;  // the original reads past the end of m_items here (undefined)
    }

    const ItemInstance* item = m_items[itemIdx]->m_item;
    if (item == nullptr || !item->IsEquippable()) {
        return false;
    }
    const Structs::Item* row = item->GetItem();
    int category = row->EquipmentSlottingType;                                   // +0x68
    const bool plainType = row->Type != 5 && row->Type != 4;  // +0x58 is neither 5 nor 4
    if (plainType) {
        if (category == 1) {
            if (m_character->m_props.Special_Equip_Main_In_Offhand != 0) {  // Character +0x1320: hands pair, slots 1 and 2
                return slot - 1u <= 1u;
            }
        } else if (category == -4) {
            if (m_character->m_props.Special_Equip_2H_In_One == 0) {  // Character +0x1324: two-hander, main hand only
                return slot == 1u;
            }
            category = 1;
        }
    }
    if (category >= 0 && category < static_cast<int>(m_equipment[0].size())) {
        return category == static_cast<int>(slot);
    }
    if (category == -3) {
        return slot - 1u <= 1u;  // hands pair
    }
    if (category == -2) {
        return slot - 5u <= 1u;  // slots 5 and 6
    }
    if (category == -4) {
        return slot == 1u;  // two-hander
    }
    return false;
}

// 0x3fdeec _ZNK13ItemInventory16IsItemEquippableEj
bool ItemInventory::IsItemEquippable(unsigned int itemIdx) const {
    if (itemIdx >= m_items.size()) {
        ReportItemInventoryAssert("itemIdx < m_items.size()", 625);
        return false;  // the original reads past the end of m_items here (undefined)
    }
    const ItemInstance* item = m_items[itemIdx]->m_item;
    // A null item object answers false. The original calls ItemInstance::IsEquippable on it, which is undefined.
    return item != nullptr && item->IsEquippable();
}

// 0x3fdfa0 _ZN13ItemInventory26UpdateLocalizationForItemsEv
void ItemInventory::UpdateLocalizationForItems() {
    const int numItems = GetNumItems();
    for (unsigned int i = 0; static_cast<int>(i) < numItems; ++i) {
        ItemInstance* item = GetItem(i);
        // A null item object is skipped. The original calls ItemInstance::UpdateLocalization on it, which is undefined.
        if (item != nullptr) {
            item->UpdateLocalization();
        }
    }
}

// 0x3fe1cc _ZN13ItemInventory20_HasItemInstanceLikeEPK12ItemInstanceRj
// The first entry, in order, that is a different object from item, compares equal to it (ItemInstance::operator==) and
// is not equipped. An entry that is the same object never matches, so a released item cannot merge into itself.
int ItemInventory::_HasItemInstanceLike(const ItemInstance* item, unsigned int& idx) {
    for (std::size_t i = 0; i < m_items.size(); ++i) {
        ItemInstance* candidate = m_items[i]->m_item;
        if (candidate == item) {
            continue;
        }
        if (*candidate == *item && !IsItemEquipped(static_cast<unsigned int>(i))) {
            idx = static_cast<unsigned int>(i);
            return 1;
        }
    }
    return 0;
}
