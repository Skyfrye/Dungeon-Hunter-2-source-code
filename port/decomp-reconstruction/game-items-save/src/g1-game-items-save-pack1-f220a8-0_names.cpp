// Helper unit of the batch g1-game-items-save-pack1-f220a8-0: the quest name lookup of the Condition_IsQuestInStateGeneric
// DBG trace.
//
// The name table Arrays::v2Quests::m_memberNames is declared in pydata-accessors/member_names.hpp, which cannot share a
// unit with w7_arrays_00.hpp (both declare Arrays::v2Quests). The bound check stays in the main unit, which reads
// Arrays::v2Quests::size.

#include "pydata-accessors/member_names.hpp"

namespace Arrays {

// The name at Arrays::v2Quests::m_memberNames + 4 * index (DBG trace of Condition_IsQuestInStateGeneric, 0x478cc4).
const char* v2QuestsMemberNameAt(int index) {
    return v2Quests::m_memberNames.names[index];
}

}  // namespace Arrays
