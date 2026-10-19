// Batch g1-game-world-PFWorld-d9994a-0: the debug queries, the two constructors and the destructor, _Init, PostLoad,
// Flush, _AddExitPosition, LoadRoom and GetRoomAt of PFWorld. Declarations come from dh2/PFWorld.hpp.
//
// Layout facts used here (original 32-bit offsets, named in dh2/PFWorld.hpp, dh2/PFRoom.hpp and dh2/PFFloor.hpp):
//   PFWorld  +0x04 m_state            0 idle, 1 loading (set by _Init), 2 after PostLoad
//   PFWorld  +0x08 m_rooms            vector of PFRoom*
//   PFWorld  +0x14 m_boundsMin, +0x20 m_boundsMax
//   PFWorld  +0x2c m_obstacleParentLists, +0x44 m_oGraph, +0x48 m_iGraph
//   PFWorld  +0x4c m_searchTimes, +0x74 m_searchTimeTotal, +0x84 m_exitPositions, +0x90 m_verticalTolerance
//   PFRoom   +0x30 m_floors, +0x3c m_boundsMin, +0x48 m_boundsMax (the room's box, min first)
//   PFFloor  +0x40 m_navMesh, +0x6c m_triangleCount, +0x78 m_linkedFloors

#include "dh2/PFWorld.hpp"

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <map>
#include <vector>

#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGOuterGraph.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"  // IMeshSceneNode, the type _LoadFloor takes
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel). Declared the same way as in the other game-world sources.
extern int gAssertLevel;

namespace {

// The source path the original's ASSERT messages name.
constexpr const char* kSourceName =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld.cpp";

// m_state after _Init (RS_LOADING in the assert text).
constexpr int kStateLoading = 1;

// The ASSERT macro of the original. Level 2 stops the program (the original writes to address 0 there), level 1
// prints the message to stderr, and level 0 does nothing.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kSourceName, line);
    }
}

// Exit direction from the suffix of an "_exit_" node name, tested in the original's order. EXIT_NORTH when none
// matches, the original's default.
PFWorld::ExitDirection ExitDirectionOf(const char* name) {
    if (std::strstr(name, "_north") != nullptr) {
        return PFWorld::EXIT_NORTH;
    }
    if (std::strstr(name, "_south") != nullptr) {
        return PFWorld::EXIT_SOUTH;
    }
    if (std::strstr(name, "_east") != nullptr) {
        return PFWorld::EXIT_EAST;
    }
    if (std::strstr(name, "_west") != nullptr) {
        return PFWorld::EXIT_WEST;
    }
    return PFWorld::EXIT_NORTH;
}

// Two rooms are linked when their boxes, each grown by 50 units, overlap on all three axes. The original converts
// each grown bound to float before the comparison.
bool RoomsNearby(const PFRoom& a, const PFRoom& b) {
    return a.m_boundsMin.X <= static_cast<float>(b.m_boundsMax.X + 50.0) &&
           a.m_boundsMax.X >= static_cast<float>(b.m_boundsMin.X - 50.0) &&
           a.m_boundsMin.Y <= static_cast<float>(b.m_boundsMax.Y + 50.0) &&
           a.m_boundsMax.Y >= static_cast<float>(b.m_boundsMin.Y - 50.0) &&
           a.m_boundsMin.Z <= static_cast<float>(b.m_boundsMax.Z + 50.0) &&
           a.m_boundsMax.Z >= static_cast<float>(b.m_boundsMin.Z - 50.0);
}

// The union steps of LoadRoom, with the original's comparisons: the world value wins when room >= world for the
// minimum, and when world >= room for the maximum.
float MinimumStep(float room, float world) {
    return room >= world ? world : room;
}

float MaximumStep(float room, float world) {
    return world >= room ? world : room;
}

}  // namespace

// 0x52224c _ZN7PFWorld16DBG_DumpMeshListEv
// The binary's body is empty: the dump was removed and only the return remains.
void PFWorld::DBG_DumpMeshList() {}

// 0x522250 _ZN7PFWorld17DBG_DumpMeshLinksEv
// Walks every room, each room's floors, and each floor's linked floors (m_linkedFloors, a std::set at +0x78) in
// order. The loop body in the binary is empty (LABEL_12 is a bare label), so each link is visited and discarded.
void PFWorld::DBG_DumpMeshLinks() {
    for (PFRoom* room : m_rooms) {
        for (PFFloor* floor : room->m_floors) {
            for (PFFloor* linked : floor->m_linkedFloors) {
                (void)linked;
            }
        }
    }
}

