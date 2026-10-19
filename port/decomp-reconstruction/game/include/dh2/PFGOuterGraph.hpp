// PFGOuterGraph: the outer path-finding graph of the world, a GraphSparse of PFGOuterEdge.
// It adds no members of its own: both destructors only reset the vtable pointer and destroy the
// GraphSparse base (the deleting variant also frees the object). No constructor address was found,
// so none is declared; the original size is the GraphSparse base size and is not recorded here.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x523164 and 0x523198).
#pragma once

#include "dh2/sfc/math/graph/GraphSparse.hpp"

class PFGOuterEdge;

class PFGOuterGraph : public sfc::math::graph::GraphSparse<PFGOuterEdge> {
public:
    // Vtable has only the two destructor slots; the primary vtable address point is the first.
    ~PFGOuterGraph() override;          // slot 0: 0x523164 (D1), slot 1: 0x523198 (D0, frees)
};
