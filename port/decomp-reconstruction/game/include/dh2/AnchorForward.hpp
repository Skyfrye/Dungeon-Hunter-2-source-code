// AnchorForward: an AnchorBase whose constructor takes three tuning floats, named by the asserts in the original
// constructor (m_MAX_DISTANCE, m_DIST_PERSEC, m_THRESHOLD). Update moves m_position with a state (0..5), a speed
// capped at 0.4 * m_MAX_DISTANCE and a 350 ms countdown.
// Original 32-bit size 0x64 (100); AnchorBase occupies +0x00 .. +0x1b.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x477a80 / 0x477cd4, Reset 0x4779dc, Update 0x47734c).
#pragma once

#include <cstdint>

#include "dh2/AnchorBase.hpp"
#include "dh2/Point3D.hpp"

class Character;
class GameObject;

class AnchorForward : public AnchorBase {
public:
    AnchorForward(GameObject* go, float maxDistance, float distPerSec, float threshold,
                  AnchorBase::AnchorType type);                         // 0x477a80 (C1), 0x477cd4 (C2)
    ~AnchorForward() override;                                          // +0x00, +0x04: 0x4779fc (D1), 0x477a30 (D0), 0x477a4c (D2)

    // Overrides of AnchorBase slots, in vtable order.
    void Reset() override;                                              // +0x08 0x4779dc
    void Update() override;                                             // +0x0c 0x47734c

    // AnchorBase occupies +0x00 .. +0x1b.
    float m_MAX_DISTANCE;                                               // +0x1c ctor argument, asserted >= 0; the speed cap is 0.4 of it
    float m_DIST_PERSEC;                                                // +0x20 ctor argument, asserted >= 0; added to or taken from the speed each step
    float m_THRESHOLD;                                                  // +0x24 ctor argument, asserted in [0, 1]
    Character* unk_28;                                                  // +0x28 set from the GameObject handle when go is non-null; Update reads its state machine
    Point3D<float> unk_2c;                                              // +0x2c copy of the GameObject position, refreshed by most paths of Update, zeroed by Reset
    bool unk_38;                                                        // +0x38 0 at construction; selects the first or the second branch of Update
    uint8_t pad_39[3];                                                  // +0x39 .. +0x3b
    int32_t unk_3c;                                                     // +0x3c state, 5 at construction, set to 0 .. 5 by Update
    Point3D<float> unk_40;                                              // +0x40 copy of the GameObject position on the move path, zeroed by the constructor
    bool unk_4c;                                                        // +0x4c 0 at construction; set while the countdown at +0x50 runs
    uint8_t pad_4d[3];                                                  // +0x4d .. +0x4f
    int32_t unk_50;                                                     // +0x50 countdown in ms, set to 350 by Update and reduced by Application::GetDt
    float unk_54;                                                       // +0x54 speed, capped at 0.4 * m_MAX_DISTANCE
    Point3D<float> unk_58;                                              // +0x58 direction, filled by GameObject::GetLookAtVec
};
