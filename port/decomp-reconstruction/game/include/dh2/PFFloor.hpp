// PFFloor: one walkable floor of a room's navigation mesh. It keeps a copy of the mesh and its triangles, the
// midpoint nodes and edges built from those triangles, and the neighbouring floors it was linked to.
// Original 32-bit size 0xcc (204): PFRoom::_LoadFloor allocates it with operator new(0xcc) and runs the
// constructor with objectFlags 1. The layout ends with the edge list at +0xc0 .. +0xcb.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x51d40c, _LoadNavMesh 0x520b40, _CreateNodes 0x520588).
#pragma once

#include <cmath>
#include <cstdint>
#include <map>
#include <set>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"

class PFRoom;
class PFGOuterGraph;
class PFGInnerGraph;
class PFGInnerNode;
class PFGInnerEdge;
namespace glitch {
namespace core {
template <typename T> struct triangle3d;
}  // namespace core
namespace scene {
class IMeshSceneNode;
}  // namespace scene
}  // namespace glitch

// The key of PFFloor::m_nodeByPos: a midpoint position, 12 bytes (X +0x00, Y +0x04, Z +0x08). The original comparator
// (inlined in every _Rb_tree lookup, at 0x51bc78 and 0x51bf28) compares X first, then Y, and Z last. X and Y are
// equal when they differ by less than 0.0001; the first pair that differs by more decides. A Point3D converts
// implicitly, so the map is searched with a position directly.
struct CompPos {
    CompPos() = default;
    CompPos(const Point3D<float>& position) : pos(position) {}  // NOLINT: implicit on purpose, see above

    bool operator<(const CompPos& other) const {
        const float epsilon = 0.0001f;
        if (std::fabs(pos.X - other.pos.X) >= epsilon) {
            return pos.X < other.pos.X;
        }
        if (std::fabs(pos.Y - other.pos.Y) >= epsilon) {
            return pos.Y < other.pos.Y;
        }
        return pos.Z < other.pos.Z;
    }

    Point3D<float> pos;  // +0x00 .. +0x08
};

class PFFloor {
public:
    // A triangle-edge midpoint that the floor's query rejected. Original 32-bit size 0x38 (56). Its neighbour
    // pointers are 4 bytes in the original and host width here.
    struct InvalidNode {
        Point3D<float> m_position;                  // +0x00 midpoint of source and destination
        Point3D<float> m_source;                    // +0x0c one endpoint of the rejected triangle edge
        Point3D<float> m_destination;               // +0x18 the other endpoint
        PFGInnerNode* m_neighbours[2];              // +0x24 nodes of the triangle's other two edges
        Point3D<float> m_normal;                    // +0x2c normal of the triangle
    };

    // The ctor's asserts name m_room, m_oGraph and m_iGraph. objectFlags is stored at +0x20.
    PFFloor(const char* name, PFRoom* room, PFGOuterGraph* oGraph, PFGInnerGraph* iGraph,
            std::uint32_t objectFlags);                                     // 0x51d1b4 (C1) / 0x51d40c (C2)
    virtual ~PFFloor();                                                     // slot 0: 0x51cca4 (D1), slot 1: 0x51ce20 (D0, frees); D2 0x51ce3c

    // Ray query against the floor's triangle selector. The first form returns the hit point, the second also
    // returns the triangle that was hit. Both return false when nothing is hit.
    bool GetCollisionAt(const Point3D<float>& start, const Point3D<float>& end,
                        Point3D<float>& hit);                               // 0x51b874
    bool GetCollisionAt(const Point3D<float>& start, Point3D<float>& hit,
                        glitch::core::triangle3d<float>& triangle);         // 0x51b96c
    // Floor height under a point: height receives the hit Z, normal the triangle's normal. Either may be null.
    bool GetFloorHeightAt(const Point3D<float>& point, float* height,
                          Point3D<float>* normal);                          // 0x51badc

