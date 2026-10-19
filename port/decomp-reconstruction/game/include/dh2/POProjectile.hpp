// POProjectile: the physics body of a Projectile. Its collision callbacks forward to the owning
// GameObject: a hit on source id 9 calls the projectile's OnCollision (slot +0xd0), and the
// PhysicalWorld contact filter accepts source ids 9 and 10 only.
// Original 32-bit size 0x28 (40): no members of its own, the same as PhysicalObject. The object is
// built with the PhysicalObject constructor and then given the POProjectile vtable pointer.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x470480 / 0x4706ec, callbacks 0x470520 ..).
#pragma once

#include <cstdint>

#include "dh2/PhysicalObject.hpp"

class PhysicalBaseObject;
template <typename T> struct Point2D;

class PhysicalWorld;
class GameObject;

class POProjectile : public PhysicalObject {
public:
    // The original builds a PhysicalObject (operator new(40)) and stores the POProjectile vtable pointer over it; the C++ constructor is
    // that PhysicalObject constructor with the same arguments (Projectile::SetInfo passes isStatic false, isCircle, isSensor and isBullet true,
    // group 0, category 0x20, mask 0x51f, unused 0).
    POProjectile(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle, bool isSensor, bool isBullet, short group,
                 unsigned short category, unsigned short mask, int unused)
        : PhysicalObject(world, owner, isStatic, isCircle, isSensor, isBullet, group, category, mask, unused) {}
    ~POProjectile() override;                                       // +0x00/+0x04 0x470480 (D1), 0x4706ec (D0)

    // Vtable slots +0x08 .. +0x10 are POProjectile's own. +0x14 .. +0x24 are PhysicalObject's.
    // Runs PhysicalObject::onCollisionTest. When that passes and this body's owner (m_owner) has GameObject id
    // 9 (Projectile) or 10 (LaserTypeProjectile), it calls that owner's virtual slot +0xd0 (asm 0x4705d0,
    // Projectile::OnCollision) with the other body's owner and the owner's position. Always returns false (0).
    // The id 10 class has no header in the tree yet.
    bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                         unsigned short otherMask, short group, unsigned short category,
                         unsigned short mask) override;            // +0x08 0x470520
    // Begins: a hit whose GameObject has id 9 calls that object's virtual slot +0xd0 (Projectile::OnCollision).
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;  // +0x0c 0x4704b4
    // Persists: calls this object's own slot +0x0c (onCollisionBegins) with the same arguments (asm 0x47046c).
    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override; // +0x10 0x47046c
};
