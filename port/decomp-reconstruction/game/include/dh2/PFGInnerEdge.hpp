// PFGInnerEdge: a directed edge of a floor's inner graph, from one triangle-edge midpoint node to another.
// The base Edge<PFGInnerNode, float> holds the vptr (+0x00), from (+0x04), to (+0x08) and weight (+0x0c).
// PFFloor::_CreateEdge sets the weight to the 3D distance between the node centres and also stores it at +0x10.
// GraphSparse<PFGInnerEdge>::addEdge allocates the edge with operator new(0x18).
// Original 32-bit size 0x18 (24).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x51b840 and 0x51c114, GetSource 0x51b844,
// GetDestination 0x51b85c, PFFloor::_CreateEdge 0x51e98c).
#pragma once

#include "core-platform/deps/game_types.hpp"
#include "dh2/sfc/math/graph/Edge.hpp"

class PFGInnerNode;

class PFGInnerEdge : public sfc::math::graph::Edge<PFGInnerNode, float> {
public:
    ~PFGInnerEdge() override;                                       // slot 7: 0x51b840 (D1, empty), slot 8: 0x51c114 (D0, frees)
    virtual const Point3D<float>* GetSource() const;                // slot 9: 0x51b844, the from node's m_position (node +0x08)
    virtual const Point3D<float>* GetDestination() const;           // slot 10: 0x51b85c, the to node's m_position (node +0x08)

    // Edge<PFGInnerNode, float> occupies +0x00 .. +0x0f.
    float m_distance;                                               // +0x10 3D distance between the node centres (_CreateEdge)
    float m_clearance;                                              // +0x14 smaller of the two endpoint widths (_CreateEdge)
};
