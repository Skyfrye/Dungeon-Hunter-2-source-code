// Objective_Qty: an abstract Objective_EventReceiver that tracks a quantity gathered so far. Objective_GatherLoot
// compares it with the row's required count, and Objective_SavedQty saves it. GetPositions (slot 0x20) and
// handleEvent (slot 0x38) stay pure here, as in Objective_EventReceiver; the subclasses implement them.
// Original 32-bit size 0x24 (36), inferred: the last member is at +0x20, and the GatherLoot factory allocates 0x24.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x47a290 / 0x47cd6c; the GatherLoot trace 0x47af38 prints CurrentQty).
#pragma once

#include "dh2/Objective_EventReceiver.hpp"

class Objective_Qty : public Objective_EventReceiver {
public:
    ~Objective_Qty() override;                                                          // slot 0x00/0x04: D1 0x47a290, D0 0x47cd6c (frees)

    // Objective_EventReceiver occupies +0x00 .. +0x1f.
    int m_currentQty;                                                                   // +0x20 quantity gathered so far (GatherLoot "CurrentQty"), saved by Objective_SavedQty
};
