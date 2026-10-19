// QuestMoveInZone: a Zone that raises a MoveInZone quest event when a character enters its box.
// Created by GetNewInstance<QuestMoveInZone> (0x340f50) with GO_IDS 20. The factory allocates 904 bytes.
// Original 32-bit size 0x388 (904), the same as Zone: the class adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x396330, OnCollisionBegins 0x396120).
#pragma once

#include "dh2/Zone.hpp"

class QuestMoveInZone : public Zone {
public:
    // Calls Zone(id, hasPhysics=true, playerOnly=false), so the sensor uses filter mask 1310.
    explicit QuestMoveInZone(ObjectBase::GO_IDS id);                    // 0x396330 / 0x396378
    // D1 restores the three vptrs and runs Zone::~Zone. D0 (deleting) runs D1 and frees the object.
    ~QuestMoveInZone() override;                                        // 0x39628c (D1), 0x3962f0 (D2), 0x3962d4 (D0)

    // Override of Zone's collision slot. Vtable slot 0xcc (Zone declares it at 0xcc as well).
    // Raises a QE_MoveInZone through EventManager::RaiseAsync only when other->IsCharacter() (slot 0x24) is true.
    void OnCollisionBegins(GameObject* other) override;                 // slot 0xcc: 0x396120

    // Zone occupies +0x00 .. +0x387. QuestMoveInZone declares no members: its ctor and destructors
    // write only the vptrs at +0x00, +0x04 and +0x24. The zone's network id is ObjectBase::unk_64 (+0x64),
    // read by OnCollisionBegins as the target id of the raised event.
};
