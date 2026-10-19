// QE_DestroyGameObject: quest event for the DestroyGameObject objective. Its vtable reuses
// QE_InteractWith::FillNetworkMsg (0x4823c8), so it derives from QE_InteractWith. The match key at
// +0x18 is the DataID (Track A's source_data_id). No members of its own were found in the
// destructors, so the layout is QE_InteractWith's.
// Original 32-bit size not recovered (no allocation found).
// Reconstructed from libDungeonHunter2.so: destructors 0x3a0ce8 (D1), 0x3a0d6c (D0).
#pragma once

#include "dh2/QE_InteractWith.hpp"

class QE_DestroyGameObject : public QE_InteractWith {
public:
    ~QE_DestroyGameObject() override;   // 0x3a0ce8 (D1), 0x3a0d6c (D0); slots 0x00, 0x04
    // FillNetworkMsg (slot 0x0c) is inherited from QE_InteractWith (0x4823c8).
};
