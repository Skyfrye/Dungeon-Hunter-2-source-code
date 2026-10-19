// Reward_Loot: a quest reward that drops a loot table entry at the owner's position. Give calls
// ItemObject::DropLootTable with the record's loot index (record +0x0c), once Compile has set the compiled flag.
// Adds no data members to Reward: the layout is Reward's. The vtable (_ZTV11Reward_Loot, 28 bytes) holds the two
// destructor slots, Give, Compile and DBG_TraceDetailedRewardInformation, in the order Reward declares them.
// Original 32-bit size not recovered: class-facts has no operator new size for this class.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x482a3c D1 / 0x483848 D0, Compile 0x4828bc,
// Give 0x4832ec, DBG_TraceDetailedRewardInformation 0x483088). The derived constructor is not in the queue.
#pragma once

#include "dh2/Reward.hpp"

struct __sFILE;

class Reward_Loot : public Reward {
public:
    // Overrides of Reward slots, in vtable order.
    ~Reward_Loot() override;                                            // slot 0x00: 0x482a3c (D1); slot 0x04: 0x483848 (D0)
    bool Give() override;                                               // slot 0x08: 0x4832ec. Drops the loot table entry at the owner's position
    Reward* Compile() override;                                         // slot 0x0c: 0x4828bc. Sets the compiled flag, copies +0x0c to +0x14, returns this
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override;        // slot 0x10: 0x483088. Prints "v2QuestRewardGiveLoot" with the type and the loot name

    // No members of its own. Reward occupies the layout.
};
