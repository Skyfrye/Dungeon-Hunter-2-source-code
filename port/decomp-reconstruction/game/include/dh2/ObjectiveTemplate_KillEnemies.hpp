// ObjectiveTemplate_KillEnemies: the kill-all-enemies objective (v2QuestKillEnemies and
// v2QuestKillEnemyTemplate). It is ObjectiveTemplate_KillCharacter with a different Compile: the required
// quantity comes from the row (row+0x28) instead of the loaded enemies. It adds no members.
// Template arguments are the same as ObjectiveTemplate_KillCharacter (see that header).
// Original 32-bit size 0x30 (48), the same as its base (inferred).
// Reconstructed from libDungeonHunter2.so pseudocode (KillEnemies instance: dtors 0x47d2e4 / 0x47e83c,
// Compile 0x47ed70; KillEnemyTemplate instance: dtors 0x47d1f4 / 0x47e894, Compile 0x47ee18).
#pragma once

#include "dh2/ObjectiveTemplate_KillCharacter.hpp"

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
class ObjectiveTemplate_KillEnemies : public ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase> {
public:
    // Overrides of Objective slots, in vtable order. Slots 0x00 and 0x04 are the destructors. DBG, GetPositions
    // and handleEvent are inherited from ObjectiveTemplate_KillCharacter.
    ~ObjectiveTemplate_KillEnemies() override;                                          // slot 0x00/0x04: D1 0x47d2e4, D0 0x47e83c (frees)
    void Compile() override;                                                            // slot 0x08: 0x47ed70 sets m_requiredQty from row+0x28 and checks the level
};
