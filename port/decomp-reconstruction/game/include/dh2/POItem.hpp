// POItem: the physics body of a dropped item. Its collision callbacks forward Begins and Ends to
// ItemObject (GameObject state 3 only) when a Character touches it; Persists is empty.
// Original 32-bit size not recovered: no constructor or own field access was found in the
// queue, so the layout stops at PhysicalObject (+0x00 .. +0x27).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x4701c8 / 0x470430).
#pragma once

#include "dh2/PhysicalObject.hpp"

class ItemObject;
template <typename T> struct Point2D;

class POItem : public PhysicalObject {
public:
    // The binary has no POItem constructor: ItemObject::InitAgain (0x3ec0f0) runs the PhysicalObject constructor on a 0x28-byte
    // block and then stores the POItem vtable (_ZTV6POItem + 8) over it. The inherited constructor builds the same object.
    using PhysicalObject::PhysicalObject;

    // Overrides of PhysicalObject / PhysicalBaseObject slots, in vtable order (_ZTV6POItem, 48 bytes).
    // Slots 2, 6 and 7..9 are inherited from PhysicalObject unchanged.
    ~POItem() override;                                                 // slot 0/1: 0x4701c8, 0x470430
    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;   // slot 3: 0x4702a8
    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override; // slot 4: 0x4701c4 (empty)
    void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override;     // slot 5: 0x4701fc

    // PhysicalObject occupies +0x00 .. +0x27. No own fields are recovered yet.
};