// 0x52231c _ZN7PFWorld13DBG_WorldInfoERjS0_S0_
// roomCount is the room count. floorCount is the running total of each room's floors, so it ends at the total over
// all rooms. nodeCount is the sum of PFFloor::m_triangleCount (+0x6c) over every floor, as an unsigned word; the
// header names the output nodeCount, and the binary reads that field as its counter.
void PFWorld::DBG_WorldInfo(unsigned int& roomCount, unsigned int& floorCount, unsigned int& nodeCount) {
    roomCount = static_cast<unsigned int>(m_rooms.size());
    nodeCount = 0;
    floorCount = 0;
    for (PFRoom* room : m_rooms) {
        floorCount += static_cast<unsigned int>(room->m_floors.size());
        for (PFFloor* floor : room->m_floors) {
            nodeCount += static_cast<unsigned int>(floor->m_triangleCount);
        }
    }
}

// 0x5223e4 _ZN7PFWorld10DBG_PFInfoERjS0_
// nodeCount is the node count of the inner graph (its node map's count, word +0x14 of the graph), or 0 when there is
// no inner graph. unk_out is always 0 in the binary.
void PFWorld::DBG_PFInfo(unsigned int& nodeCount, unsigned int& unk_out) {
    nodeCount = m_iGraph != nullptr ? static_cast<unsigned int>(m_iGraph->m_nodes.size()) : 0u;
    unk_out = 0;
}

// 0x522444 _ZN7PFWorld17DBG_ObstaclesInfoERj
// count is the total size of the obstacle deques of every floor in m_obstacleParentLists, in key order.
void PFWorld::DBG_ObstaclesInfo(unsigned int& count) {
    count = 0;
    for (const auto& entry : m_obstacleParentLists) {
        count += static_cast<unsigned int>(entry.second.size());
    }
}

// 0x52253c _ZN7PFWorld14DBG_SearchInfoERj
// averageTime is the total of the recorded search durations (+0x74) divided by how many are held (the deque size).
// It is 0 when none are held.
void PFWorld::DBG_SearchInfo(unsigned int& averageTime) {
    const std::size_t count = m_searchTimes.size();
    if (count != 0) {
        averageTime = m_searchTimeTotal / static_cast<unsigned int>(count);
    } else {
        averageTime = 0;
    }
}

// 0x5225ac _ZN7PFWorld11DBG_MemInfoERj
// bytes is the inner graph's memory estimate (PFGInnerGraph::DBG_GetMemUsage), or 0 when there is no inner graph.
void PFWorld::DBG_MemInfo(unsigned int& bytes) {
    bytes = m_iGraph != nullptr ? static_cast<unsigned int>(m_iGraph->DBG_GetMemUsage()) : 0u;
}

// 0x5225cc _ZN7PFWorld16DBG_ObstacleInfoERK8PFObjectRjR7Point3DIfE
// The forces of one object through _CalcObstaclesForce with no output list. count and the return value both receive
// the number of obstacles in range.
int PFWorld::DBG_ObstacleInfo(const PFObject& object, unsigned int& count, Point3D<float>& force) {
    const int result = _CalcObstaclesForce(object, force, nullptr);
    count = static_cast<unsigned int>(result);
    return result;
}

// 0x5225e8 _ZN7PFWorld8DBG_DrawEPK7Point3DIfE
// Draws every room in list order. When points is not null, a room is drawn only when its box contains the point; a
// point outside a room's box on any axis skips it. The room count is read again at every step, as the original
// reloads the list after a draw.
void PFWorld::DBG_Draw(const Point3D<float>* points) {
    for (std::size_t i = 0; i < m_rooms.size(); ++i) {
        PFRoom* room = m_rooms[i];
        if (points != nullptr) {
            if (room->m_boundsMin.X > points->X || points->X > room->m_boundsMax.X ||
                room->m_boundsMin.Y > points->Y || points->Y > room->m_boundsMax.Y ||
                room->m_boundsMin.Z > points->Z || points->Z > room->m_boundsMax.Z) {
                continue;
            }
        }
        room->_DBG_Draw();
    }
}

// 0x5226cc _ZN7PFWorld8PostLoadEv
// Only in the loading state (m_state 1), and then the state becomes 2. Each room is linked with every later room whose
// box is within 50 units (PFRoom::_Link), and then the room's own _PostLoad runs. The room count is read again at each
// step, because the original reloads the list after a link.
void PFWorld::PostLoad() {
    if (m_state != kStateLoading) {
        return;
    }
    m_state = 2;
    for (std::size_t i = 0; i < m_rooms.size(); ++i) {
        PFRoom* room = m_rooms[i];
        for (std::size_t j = i + 1; j < m_rooms.size(); ++j) {
            PFRoom* other = m_rooms[j];
            if (RoomsNearby(*room, *other)) {
                room->_Link(other);
            }
        }
        room->_PostLoad();
    }
}

