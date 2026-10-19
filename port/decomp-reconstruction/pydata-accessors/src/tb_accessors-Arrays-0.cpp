// Track B batch e1-pydata-accessors-Arrays-0 (category pydata-accessors, class Arrays).
// Name-table side: GetMemberIDByString<T> for TrophyTable, CharacterTable and ItemTable, the
// readNames bodies of ItemTable, LootTable, v2Quests and ModelDict, and the skipNames thunks.
// Not defined in this file (see the comment block at the end): ItemTable::finalize and the eight
// Arrays::X::read element-table bodies. Their members/size/finalize declarations live in the w7
// headers, which cannot be included in the same translation unit as member_names.hpp.
#include <cstring>

#include "pydata-accessors/member_names.hpp"

namespace Arrays {

// 0x3a3f70 int Arrays::GetMemberIDByString<Arrays::TrophyTable>(char const*)
template <>
int GetMemberIDByString<TrophyTable>(const char* name) {
    const int count = TrophyTable::m_memberNames.size;
    if (count == 0) return -1;
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, TrophyTable::m_memberNames.names[i]) == 0) return i;
    }
    return -1;
}

// 0x3fa188 int Arrays::GetMemberIDByString<Arrays::CharacterTable>(char const*)
template <>
int GetMemberIDByString<CharacterTable>(const char* name) {
    const int count = CharacterTable::m_memberNames.size;
    if (count == 0) return -1;
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, CharacterTable::m_memberNames.names[i]) == 0) return i;
    }
    return -1;
}

// 0x4ad5f8 int Arrays::GetMemberIDByString<Arrays::ItemTable>(char const*)
template <>
int GetMemberIDByString<ItemTable>(const char* name) {
    const int count = ItemTable::m_memberNames.size;
    if (count == 0) return -1;
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, ItemTable::m_memberNames.names[i]) == 0) return i;
    }
    return -1;
}

// 0x4a5ee4 Arrays::ItemTable::finalizeNames(void)
void ItemTable::finalizeNames() {
    pydata::FinalizeNameTable(m_memberNames);
}

// 0x4b4724 Arrays::ItemTable::readNames(IStreamBase *)
// The original's int return (the last r0 value) is dropped, as in the other readNames bodies.
void ItemTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4afdf4 Arrays::LootTable::readNames(IStreamBase *)
void LootTable::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1928 Arrays::v2Quests::readNames(IStreamBase *)
void v2Quests::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b1ac0 Arrays::ModelDict::readNames(IStreamBase *)
void ModelDict::readNames(IStreamBase* stream) {
    pydata::ReadNameTable(m_memberNames, stream);
}

// 0x4b4a54 Arrays::ItemList::skipNames(IStreamBase *)
// attributes: thunk. Forwards to ItemList::readNames.
void ItemList::skipNames(IStreamBase* stream) {
    ItemList::readNames(stream);
}

// 0x4b5258 Arrays::InventoryTable::skipNames(IStreamBase *)
// attributes: thunk. Forwards to InventoryTable::readNames.
void InventoryTable::skipNames(IStreamBase* stream) {
    InventoryTable::readNames(stream);
}

// 0x4b53f4 Arrays::DropTilePriorityTable::skipNames(IStreamBase *)
// attributes: thunk. Forwards to DropTilePriorityTable::readNames.
void DropTilePriorityTable::skipNames(IStreamBase* stream) {
    DropTilePriorityTable::readNames(stream);
}

// ---------------------------------------------------------------------------------------------
// Not defined in this file. Each row is partial in the ledger; the notes there say what is missing.
//
// 0x4a5f80 Arrays::ItemTable::finalize(void): defined in w7_arrays_01.cpp (FinalizeItemTable) with the storage and
//   read of ItemTable in w7_arrays27.cpp, because Structs::Item (w7_structs_2.hpp) clashes with member_names.hpp.
// 0x4b37a4 Arrays::CamAnimSetTable::read, 0x4b38f0 Arrays::AnimTable::read,
// 0x4b3f5c Arrays::Charater_Templates::read, 0x4b4340 Arrays::CharacterTable::read,
// 0x4b4484 Arrays::ClassTable::read, 0x4b45d0 Arrays::CharAnimTable::read,
// 0x4b86f0 Arrays::ModelDict::read, 0x4b8acc Arrays::v2Quests::read: each needs the table's
//   members/size/finalize (w7_arrays_0x.hpp), the element vtable wiring (off_96xxxx) and the
//   element Structs class for the in-memory stride, none of which can be declared in one TU here.
// ---------------------------------------------------------------------------------------------

}  // namespace Arrays
