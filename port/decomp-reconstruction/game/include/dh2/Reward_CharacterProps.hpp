// Reward_CharacterProps: a quest reward that changes one character property by an amount. Give calls
// Character::ModifyCharProps on the character at +0x18 once Compile has set the compiled flag.
// Original 32-bit size 0x1c (28): operator new(0x1c) in GetRewardImplInstance<Reward_CharacterProps>.
// Reconstructed from libDungeonHunter2.so pseudocode: dtors 0x482a70 (D1) and 0x483884 (D0), Compile
// 0x4828a8, Give 0x4833e8, DBG_TraceDetailedRewardInformation 0x483330.
#pragma once

#include "dh2/Reward.hpp"

struct __sFILE;
class Character;

class Reward_CharacterProps : public Reward {
public:
    // Overrides of Reward slots, in vtable order.
    ~Reward_CharacterProps() override;                                  // slot 0x00: 0x482a70 (D1); slot 0x04: 0x483884 (D0)
    bool Give() override;                                               // slot 0x08: 0x4833e8. Returns the compiled flag, or true after ModifyCharProps
    Reward* Compile() override;                                         // slot 0x0c: 0x4828a8. Sets the compiled flag and copies m_pyData to m_compiledStub
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override;        // slot 0x10: 0x483330. Prints "v2QuestRewardGiveCharProps", the type, amount and property

    // Reward occupies +0x00 .. +0x17.
    Character* m_character;                                             // +0x18 the character Give changes: Give passes it to ModifyCharProps, and the trace reads its CharProperties at +0x560. No queued function stores it (SetOwner writes Reward +0x10)
};
