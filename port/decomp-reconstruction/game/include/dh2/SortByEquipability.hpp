// SortByEquipability: std sort and heap comparator over ItemInventory::Item entries of one character.
// It compares the items for one equipment slot and falls back to SortByValueAndClass.
// Original 32-bit layout: Character* at +0x00 and the equipment slot at +0x04. The original object size is
// not recorded (no constructor in class-facts); operator() reads only these two words, so 8 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (operator() 0x3fd5d0).
#pragma once

#include "dh2/ItemInventory.hpp"

class Character;

class SortByEquipability {
public:
    // The std templates copy the functor by value (__adjust_heap, __push_heap, __unguarded_insertion_sort_aux).
    bool operator()(const ItemInventory::Item& a, const ItemInventory::Item& b);  // 0x3fd5d0

    // Layout (8 bytes as far as operator() reads).
    Character* m_character;                                             // +0x00 owner; its ItemInventory sits at Character +0x37c
    int m_equipSlot;                                                    // +0x04 EquipmentSlots constant the comparison is made for
};
