// Condition: abstract base of the progression tests a ConditionList evaluates. Each concrete class
// (Condition_IsEventInState, Condition_IsLevelInState, Condition_IsPlayerAtLevel, ...) overrides Eval.
// Original 32-bit size 0x8 (8): vptr at +0x0 and m_stub at +0x4. The concrete classes add no members:
// GetConditionImplInstance<T> allocates 8 bytes for each and runs Condition::Condition on it.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x478648, 0x478674; dtors 0x4786a0,
// 0x4786d8, 0x478e90; Compile 0x478634; trace 0x478fcc).
#pragma once

#include <cstddef>

struct __sFILE;

namespace Structs {
class v2ConditionStub;
}  // namespace Structs

class Condition {
public:
    Condition();                                                            // 0x478648 (C2), 0x478674 (C1)

    // Virtuals in vtable order (_ZTV9Condition has 5 slots, 0x14 bytes).
    virtual ~Condition();                                                   // slot 0x00: 0x4786d8 (D1); D2 0x4786a0 is empty
                                                                            // slot 0x04: 0x478e90 (D0, deleting)
    virtual bool Eval() = 0;                                                // slot 0x08: pure
    virtual void Compile();                                                 // slot 0x0c: 0x478634, empty body
    virtual std::size_t DBG_TraceDetailedConditionInformation(__sFILE* stream);  // slot 0x10: 0x478fcc, "Unimplemented Trace for Condition"

    // +0x00 vptr (the Condition vtable, off_969280). Not declared as a member.
    Structs::v2ConditionStub* m_stub;                                       // +0x04 element of ConditionList::m_stubs, set by AssignPyData
};
