// Condition_IsQuestStateHigher: true when one quest's state is higher than the required state. It is a
// Condition_IsQuestInStateGeneric whose m_comparator is COMPARE_HIGHER (2), set by
// GetConditionImplInstance<Condition_IsQuestStateHigher> (0x478acc).
// Original 32-bit size 12 (operator new(12) in that factory). Adds no members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x478878 / 0x4792a8).
#pragma once

#include "dh2/Condition_IsQuestInStateGeneric.hpp"

class Condition_IsQuestStateHigher : public Condition_IsQuestInStateGeneric {
public:
    // Overrides of the dtor slots. Eval, DBG_TraceDetailedConditionInformation and Compile are
    // inherited from Condition_IsQuestInStateGeneric and Condition.
    ~Condition_IsQuestStateHigher() override;                             // slot +0x00 D1 0x478878, slot +0x04 D0 0x4792a8
};
