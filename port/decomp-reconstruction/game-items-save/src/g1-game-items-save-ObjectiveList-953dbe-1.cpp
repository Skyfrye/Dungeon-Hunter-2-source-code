// Batch g1-game-items-save-ObjectiveList-953dbe-1 (owner ObjectiveList, part 2: the destructor D1 and D2, AssignPyData
// and GetDesc). Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the assembly
// (tools/decomp_asm.py). The layout is in dh2/ObjectiveList.hpp: +0x00 m_count, +0x04 m_objectives, +0x08 m_pyData.
//
// Shared conventions in this file:
//  * Objective has a virtual destructor, so `delete` on an Objective* runs the virtual deleting destructor. The original
//    makes the same call through vtable slot 0x04 (asm: LDR PC, [R3,#4]). The objective pointer array is released with
//    CustomFree, which pairs with the operator new[] that forwards to CustomAlloc.
//  * Pointer arrays are host-sized (TRACK-B decision 2): the original's 4 bytes per Objective* become sizeof(Objective*).
//  * The stub rows are host-sized elements of the v2QuestObjectiveStub array (TRACK-B decision 3). The original steps the
//    44-byte file stride (asm: ADD R5, R5, #0x2C); this port steps one element, which is stub + i on the host type.
//  * The original's operator new[](4 * count, 0) is operator new[](size, MHS_UNRECOVERED): MHS_UNRECOVERED is 0.

#include "dh2/ObjectiveList.hpp"

#include <cstddef>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Objective.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/structs_records.hpp"

// 0x47a8cc ObjectiveList::~ObjectiveList() (D1), 0x47a940 ObjectiveList::~ObjectiveList() (D2)
// Deletes each non-null objective and clears its slot, then releases the pointer array with CustomFree and clears it.
// m_count is left as it is (the original does not write it). The asm of D1 and D2 is the same code at two addresses, so
// one definition serves both. The member destructor of a class is not virtual here (ObjectiveList has no vtable).
ObjectiveList::~ObjectiveList() {
    for (int i = 0; i < m_count; ++i) {
        if (m_objectives[i] != nullptr) {
            delete m_objectives[i];
            m_objectives[i] = nullptr;
        }
    }
    if (m_objectives != nullptr) {
        CustomFree(m_objectives);
        m_objectives = nullptr;
    }
}

// 0x47aa48 ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub*, int)
// Stores the row array (+0x08) and the count (+0x00). A positive count allocates the pointer array (+0x04) and builds one
// objective per row through the static factory CreateObjectiveWithPyData, in row order. A count of zero or less stores
// the count and row pointer only, and the array pointer is left as it was (the original does not write +0x04 then).
// The Hex-Rays `int *` return is the register left over from the calls, not a value of the API: the method is void.
void ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub* stub, int count) {
    m_pyData = stub;
    m_count = count;
    if (count > 0) {
        m_objectives = static_cast<Objective**>(
            ::operator new[](sizeof(Objective*) * static_cast<std::size_t>(count), MHS_UNRECOVERED));
        for (int i = 0; i < count; ++i) {
            m_objectives[i] = CreateObjectiveWithPyData(&stub[i]);
        }
    }
}

// 0x47e914 ObjectiveList::GetDesc() const
// Joins the descriptions of the objectives with a newline. Each objective's GetDesc (its virtual slot 0x24) is taken in
// order. An empty description is skipped, so there is no separator in front of the first non-empty text or in front of an
// empty one. The original returns the std::string through the sret pointer in r0 (the Hex-Rays `this`), and the list is r1.
std::string ObjectiveList::GetDesc() const {
    std::string result;
    const std::string separator("\n");
    bool first = true;
    for (int i = 0; i < m_count; ++i) {
        std::string desc = m_objectives[i]->GetDesc();
        if (!desc.empty()) {
            if (!first) {
                result += separator;
            }
            result += desc;
            first = false;
        }
    }
    return result;
}
