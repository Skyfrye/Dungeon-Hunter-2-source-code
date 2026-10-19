// Condition_IsQuestInStateGeneric: a Condition over one quest. The v2ConditionStub row (Condition +0x04)
// holds the quest id at +0x08 and the required state at +0x0c. Eval gets the local player's character,
// looks the quest up with SG_GetQuestByID(id, -1) and compares the quest's first field (its actual
// state) with the required state, using m_comparator. Base of Condition_IsQuestInState,
// Condition_IsQuestStateLower and Condition_IsQuestStateHigher, which set m_comparator in their
// GetConditionImplInstance functions.
// Original 32-bit size 12 (the 12-byte factory allocations of the three derived types).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4786a4 / 0x4791b8, Eval 0x478fe8,
// DBG trace 0x478cc4).
#pragma once

#include <cstddef>

#include "dh2/Condition.hpp"

struct __sFILE;

class Condition_IsQuestInStateGeneric : public Condition {
public:
    // Values of m_comparator, as Eval reads them. Any other value makes Eval return false, after the
    // quest lookup.
    enum Comparators {
        COMPARE_EQUAL = 0,    // required == actual state (Condition_IsQuestInState)
        COMPARE_LOWER = 1,    // required > actual, so the quest state is lower (Condition_IsQuestStateLower)
        COMPARE_HIGHER = 2,   // required < actual, so the quest state is higher (Condition_IsQuestStateHigher)
    };

    // Overrides of Condition slots, in vtable order. Compile (slot +0x0c) is inherited unchanged.
    ~Condition_IsQuestInStateGeneric() override;                          // slot +0x00 D1 0x4786a4, slot +0x04 D0 0x4791b8
    bool Eval() override;                                                 // slot +0x08: 0x478fe8
    std::size_t DBG_TraceDetailedConditionInformation(__sFILE* stream) override;  // slot +0x10: 0x478cc4 prints "Quest" and "State" (the original returns fprintf's int; std::size_t as the base)

    // Condition occupies +0x00 .. +0x07.
    int m_comparator;                                                     // +0x08 Comparators value: 0, 1 or 2
};
