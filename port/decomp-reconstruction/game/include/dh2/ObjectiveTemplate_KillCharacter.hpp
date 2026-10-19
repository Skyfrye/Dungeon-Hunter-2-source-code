// ObjectiveTemplate_KillCharacter: an objective that counts kills of one enemy type in one level
// (v2QuestKillEnemies, v2QuestClearEnemies and their Template variants). Compile sets the required
// quantity from the enemies of the type loaded in the current level. handleEvent counts the kill events
// whose enemy id matches the row, and completes the objective when the count reaches the requirement.
//
// Template arguments, as the instantiations in the queue show:
//   TStruct  the Structs::v2Quest row (v2QuestKillEnemies, v2QuestClearEnemies, v2QuestKillEnemyTemplate, ...)
//   TEvent   the QE_ event class of that row (QE_KillEnemies, QE_ClearEnemies, ...)
//   TTest    the test class used by HasEnemyOfTypeLoaded: TestCharPropId or TestCharTemplate
//   TBase    the base class; Objective_SavedQty in every instantiation (its vtable slots 0x28..0x30 are its own)
// TBase is a template argument, so this header does not include Objective_SavedQty.
//
// Original 32-bit size 0x30 (48) for the instantiations built on Objective_SavedQty (0x24 bytes, inferred):
// the members below start at +0x24. operator new sizes of 48 match this layout.
// Reconstructed from libDungeonHunter2.so pseudocode (KillEnemies instance: dtors 0x47d334 / 0x47e78c,
// Compile 0x47efe0, handleEvent 0x47f100, GetPositions 0x47ca18, DBG 0x47b640). Each method has one
// copy per instantiation in queue.csv.
#pragma once

#include <cstdint>

class IEvent;
class EventManager;
class Vector3DFList;
struct __sFILE;

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
class ObjectiveTemplate_KillCharacter : public TBase {
public:
    // Overrides of Objective slots, in vtable order. Slots 0x00 and 0x04 are the destructors.
    ~ObjectiveTemplate_KillCharacter() override;                                        // slot 0x00/0x04: D1 0x47d334, D0 0x47e78c (frees)
    void Compile() override;                                                            // slot 0x08: 0x47efe0 counts loaded enemies into m_requiredQty
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;          // slot 0x0c: 0x47b640 prints the level, enemy type, Qty and CurrQty
    void GetPositions(Vector3DFList& positions) const override;                         // slot 0x20: 0x47ca18 adds the positions of the enemies of the type
    bool handleEvent(const IEvent* event, const EventManager* manager) override;        // slot 0x38: 0x47f100 counts a matching kill, completes at m_requiredQty

    // Objective_SavedQty occupies +0x00 .. +0x23; its counter at +0x20 is the quantity these methods count.
    // Members of this class, from +0x24 on.
    TStruct* m_questRow;                                                                // +0x24 copy of the Objective data pointer (+0x0c), set by Compile
    uint8_t pad_28[4];                                                                  // +0x28 not touched by the methods
    int m_requiredQty;                                                                  // +0x2c KillEnemies: row+0x28; KillCharacter: enemies of the type loaded in the level
};