// 0x522844 _ZN7PFWorld5_InitEv
// Entry to the loading state. When the state is not 0, both graphs must already exist (asserts at lines 46 and 47).
// When it is 0, both must not exist (asserts at lines 51 and 52), the graphs are created, and the state becomes 1.
void PFWorld::_Init() {
    if (m_state != 0) {
        if (m_oGraph == nullptr) {
            ReportAssert("m_oGraph", 46);
        }
        if (m_iGraph == nullptr) {
            ReportAssert("m_iGraph", 47);
        }
        return;
    }
    if (m_oGraph != nullptr) {
        ReportAssert("m_oGraph == 0", 51);
    }
    if (m_iGraph != nullptr) {
        ReportAssert("m_iGraph == 0", 52);
    }
    // The original allocates 0x1c and 0x20 bytes and writes the GraphSparse fields in place (empty node map and the
    // vtable). The implicit default constructors write the same empty state.
    m_oGraph = new PFGOuterGraph();
    m_iGraph = new PFGInnerGraph();
    m_state = kStateLoading;
}

// 0x522d58 _ZN7PFWorldC2Ev
// 0x522e2c _ZN7PFWorldC1Ev
// Both addresses hold the same body, so one definition covers both. The room list, the obstacle map, the search-time
// deque, the search-failure cache and the exit list start empty by their own constructors. The pad word at +0x40 is
// not written by the binary and is left alone here too.
PFWorld::PFWorld() {
    m_state = 0;                                    // +0x04
    m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x14 .. +0x1c
    m_boundsMax = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x20 .. +0x28
    m_oGraph = nullptr;                             // +0x44
    m_iGraph = nullptr;                             // +0x48
    m_searchTimeTotal = 0;                          // +0x74
    m_verticalTolerance = 100.0f;                   // +0x90 (bit pattern 0x42c80000)
    unk_94 = false;                                 // +0x94
}

// 0x5236d0 _ZN7PFWorld5FlushEv
// Deletes every room, empties the room list, zeroes the world box, clears the obstacle map and the exit list, deletes
// both graphs, and returns to the idle state (0). The search-time deque and the search-failure cache are kept, as in
// the original.
void PFWorld::Flush() {
    for (std::size_t i = 0; i < m_rooms.size(); ++i) {
        if (m_rooms[i] != nullptr) {
            delete m_rooms[i];
        }
    }
    m_rooms.clear();
    m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
    m_boundsMax = Point3D<float>{0.0f, 0.0f, 0.0f};
    m_obstacleParentLists.clear();
    m_exitPositions.clear();
    delete m_oGraph;
    m_oGraph = nullptr;
    delete m_iGraph;
    m_iGraph = nullptr;
    m_state = 0;
}

// 0x523864 _ZN7PFWorldD1Ev
// 0x523934 _ZN7PFWorldD2Ev
// Both addresses hold the same body. The original sets the vtable, runs Flush, then destroys the exit list, the
// search-failure cache, the search-time deque, the (empty) obstacle map and the room list's storage. In C++ those
// members are destroyed after this body, in reverse declaration order.
PFWorld::~PFWorld() {
    Flush();
}

// 0x523918 _ZN7PFWorldD0Ev
// Skipped: the deleting destructor. It calls ~PFWorld and then frees the object, which is what a delete expression on a
// PFWorld generates, so it is not written here.

// 0x5239e8 _ZN7PFWorld16_AddExitPositionEPN6glitch5scene10ISceneNodeEPKc
// Appends the absolute position of an "_exit_" node with its exit direction, then removes the node from its parent
// (ISceneNode::remove, vtable +0x68). The name argument is not used: the binary reads the node's own name through
// getName (vtable +0x24) for each suffix test, and this reads it once with the same result.
void PFWorld::_AddExitPosition(glitch::scene::ISceneNode* node, const char* name) {
    (void)name;
    const ExitDirection direction = ExitDirectionOf(node->getName());
    const glitch::core::vector3d<float> position = node->getAbsolutePosition();
    m_exitPositions.emplace_back(direction, position);
    node->remove();
}

