// PFGOuterEdge: a directed edge of the world's outer path-finding graph (PFGOuterGraph = GraphSparse<PFGOuterEdge>). Like PFGOuterNode it has
// no code in the binary (the only symbol is the static-initializer stub of PathFinding/Graph/PFGOuterEdge.cpp, 0x52deac) and nothing creates
// one, so the class is the plain Edge<PFGOuterNode, float>: vptr at +0x00, from +0x04, to +0x08, weight +0x0c (16 bytes). The edge map of
// GraphSparse<PFGOuterEdge>::_InNode owns the edges; clear deletes each one through the vtable's slot 8 (the deleting destructor of Edge,
// the same slot PFGInnerEdge uses), which is why the class has to be complete there.
// Layout decision (owner oa): the weight type is float as for the inner edge; the binary does not show it.
#pragma once

#include "dh2/PFGOuterNode.hpp"
#include "dh2/sfc/math/graph/Edge.hpp"

class PFGOuterEdge : public sfc::math::graph::Edge<PFGOuterNode, float> {
public:
    ~PFGOuterEdge() override = default;  // slot 7 (D1) / slot 8 (D0, frees)
};
