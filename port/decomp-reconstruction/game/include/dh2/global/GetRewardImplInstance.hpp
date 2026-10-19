// Free <global> factories GetRewardImplInstance<T>() for the quest reward classes (batch
// g1-game-app-global-f216b6-19 and its sibling batches). Each allocates one reward of class T, runs its
// constructors and returns it as a Reward*. RewardList builds each body through these per-type factories
// (see dh2/Reward.hpp).
// The primary template is declared but not defined; every instance is an explicit specialization, declared
// here so that callers never fall back to an implicit instantiation.
// The classes are forward-declared on purpose: a caller that needs a reward's members includes its header.
#pragma once

class Reward;
class Reward_ConsumeLoot;
class Reward_Loot;
class Reward_CharacterProps;
class Reward_XP;
class Reward_Gold;

template <class T>
Reward* GetRewardImplInstance();

template <>
Reward* GetRewardImplInstance<Reward_ConsumeLoot>();        // 0x482d80
template <>
Reward* GetRewardImplInstance<Reward_Loot>();              // 0x482dd8
template <>
Reward* GetRewardImplInstance<Reward_CharacterProps>();     // 0x482e34
template <>
Reward* GetRewardImplInstance<Reward_XP>();                 // 0x482e94
template <>
Reward* GetRewardImplInstance<Reward_Gold>();               // 0x482ef0
