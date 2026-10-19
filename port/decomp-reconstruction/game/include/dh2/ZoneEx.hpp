// ZoneEx: a Zone that keeps the set of objects currently inside it, with character and player
// counts. Base of Trigger and TriggerTrap.
// Original 32-bit size 0x3a8 (936).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x397ec0).
#pragma once

#include <cstdint>
#include <set>

#include "dh2/Zone.hpp"

class ZoneEx : public Zone {
public:
    ZoneEx(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly);    // 0x397ec0 / 0x397f28
    ~ZoneEx() override;                                                 // 0x39865c, 0x3986d8, 0x3986f4

    void Update() override;                                             // slot 0x2c: 0x3980a8 drops objects that left the box
    void OnCollisionBegins(GameObject* other) override;                 // 0x39858c
    void OnCollisionEnds(GameObject* other) override;                   // 0x398200

    int GetNumCharacters() const;                                       // 0x397e9c
    int GetNumPlayers() const;                                          // 0x397ea4
    int GetNumObjects() const;                                          // 0x397eac objects that are not characters

    // Zone occupies +0x00 .. +0x387.
    std::set<GameObject*> m_objectsInside;                              // +0x388 STLport _Rb_tree, 24 bytes in the original
    int m_numCharacters;                                                // +0x3a0 characters inside (IsCharacter slot 0x24)
    int m_numPlayers;                                                   // +0x3a4 players inside (IsPlayer slot 0x28)
};
