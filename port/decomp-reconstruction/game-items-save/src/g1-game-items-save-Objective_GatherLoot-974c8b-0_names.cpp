// Helper unit of the batch g1-game-items-save-Objective_GatherLoot-974c8b-0: the two name lookups of the DBG trace.
//
// The name tables Arrays::ItemTable::m_memberNames and Arrays::LevelList::m_memberNames are declared in
// pydata-accessors/member_names.hpp, which cannot share a unit with w7_arrays27.hpp (Arrays::ItemTable) or
// w7_arrays_00.hpp (Arrays::LevelList). The bounds checks stay in the main unit, which reads the element counts.

#include "pydata-accessors/member_names.hpp"

namespace Arrays {

// 0x47af38 (DBG trace): the name at Arrays::ItemTable::m_memberNames + 4 * index.
const char* ItemTableMemberNameAt(int index) {
    return ItemTable::m_memberNames.names[index];
}

// 0x47af38 (DBG trace): the name at Arrays::LevelList::m_memberNames + 4 * index.
const char* LevelListMemberNameAt(int index) {
    return LevelList::m_memberNames.names[index];
}

}  // namespace Arrays
