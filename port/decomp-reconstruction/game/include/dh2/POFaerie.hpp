// POFaerie: a POCharacter (PhysicalObject body of a Character) that adds no virtual methods of its own.
// Original 32-bit size not recovered: the queue holds only its destructors and no constructor or
// own field access, so the layout stops at POCharacter (+0x00 .. base size unknown).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3b38c0 / 0x3b44d0, vtable _ZTV8POFaerie, 52 bytes).
#pragma once

#include "dh2/POCharacter.hpp"

class POFaerie : public POCharacter {
public:
    // Vtable slots in order: 0/1 this class's destructors. Slots 2..6 are POCharacter's
    // collision overrides, 7..9 PhysicalObject's, and 10 POCharacter::onCollisionResults(PhysicalBaseObject*,
    // Point2D<float> const&, bool). All of them are inherited unchanged.
    // The original builds these with the POCharacter constructor clone (0x3b4010) and then stores the derived vtable pointer.
    POFaerie(PhysicalWorld* world, GameObject* owner, short group, unsigned short category, unsigned short mask, bool isBullet, bool unused)
        : POCharacter(world, owner, group, category, mask, isBullet, unused) {}
    ~POFaerie() override;                                                     // slot 0/1: 0x3b38c0, 0x3b44d0
};
