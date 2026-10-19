// Batch g1-game-items-save-ConditionData-4a6aba-0 (owner ConditionData, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout is
// dh2/ConditionData.hpp; ConditionList is dh2/ConditionList.hpp; the Arrays and Structs records are pydata.
//
// Notes:
//  * LC_API_STRCMP_0 is strcmp (0 when the strings are equal), as in the other batches.
//  * The name is an STL string. The asm of the constructor and of Init shows its finish pointer at +0x14 and its
//    data pointer at +0x18 (the constructor writes the NUL through the finish pointer). Init's test "+0x14 != +0x18"
//    is therefore !m_text.empty().
//  * ConditionList is allocated with operator new(12, MemoryHintState 0). That overload forwards to CustomAlloc
//    (runtime_support 0x310570, asm B CustomAlloc). The host allocation is sizeof(ConditionList), and Clear releases
//    it the original way: the destructor, then CustomFree.
//  * Arrays::v2Conditions has two declarations (the element table in w7_arrays_02.hpp, the name table in
//    member_names.hpp) and they cannot be included together. The name search therefore goes through the pydata
//    lookup GetMemberIDByString<Arrays::v2Conditions> (explicit instantiation in pydata-accessors/src/member_ids.cpp).
//    The original loops over the first Arrays::v2Conditions::size names. The index is kept only when it is below
//    size, which gives the same match.
//  * The deleting destructor (0x33eacc) is compiler generated: it is not written here (see the ledger).

#include <cstdint>
#include <cstring>
#include <new>

#include "core-platform/memory.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/ConditionList.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace Arrays {
// Declared in pydata-accessors/member_names.hpp, which cannot be included next to w7_arrays_02.hpp (both define
// Arrays::v2Conditions). The explicit instantiation for v2Conditions is in pydata-accessors/src/member_ids.cpp.
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

// 0x33dd24 _ZN13ConditionData11SetAsTestedEb
void ConditionData::SetAsTested(bool tested) {
    m_tested = tested;  // +0x20
}

// 0x33e5f8 _ZNK13ConditionData6IsTrueEv
bool ConditionData::IsTrue() const {
    if (m_tested) {
        return true;
    }
    if (m_list == nullptr) {
        return true;
    }
    return m_list->Eval();
}

// 0x33e7c8 _ZN13ConditionData5ClearEv
void ConditionData::Clear() {
    ConditionList* list = m_list;  // +0x1c
    if (list != nullptr) {
        list->~ConditionList();
        CustomFree(list);
        m_list = nullptr;
    }
}

// 0x33e7f8 _ZN13ConditionDataD1Ev (complete-object destructor)
// 0x33eae8 _ZN13ConditionDataD2Ev (base-object destructor): the same body. The original sets the vptr, calls
// Clear, then deallocates the name string. The vptr is the compiler's, and the string member is destroyed after
// this body, as in the original.
ConditionData::~ConditionData() {
    Clear();
}

// 0x33eacc _ZN13ConditionDataD0Ev is the deleting destructor. The compiler emits it for the virtual destructor, so
// no body is written here. The original releases the object with CustomFree (asm: ~ConditionDataD1 then CustomFree).

// 0x33eb28 _ZN13ConditionData4InitEv
void ConditionData::Init() {
    if (m_text.empty()) {  // asm: finish (+0x14) == data (+0x18)
        return;
    }
    const char* name = m_text.c_str();
    if (std::strcmp(name, "Invalid") == 0) {  // LC_API_STRCMP_0
        return;
    }
    const int index = Arrays::GetMemberIDByString<Arrays::v2Conditions>(name);
    if (index < 0 || static_cast<std::uint32_t>(index) >= Arrays::v2Conditions::size) {
        return;
    }
    // Element record of the table: +0x4 element count (m_w1), +0x8 stub array (m_w2), stride 16 in the original.
    const auto* rows = reinterpret_cast<const Structs::v2CondAnd*>(Arrays::v2Conditions::members);
    const Structs::v2CondAnd& row = rows[index];

    void* block = CustomAlloc(static_cast<unsigned int>(sizeof(ConditionList)));  // operator new(0xc, 0) in the original
    ConditionList* list = new (block) ConditionList();
    m_list = list;  // +0x1c
    list->AssignPyData(static_cast<Structs::v2ConditionStub*>(row.Conds), static_cast<int>(row.CondsSize));
}

// 0x33ed7c _ZN13ConditionDataC1Ev (complete-object constructor)
// 0x33edd8 _ZN13ConditionDataC2Ev (base-object constructor): the same body. The original writes the vptr, an empty
// name (finish = data = the buffer, NUL at the start), tested = false and m_list = null.
ConditionData::ConditionData() : m_text(), m_list(nullptr), m_tested(false) {}
