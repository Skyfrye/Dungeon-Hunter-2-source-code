// Batch g1-game-items-save-ItemInventory-cf6f6b-2 (owner ItemInventory, part 3 of 5).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layouts come from dh2/ItemInventory.hpp,
// dh2/ItemInstance.hpp and the Structs::Item row (pydata-accessors/w7_structs_2.hpp).
//
// Shared conventions in this file:
//  * Equipment: m_equipment[set][slot] holds the ItemSlot* equipped in that set and slot (null when empty). The
//    original takes the size of set 0 as the slot count (nine). GetCurrentEquipSet(slot) picks the set for a slot.
//  * Item row: ItemInstance::GetItem() returns the Structs::Item row. Fields are used by their pydata names:
//    m_w22 (+0x58) item type, m_w26 (+0x68) equipment category, m_w37 (+0x94) weapon subtype. The three attack
//    words m_w38, m_w39 and m_w40 (+0x98, +0x9c, +0xa0) have no names yet.
//  * Asserts follow the other batches: gAssertLevel 2 aborts (the original writes to address 0), 1 prints the
//    ASSERT line. Where the original reads past the end of an array after its ASSERT (undefined), this port returns
//    a defined value instead.

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace {

using EquipmentSets = std::vector<std::vector<ItemInventory::ItemSlot*>>;

const char kEquipmentSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Items\\ItemInventory_Equipment.cpp";

// The original's ASSERT(expr) at ItemInventory_Equipment.cpp:line.
void ReportEquipmentAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kEquipmentSource, line);
    }
}

// The ItemSlot* in one set and slot (null when empty): the original's inner-vector read.
ItemInventory::ItemSlot* EquippedSlot(const EquipmentSets& sets, int set, unsigned int slot) {
    return sets[static_cast<std::size_t>(set)][slot];
}

// Equipment category fold of the item row value. The same fold as the asm of _UnEquipItemAuto and the -1 batch:
// -4 and -3 become 1, -2 becomes 5, -1 and every other value stay as they are.
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

// 0x3ffd54 _ZNK13ItemInventory22GetModularCategoryNameEj
// Modular category id to its name. Ids other than 0-4 and 8 have no name.
const char* ItemInventory::GetModularCategoryName(unsigned int category) const {
    switch (category) {
        case 0u:
            return "MC_Torso";
        case 1u:
            return "MC_RWeapon";
        case 2u:
            return "MC_LWeapon";
        case 3u:
            return "MC_Feet";
        case 4u:
            return "MC_Hands";
        case 8u:
            return "MC_Head";
        default:
            return nullptr;
    }
}

// 0x3ffdec _ZNK13ItemInventory15GetEquippedItemEj
// The item in the slot's entry of the current set for that slot. A slot past the size of set 0 gives null.
ItemInstance* ItemInventory::GetEquippedItem(unsigned int slot) const {
    if (slot < m_equipment[0].size()) {
        ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(static_cast<int>(slot)), slot);
        if (entry) {
            return entry->m_item;
        }
    }
    return nullptr;
}

// 0x3ffe3c _ZN13ItemInventory15GetEquippedItemEj
// Same body as the const overload (0x3ffdec).
ItemInstance* ItemInventory::GetEquippedItem(unsigned int slot) {
    if (slot < m_equipment[0].size()) {
        ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(static_cast<int>(slot)), slot);
        if (entry) {
            return entry->m_item;
        }
    }
    return nullptr;
}

// 0x3ffe8c _ZNK13ItemInventory17HasMainHandWeaponEv
// True when the main-hand slot (slot 1 of the current set) holds an entry. The item itself is not read.
bool ItemInventory::HasMainHandWeapon() const {
    return EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1) != nullptr;
}

// 0x3ffebc _ZNK13ItemInventory14CanRangeAttackERiS0_S0_
// The virtual CanRangeAttack() (vtable slot 2) decides. Then the outputs are the main-hand item's +0x98, +0x9c and
// +0xa0 words (pydata m_w38, m_w39, m_w40; names not known). The original dereferences the main-hand entry without
// a null check, so a virtual override that answers true with an empty slot faults here as it does there.
bool ItemInventory::CanRangeAttack(int& a, int& b, int& c) const {
    if (!CanRangeAttack()) {
        return false;
    }
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    const Structs::Item* row = entry->m_item->GetItem();
    a = row->Param4;  // +0x98
    b = row->Param5;  // +0x9c
    c = row->Param6;  // +0xa0
    return true;
}

