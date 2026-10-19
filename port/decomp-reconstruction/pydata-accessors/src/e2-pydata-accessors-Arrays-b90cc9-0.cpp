// Track B batch e2-pydata-accessors-Arrays-b90cc9-0 (category pydata-accessors, class Arrays).
// Element-table read bodies (Arrays::X::read(IStreamBase*)) for SkillTable, SkillListTable, NumProbArray,
// InventoryTable and ItemBonusAttrMonopoly. The element classes and their finalize bodies are in the w7
// slices (w7_arrays_00.cpp). The other seven rows of the batch (LootTable, ItemTable, ItemList,
// DropTilePriorityTable, ItemPowerList, FaeryTable, FaeryListTable) are defined in w7_arrays27.cpp (comment block at the end).

#include <cstddef>
#include <cstdint>

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/element_table.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// The shared body of the Arrays::X::read family (Hex-Rays shape, identical in all five) is
// pydata::ReadArrayTable<Elem> (element_table.hpp):
//   1. count = readAs<uint32>(stream);
//   2. Table::finalize() (frees the old elements), then size = count;
//   3. a block of count elements with the header words (the original 32-bit stride, count); members = element 0;
//   4. each element constructed in place (the vptr, plus the pointer members the listing zeroes);
//   5. each element's read slot (+0xc) runs in order, with the stream.
// The elements are host objects at sizeof(Elem). The 32-bit stride of the original is Arrays::ListingStride::X; it
// is stored in the stride word of the block and never used to address host memory (NOTES.md, "Element tables").

namespace Arrays {

// 0x4b9810 _ZN6Arrays10SkillTable4readEP11IStreamBase
// Element Structs::Skill (vtable "vtable for Structs::Skill"), listing stride 76 (ListingStride::SkillTable).
// Listing zeroes +0x10 (m_w4), +0x28 (m_w10), +0x3c (m_w15): buffer pointers, null by construction.
void SkillTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Skill>(members, size, ListingStride::SkillTable, stream, [] { finalize(); });
    SkillTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9964 _ZN6Arrays14SkillListTable4readEP11IStreamBase
// Element Structs::SkillList, listing stride 12 (ListingStride::SkillListTable). Listing zeroes +0x8 (m_w2).
void SkillListTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::SkillList>(members, size, ListingStride::SkillListTable, stream,
                                               [] { finalize(); });
    SkillListTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4b9bf4 _ZN6Arrays12NumProbArray4readEP11IStreamBase
// Element Structs::NumProbList, listing stride 12 (ListingStride::NumProbArray). Listing zeroes +0x8 (m_w2).
void NumProbArray::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::NumProbList>(members, size, ListingStride::NumProbArray, stream,
                                                 [] { finalize(); });
    NumProbArray::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4ba3c8 _ZN6Arrays14InventoryTable4readEP11IStreamBase
// Element Structs::Inventory, listing stride 8 (ListingStride::InventoryTable); only the vptr is written per
// element in the listing, no zeroed word.
void InventoryTable::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::Inventory>(members, size, ListingStride::InventoryTable, stream,
                                               [] { finalize(); });
    InventoryTable::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// 0x4baa30 _ZN6Arrays21ItemBonusAttrMonopoly4readEP11IStreamBase
// Element Structs::ItemBonusAttrList, listing stride 12 (ListingStride::ItemBonusAttrMonopoly), confirmed by its
// vtable. Listing zeroes +0x8 (m_w2).
void ItemBonusAttrMonopoly::read(IStreamBase* stream) {
    pydata::ReadArrayTable<Structs::ItemBonusAttrList>(members, size, ListingStride::ItemBonusAttrMonopoly, stream,
                                                       [] { finalize(); });
    ItemBonusAttrMonopoly::m_memberNames.size = static_cast<int>(size);  // the names are checked against, and consumers read, the table count
}

// ---------------------------------------------------------------------------------------------
// Other rows of the batch, and where they are now:
//
// 0x4b9e8c Arrays::LootTable::read, 0x4ba27c Arrays::ItemList::read and 0x4ba4fc
//   Arrays::DropTilePriorityTable::read are defined in w7_arrays27.cpp (same shape as the five above; Structs::Loot
//   has a read now, and the DropTilePriorityTable and ItemList element classes are TileOffsetList and
//   ItemListEntryList by their vtables).
// 0x4ba12c Arrays::ItemTable::read is defined in w7_arrays27.cpp as well (element Structs::Item, listing stride 164).
// 0x4bacc8 Arrays::ItemPowerList::read, 0x4bbfe0 Arrays::FaeryTable::read and 0x4bc12c Arrays::FaeryListTable::read
//   are defined in w7_arrays27.cpp (element classes ItemPowerEntryList, Faery and FaeryList by their vtables).
// ---------------------------------------------------------------------------------------------

}  // namespace Arrays
