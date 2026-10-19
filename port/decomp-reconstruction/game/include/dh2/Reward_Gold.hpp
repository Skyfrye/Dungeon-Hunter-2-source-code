// Reward_Gold: a quest reward that grants gold. Give adds the record's amount to the owner's gold through
// ItemInventory::AddGold, once Compile has set the compiled flag.
// Adds no data members to Reward: the layout is Reward's. The vtable (_ZTV11Reward_Gold, 28 bytes) holds the two
// destructor slots, Give, Compile and DBG_TraceDetailedRewardInformation, in the order Reward declares them.
// Original 32-bit size not recovered: class-facts has no operator new size for this class.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x482ad8 D1 / 0x4837d0 D0, Compile 0x482880,
// Give 0x483480, DBG_TraceDetailedRewardInformation 0x4831ec). The derived constructor is not in the queue.
#pragma once

#include "dh2/Reward.hpp"

struct __sFILE;

class Reward_Gold : public Reward {
public:
    // Overrides of Reward slots, in vtable order.
    ~Reward_Gold() override;                                            // slot 0x00: 0x482ad8 (D1); slot 0x04: 0x4837d0 (D0)
    bool Give() override;                                               // slot 0x08: 0x483480. Returns the compiled flag, or true after the grant
    Reward* Compile() override;                                         // slot 0x0c: 0x482880. Sets the compiled flag, copies +0x0c to +0x14, returns this
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override;        // slot 0x10: 0x4831ec. Prints "v2QuestRewardGiveGold" with the type and the gold

    // No members of its own. Reward occupies the layout.
};
