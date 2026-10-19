// PFInnerTest_PFObject: path-validity test for one PFObject. Adds the object's checks to PFInnerTest_PathValidity:
// an edge needs clearance (edge +0x14) at least the object's radius (PFObject +0x08), and a node must pass
// PFObject::CanPathOn for its floor (node +0x28). Original 32-bit size 0x8: vptr at +0x00 (inherited), the
// PFObject pointer at +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode (isValid 0x525080 and 0x52510c).
#pragma once

#include "dh2/PFInnerTest_PathValidity.hpp"

class PFObject;
class PFGInnerEdge;
class PFGInnerNode;

class PFInnerTest_PFObject : public PFInnerTest_PathValidity {
public:
    // Overrides of PathValidity slots, in vtable order. Slot 0 (operator()) is still null.
    bool isValid(const PFGInnerEdge* edge) const override;   // slot 1: 0x525080
    bool isValid(const PFGInnerNode* node) const override;   // slot 2: 0x52510c

    // PathValidity occupies +0x00 .. +0x03.
    PFObject* m_object;                                      // +0x04 the object under test (radius at PFObject +0x08)
};
