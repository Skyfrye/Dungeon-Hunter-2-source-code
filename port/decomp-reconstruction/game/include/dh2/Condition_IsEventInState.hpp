// Condition_IsEventInState: true when a v2Event of the current level is in a given state. Eval reads the
// event id from m_stub +0x8 (Structs::v2ConditionStub::m_w2) and the state from m_stub +0xc (m_w3), looks
// the event up in the current level's GameEventManager and compares states. Original 32-bit size 0x8 (8):
// no members beyond Condition.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4787a8, 0x4791f4; Eval 0x478db4; trace 0x478c10).
#pragma once

#include <cstddef>

#include "dh2/Condition.hpp"

struct __sFILE;

class Condition_IsEventInState : public Condition {
public:
    // Overrides of Condition slots, in vtable order. Compile (slot 0x0c) is inherited.
    ~Condition_IsEventInState() override;                                   // slot 0x00: 0x4787a8 (D1)
                                                                            // slot 0x04: 0x4791f4 (D0, deleting)
    bool Eval() override;                                                   // slot 0x08: 0x478db4
    std::size_t DBG_TraceDetailedConditionInformation(__sFILE* stream) override;  // slot 0x10: 0x478c10, prints Event and State (the original returns fprintf's int)
};
