// RewardList: the rewards of one Quest, embedded at Quest +0x38. AssignPyData builds one Reward per
// pydata stub through the reward factory. Give, Compile and the trace forward to each Reward in order.
// Original 32-bit size 0x24 (36): Quest +0x38 .. +0x5b, and Quest's next member is at +0x5c.
// RewardList has no vtable, so its destructor is not virtual.
// Reconstructed from libDungeonHunter2.so pseudocode: ctors 0x482b0c (C1) and 0x482b4c (C2), dtors 0x482ba8 (D1)
// and 0x482c24 (D2), SetOwner 0x4828f0, Give 0x482920, Compile 0x482978, DBG_TraceDetailedRewardListInformation
// 0x4829bc, CreateRewardString 0x4835a0, InvalidateCompile 0x4838fc, AssignPyData 0x483950.
#pragma once

#include <cstdint>
#include <string>

struct __sFILE;
class Character;
class Reward;

namespace Structs {
class v2QuestRewardStub;
}  // namespace Structs

class RewardList {
public:
    RewardList();                                                       // 0x482b4c (C2), 0x482b0c (C1)
    ~RewardList();                                                      // 0x482c24 (D2), 0x482ba8 (D1)

    // Stores the pydata array and the count, clears the text and builds one Reward per stub.
    // A nonpositive count keeps the existing array.
    void AssignPyData(Structs::v2QuestRewardStub* pyData, int count);   // 0x483950
    void SetOwner(Character* owner);                                    // 0x4828f0. Writes the owner into each Reward (+0x10)
    bool Give();                                                        // 0x482920. Gives each reward; stops at the first that returns false. True when empty
    void Compile();                                                     // 0x482978. Compiles each reward through its virtual slot 0x0c
    void DBG_TraceDetailedRewardListInformation(__sFILE* s) const;      // 0x4829bc. Traces each reward through its virtual slot 0x10
    void CreateRewardString();                                          // 0x4835a0. Builds m_rewardString from the text of the compiled rewards
    void InvalidateCompile();                                           // 0x4838fc. Clears m_rewardString and the compiled flag of each reward

    int m_count;                                                        // +0x00 number of rewards; the array and the stubs are this long
    Reward** m_rewards;                                                 // +0x04 array of m_count Reward pointers, from operator new[]
    std::string m_rewardString;                                         // +0x08 the reward text built by CreateRewardString (32-bit string storage)
    uint8_t pad_14[4];                                                  // +0x14 not touched by the queued functions
    void* unk_18;                                                       // +0x18 the constructor stores the address of m_rewardString here; never read in the queue
    void* unk_1c;                                                       // +0x1c the same store as +0x18; never read in the queue
    Structs::v2QuestRewardStub* m_pyData;                               // +0x20 pydata stub array (16 bytes per stub); set by AssignPyData, zeroed by the constructor
};
