// Condition_IsQuestStateLower: true when one quest's state is lower than the required state. It is a
// Condition_IsQuestInStateGeneric whose m_comparator is COMPARE_LOWER (1), set by
// GetConditionImplInstance<Condition_IsQuestStateLower> (0x478b14).
// Original 32-bit size 12 (operator new(12) in that factory). Adds no members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4788ac / 0x4792e4).
#pragma once

#include "dh2/Condition_IsQuestInStateGeneric.hpp"

class Condition_IsQuestStateLower : public Condition_IsQuestInStateGeneric {
public:
    // Overrides of the dtor slots. Eval, DBG_TraceDetailedConditionInformation and Compile are
    // inherited from Condition_IsQuestInStateGeneric and Condition.
    ~Condition_IsQuestStateLower() override;                              // slot +0x00 D1 0x4788ac, slot +0x04 D0 0x4792e4
};
