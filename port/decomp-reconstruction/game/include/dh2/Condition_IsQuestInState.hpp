// Condition_IsQuestInState: true when one quest is in exactly the required state. It is a
// Condition_IsQuestInStateGeneric whose m_comparator is COMPARE_EQUAL (0), set by
// GetConditionImplInstance<Condition_IsQuestInState> (0x478b5c).
// Original 32-bit size 12 (operator new(12) in that factory). Adds no members.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4788e0 / 0x479320).
#pragma once

#include "dh2/Condition_IsQuestInStateGeneric.hpp"

class Condition_IsQuestInState : public Condition_IsQuestInStateGeneric {
public:
    // Overrides of the dtor slots. Eval, DBG_TraceDetailedConditionInformation and Compile are
    // inherited from Condition_IsQuestInStateGeneric and Condition.
    ~Condition_IsQuestInState() override;                                 // slot +0x00 D1 0x4788e0, slot +0x04 D0 0x479320
};
