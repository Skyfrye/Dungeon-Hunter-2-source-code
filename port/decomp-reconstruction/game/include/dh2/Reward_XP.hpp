// Reward_XP: a quest reward that grants experience. Give calls Character::_GiveXP with the record's amount shifted
// left by 8, once Compile has set the compiled flag.
// Adds no data members to Reward: the layout is Reward's. The vtable (_ZTV9Reward_XP, 28 bytes) holds the two
// destructor slots, Give, Compile and DBG_TraceDetailedRewardInformation, in the order Reward declares them.
// Original 32-bit size not recovered: class-facts has no operator new size for this class.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x482aa4 D1 / 0x4838c0 D0, Compile 0x482894,
// Give 0x483420, DBG_TraceDetailedRewardInformation 0x483160). The derived constructor is not in the queue.
#pragma once

#include "dh2/Reward.hpp"

struct __sFILE;

class Reward_XP : public Reward {
public:
    // Overrides of Reward slots, in vtable order.
    ~Reward_XP() override;                                              // slot 0x00: 0x482aa4 (D1); slot 0x04: 0x4838c0 (D0)
    bool Give() override;                                               // slot 0x08: 0x483420. Grants record+0x08 << 8 XP through Character::_GiveXP
    Reward* Compile() override;                                         // slot 0x0c: 0x482894. Sets the compiled flag, copies +0x0c to +0x14, returns this
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override;        // slot 0x10: 0x483160. Prints "v2QuestRewardGiveXP" with the type and the XP

    // No members of its own. Reward occupies the layout.
};
