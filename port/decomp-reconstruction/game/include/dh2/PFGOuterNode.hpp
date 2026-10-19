// PFGOuterNode: a node of the world's outer path-finding graph (PFGOuterGraph = GraphSparse<PFGOuterEdge>). The binary has no code for
// this class (the only symbol is the static-initializer stub of PathFinding/Graph/PFGOuterNode.cpp, 0x52deec), and nothing in the game
// ever adds a node to the outer graph, so the class is the plain Node<unsigned int>: vptr at +0x00, id at +0x04 (8 bytes in the original).
// GraphSparse<PFGOuterEdge>::_InNode derives from it and adds the outgoing-edge map at +0x08; GraphSparse<PFGOuterEdge>::clear deletes the nodes
// through the node vtable's slot 3 (the deleting destructor of Node<unsigned int>), which is why the class has to be complete there.
// Layout decision (owner oa): the class is declared from the clear body at 0x522f70, which is the only code that touches it.
#pragma once

#include "dh2/sfc/math/graph/Node.hpp"

class PFGOuterNode : public sfc::math::graph::Node<unsigned int> {
public:
    ~PFGOuterNode() override = default;  // slot 2 / slot 3 of Node<unsigned int>
};
