// CheckpointZone: a Zone that saves a checkpoint when the local player enters it. It is built as a
// sensor with physics and player-only filtering (Zone(id, true, true)). It also keeps a set of the
// characters that touched it. Original 32-bit size not recovered: the set ends at +0x39f.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39594c / 0x3959b4).
#pragma once

#include <set>

#include "dh2/Zone.hpp"

class Character;

class CheckpointZone : public Zone {
public:
    explicit CheckpointZone(ObjectBase::GO_IDS id);                     // 0x39594c (C1) / 0x3959b4 (C2)
    ~CheckpointZone() override;                                         // 0x395b38 (D1), 0x395bb4 (D0), 0x395bd0 (D2)

    // Override of the Zone slot, in vtable order.
    // Calls Level::CheckpointSave for the local player at m_position (guarded by a Point3D equality test against the
    // character's m_savedPoint, Character +0x1468), then inserts each entering character into the set unless already present.
    void OnCollisionBegins(GameObject* other) override;                 // slot 0xcc: 0x395f04

    // Zone occupies +0x00 .. +0x387.
    std::set<Character*> unk_388;                                       // +0x388 std::set header, 24 bytes in the original
                                                                        // (STLport _Rb_tree: root at +0x38c, count at +0x398)
};
