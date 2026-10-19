// Objective_Automatic: a v2QuestAutomatic objective. Compile marks it valid and completes it at once, so it
// has no event subscription: Register, Unregister and GetPositions are empty in the original.
// Adds no members to Objective and no virtuals beyond the Objective vtable (13 slots, 0x34 bytes).
// Original 32-bit size 0x18 (inferred: no members beyond Objective; no ctor or operator new size in the queue).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x47a864 / 0x47c6b4, Compile 0x47bd80).
#pragma once

#include "dh2/Objective.hpp"

class Vector3DFList;
struct __sFILE;

class Objective_Automatic : public Objective {
public:
    // Overrides of Objective slots, in vtable order. Slots 0x00 and 0x04 are the destructors.
    ~Objective_Automatic() override;                                                    // slot 0x00/0x04: 0x47a864 D1, 0x47c6b4 D0 (frees)
    void Compile() override;                                                            // slot 0x08: 0x47bd80 sets the valid flag, then Objective::SetIsCompleted
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override;          // slot 0x0c: 0x47b364 prints "v2QuestAutomatic" and the type name
    void Register() override;                                                           // slot 0x18: 0x47a1dc, empty
    void Unregister() override;                                                         // slot 0x1c: 0x47a1e0, empty
    void GetPositions(Vector3DFList& positions) const override;                         // slot 0x20: 0x47a1d8, empty
};
