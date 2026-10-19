// SpawnSpot: a GameObject that joins a spawn group in SpawnGroupManager, which then spawns from it. It is object
// type 20 (GetNewInstance<SpawnSpot> passes GO_IDS 20). The "group" property names the group. InitFinal joins
// the group when the spawn probability and the activation condition pass, and the destructor leaves it.
// Original 32-bit size 0x38c (908), from GetNewInstance<SpawnSpot>'s operator new(0x38c). GameObject occupies
// +0x00 .. +0x373; the single member below follows it.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3ea8e4 / 0x3ea94c, dtors 0x3ea808 / 0x3ea86c /
// 0x3ea888, DeclareProperties 0x3eaa98, InitFinal 0x3ea7b8, PlaceObject 0x3ea704).
#pragma once

#include <string>

#include "dh2/GameObject.hpp"

class SpawnSpot : public GameObject {
public:
    explicit SpawnSpot(ObjectBase::GO_IDS id);                          // 0x3ea8e4 (C1), 0x3ea94c (C2)
    ~SpawnSpot() override;                                              // 0x3ea808 (D1), 0x3ea86c (D0, deleting), 0x3ea888 (D2); removes the spot from its group

    // Overrides of GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 6  (+0x18): 0x3eaa98, declares "group"
    void InitPost() override;                                           // slot 7  (+0x1c): 0x3ea7fc, a thunk to GameObject::InitPost
    void InitFinal() override;                                          // slot 22 (+0x58): 0x3ea7b8, when CheckSpawnProbability is below m_spawnProb runs GameObject::InitFinal, then joins the group if MeetCondition
    bool IsUpdatable() const override;                                  // slot 14 (+0x38): 0x3ea6e4, false
    bool IsAnimated() const override;                                   // slot 32 (+0x80): 0x3ea6f4, false
    bool IsInteractive(GameObject* other) const override;               // slot 34 (+0x88): 0x3ea6fc, false
    bool IsZonable() const override;                                    // slot 49 (+0xc4): 0x3ea6ec, true

    // Places an object on this spot: copies m_position and m_rotation to it.
    void PlaceObject(GameObject* object);                               // 0x3ea704

    // SpawnSpot's own member (GameObject ends at +0x374).
    std::string m_group;                                                // +0x374 property "group", empty by default (24 bytes)
};
