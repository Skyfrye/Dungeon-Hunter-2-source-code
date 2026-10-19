// Reward_ConsumeLoot: a quest reward that takes an item from the owner's inventory. Give tries
// ItemInventory::TryConsuming with the record's item index and quantity (record +0x0c and +0x08); when that fails it
// calls ItemInventory::FindItem. Give always returns false.
// Compile sets the compiled flag when the record's item index (+0x0c) is not negative. Unlike Reward_Gold and
// Reward_Loot it does not copy the record pointer to +0x14, and Give reads the record through +0x0c.
// Adds no data members to Reward: the layout is Reward's. The vtable (_ZTV18Reward_ConsumeLoot, 28 bytes) holds the
// two destructor slots, Give, Compile and DBG_TraceDetailedRewardInformation, in the order Reward declares them.
// Original allocation 0x14 bytes: GetRewardImplInstance<Reward_ConsumeLoot> (0x482d80, operator new(0x14), asm verified). That is one word
// short of Reward's 0x18 footprint, so the base word at +0x14 (m_compiledStub) lies past the allocation. The source factory still uses sizeof.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x482a08 D1 / 0x48380c D0, Compile 0x4828d0,
// Give 0x483034, DBG_TraceDetailedRewardInformation 0x482f4c). The derived constructor is not in the queue.
#pragma once

#include "dh2/Reward.hpp"

struct __sFILE;

class Reward_ConsumeLoot : public Reward {
public:
    // Overrides of Reward slots, in vtable order.
    ~Reward_ConsumeLoot() override;                                     // slot 0x00: 0x482a08 (D1); slot 0x04: 0x48380c (D0)
    bool Give() override;                                               // slot 0x08: 0x483034. Consumes the item from the owner's inventory; always false
    Reward* Compile() override;                                         // slot 0x0c: 0x4828d0. Sets the compiled flag when record +0x0c is not negative; returns this
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override;        // slot 0x10: 0x482f4c. Prints the ItemTable name for +0x0c, then the ItemTable name for +0x08 under "%d" (kept as recovered)

    // No members of its own. Reward occupies the layout.
};
