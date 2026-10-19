// Test for batch g1-game-world-PFWorld-d9994a-0.
//
// The batch source is linked with this file alone, so the symbols it references in other classes are defined here as
// recording stubs: the PFRoom and PFFloor members it calls, the graph destructors, PFGInnerGraph::DBG_GetMemUsage, the
// GraphSparse clear, PFWorld::_CalcObstaclesForce, the ISceneNode getters and the SceneManager calls. The stubs do not
// stand for real behaviour; the room and floor members are only recorded.
//
// Not covered here: _AddExitPosition (it needs a real ISceneNode), DBG_ObstacleInfo (it needs a real PFObject) and the
// floor path of LoadRoom, which is behind the scene-manager seam.

#include <cstdint>
#include <cstdio>
#include <deque>
#include <utility>
#include <vector>

#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGOuterGraph.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/SceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// Assert level read by the batch source. 0 keeps the test quiet.
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_roomsDeleted = 0;
std::vector<std::pair<const PFRoom*, const PFRoom*>> g_links;
std::vector<const PFRoom*> g_postLoaded;
std::vector<const PFRoom*> g_drawn;

PFRoom* MakeRoom(PFWorld* world, float minX, float minY, float minZ, float maxX, float maxY, float maxZ) {
    PFRoom* room = new PFRoom("room", 0u, world, nullptr, nullptr);
    room->m_boundsMin = Point3D<float>{minX, minY, minZ};
    room->m_boundsMax = Point3D<float>{maxX, maxY, maxZ};
    return room;
}

}  // namespace

// ---- Stubs for the symbols the batch source references in other classes ----

PFRoom::PFRoom(const char* name, std::uint32_t value, PFWorld* world, PFGOuterGraph* oGraph, PFGInnerGraph* iGraph)
    : m_name(name), unk_1c(value), m_world(world), m_flags(0), m_oGraph(oGraph), m_iGraph(iGraph),
      m_boundsMin{0.0f, 0.0f, 0.0f}, m_boundsMax{0.0f, 0.0f, 0.0f} {}
PFRoom::~PFRoom() { ++g_roomsDeleted; }
void PFRoom::_DBG_Draw() { g_drawn.push_back(this); }
void PFRoom::_PostLoad() { g_postLoaded.push_back(this); }
void PFRoom::_Link(PFRoom* other) { g_links.emplace_back(this, other); }
void PFRoom::_LoadFloor(glitch::scene::IMeshSceneNode*, const char*) {}

PFFloor::PFFloor(const char* name, PFRoom* room, PFGOuterGraph* oGraph, PFGInnerGraph* iGraph, std::uint32_t objectFlags)
    : m_name(name) {
    m_room = room;
    m_objectFlags = objectFlags;
    m_typeMask = 0;
    m_navMesh = nullptr;
    m_triangles = nullptr;
    m_triangleCount = 0;
    m_oGraph = oGraph;
    m_iGraph = iGraph;
}
PFFloor::~PFFloor() {}

PFGOuterGraph::~PFGOuterGraph() {}
PFGInnerGraph::~PFGInnerGraph() {}
int PFGInnerGraph::DBG_GetMemUsage() const { return 123; }

namespace sfc {
namespace math {
namespace graph {
template <typename EdgeT>
void GraphSparse<EdgeT>::clear() {}
}  // namespace graph
}  // namespace math
}  // namespace sfc

int PFWorld::_CalcObstaclesForce(const PFObject&, Point3D<float>&, std::vector<PFWorld::ObstacleForce>*) {
    return 0;
}

glitch::scene::ISceneNode* glitch::scene::ISceneNode::getParent() const {
    return nullptr;
}
glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const {
    return glitch::core::vector3d<float>();
}

void SceneManager::SearchByType(glitch::scene::ISceneNode*, glitch::core::svector<glitch::scene::ISceneNode*>&, std::uint32_t) {}
void SceneManager::AddNodeToMap(glitch::scene::ISceneNode*) {}

// ---- Tests ----

