// Objective: the base of the v2 quest objectives. An objective is built from one v2QuestObjectiveStub row (m_pyData),
// is compiled and registered by its ObjectiveList, is completed through SetIsCompleted, and saves its completed
// flag through _saveData. Subclasses implement Register, Unregister and GetPositions (the pure slots below).
// Original 32-bit size 0x18 (24), inferred: IEventReceiver is the second base of Objective_EventReceiver at +0x18.
// Vtable (_ZTV9Objective, 60 bytes): 13 slots from +0x00. Slots 0x00 and 0x04 are the destructors. Slots 0x18,
// 0x1c and 0x20 are null in this table (pure), and the subclasses override them as Register, Unregister and
// GetPositions (see Objective_EventReceiver.hpp).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x47bd8c C1 / 0x47be00 C2, dtors 0x47a1e4 D2 /
// 0x47a378 D1 / 0x47a8b0 D0).
#pragma once

#include <cstdint>
#include <string>

class Character;
class IStreamBase;
class Vector3DFList;

struct __sFILE;

namespace Structs {
class v2QuestObjectiveStub;
}  // namespace Structs

class Objective {
public:
    Objective();                                                        // 0x47bd8c (C1), 0x47be00 (C2)
    virtual ~Objective();                                               // 0x47a1e4 (D2), 0x47a378 (D1), 0x47a8b0 (D0)

    // Virtual slots in vtable order. Slots 0x00 and 0x04 are the destructors above.
    virtual void Compile();                                             // slot 0x08: 0x479f6c, empty; subclasses rebuild their targets
    virtual int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;  // slot 0x0c: 0x47b7ac, prints the Type name from m_type
    virtual void InstallObjectiveMarker(int markerKind, int markerIndex);     // slot 0x10: 0x479f80, empty
    virtual void RemoveObjectiveMarker();                               // slot 0x14: 0x479f84, empty
    virtual void Register() = 0;                                        // slot 0x18: pure here, Objective_EventReceiver::Register overrides it
    virtual void Unregister() = 0;                                      // slot 0x1c: pure here, Objective_EventReceiver::Unregister overrides it
    virtual void GetPositions(Vector3DFList& positions) const = 0;      // slot 0x20: pure here, the subclasses fill the list
    virtual std::string GetDesc() const;                                // slot 0x24: 0x47e8e4, the description text (GetDescStr)
    virtual void _loadData(IStreamBase* stream);                        // slot 0x28: 0x47ab3c, reads m_completed
    virtual void _saveData(IStreamBase* stream);                        // slot 0x2c: 0x47ab74, writes m_completed
    virtual void _resetData();                                          // slot 0x30: 0x47a37c, clears m_completed

    // Non-virtual methods.
    void InvalidateCompile();                                           // 0x479f70 clears m_valid and m_completed
    int GetDescStrId() const;                                           // 0x47a3a0 the description string id in the m_pyData row (+0x08)
    const char* GetDescStr() const;                                     // 0x47b9b8 the StringManager text for GetDescStrId, empty when it is not positive
    void SetIsCompleted();                                              // 0x47ba10 sets m_completed once and starts the script of the m_pyData row

    // +0x00 vptr (not declared: the vtable pointer is the first word of every virtual class)
    int m_type;                                                         // +0x04 v2QuestObjectiveType constant, "Invalid" until the row sets it
    bool m_valid;                                                       // +0x08 set by the subclass Compile overrides, cleared by InvalidateCompile; ObjectiveList::IsValid reads it
    std::uint8_t pad_09[3];                                             // +0x09
    Structs::v2QuestObjectiveStub* m_pyData;                            // +0x0c the row this objective was built from, set by ObjectiveList::CreateObjectiveWithPyData
    Character* m_owner;                                                 // +0x10 set by ObjectiveList::SetOwner
    bool m_completed;                                                   // +0x14 set by SetIsCompleted, cleared by _resetData and InvalidateCompile; saved by _saveData
    std::uint8_t pad_15[3];                                             // +0x15
};
