// SortByValueAndClass: comparator over ItemInventory::Item entries. It multiplies each item's ItemInstance word at
// +0x54 by one of nine float fields of its item definition (ItemInstance::GetItem), chosen by the character's
// m_charPropsId (Character +0x13c8, a CharacterTable row). Ties go to the global II_Item_sortbyname.
// Original 32-bit size 0x4: one Character* at +0x00 (SortByEquipability passes its member by address).
// Reconstructed from libDungeonHunter2.so pseudocode (operator() 0x3fd1e8).
#pragma once

#include "dh2/ItemInventory.hpp"

class Character;

class SortByValueAndClass {
public:
    bool operator()(const ItemInventory::Item& a, const ItemInventory::Item& b);  // 0x3fd1e8

    // Layout (4 bytes in the original).
    Character* m_character;                                             // +0x00 character whose m_charPropsId is read
};
