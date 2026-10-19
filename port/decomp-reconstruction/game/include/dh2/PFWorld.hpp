// PFWorld: the path-finding world of the loaded level. It keeps the PFRoom list and its bounding box, the outer and
// inner path graphs, the obstacle lists keyed by floor, a window of recent search durations, a cache of failed
// searches, and the exit positions read from "_exit_" scene nodes. Floor queries, validation and path search are methods.
// Original 32-bit size not recovered: no allocation of this class was found, and the last member known here ends at +0x95.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x522d58, _Init 0x522844, PostLoad 0x5226cc,
// Flush 0x5236d0, dtor 0x523934).
#pragma once

#include <cstdint>
#include <deque>
#include <list>
#include <map>
#include <utility>
#include <vector>

#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/SearchFailCache.hpp"
#include "glitch-shared/glitch_core.hpp"

class PFFloor;
class PFGInnerEdge;
class PFGInnerGraph;
class PFGInnerNode;
class PFGOuterGraph;
class PFObject;
class PFRoom;
namespace glitch {
namespace scene {
class ISceneNode;
}  // namespace scene
namespace core {
template <typename T>
struct triangle3d;
}  // namespace core
}  // namespace glitch
namespace sfc {
namespace math {
namespace graph {
template <typename TEdge, typename TNode>
class ITest;
}  // namespace graph
}  // namespace math
}  // namespace sfc

class PFWorld {
public:
    // Exit direction from the "_north", "_south", "_east" or "_west" suffix of an "_exit_" node name. 0 when no suffix
    // matches, the original's default.
    enum ExitDirection {
        EXIT_NORTH = 0,
        EXIT_SOUTH = 1,
        EXIT_EAST = 2,
        EXIT_WEST = 3,
    };

    // One obstacle force, 0x14 bytes in the original. _CalcObstaclesForce appends one per obstacle in range.
    struct ObstacleForce {
        Point3D<float> unk_00;                                              // +0x00 unit direction, scaled by unk_0c and the obstacle's strength
        float unk_0c;                                                       // +0x0c the scale the force was built with
        PFObject* unk_10;                                                   // +0x10 the obstacle; its +0x34 is m_obstacleStrength
    };

    PFWorld();                                                              // 0x522d58 / 0x522e2c
    virtual ~PFWorld();                                                     // vtable slots 0 and 1: 0x523864, 0x523918, 0x523934

    // Level build and teardown. m_state is RS_LOADING (1) after _Init, 2 after PostLoad, and 0 after Flush.
    void _Init();                                                           // 0x522844 creates m_oGraph and m_iGraph when m_state is 0, otherwise asserts they exist
    void PostLoad();                                                        // 0x5226cc links overlapping rooms once, then runs each room's PostLoad
    void Flush();                                                           // 0x5236d0 deletes the rooms and both graphs, clears the exit list and the floor lists
    PFRoom* LoadRoom(glitch::scene::ISceneNode* node, unsigned int flags, const char* name);  // 0x523c14 builds a PFRoom from a scene node and adds it
    void _AddExitPosition(glitch::scene::ISceneNode* node, const char* name);                 // 0x5239e8 appends the node's absolute position with its ExitDirection

    // Debug queries, read by the debug overlay and status dumps.
    void DBG_DumpMeshList();                                                // 0x52224c
    void DBG_DumpMeshLinks();                                               // 0x522250
    void DBG_WorldInfo(unsigned int& roomCount, unsigned int& floorCount, unsigned int& nodeCount);  // 0x52231c rooms, floors over all rooms, and the +0x6c counter of every floor
    void DBG_PFInfo(unsigned int& nodeCount, unsigned int& unk_out);        // 0x5223e4 nodeCount from m_iGraph's count, unk_out is always 0
    void DBG_ObstaclesInfo(unsigned int& count);                            // 0x522444 sums the sizes of the deques in m_obstacleParentLists
    void DBG_SearchInfo(unsigned int& averageTime);                         // 0x52253c m_searchTimeTotal divided by the number of recorded searches
    void DBG_MemInfo(unsigned int& bytes);                                  // 0x5225ac memory use of m_iGraph
    int DBG_ObstacleInfo(const PFObject& object, unsigned int& count, Point3D<float>& force);  // 0x5225cc forces of one object through _CalcObstaclesForce, returns the count
    void DBG_Draw(const Point3D<float>* points);                            // 0x5225e8 debug drawing

    // Room and floor queries. Positions are world units, and the room bounding box is tested first.
    PFRoom* GetRoomAt(const Point3D<float>& position);                      // 0x525188 first room whose box contains the position, or null
    bool GetFloorHeightAt(const Point3D<float>& position, float* height, Point3D<float>* normal,
                          PFRoom** room, PFFloor** floor, bool flag);       // 0x525508
    bool GetCollisionAt(const Point3D<float>& from, Point3D<float>& hit, glitch::core::triangle3d<float>& triangle,
                        PFRoom** room, PFFloor** floor, bool flag);         // 0x5256d4
    bool GetCollisionAt(const Point3D<float>& from, const Point3D<float>& to, Point3D<float>& hit,
                        bool flag);                                         // 0x525800
    bool TranslateScreenToWorld(const Point2D<float>& screen, Point3D<float>& world);  // 0x525884
    void FlagFloorAsEnabled(const PFObject& object, bool enabled);          // 0x5252c8 sets bit 0 of the flags of the floor the object stands on (PFFloor +0x20)
    void FlagFloorAsDeadEnd(const PFObject& object, bool deadEnd);          // 0x5252ec sets bit 1 of the same flags
    bool FlagFloorAsEnabled(const Point3D<float>& position, bool enabled);  // 0x525684 the floor at the position, returns GetFloorHeightAt's result
    bool FlagFloorAsDeadEnd(const Point3D<float>& position, bool deadEnd);  // 0x525634 bit 1 of the floor at the position, returns GetFloorHeightAt's result

