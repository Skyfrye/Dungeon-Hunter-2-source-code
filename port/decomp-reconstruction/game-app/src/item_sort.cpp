// 0x3fd9d0 II_Item_sortbyvalue and 0x3fd9f8 II_Item_sortbybuyback (the inventory sort comparators next to II_Item_sortbyname, which is
// in link1_II_Item_sortbyname.cpp). Declared in dh2/global/item_sort.hpp.
#include "dh2/ItemInstance.hpp"
#include "dh2/global/item_sort.hpp"

// 0x3fd9d0 _Z19II_Item_sortbyvalueRKN13ItemInventory4ItemES2_
// The item with the higher value (ItemInstance +0x54) sorts first; equal values go to II_Item_sortbyname (a tail call).
bool II_Item_sortbyvalue(const ItemInventory::Item& a, const ItemInventory::Item& b) {
    if (a.m_item->m_value == b.m_item->m_value) {
        return II_Item_sortbyname(a, b);
    }
    return a.m_item->m_value > b.m_item->m_value;
}

// 0x3fd9f8 _Z21II_Item_sortbybuybackRKN13ItemInventory4ItemES2_
// Items that are not buy-back items (ItemInstance +0x69 clear) sort first: when the two flags differ the result is the second item's
// flag (the original returns the byte as it is); equal flags go to II_Item_sortbyvalue (a tail call).
bool II_Item_sortbybuyback(const ItemInventory::Item& a, const ItemInventory::Item& b) {
    if (a.m_item->unk_69 == b.m_item->unk_69) {
        return II_Item_sortbyvalue(a, b);
    }
    return b.m_item->unk_69;
}
