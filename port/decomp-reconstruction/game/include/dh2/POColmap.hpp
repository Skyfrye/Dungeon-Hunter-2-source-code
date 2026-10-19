// POColmap: a PhysicalObject subclass. Only its destructors are recovered, and it adds no members or
// virtuals of its own: its vtable (_ZTV8POColmap, 48 bytes) has the same ten slots as PhysicalObject's,
// and its destructors reset the vptr and call ~PhysicalObject. The original 32-bit size is not recovered
// (the constructor is not in the queue).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x388628 D1, 0x388dcc D0).
#pragma once

#include "dh2/PhysicalObject.hpp"

class POColmap : public PhysicalObject {
public:
    // No constructor symbol exists: ColBox::InitPost (0x3884fc) builds a PhysicalObject and stores the POColmap vtable pointer over it.
    // This constructor is that PhysicalObject constructor with the same arguments.
    POColmap(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle, bool isSensor, bool isBullet, short group,
             unsigned short category, unsigned short mask, int unused)
        : PhysicalObject(world, owner, isStatic, isCircle, isSensor, isBullet, group, category, mask, unused) {}
    // Vtable slots 0 and 1 (the destructors). Slots 2 to 9 are PhysicalObject's and are not redeclared here.
    ~POColmap() override;                                               // +0x00, +0x04: 0x388628 (D1), 0x388dcc (D0)
};
