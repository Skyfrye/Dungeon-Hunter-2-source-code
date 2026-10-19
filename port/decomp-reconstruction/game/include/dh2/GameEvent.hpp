// GameEvent: one v2Event from the pydata table. Holds the event state (Inactive, Active, Completed), the
// ObjectiveList that decides when the event completes, and the Structs::v2Event row it was built from.
// Owned by GameEventManager, one per row of Arrays::v2Events.
// Original 32-bit size 0x20 (32): operator new(0x20) in GameEventManager::Load.
// Not polymorphic: no vtable.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4795ac, dtor 0x47957c).
#pragma once

#include <cstdint>

#include "dh2/ObjectiveList.hpp"

namespace Structs {
class v2Event;
}  // namespace Structs

class GameEvent {
public:
    // Values of m_state. SetState accepts 0..2 only; the state names come from PyDataConstants "v2EventState".
    enum EventStates {
        EVENT_INACTIVE = 0,
        EVENT_ACTIVE = 1,
        EVENT_COMPLETED = 2,
    };

    GameEvent();                                                        // 0x4795e0 / 0x4795ac
    ~GameEvent();                                                       // 0x47957c, 0x479594

    const char* DBG_GetCurrentStateName() const;                        // 0x47935c "unknown" past the three states
    void ExecScript(int scriptId);                                      // 0x4793a4 starts the script when scriptId >= 0
    void SetState(int state);                                           // 0x4793d0 Completed also starts the event's script
    void Update();                                                      // 0x479408 advances Inactive -> Active -> Completed
    void Compile();                                                     // 0x4794fc recompiles the ObjectiveList, registers it once
    void ReInit();                                                      // 0x479538 back to Inactive and resets the objectives
    void DBG_TraceDetailedInformation() const;                          // 0x479544
    void AssignPyData(Structs::v2Event* data);                          // 0x479568 keeps the row and its objective stub list

    // +0x00 m_state holds one of EventStates; the constructor sets -1 (no state yet).
    int32_t m_state;                                                    // +0x00
    // +0x04 index of this event in Arrays::v2Events; set by GameEventManager::Load (the constructor sets -1).
    int32_t m_index;                                                    // +0x04
    // +0x08 event name from Arrays::v2Events::m_memberNames; set by GameEventManager::Load.
    const char* m_name;                                                 // +0x08
    // +0x0c ObjectiveList (12 bytes in the original), embedded by value. The constructor and ReInit call its
    // methods on this address; the destructor is the implicit member destructor.
    ObjectiveList m_objectives;                                         // +0x0c
    // +0x18 set once the ObjectiveList has been registered by Compile.
    bool m_registered;                                                  // +0x18
    uint8_t pad_19[3];                                                  // +0x19
    // +0x1c row of Arrays::v2Events set by AssignPyData; script name is read from its +0x0c.
    Structs::v2Event* m_pyData;                                         // +0x1c
};
