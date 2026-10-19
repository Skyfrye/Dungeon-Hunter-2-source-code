// ConditionList: the conjunction of a list of Conditions, built from a run of pydata stubs by AssignPyData.
// Eval is true when every Condition is true, and an empty list is true. The list owns its Conditions and
// deletes them through their virtual deleting destructor. Owned by ConditionData (its m_list pointer).
// Not polymorphic: no vtable.
// Original 32-bit size 0xc (12): operator new(12), members at +0x0, +0x4 and +0x8.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4786dc, 0x4786f0; dtors 0x478eac, 0x478f20;
// Eval 0x478704; trace 0x47875c; AssignPyData 0x478914).
#pragma once

class Condition;

namespace Structs {
class v2ConditionStub;
}  // namespace Structs

struct __sFILE;

class ConditionList {
public:
    ConditionList();                                                        // 0x4786dc (C2), 0x4786f0 (C1)
    ~ConditionList();                                                       // 0x478f20 (D2), 0x478eac (D1). Non-virtual.

    bool Eval();                                                            // 0x478704: 1 when m_count <= 0, else every Condition's Eval must hold
    void DBG_TraceDetailedConditionListInformation(__sFILE* stream) const;  // 0x47875c: calls each Condition's trace slot 0x10
    void AssignPyData(Structs::v2ConditionStub* stubs, int count);          // 0x478914: stores both, allocates m_conditions, builds one Condition per stub

    int m_count;                                                            // +0x00 number of Conditions, the count argument of AssignPyData
    Condition** m_conditions;                                               // +0x04 operator new[] array of m_count pointers, each a Condition whose m_stub is set
    Structs::v2ConditionStub* m_stubs;                                      // +0x08 pydata stub array, stride 16 (the stubs AssignPyData was given)
};
