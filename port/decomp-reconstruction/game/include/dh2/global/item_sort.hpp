// Free <global> function of the inventory sort comparators (batch g1-game-ui-pack4-0efacf-0).
// II_Item_sortbyname orders two inventory entries by item name: it returns *a.m_item < *b.m_item, that is
// ItemInstance::operator< on the two items. The binary's body is 12 bytes (two loads and a tail call to
// ItemInstance::operator<). It is queued under tinyxml-and-c-libs (0x3fd1dc, skipped: blocked) and has no
// definition in the game tree yet. SortByValueAndClass calls it for ties.
#pragma once

#include "dh2/ItemInventory.hpp"

bool II_Item_sortbyname(const ItemInventory::Item& a, const ItemInventory::Item& b);  // 0x3fd1dc
bool II_Item_sortbyvalue(const ItemInventory::Item& a, const ItemInventory::Item& b);   // 0x3fd9d0
bool II_Item_sortbybuyback(const ItemInventory::Item& a, const ItemInventory::Item& b); // 0x3fd9f8
