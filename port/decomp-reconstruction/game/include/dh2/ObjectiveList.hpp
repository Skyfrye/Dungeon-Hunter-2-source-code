// ObjectiveList: the objectives of one GameEvent or quest. It holds an array of Objective* built from the
// v2QuestObjectiveStub rows (AssignPyData stores the count and row pointer, then CreateObjectiveWithPyData makes
// one objective per row, 44 bytes apart). Most methods forward to an Objective member through LoopOnAll, which
// takes a member pointer into the Objective vtable: Compile 0x08, RemoveObjectiveMarkers 0x14, Register 0x18,
// Unregister 0x1c, _loadData 0x28, _saveData 0x2c, _resetData 0x30; InvalidateCompile passes the non-virtual
// Objective::InvalidateCompile. InstallObjectiveMarkers calls the vtable slot 0x10 directly. Eval is true when
// every objective is completed.
// Original 32-bit size 0x0c (12): GameEvent embeds it by value at +0x0c. It has no vtable.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x47a3c0 C2 / 0x47a3d4 C1, dtors 0x47a8cc D1 /
// 0x47a940 D2).
#pragma once

#include <cstdint>
#include <string>

class Character;
class IStreamBase;
class Objective;

struct __sFILE;

namespace Structs {
class v2QuestObjectiveStub;
}  // namespace Structs

class ObjectiveList {
public:
    ObjectiveList();                                                    // 0x47a3c0 (C2), 0x47a3d4 (C1)
    ~ObjectiveList();                                                   // 0x47a8cc (D1), 0x47a940 (D2); no virtual, the list is not polymorphic

    // Builds one objective for a v2QuestObjectiveStub row. The row's type (+0x04) picks the implementation.
    static Objective* CreateObjectiveWithPyData(Structs::v2QuestObjectiveStub* stub);  // 0x47a3e8
    void AssignPyData(Structs::v2QuestObjectiveStub* stub, int count);  // 0x47aa48 stores count and stub, then allocates and builds count objectives
    void SetOwner(Character* owner);                                    // 0x47a414 stores the owner in every objective

    bool Eval();                                                        // 0x47a444 true when the list is empty or every objective is completed
    bool IsValid();                                                     // 0x47a498 true when the list is empty or every objective is valid

    void InstallObjectiveMarkers(int markerKind, int markerIndex);      // 0x47a4ec
    void RemoveObjectiveMarkers();                                      // 0x47a5cc
    void Unregister();                                                  // 0x47a5f0
    void Register();                                                    // 0x47a614
    void InvalidateCompile();                                           // 0x47a638
    void Compile();                                                     // 0x47a66c
    void _resetData();                                                  // 0x47a5a8

    // Calls fn on each objective. fn is a member pointer into the Objective vtable (virtual slots dispatch dynamically).
    void LoopOnAll(void (Objective::*fn)());                            // 0x47a540
    void LoopOnAll(void (Objective::*fn)() const) const;                // 0x47a690
    void LoopOnAll(void (Objective::*fn)(IStreamBase*), IStreamBase* stream);       // 0x47a6f8
    void LoopOnAll(void (Objective::*fn)(__sFILE*) const, __sFILE* stream) const;   // 0x47a7c4

    void _saveData(IStreamBase* stream);                                // 0x47a76c writes every objective through its _saveData slot
    void _loadData(IStreamBase* stream);                                // 0x47a798 reads every objective through its _loadData slot
    void DBG_TraceDetailedObjectiveListInformation(__sFILE* stream) const;  // 0x47a838
    std::string GetDesc() const;                                        // 0x47e914 joins the objective descriptions with newlines

    // +0x00 is the first member (no vptr: the class has no virtual methods)
    int m_count;                                                        // +0x00 number of objectives; AssignPyData stores it before allocating
    Objective** m_objectives;                                           // +0x04 array of m_count Objective* (operator new[] of 4 bytes each in the original)
    Structs::v2QuestObjectiveStub* m_pyData;                            // +0x08 first row of the v2QuestObjectiveStub array, 44 bytes per row
};
