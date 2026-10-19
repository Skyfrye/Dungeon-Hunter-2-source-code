// ObjectiveTemplate_InteractWith: an objective completed by one interaction with one game object
// (v2QuestOpenGameObject, v2QuestDestroyGameObject, v2QuestTriggerPlate, v2QuestTriggerOn,
// v2QuestPickedUpLiftable, v2QuestTalkToNPC). Compile copies the object id from the row (+0x20) and
// handleEvent counts the events whose object id matches, completing the objective at the row's required
// count (+0x28).
//
// Template arguments, as the instantiations in the queue show:
//   TStruct  the Structs::v2Quest row (v2QuestOpenGameObject, v2QuestTriggerPlate, ...)
//   TEvent   the QE_ event class of that row (QE_OpenGameObject, QE_TriggerPlate, ...)
// The base is Objective_SavedQty in every instantiation.
//
// Original 32-bit size 0x28 (40): Objective_SavedQty (0x24 bytes, inferred) plus m_objectId.
// Reconstructed from libDungeonHunter2.so pseudocode (OpenGameObject instance: dtors 0x47d424 / 0x47dc5c,
// Compile 0x47ec30, handleEvent 0x47f478, GetPositions 0x47a8a0, DBG 0x47e16c). Each method has one
// copy per instantiation in queue.csv.
#pragma once

#include <cstdint>

#include "dh2/Objective_SavedQty.hpp"

class IEvent;
class EventManager;
class Vector3DFList;
struct __sFILE;

template <typename TStruct, typename TEvent>
class ObjectiveTemplate_InteractWith : public Objective_SavedQty {
public:
    // Overrides of Objective slots, in vtable order. Slots 0x00 and 0x04 are the destructors.
    ~ObjectiveTemplate_InteractWith() override;                                         // slot 0x00/0x04: D1 0x47d424, D0 0x47dc5c (frees)
    void Compile() override;                                                            // slot 0x08: 0x47ec30 copies the object id, completes at the required count
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;          // slot 0x0c: 0x47e16c prints Object and Level, then the base trace
    void GetPositions(Vector3DFList& positions) const override;                         // slot 0x20: 0x47a8a0, empty
    bool handleEvent(const IEvent* event, const EventManager* manager) override;        // slot 0x38: 0x47f478 counts a matching event

    // Members of this class, from +0x24 on. Objective_SavedQty occupies +0x00 .. +0x23.
    int m_objectId;                                                                     // +0x24 object id copied from the row (+0x20) by Compile, matched against the event
};
