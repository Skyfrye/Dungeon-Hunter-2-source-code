// PFInnerTest_PathValidity: path-validity predicate for the inner graph search. An edge is valid when
// its own virtual check passes. A node is valid when its own virtual check passes and bit 0 (mask 0x1) of its
// floor's object flags (PFFloor +0x20) is set. It has no members of its own and does not override operator(), so
// its vtable slot 0 stays null (pure in ITest). Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode (isValid 0x52503c and 0x525054).
#pragma once

#include "dh2/sfc/math/graph/ITest.hpp"

class PFGInnerEdge;
class PFGInnerNode;

class PFInnerTest_PathValidity : public sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> {
public:
    // Overrides of ITest slots, in vtable order after operator() at slot 0.
    bool isValid(const PFGInnerEdge* edge) const override;   // slot 1: 0x52503c, calls the edge's virtual slot +0x18
    bool isValid(const PFGInnerNode* node) const override;   // slot 2: 0x525054, calls the node's virtual slot +0x04
};
