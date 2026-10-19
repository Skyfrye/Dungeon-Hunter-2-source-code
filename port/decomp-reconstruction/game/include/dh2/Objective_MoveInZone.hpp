// Objective_MoveInZone: an Objective_EventReceiver that completes when the object named by the row (Object id at
// v2QuestObjectiveStub +0x1c) raises a matching event, such as a character entering it. Compile finds that object,
// stores it in m_object, and marks the objective compiled when the row's character test passes (or the row has none).
// Original 32-bit size 0x24 (36), from the GetObjectiveImplInstance<Objective_MoveInZone> factory (operator new(0x24)).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x47a2e0 / 0x47cdc4, Compile 0x47c868, handleEvent 0x47bcd4,
// GetPositions 0x47b850, DBG trace 0x47b3dc).
#pragma once

#include "dh2/Objective_EventReceiver.hpp"

class IEvent;
class EventManager;
class Vector3DFList;
class GameObject;
struct __sFILE;

class Objective_MoveInZone : public Objective_EventReceiver {
public:
    ~Objective_MoveInZone() override;                                                   // slot 0x00/0x04: D1 0x47a2e0, D0 0x47cdc4 (frees)

    // Overrides of Objective and Objective_EventReceiver slots, in vtable order. Register and Unregister are inherited.
    void Compile() override;                                                            // slot 0x08: 0x47c868
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;          // slot 0x0c: 0x47b3dc prints Type, Object and Level, then the EventReceiver trace
    void GetPositions(Vector3DFList& positions) const override;                         // slot 0x20: 0x47b850, the position of m_object, else of the matching objects
    bool handleEvent(const IEvent* event, const EventManager* manager) override;        // slot 0x38: 0x47bcd4 completes on an event from m_object, then calls Unregister

    // Objective_EventReceiver occupies +0x00 .. +0x1f.
    GameObject* m_object;                                                               // +0x20 object found by the row's Object id in Compile (null until then); the event must come from it
};
