// PFRoom: one room of the path-finding world. Owns the PFFloor objects loaded from the room's
// mesh children, and holds the room's bounding box, which PFWorld::GetRoomAt scans.
// Original 32-bit size 0x54 (84): PFWorld::LoadRoom allocates it with operator new(0x54) and
// runs the constructor. The layout ends with the bounding box at +0x3c..+0x53.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x521540, _LoadFloor 0x521eb8).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"

class PFWorld;
class PFFloor;
class PFGOuterGraph;
class PFGInnerGraph;
template <typename T> struct aabb;
namespace glitch {
namespace core {
template <typename T> struct triangle3d;
}  // namespace core
namespace scene {
class IMeshSceneNode;
}  // namespace scene
}  // namespace glitch

class PFRoom {
public:
    // The uint argument is stored in unk_1c. The asserts in the ctor name m_world, m_oGraph and m_iGraph.
    PFRoom(const char* name, std::uint32_t value, PFWorld* world, PFGOuterGraph* oGraph,
           PFGInnerGraph* iGraph);                                      // 0x521540 (C1) / 0x521718 (C2)
    virtual ~PFRoom();                                                  // slot 0: 0x521db0 (D1), slot 1: 0x521e9c (D0, frees); D2 0x521c54

    // Grows m_boundingBox and the owning world's box by the given box. Returns true when the world's max Z grew.
    bool ExtendBoundingBox(const aabb<float>& box);                     // 0x388218

    // Height query on the room's floors after a bounding-box test. Without includeAll, floors whose type has
    // the 0x03000000 mask are skipped. Returns the first floor that answers; floorOut may be null.
    bool GetFloorHeightAt(const Point3D<float>& point, float* height, Point3D<float>* normal,
                          PFFloor** floorOut, bool includeAll);         // 0x520f98

    // First-hit collision on the room's floors. Same bounding-box and floor-type filter as GetFloorHeightAt.
    bool GetCollisionAt(const Point3D<float>& start, Point3D<float>& hit,
                        glitch::core::triangle3d<float>& triangle, PFFloor** floorOut,
                        bool includeAll);                               // 0x52113c

    // Segment collision on the room's floors, without the triangle or floor output.
    bool GetCollisionAt(const Point3D<float>& start, const Point3D<float>& end, Point3D<float>& hit,
                        bool includeAll);                               // 0x5212e0

    void _DBG_Draw();                                                   // 0x5213c4: draws each floor
    void _PostLoad();                                                   // 0x521408: links floor pairs, then each floor's _PostLoad
    void _Link(PFRoom* other);                                          // 0x5219cc: links floors of this room to floors of other
    // 0x521eb8: appends a new PFFloor, loads its nav mesh, merges the floor's bounds into the room box and adds the
    // nav mesh to the scene manager's node map (SceneManager::AddNodeToMap).
    void _LoadFloor(glitch::scene::IMeshSceneNode* node, const char* name);

    // Room layout. Original 32-bit offsets are in the comments. The vtable pointer at +0x00 has only the dtor slots.
    std::string m_name;                 // +0x04 the name passed to the ctor (24 bytes in the original)
    std::uint32_t unk_1c;               // +0x1c the uint ctor argument; no PFRoom function reads it
    PFWorld* m_world;                   // +0x20 owning world; ExtendBoundingBox writes its bounds
    std::uint32_t m_flags;              // +0x24 zeroed by the ctor; bit 0 is the solid flag Decor::LoadFloorMap (0x388730) sets from Decor::m_isSolid
    PFGOuterGraph* m_oGraph;            // +0x28 passed to each PFFloor
    PFGInnerGraph* m_iGraph;            // +0x2c passed to each PFFloor
    std::vector<PFFloor*> m_floors;     // +0x30 begin, end, capacity; owned, each deleted by its virtual dtor
    Point3D<float> m_boundsMin;         // +0x3c minimum corner of the room's bounding box (aabb<float>)
    Point3D<float> m_boundsMax;         // +0x48 maximum corner; the box spans +0x3c..+0x53
};