int main() {
    // Constructor defaults (original offsets in the comments of the batch source).
    {
        PFWorld w;
        EXPECT(w.m_state == 0);                                              // +0x04
        EXPECT(w.m_rooms.empty());                                           // +0x08
        EXPECT(w.m_boundsMin.X == 0.0f && w.m_boundsMin.Y == 0.0f && w.m_boundsMin.Z == 0.0f);  // +0x14
        EXPECT(w.m_boundsMax.X == 0.0f && w.m_boundsMax.Y == 0.0f && w.m_boundsMax.Z == 0.0f);  // +0x20
        EXPECT(w.m_oGraph == nullptr && w.m_iGraph == nullptr);              // +0x44, +0x48
        EXPECT(w.m_searchTimes.empty() && w.m_searchTimeTotal == 0u);        // +0x4c, +0x74
        EXPECT(w.m_obstacleParentLists.empty());                             // +0x2c
        EXPECT(w.m_exitPositions.empty());                                   // +0x84
        EXPECT(w.m_verticalTolerance == 100.0f);                             // +0x90
        EXPECT(!w.unk_94);                                                   // +0x94
    }

    // _Init creates both graphs once, and Flush returns to the idle state and deletes them.
    {
        PFWorld w;
        w._Init();
        EXPECT(w.m_state == 1);
        EXPECT(w.m_oGraph != nullptr && w.m_iGraph != nullptr);
        PFGOuterGraph* outer = w.m_oGraph;
        PFGInnerGraph* inner = w.m_iGraph;
        w._Init();  // already in the loading state: nothing changes
        EXPECT(w.m_state == 1 && w.m_oGraph == outer && w.m_iGraph == inner);
        w.Flush();
        EXPECT(w.m_state == 0 && w.m_oGraph == nullptr && w.m_iGraph == nullptr);
    }

    // DBG_SearchInfo: the total over the held count (integer division), 0 when none are held.
    {
        PFWorld w;
        unsigned int average = 99;
        w.DBG_SearchInfo(average);
        EXPECT(average == 0u);
        w.m_searchTimes = std::deque<unsigned int>{10u, 20u, 30u};
        w.m_searchTimeTotal = 60u;
        w.DBG_SearchInfo(average);
        EXPECT(average == 20u);
        w.m_searchTimeTotal = 61u;
        w.DBG_SearchInfo(average);
        EXPECT(average == 20u);
    }

    // DBG_ObstaclesInfo: the sum of the deque sizes of every floor's list.
    {
        PFWorld w;
        int floorA = 0;
        int floorB = 0;
        w.m_obstacleParentLists[reinterpret_cast<PFFloor*>(&floorA)] = std::deque<PFObject*>(2, nullptr);
        w.m_obstacleParentLists[reinterpret_cast<PFFloor*>(&floorB)] = std::deque<PFObject*>(3, nullptr);
        unsigned int count = 99;
        w.DBG_ObstaclesInfo(count);
        EXPECT(count == 5u);
        w.m_obstacleParentLists.clear();  // the keys are never dereferenced
    }

    // DBG_PFInfo and DBG_MemInfo: zero without an inner graph, and the graph's node count and estimate with one.
    {
        PFWorld w;
        unsigned int nodes = 99;
        unsigned int unk = 99;
        unsigned int bytes = 99;
        w.DBG_PFInfo(nodes, unk);
        EXPECT(nodes == 0u && unk == 0u);
        w.DBG_MemInfo(bytes);
        EXPECT(bytes == 0u);
        // The graph's node map stays empty: inserting into it instantiates the graph's node class, whose edge type is
        // incomplete in this test.
        w._Init();
        w.DBG_PFInfo(nodes, unk);
        EXPECT(nodes == 0u && unk == 0u);
        w.DBG_MemInfo(bytes);
        EXPECT(bytes == 123u);
        w.Flush();
    }

    // DBG_WorldInfo: room count, the running floor total and the sum of the floors' triangle counts.
    {
        PFWorld w;
        PFRoom* r1 = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        PFRoom* r2 = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);
        PFFloor* f1 = new PFFloor("f1", r1, nullptr, nullptr, 1u);
        PFFloor* f2 = new PFFloor("f2", r1, nullptr, nullptr, 1u);
        PFFloor* f3 = new PFFloor("f3", r2, nullptr, nullptr, 1u);
        f1->m_triangleCount = 4;
        f2->m_triangleCount = 5;
        f3->m_triangleCount = 6;
        r1->m_floors = {f1, f2};
        r2->m_floors = {f3};
        w.m_rooms = {r1, r2};
        unsigned int rooms = 99;
        unsigned int floors = 99;
        unsigned int nodeTotal = 99;
        w.DBG_WorldInfo(rooms, floors, nodeTotal);
        EXPECT(rooms == 2u);
        EXPECT(floors == 3u);
        EXPECT(nodeTotal == 15u);

        // The dump walks the links; no output is produced, so the test only checks that it runs over them.
        f1->m_linkedFloors.insert(f3);
        w.DBG_DumpMeshList();
        w.DBG_DumpMeshLinks();

        // The rooms belong to w (Flush deletes them); the floors are owned here.
        delete f1;
        delete f2;
        delete f3;
    }

    // GetRoomAt: the world box first, then the first room whose box contains the point, inclusive on every face.
    {
        PFWorld w;
        w.m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
        w.m_boundsMax = Point3D<float>{100.0f, 100.0f, 100.0f};
        PFRoom* a = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 50.0f, 50.0f, 50.0f);
        PFRoom* b = MakeRoom(&w, 50.0f, 0.0f, 0.0f, 100.0f, 100.0f, 50.0f);
        w.m_rooms = {a, b};
        EXPECT(w.GetRoomAt(Point3D<float>{10.0f, 10.0f, 10.0f}) == a);
        EXPECT(w.GetRoomAt(Point3D<float>{50.0f, 10.0f, 10.0f}) == a);  // shared face: the first room wins
        EXPECT(w.GetRoomAt(Point3D<float>{60.0f, 10.0f, 10.0f}) == b);
        EXPECT(w.GetRoomAt(Point3D<float>{-1.0f, 10.0f, 10.0f}) == nullptr);   // outside the world box
        EXPECT(w.GetRoomAt(Point3D<float>{101.0f, 10.0f, 10.0f}) == nullptr);  // outside the world box
        EXPECT(w.GetRoomAt(Point3D<float>{75.0f, 75.0f, 75.0f}) == nullptr);   // inside the world, no room
    }

    // DBG_Draw: every room without a point; with a point, only the room whose box holds it.
    {
        PFWorld w;
        PFRoom* a = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 50.0f, 50.0f, 50.0f);
        PFRoom* b = MakeRoom(&w, 50.0f, 0.0f, 0.0f, 100.0f, 100.0f, 50.0f);
        w.m_rooms = {a, b};
        g_drawn.clear();
        w.DBG_Draw(nullptr);
        std::vector<const PFRoom*> allDrawn{a, b};
        EXPECT(g_drawn == allDrawn);
        g_drawn.clear();
        const Point3D<float> inB{60.0f, 10.0f, 10.0f};
        w.DBG_Draw(&inB);
        std::vector<const PFRoom*> onlyB{b};
        EXPECT(g_drawn == onlyB);
        g_drawn.clear();
        const Point3D<float> nowhere{60.0f, 10.0f, 80.0f};
        w.DBG_Draw(&nowhere);
        EXPECT(g_drawn.empty());
    }

    // PostLoad: rooms whose boxes lie within 50 units are linked, in list order; each room's _PostLoad runs once.
    {
        PFWorld w;
        w.m_state = 1;
        PFRoom* a = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 50.0f, 50.0f, 50.0f);
        PFRoom* b = MakeRoom(&w, 60.0f, 60.0f, 60.0f, 100.0f, 100.0f, 100.0f);
        PFRoom* c = MakeRoom(&w, 500.0f, 500.0f, 500.0f, 600.0f, 600.0f, 600.0f);
        PFRoom* e = MakeRoom(&w, 100.0f, 100.0f, 100.0f, 110.0f, 110.0f, 110.0f);
        w.m_rooms = {a, b, c, e};
        g_links.clear();
        g_postLoaded.clear();
        w.PostLoad();
        EXPECT(w.m_state == 2);
        std::vector<std::pair<const PFRoom*, const PFRoom*>> expectedLinks{{a, b}, {a, e}, {b, e}};
        EXPECT(g_links == expectedLinks);
        std::vector<const PFRoom*> expectedPostLoad{a, b, c, e};
        EXPECT(g_postLoaded == expectedPostLoad);
        w.PostLoad();  // state 2: nothing runs again
        EXPECT(g_links.size() == 3u && g_postLoaded.size() == 4u);
    }

    // Flush: deletes the rooms, clears the list and the bounds, deletes the graphs and returns to state 0.
    {
        PFWorld w;
        w._Init();
        PFRoom* a = MakeRoom(&w, 0.0f, 0.0f, 0.0f, 5.0f, 5.0f, 5.0f);
        w.m_rooms = {a};
        w.m_boundsMax = Point3D<float>{5.0f, 5.0f, 5.0f};
        g_roomsDeleted = 0;
        w.Flush();
        EXPECT(g_roomsDeleted == 1);
        EXPECT(w.m_rooms.empty());
        EXPECT(w.m_state == 0);
        EXPECT(w.m_boundsMax.X == 0.0f && w.m_boundsMax.Y == 0.0f && w.m_boundsMax.Z == 0.0f);
        EXPECT(w.m_oGraph == nullptr && w.m_iGraph == nullptr);
    }

    // The destructor runs Flush, so the rooms still listed are deleted.
    {
        PFWorld* w = new PFWorld();
        w->m_rooms = {MakeRoom(w, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f), MakeRoom(w, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f)};
        g_roomsDeleted = 0;
        delete w;
        EXPECT(g_roomsDeleted == 2);
    }

    // LoadRoom without the scene manager (the seam is null): _Init runs, the new room is taken back out and freed,
    // and the result is null.
    {
        PFWorld w;
        int dummyNode = 0;
        g_roomsDeleted = 0;
        PFRoom* result = w.LoadRoom(reinterpret_cast<glitch::scene::ISceneNode*>(&dummyNode), 3u, "room");
        EXPECT(result == nullptr);
        EXPECT(w.m_rooms.empty());
        EXPECT(w.m_state == 1);
        EXPECT(w.m_oGraph != nullptr && w.m_iGraph != nullptr);
        EXPECT(g_roomsDeleted == 1);
    }

    if (g_failures == 0) {
        std::printf("PFWorld batch tests: all passed\n");
        return 0;
    }
    std::printf("PFWorld batch tests: %d failure(s)\n", g_failures);
    return 1;
}
