// PFInnerTest_BasicIdentity: inner graph test that accepts one node. operator() returns true when the
// argument is the stored node pointer. Its isValid overloads are the ITest defaults.
// Original 32-bit size 0x8 (inferred from the members; no allocation was seen): vptr at +0x00 (inherited),
// node pointer at +0x04.
// Reconstructed from libDungeonHunter2.so pseudocode (operator() 0x525028).
#pragma once

#include "dh2/sfc/math/graph/ITest.hpp"

class PFGInnerEdge;
class PFGInnerNode;

class PFInnerTest_BasicIdentity : public sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> {
public:
    bool operator()(const PFGInnerNode* node) const override;   // slot 0: 0x525028, returns unk_4 == node

    const PFGInnerNode* unk_4;                                  // +0x04 the node compared by operator()
};
