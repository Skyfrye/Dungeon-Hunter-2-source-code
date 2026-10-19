// PFGInnerNode: a node of a floor's inner path-finding graph, one per midpoint of a triangle edge.
// Its base Node<unsigned int> is the graph node (vptr at +0x00, id at +0x04). GraphSparse<PFGInnerEdge>::addNode
// allocates the node as its _InNode (0x44 bytes): the PFGInnerNode part below is 0x2c bytes and the node's
// outgoing-edge map (keyed by destination id, see GraphSparse::addEdge) follows it. The original has no constructor
// for this class; addNode writes the defaults
// (zero position, zero direction, zero width and length, floor 0) and PFFloor::_CreateNode fills them in.
// Original 32-bit size 0x2c (44) for the PFGInnerNode part.
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x51b83c and 0x51c17c, fields from PFFloor::_CreateNode 0x51fa64).
#pragma once

#include "core-platform/deps/game_types.hpp"
#include "dh2/sfc/math/graph/Node.hpp"

class PFFloor;

class PFGInnerNode : public sfc::math::graph::Node<unsigned int> {
public:
    ~PFGInnerNode() override;                       // slot 2: 0x51b83c (D1, empty), slot 3: 0x51c17c (D0, frees)

    // Node<unsigned int> occupies +0x00 .. +0x07.
    Point3D<float> m_position;                      // +0x08 midpoint of the triangle edge; PFGInnerEdge::GetSource/GetDestination return it
    Point3D<float> m_direction;                     // +0x14 normalised (B - A) of the triangle edge that created the node
    float m_width;                                  // +0x20 3D length of that edge (_CreateNode stores it here and at +0x24)
    float m_length;                                 // +0x24 3D length of that edge
    PFFloor* m_floor;                               // +0x28 the floor whose PFFloor::_CreateNode made the node
};
