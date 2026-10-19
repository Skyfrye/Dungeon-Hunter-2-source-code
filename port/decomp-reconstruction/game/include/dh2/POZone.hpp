// POZone: the physics body of a Zone. Its owner (PhysicalBaseObject::m_owner, +0x08) is the Zone,
// and each collision callback forwards to the matching virtual of that Zone: OnCollision (slot +0xc8),
// OnCollisionBegins (+0xcc), OnCollisionPersists (+0xd0) and OnCollisionEnds (+0xd4).
// Original 32-bit size 0x28 (40) as far as the evidence shows: no members of its own, so the object
// is a PhysicalObject with the POZone vtable pointer. No constructor symbol is recovered (no _ZN6POZoneC* in the ELF). The Zone sites (0x397594, 0x39771c) build a
// PhysicalObject inline and store _ZTV6POZone+8 (0x969018). Door::InitPost (0x3e7da8) builds the same PhysicalObject
// arguments but stores _ZTV7PODecor+8 (0x968f88), so it is a PODecor, not a POZone.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x470728 / 0x4709a0, callbacks 0x470840 ..).
#pragma once

#include <cstdint>

#include "dh2/PhysicalObject.hpp"

class PhysicalBaseObject;
class PhysicalWorld;
class GameObject;
template <typename T> struct Point2D;

class POZone : public PhysicalObject {
public:
    // No constructor symbol exists: Zone::InitWithBoundingBox (0x397594) and Zone::InitPost (0x39771c) build a PhysicalObject and store the
    // POZone vtable pointer over it. This constructor is that PhysicalObject constructor with the same arguments.
    POZone(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle, bool isSensor, bool isBullet, short group,
           unsigned short category, unsigned short mask, int unused)
        : PhysicalObject(world, owner, isStatic, isCircle, isSensor, isBullet, group, category, mask, unused) {}
    ~POZone() override;                                             // +0x00/+0x04 0x470728 (D1), 0x4709a0 (D0)

    // Vtable slots +0x08 .. +0x14 are POZone's own. +0x18 .. +0x24 are PhysicalObject's.
    // Runs PhysicalObject::onCollisionTest and returns its result. When it passes and the owner
    // and the other GameObject are both set, the owner's virtual slot +0xc8 is called with that GameObject.
    bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                         unsigned short otherMask, short group, unsigned short category,
                         unsigned short mask) override;            // +0x08 0x470840
    // Forwards the other GameObject to the owner's slot +0xcc (Zone::OnCollisionBegins).
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;  // +0x0c 0x4707f4
    // Forwards the other GameObject to the owner's slot +0xd0 (Zone::OnCollisionPersists).
    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override; // +0x10 0x4707a8
    // Forwards the other GameObject to the owner's slot +0xd4 (Zone::OnCollisionEnds).
    void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;     // +0x14 0x47075c
};
