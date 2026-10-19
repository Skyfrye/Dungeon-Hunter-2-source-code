// Condition_IsLevelInState: a level-state test whose Eval is a stub that always returns true. Original
// 32-bit size 0x8 (8): no members beyond Condition.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x478844, 0x47917c; Eval 0x478638; trace 0x478fb0).
#pragma once

#include <cstddef>

#include "dh2/Condition.hpp"

struct __sFILE;

class Condition_IsLevelInState : public Condition {
public:
    // Overrides of Condition slots, in vtable order. Compile (slot 0x0c) is inherited.
    ~Condition_IsLevelInState() override;                                   // slot 0x00: 0x478844 (D1)
                                                                            // slot 0x04: 0x47917c (D0, deleting)
    bool Eval() override;                                                   // slot 0x08: 0x478638, returns true
    std::size_t DBG_TraceDetailedConditionInformation(__sFILE* stream) override;  // slot 0x10: 0x478fb0, "Condition_IsLevelInState"
};
