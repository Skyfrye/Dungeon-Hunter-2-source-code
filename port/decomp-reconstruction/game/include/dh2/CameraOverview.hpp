// CameraOverview: the level overview camera. Activated attaches it to EventManager and places it over the
// local player; Update moves the node to the player's focus point plus an offset, which the keys A/D/W/S/E/Q
// change and X resets.
// Original 32-bit size 0x28 (40), allocated with operator new(40).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x410ea4 / 0x41106c, Update 0x411234, onEvent 0x410930).
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point3D

#include "dh2/CameraBase.hpp"
#include "dh2/IEventReceiver.hpp"

class IEvent;
class EventManager;

class CameraOverview : public CameraBase,        // +0x00
                       public IEventReceiver {   // +0x0c (vptr of the secondary vtable at +0x20)
public:
    CameraOverview();                                                  // 0x410ea4 (C2) / 0x41106c (C1)
    ~CameraOverview() override;                                        // 0x410c64 (D1), 0x410cb4 (D0), 0x410cd0 (D2)

    // Overrides in primary vtable slot order. The onEvent entry is a primary slot; the IEventReceiver
    // thunk for it sits at secondary +0x28.
    void Activated() override;                                         // slot 0x08: 0x410aec
    void Deactivated() override;                                       // slot 0x0c: 0x410ac4
    void Update() override;                                            // slot 0x10: 0x411234
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // slot 0x14: 0x410930

    // CameraBase occupies +0x00 .. +0x0b and the IEventReceiver vptr is at +0x0c. The members are all floats.
    Point3D<float> unk_10;                                             // +0x10 x, y, z; Activated and Update copy it from the local player object (its +0x160..+0x168) when present
    Point3D<float> unk_1c;                                             // +0x1c x: A/D add -100/+100; y: S/W add -100/+100; z: E/Q set +100/-100 while held, release clears it
                                                                       // Update sets the node x, y to unk_10 + unk_1c (x, y); the node's z is its own z plus unk_1c.z. X and Activated clear unk_1c.
};
