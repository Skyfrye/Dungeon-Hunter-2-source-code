// PODecor: the PhysicalObject of static scenery. Decor::InitPost, AnimatedDecor::InitPost and Container::InitFinal build
// one for a visual with a collision marker. The body is static (zero density), a box, with group 0, category 2 and mask
// 0xffff. PODecor adds no members, so its layout is PhysicalObject's (+0x00 .. +0x27).
// Original 32-bit size 0x28 (40), allocated with operator new(40).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x388a2c, clone 0x39fc2c, D1 0x470078, D0 0x470188).
#pragma once

#include "dh2/PhysicalObject.hpp"

class GameObject;
class PhysicalWorld;
template <typename T> struct Point2D;

// The vtable (_ZTV7PODecor, 48 bytes: offset-to-top, typeinfo, then ten slots) differs from PhysicalObject's only in
// slots 0, 1 and 3. Slots 2 and 4 to 9 are PhysicalObject's.
class PODecor : public PhysicalObject {
public:
    // world, owner: the physics world and the owning GameObject. The constructor calls PhysicalObject with isStatic true,
    // isCircle, isSensor and isBullet false, group 0, category 2, mask 0xffff and unused 1, then stores its own vtable
    // pointer and nothing else. The bool argument is never read (Hex-Rays a4 is unused, and the assembly does not load it).
    PODecor(PhysicalWorld* world, GameObject* owner, bool unused);      // 0x388a2c, clone 0x39fc2c

    // A PODecor body built with explicit PhysicalObject arguments: LiftableObject::InitFinal constructs a PhysicalObject (isStatic false) and stores
    // the PODecor vtable pointer over it, which is what this constructor does.
    PODecor(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle, bool isSensor, bool isBullet, short group,
            unsigned short category, unsigned short mask, int unused)
        : PhysicalObject(world, owner, isStatic, isCircle, isSensor, isBullet, group, category, mask, unused) {}

    // Overrides of PhysicalObject slots, in vtable order.
    ~PODecor() override;                                                // slot 0/1: 0x470078 (D1), 0x470188 (D0, also calls CustomFree)
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;    // slot 3: 0x470074 (empty)

    // PhysicalObject occupies +0x00 .. +0x27. PODecor declares no members beyond it.
};