// 0x3fff30 _ZNK13ItemInventory14CanMeleeAttackERi
// False when the virtual CanRangeAttack() holds. Otherwise the output is the main-hand item's +0x9c (m_w39), or 0 when
// the main-hand slot is empty.
bool ItemInventory::CanMeleeAttack(int& a) const {
    if (CanRangeAttack()) {
        return false;
    }
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (entry) {
        a = entry->m_item->GetItem()->Param5;  // +0x9c
    } else {
        a = 0;
    }
    return true;
}

// 0x3fffa4 _ZNK13ItemInventory15HasRangedWeaponEv
// The main-hand item's type (+0x58, m_w22) is 4 or 5.
bool ItemInventory::HasRangedWeapon() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (!entry) {
        return false;
    }
    const int type = entry->m_item->GetItem()->Type;  // +0x58
    return type == 4 || type == 5;
}

// 0x400014 _ZNK13ItemInventory14CanRangeAttackEv
// Thunk: forwards to HasRangedWeapon (vtable slot 2).
bool ItemInventory::CanRangeAttack() const {
    return HasRangedWeapon();
}

// 0x400018 _ZNK13ItemInventory12HasAxeOrMaceEv
// The main-hand item's subtype (+0x94, m_w37) is 1 or 2. The original returns the 1 it has just loaded when the
// subtype is 1, so both values give true.
bool ItemInventory::HasAxeOrMace() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (!entry) {
        return false;
    }
    const int subtype = entry->m_item->GetItem()->Param3;  // +0x94
    return subtype == 1 || subtype == 2;
}

// 0x400080 _ZNK13ItemInventory6HasBowEv
// The main-hand item's subtype (+0x94, m_w37) is 4.
bool ItemInventory::HasBow() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (!entry) {
        return false;
    }
    return entry->m_item->GetItem()->Param3 == 4;  // +0x94
}

// 0x4000c8 _ZNK13ItemInventory8HasStaffEv
// The main-hand item's subtype (+0x94, m_w37) is 5.
bool ItemInventory::HasStaff() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (!entry) {
        return false;
    }
    return entry->m_item->GetItem()->Param3 == 5;  // +0x94
}

// 0x400110 _ZNK13ItemInventory9HasShieldEv
// The off-hand slot (slot 2 of the current set) holds an item whose type (+0x58, m_w22) is 6.
bool ItemInventory::HasShield() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(2), 2);
    if (!entry) {
        return false;
    }
    return entry->m_item->GetItem()->Type == 6;  // +0x58
}

// 0x400158 _ZNK13ItemInventory16HasOffHandWeaponEv
// The off-hand slot (slot 2 of the current set) holds an item whose type (+0x58, m_w22) is not 6.
bool ItemInventory::HasOffHandWeapon() const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(2), 2);
    if (!entry) {
        return false;
    }
    return entry->m_item->GetItem()->Type != 6;  // +0x58
}

// 0x40019c _ZNK13ItemInventory14IsDualWieldingEv
// Thunk: forwards to HasOffHandWeapon.
bool ItemInventory::IsDualWielding() const {
    return HasOffHandWeapon();
}

// 0x4001a0 _ZNK13ItemInventory12HasTwoHanderEb
// The main-hand entry (slot 1 of the current set) holds a two-hander when its category (+0x68, m_w26) is -4. When the
// item type (+0x58, m_w22) is neither 4 nor 5 and offHandToo is clear, the answer also needs Character +0x1324 == 0,
// read as m_props.m_w204 (CharProperties +0xdc4, the final sheet at sheet word 204).
bool ItemInventory::HasTwoHander(bool offHandToo) const {
    ItemSlot* entry = EquippedSlot(m_equipment, GetCurrentEquipSet(1), 1);
    if (!entry) {
        return false;
    }
    const Structs::Item* row = entry->m_item->GetItem();
    if ((static_cast<unsigned int>(row->Type) - 4u) <= 1u || offHandToo) {  // type 4 or 5
        return row->EquipmentSlottingType == -4;  // +0x68
    }
    return row->EquipmentSlottingType == -4 && m_character->m_props.Special_Equip_2H_In_One == 0;  // Character +0x1324
}

