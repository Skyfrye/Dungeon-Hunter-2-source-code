// Objective_SavedQty: an Objective_Qty whose quantity survives a savegame. _saveData writes the quantity after
// the Objective fields, _loadData reads it back, and _resetData zeroes it. Base of the ObjectiveTemplate_*
// family (InteractWith, KillCharacter and KillEnemies instantiations).
// Original 32-bit size 0x24 (36), inferred: Objective_SavedQty adds no members beyond Objective_Qty.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x47a240 / 0x47ce74, _resetData 0x47a388, _loadData 0x47ab54, _saveData 0x47ab84).
#pragma once

#include "dh2/Objective_Qty.hpp"

class IStreamBase;

class Objective_SavedQty : public Objective_Qty {
public:
    ~Objective_SavedQty() override;                                                     // slot 0x00/0x04: D1 0x47a240, D0 0x47ce74 (frees)

    // Overrides of Objective slots, in vtable order. Each calls the Objective version first, then handles m_currentQty.
    void _loadData(IStreamBase* stream) override;                                       // slot 0x28: 0x47ab54, reads the quantity as int
    void _saveData(IStreamBase* stream) override;                                       // slot 0x2c: 0x47ab84, writes the quantity as int
    void _resetData() override;                                                         // slot 0x30: 0x47a388, zeroes the quantity

    // No members of its own: Objective_Qty occupies +0x00 .. +0x23.
};