// 0x523c14 _ZN7PFWorld8LoadRoomEPN6glitch5scene10ISceneNodeEjPKc
// _Init, then the asserts on the state (RS_LOADING, line 92) and the node (line 98). The room is created and pushed before the search. The nodes of type tag 0x6d656164 (the fourcc "daem") below the node are
// searched through the device's scene manager. The minimap node is the last child whose own name (or, for an unnamed child, its parent's name) contains "minimap"; a child whose name contains "floor" becomes a
// floor of the room (_LoadFloor with the child itself) and the minimap node, or else the new floor's nav mesh, is added to the scene manager's node map; a name containing "_exit_" adds an exit position. A room
// without a floor is taken out again and freed (LoadRoom returns null). Otherwise the world box is set from the first room or grown by the room's box.
PFRoom* PFWorld::LoadRoom(glitch::scene::ISceneNode* node, unsigned int flags, const char* name) {
    _Init();
    if (m_state != kStateLoading) {
        ReportAssert("m_state == RS_LOADING", 92);
    }
    if (node == nullptr) {
        ReportAssert("node", 98);
    }

    PFRoom* room = new PFRoom(name, flags, this, m_oGraph, m_iGraph);
    m_rooms.push_back(room);

    SceneManager* sceneManager = DeviceSceneManager();
    glitch::core::svector<glitch::scene::ISceneNode*> found;
    // Node type tag 1835360612 = 0x6d656164, the fourcc "daem". scene_types.hpp has no enumerator for it.
    sceneManager->SearchByType(node, found, 0x6d656164u);

    // Minimap node: a child with an empty name under a parent tests the parent's name; any other child tests its own
    // name. The last match wins.
    glitch::scene::ISceneNode* minimap = nullptr;
    for (glitch::scene::ISceneNode* child : found) {
        const char* childName = child->getName();
        if (childName[0] == '\0' && child->getParent() != nullptr) {
            if (std::strstr(child->getParent()->getName(), "minimap") != nullptr) {
                minimap = child;
            }
        } else if (std::strstr(childName, "minimap") != nullptr) {
            minimap = child;
        }
    }

    int floorCount = 0;
    for (glitch::scene::ISceneNode* child : found) {
        glitch::scene::ISceneNode* owner = child;
        const char* childName = child->getName();
        if (childName[0] == '\0' && child->getParent() != nullptr) {
            owner = child->getParent();
            childName = owner->getName();
        }
        if (std::strstr(childName, "floor") != nullptr) {
            // The original passes the child itself, even when the name came from its parent.
            room->_LoadFloor(static_cast<glitch::scene::IMeshSceneNode*>(child), childName);
            ++floorCount;
            if (minimap != nullptr) {
                sceneManager->AddNodeToMap(minimap);
            } else {
                sceneManager->AddNodeToMap(room->m_floors.back()->m_navMesh);
            }
        }
        if (std::strstr(childName, "_exit_") != nullptr) {
            _AddExitPosition(owner, childName);
        }
    }

    if (floorCount == 0) {
        // No floor: take the room back out of the list and free it (the original's pop and delete).
        m_rooms.pop_back();
        delete room;
        return nullptr;
    }

    if (m_rooms.size() == 1) {
        m_boundsMin = room->m_boundsMin;
        m_boundsMax = room->m_boundsMax;
    } else {
        m_boundsMin.X = MinimumStep(room->m_boundsMin.X, m_boundsMin.X);
        m_boundsMin.Y = MinimumStep(room->m_boundsMin.Y, m_boundsMin.Y);
        m_boundsMin.Z = MinimumStep(room->m_boundsMin.Z, m_boundsMin.Z);
        m_boundsMax.X = MaximumStep(room->m_boundsMax.X, m_boundsMax.X);
        m_boundsMax.Y = MaximumStep(room->m_boundsMax.Y, m_boundsMax.Y);
        m_boundsMax.Z = MaximumStep(room->m_boundsMax.Z, m_boundsMax.Z);
    }
    return room;
}

// 0x525188 _ZN7PFWorld9GetRoomAtERK7Point3DIfE
// Null when the position lies outside the world box (the same face tests as DBG_Draw, on the world box). Otherwise the
// first room in list order whose box contains the position, inclusive on every face; null when none does.
PFRoom* PFWorld::GetRoomAt(const Point3D<float>& position) {
    if (m_boundsMin.X > position.X || position.X > m_boundsMax.X ||
        m_boundsMin.Y > position.Y || position.Y > m_boundsMax.Y ||
        m_boundsMin.Z > position.Z || position.Z > m_boundsMax.Z) {
        return nullptr;
    }
    for (PFRoom* room : m_rooms) {
        if (position.X >= room->m_boundsMin.X && position.X <= room->m_boundsMax.X &&
            position.Y >= room->m_boundsMin.Y && position.Y <= room->m_boundsMax.Y &&
            position.Z >= room->m_boundsMin.Z && position.Z <= room->m_boundsMax.Z) {
            return room;
        }
    }
    return nullptr;
}
