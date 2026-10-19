// Reward: base of the quest reward bodies. A RewardList owns one Reward per pydata reward stub
// (Structs::v2QuestRewardStub, 16 bytes each) and builds each body through a per-type factory
// (GetRewardImplInstance<T>). The stub type constant picks the derived class: Reward_Gold,
// Reward_XP, Reward_Loot, Reward_ConsumeLoot or Reward_CharacterProps.
// Original 32-bit size: the base occupies +0x00 .. +0x17. Reward_Gold allocates 0x18 with no members of its
// own; Reward_CharacterProps allocates 0x1c (one more Character pointer at +0x18).
// Reconstructed from libDungeonHunter2.so pseudocode: ctors 0x482ca0 (C1) and 0x482d10 (C2), dtors 0x4828e8
// (D2), 0x4828ec (D1), 0x482b8c (D0), Compile 0x482870, GetParam1 0x482874, DBG_TraceDetailedRewardInformation 0x483278.
#pragma once

struct __sFILE;
class Character;

namespace Structs {
class v2QuestRewardStub;
}  // namespace Structs

class Reward {
public:
    Reward();                                                           // 0x482ca0 (C1), 0x482d10 (C2)

    // Virtual slots, in vtable order. The vtable is 28 bytes: two destructor slots, then the four below.
    virtual ~Reward();                                                  // slot 0x00: 0x4828ec (D1); slot 0x04: 0x482b8c (D0); D2 0x4828e8 is the same body
    virtual bool Give() = 0;                                            // slot 0x08: pure here; each derived reward type overrides it (Reward_CharacterProps 0x4833e8)
    virtual Reward* Compile();                                          // slot 0x0c: 0x482870. The body is empty, so it returns this
    virtual int DBG_TraceDetailedRewardInformation(__sFILE* s);         // slot 0x10: 0x483278. Writes "Unimplemented Trace for reward" and the type name

    int GetParam1();                                                    // 0x482874. Returns the stub's +0x08 word (m_pyData->m_w2)

    // Reward occupies +0x00 .. +0x17 of the derived objects. The stub words are the pydata v2QuestRewardStub
    // fields: m_w1 at +0x04 (type), m_w2 at +0x08 (amount or parameter 1), m_w3 at +0x0c (property).
    int m_type;                                                         // +0x04 v2QuestRewardType constant of the stub; "Invalid" from the constructor
    bool m_compiled;                                                    // +0x08 set by the derived Compile; cleared by RewardList::InvalidateCompile
    Structs::v2QuestRewardStub* m_pyData;                               // +0x0c the stub row this reward was built from, inside RewardList's pydata array
    Character* m_owner;                                                 // +0x10 owner set by RewardList::SetOwner (see Reward_CharacterProps for the second owner pointer)
    Structs::v2QuestRewardStub* m_compiledStub;                         // +0x14 copy of m_pyData made by the derived Compile; Give reads the amount and property through it
};
