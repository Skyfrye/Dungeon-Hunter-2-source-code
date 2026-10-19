// Objective_GatherLoot: an Objective_Qty that completes when the owner holds enough of one item. Compile reads the
// row's loot id (v2QuestObjectiveStub +0x24) and required count (+0x28), and handleEvent refreshes m_currentQty from
// the owner's ItemInventory when the event is for that item. Register adds the loot id to a counted list on the owner,
// and Unregister removes it from the owner's ItemInventory. Adds no members to Objective_Qty.
// Original 32-bit size 0x24 (36), from the GetObjectiveImplInstance<Objective_GatherLoot> factory (operator new(0x24)).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x47a1f0 / 0x47ce1c, Compile 0x47bae4, Register 0x47eaec,
// Unregister 0x47d6fc, handleEvent 0x47ba5c, InitWithCurrentQty 0x47aba4, DBG trace 0x47af38, GetPositions 0x47a1d4).
#pragma once

#include "dh2/Objective_Qty.hpp"

class IEvent;
class EventManager;
class Vector3DFList;
class ItemInstance;
struct __sFILE;

class Objective_GatherLoot : public Objective_Qty {
public:
    ~Objective_GatherLoot() override;                                                   // slot 0x00/0x04: D1 0x47a1f0, D0 0x47ce1c (frees)

    // Overrides of Objective and Objective_EventReceiver slots, in vtable order.
    void Compile() override;                                                            // slot 0x08: 0x47bae4
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;          // slot 0x0c: 0x47af38 prints Loot, Qty, Level and CurrentQty
    void Register() override;                                                           // slot 0x18: 0x47eaec, also adds the loot id to the owner's gathering list
    void Unregister() override;                                                         // slot 0x1c: 0x47d6fc, also calls ItemInventory::UnregisterQuestGatheringItemId for the loot id
    void GetPositions(Vector3DFList& positions) const override;                         // slot 0x20: 0x47a1d4, empty
    bool handleEvent(const IEvent* event, const EventManager* manager) override;        // slot 0x38: 0x47ba5c refreshes m_currentQty, completes at the required count

    // Non-virtual.
    ItemInstance* InitWithCurrentQty();                                                 // 0x47aba4 looks the loot id up in the owner's ItemInventory, sets m_currentQty
};
