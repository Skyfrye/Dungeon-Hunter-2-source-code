// Condition_IsPlayerInLevel: a Condition that is true while the current level is the one named by its
// v2ConditionStub row. Eval compares the row's level index (+0x08, an Arrays::LevelList index) with the
// current level's index at Level +0x3c. The row pointer lives in Condition +0x04. Adds no members.
// Original 32-bit size 8 (GetConditionImplInstance<Condition_IsPlayerInLevel> news 8 bytes).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4787dc / 0x479230, Eval 0x478d78,
// DBG trace 0x478ba4). There is no out-of-line constructor: the global GetConditionImplInstance
// (0x478a80) allocates the object, zeroes it and stores the vptr.
#pragma once

#include <cstddef>

#include "dh2/Condition.hpp"

struct __sFILE;

class Condition_IsPlayerInLevel : public Condition {
public:
    // Overrides of Condition slots, in vtable order. Compile (slot +0x0c) is inherited unchanged.
    ~Condition_IsPlayerInLevel() override;                                // slot +0x00 D1 0x4787dc, slot +0x04 D0 0x479230
    bool Eval() override;                                                 // slot +0x08: 0x478d78
    std::size_t DBG_TraceDetailedConditionInformation(__sFILE* stream) override;  // slot +0x10: 0x478ba4 prints "Level : <name>" (the original returns fprintf's int; std::size_t as the base)

    // Condition occupies +0x00 .. +0x07. Nothing else is stored.
};