    void _PostLoad();                                                       // 0x51bee8: clears m_invalidNodes and unk_b4
    PFGInnerNode* _GetNodeAt(const Point3D<float>& point) const;            // 0x51c0bc
    PFGInnerNode* _GetNodeAt(const Point3D<float>& point);                  // 0x51c0dc
    void _DBG_Draw();                                                       // 0x51c2c0
    PFGInnerEdge* _CreateEdge(PFGInnerNode* from, PFGInnerNode* to);       // 0x51e98c: adds an edge, sets its weight and clearance, appends it to m_edges
    // Finds or creates the node at the midpoint of a and b. normal is the triangle normal. force skips the
    // floor-support test on the two offset points.
    PFGInnerNode* _CreateNode(const Point3D<float>& a, const Point3D<float>& b,
                              const Point3D<float>& normal, bool force);    // 0x51fa64
    void _Link(PFFloor* other);                                             // 0x51fd78: links this floor and other, creating cross-floor edges
    void _CreateNodes(glitch::core::triangle3d<float>* triangles,
                      unsigned int count);                                  // 0x520588: triangle edges to nodes, edges and invalid nodes
    void _LoadNavMesh(glitch::scene::IMeshSceneNode* mesh);                 // 0x520b40: copies the mesh, reads floortypes, builds the triangles

    // Members in original order. Offsets are the original 32-bit ones; pointers are host width.
    std::string m_name;                                                     // +0x04 name passed to the ctor (24 bytes)
    PFRoom* m_room;                                                         // +0x1c room that loaded the floor (assert name "m_room")
    std::uint32_t m_objectFlags;                                            // +0x20 1 from PFRoom; 0x01000000 stops node creation (_CreateNode, _CreateNodes), 0x02000000 stops edges (_CreateEdge), 0x04000000 stops links (_Link); _LoadNavMesh adds 0x07000000 to a void or wall floor
    std::uint32_t m_typeMask;                                               // +0x24 type bits: 0x01000000 void, 0x02000000 wall, 1 hole, 2 water (_LoadNavMesh)
    std::string m_floorTypes;                                               // +0x28 value of the "floortypes" property, searched by _LoadNavMesh (24 bytes)
    glitch::scene::IMeshSceneNode* m_navMesh;                               // +0x40 copy of the floor's mesh, dropped in the dtor
    Point3D<float> m_boundsMin;                                             // +0x44 selector bounds minimum; z is 1000 below the mesh
    Point3D<float> m_boundsMax;                                             // +0x50 selector bounds maximum; z is 1000 above the mesh
    Point3D<float> m_position;                                              // +0x5c position of the mesh copy, read after CopyMeshSceneNode
    glitch::core::triangle3d<float>* m_triangles;                           // +0x68 owned array of triangles (36 bytes each), each vertex z raised by 1
    int m_triangleCount;                                                    // +0x6c number of triangles in m_triangles
    PFGOuterGraph* m_oGraph;                                                // +0x70 outer graph (assert name "m_oGraph")
    PFGInnerGraph* m_iGraph;                                                // +0x74 inner graph the nodes and edges go into (assert name "m_iGraph")
    std::set<PFFloor*> m_linkedFloors;                                      // +0x78 floors linked with this one by _Link (20 bytes in the original)
    std::uint8_t pad_8c[4];                                                 // +0x8c never touched by the ctor, dtor or the functions above
    std::map<CompPos, PFGInnerNode*> m_nodeByPos;                           // +0x90 nodes by midpoint position, used by _CreateNode and _GetNodeAt (20 bytes)
    std::uint8_t pad_a4[4];                                                 // +0xa4 never touched by the ctor, dtor or the functions above
    std::vector<InvalidNode> m_invalidNodes;                                // +0xa8 rejected midpoints, filled by _CreateNodes and read by _Link (12 bytes)
    std::vector<Point3D<float>> unk_b4;                                     // +0xb4 cleared by _PostLoad alongside m_invalidNodes; no other use seen (12 bytes)
    std::vector<PFGInnerEdge*> m_edges;                                     // +0xc0 edges returned by _CreateEdge (12 bytes)
};
