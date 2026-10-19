// QE_TriggerPlate: quest event for the TriggerPlate objective, the v2QuestTriggerPlate row. The objective is
// ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>. The class adds nothing to
// QE_InteractWith: no constructor and no members of its own. D1 does nothing, and D0 (the deleting form)
// resets the vtable pointer and calls operator delete.
// Original 32-bit size not recovered (no allocation found); the layout is QE_InteractWith's.
// Reconstructed from libDungeonHunter2.so: destructors 0x39a390 (D1), 0x39a4dc (D0).
#pragma once

#include "dh2/QE_InteractWith.hpp"

class QE_TriggerPlate : public QE_InteractWith {
public:
    ~QE_TriggerPlate() override;   // 0x39a390 (D1), 0x39a4dc (D0); slots 0x00, 0x04
    // IEvent::getEventID (slot 0x08) and QE_InteractWith::FillNetworkMsg (slot 0x0c) are inherited.
};
