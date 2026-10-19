// 0x3fd1dc II_Item_sortbyname (link-1). Declared in dh2/global/item_sort.hpp.
#include "dh2/ItemInstance.hpp"
#include "dh2/global/item_sort.hpp"

// 0x3fd1dc _Z18II_Item_sortbynameRKN13ItemInventory4ItemES2_
// Two loads (the ItemInstance pointer at Item +0x00 of each argument) and a tail call to ItemInstance::operator< (0x3fa1fc).
bool II_Item_sortbyname(const ItemInventory::Item& a, const ItemInventory::Item& b) {
    return *a.m_item < *b.m_item;
}