// 0x40022c _ZNK13ItemInventory23IsEquipmentSlotLeftHandEj
// Slot 2 is the left hand. An index past the set size only prints or aborts; the answer is still slot == 2.
bool ItemInventory::IsEquipmentSlotLeftHand(unsigned int slot) const {
    if (slot >= m_equipment[0].size()) {
        ReportEquipmentAssert("slotIdx < m_equipmentSlots[0].size()", 330);
    }
    return slot == 2;
}

// 0x4002d8 _ZNK13ItemInventory20IsEquipmentSlotTakenEj
// True when the slot's entry in the current set for that slot is not null. After the ASSERT for an index past the
// set size, the original reads past the end of the set (undefined). This port answers false there.
bool ItemInventory::IsEquipmentSlotTaken(unsigned int slot) const {
    if (slot >= m_equipment[0].size()) {
        ReportEquipmentAssert("slotIdx < m_equipmentSlots[0].size()", 320);
        return false;
    }
    return EquippedSlot(m_equipment, GetCurrentEquipSet(static_cast<int>(slot)), slot) != nullptr;
}

// 0x4003a4 _ZN13ItemInventory20_UnEquipItemFromSlotEji
// equipSet -1 means the set that GetCurrentEquipSet gives for the slot. The entry is cleared and the item forgets the
// slot for that set. An item that is now unequipped in both sets and is stackable, with a like item elsewhere in the
// inventory that is not equipped, adds its quantity to that item and is deleted.
void ItemInventory::_UnEquipItemFromSlot(unsigned int slot, int equipSet) {
    if (slot >= m_equipment[0].size()) {
        ReportEquipmentAssert("slotIdx < m_equipmentSlots[0].size()", 273);
        return;  // the original goes on to index past the set here (undefined); nothing is changed
    }
    if (equipSet == -1) {
        equipSet = GetCurrentEquipSet(static_cast<int>(slot));
    }
    ItemSlot*& entry = m_equipment[static_cast<std::size_t>(equipSet)][slot];
    ItemSlot* item_slot = entry;
    entry = nullptr;
    if (!item_slot) {
        return;
    }
    item_slot->m_equipSlot[equipSet] = -1;
    if (item_slot->m_equipSlot[0] != -1 || item_slot->m_equipSlot[1] != -1 || !item_slot->m_item->IsStackable()) {
        return;
    }
    unsigned int other = 0;
    if (_HasItemInstanceLike(item_slot->m_item, other) && !IsItemEquipped(other)) {
        ItemInstance* stack = GetItem(other);
        stack->AddQty(item_slot->m_item->m_qty);  // ItemInstance +0x50, int16
        _DelItemInstance(item_slot->m_item);
    }
}

// 0x40050c _ZN13ItemInventory19UnEquipItemFromSlotEji
// Thunk: forwards to _UnEquipItemFromSlot (vtable slot 8).
void ItemInventory::UnEquipItemFromSlot(unsigned int slot, int equipSet) {
    _UnEquipItemFromSlot(slot, equipSet);
}

// 0x400510 _ZN13ItemInventory16_UnEquipItemAutoEj
// PARTIAL: an equipped item is released from the slot it holds for its equipment category (+0x68 of its row, folded),
// in the current set for that category, through _UnEquipItemFromSlot with equipSet -1. The original returns what
// _UnEquipItemFromSlot leaves in r0 (the call is a tail call, asm 0x400598). That value is not recorded, so this port
// returns 0 on that path. An index past the inventory size gives 0 after the ASSERT (the original reads past the end).
int ItemInventory::_UnEquipItemAuto(unsigned int itemIdx) {
    if (itemIdx >= m_items.size()) {
        ReportEquipmentAssert("itemIdx < m_items.size()", 115);
        return 0;
    }
    if (!IsItemEquipped(itemIdx)) {
        return 0;
    }
    ItemSlot* slot = m_items[itemIdx];
    const int category = FoldEquipCategory(slot->m_item->GetItem()->EquipmentSlottingType);  // +0x68
    const int set = GetCurrentEquipSet(category);
    const unsigned int equipIdx = static_cast<unsigned int>(slot->m_equipSlot[set]);  // signed byte, -1 is 0xffffffff
    _UnEquipItemFromSlot(equipIdx, -1);
    return 0;  // PARTIAL: the original's r0 after the tail call is not known
}