    // Position, direction and object setup. m_verticalTolerance and unk_94 are part of ValidatePosition's test.
    bool ValidateDirection(Point3D<float>& direction, const Point3D<float>& position,
                           float radius, unsigned int moveFlags);          // 0x525944
    bool ValidateDirection(Point3D<float>& direction, const PFObject& object);  // 0x525d60 uses the object's position, radius and move flags
    bool ValidatePosition(Point3D<float>& position, PFObject* object);      // 0x525d84
    bool InitObject(PFObject& object, bool isStatic, const Point3D<float>& position, float radius,
                    void* owner);           // 0x526b18 sets m_flags bit 0 from isStatic, m_radius (at least 1), m_pos and m_owner, then queries the floor

    // Obstacles. An object registered with InitObstacle sits in m_obstacleParentLists under its floor, and its
    // force pushes nearby paths aside.
    int _CalcObstaclesForce(const PFObject& object, Point3D<float>& force,
                            std::vector<ObstacleForce>* forces);            // 0x527660 returns the number of obstacles in range
    void AvoidObstacles(const PFObject& object, Point3D<float>& direction); // 0x527cc4 steers direction away from the obstacles (uses _CalcObstaclesForce)
    void InitObstacle(PFObject& object, bool add, float radius, float strength);  // 0x528234 registers the object, or removes it when add is false or strength is 0
    void _ChangeObstacleParentList(const PFObject& object, PFFloor* floor); // 0x528484 when the object is a registered obstacle (m_flags bit 2) on another floor, moves it to the given floor's deque

    // Waypoints and path search. Paths are stored in the object's m_path list (PFObject +0x38).
    bool _IsPastWaypoint(PFObject& object);                                 // 0x528868
    float _CalcWaypointVec(PFObject& object);                               // 0x52899c
    PFGInnerNode* _GetClosestNode(const Point3D<float>& position);          // 0x528b2c closest inner node of the floor at the position
    PFGInnerNode* _GetClosestNode(const PFObject& object);                  // 0x528ea0 closest inner node for the object's position
    void DropPath(PFObject& object);                                        // 0x52aae4 drops the object's path
    int _SearchGraph(const PFObject* object, const Point3D<float>& from, const Point3D<float>& to,
                     unsigned int flags, std::list<const PFGInnerEdge*>* path);  // 0x52b560
    bool HasValidPath(const Point3D<float>& from, const Point3D<float>& to, unsigned int flags);  // 0x52c354
    bool HasValidPath(const PFObject& object, const Point3D<float>& to, unsigned int flags);      // 0x52c388
    int _SearchGraph(const PFObject* object, const Point3D<float>& from,
                     const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test,
                     unsigned int flags);                                   // 0x52cb90
    bool TestPath(const Point3D<float>& from, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test,
                  unsigned int flags);                                      // 0x52d4f0
    bool TestPath(const PFObject& object, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test,
                  unsigned int flags);                                      // 0x52d518
    void _SmoothPath(PFObject& object);                                     // 0x52d538
    bool MovePath(PFObject& object, Point3D<float>& position);              // 0x52d838
    bool FindPath(PFObject& object, const Point3D<float>& goal, unsigned int flags);  // 0x52db48 records the duration when PF_ProfileSearches is on, then smooths and builds waypoints

    // Members. The vtable at +0x00 holds only the two destructor slots.
    int m_state;                                                            // +0x04 1 is RS_LOADING (from _Init), 2 after PostLoad, 0 after Flush
    std::vector<PFRoom*> m_rooms;                                           // +0x08 begin, end and end of storage at +0x08, +0x0c, +0x10
    Point3D<float> m_boundsMin;                                             // +0x14 bounding box minimum; LoadRoom copies a single room's box here
    Point3D<float> m_boundsMax;                                             // +0x20 bounding box maximum
    std::map<PFFloor*, std::deque<PFObject*>> m_obstacleParentLists;       // +0x2c obstacles per floor; a 20-byte STLport tree header and count in the original
    uint8_t pad_40[4];                                                      // +0x40 never touched by the functions recovered so far
    PFGOuterGraph* m_oGraph;                                                // +0x44 operator new(0x1c)
    PFGInnerGraph* m_iGraph;                                                // +0x48 operator new(0x20)
    std::deque<unsigned int> m_searchTimes;                                 // +0x4c durations of recorded searches, 40 bytes in the original
    unsigned int m_searchTimeTotal;                                         // +0x74 sum of m_searchTimes; the oldest entry leaves when more than 10 are held
    SearchFailCache m_searchFails;                                          // +0x78 cache of recent failed searches, 12 bytes
    std::vector<std::pair<ExitDirection, glitch::core::vector3d<float>>> m_exitPositions;  // +0x84 exit nodes, 16 bytes each
    float m_verticalTolerance;                                              // +0x90 100.0f from the ctor, the vertical tolerance of ValidatePosition
    bool unk_94;                                                            // +0x94 false from the ctor; when set, ValidatePosition's height test passes

    // The instance, Singleton<PFWorld>::s_inst (0x9a26d8, IDA list_globals). Callers in the sources pass it as the
    // object of PFWorld::InitObject, FlagFloorAsDeadEnd, GetFloorHeightAt and DropPath. This name is a reference to that
    // object, defined with the instantiation in game-app/src/singleton_PFWorld.cpp (link-1).
    static PFWorld& s_inst;
};
