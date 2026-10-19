// Objective_TalkToNPC: an ObjectiveTemplate_InteractWith for v2QuestTalkToNPC. The template supplies Compile,
// handleEvent, GetPositions and the NPC id (m_objectId, +0x24). This class shows an interaction marker over the NPC
// once the objective is compiled (rows of type 5 only), and sets a flag on the NPC character while registered.
// Original 32-bit size 0x2c (44), from the GetObjectiveImplInstance<Objective_TalkToNPC> factory (operator new(0x2c)),
// which also writes -1 to m_objectId and null to m_objectiveMarker.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x47d474 / 0x47cd14, InstallObjectiveMarker 0x47d8e8,
// RemoveObjectiveMarker 0x47da6c, Register 0x47db34, Unregister 0x47dbc4).
#pragma once

#include "dh2/ObjectiveTemplate_InteractWith.hpp"

namespace Structs {
class v2QuestTalkToNPC;
}  // namespace Structs
class QE_TalkToNPC;
class AnimatedFX;

class Objective_TalkToNPC : public ObjectiveTemplate_InteractWith<Structs::v2QuestTalkToNPC, QE_TalkToNPC> {
public:
    ~Objective_TalkToNPC() override;                                                    // slot 0x00/0x04: D1 0x47d474, D0 0x47cd14 (frees)

    // Overrides of Objective slots, in vtable order. Compile, DBG, GetPositions and handleEvent come from the template.
    void InstallObjectiveMarker(int markerKind, int markerIndex) override;              // slot 0x10: 0x47d8e8, the two ints pick the marker's design-settings entry
    void RemoveObjectiveMarker() override;                                              // slot 0x14: 0x47da6c, hides the marker effect
    void Register() override;                                                           // slot 0x18: 0x47db34, Objective_EventReceiver::Register, then the NPC flag
    void Unregister() override;                                                         // slot 0x1c: 0x47dbc4, Objective_EventReceiver::Unregister, then clears the NPC flag

    // ObjectiveTemplate_InteractWith occupies +0x00 .. +0x27 (m_objectId at +0x24).
    AnimatedFX* m_objectiveMarker;                                                      // +0x28 marker effect grabbed by InstallObjectiveMarker, hidden by RemoveObjectiveMarker
};
