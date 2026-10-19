// PFGInnerGraph: the inner path-finding graph of a floor, a GraphSparse of PFGInnerEdge, with one member of its own: the
// node id counter at +0x1c (PFFloor::_CreateNode adds one and passes the result to addNode; PFWorld::_Init allocates the
// graph with operator new(0x20) and zeroes the counter). Both destructors reset the vtable pointer and destroy the
// GraphSparse base (the deleting variant also frees the object). No constructor address was found, so none is
// declared. The original size is 0x20.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x523480 and 0x5234b4, DBG_GetMemUsage 0x52ddd0).
#pragma once

#include <cstdint>

#include "dh2/sfc/math/graph/GraphSparse.hpp"

class PFGInnerEdge;

class PFGInnerGraph : public sfc::math::graph::GraphSparse<PFGInnerEdge> {
public:
    ~PFGInnerGraph() override;      // slot 0: 0x523480 (D1), slot 1: 0x5234b4 (D0, frees)

    // Debug estimate of the graph's memory: 44 bytes per node plus 24 bytes per edge held by each node (the count
    // of its edge map, at node +0x3c).
    int DBG_GetMemUsage() const;    // 0x52ddd0

    // GraphSparse occupies +0x00 .. +0x17; +0x18 is not touched by any recovered function.
    std::uint32_t unk_18 = 0;       // +0x18
    std::uint32_t m_nodeCounter = 0;  // +0x1c the last node id handed out by PFFloor::_CreateNode (starts at 0)
};
