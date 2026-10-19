// Test for batch g1-game-world-PFWorld-d9994a-2.
//
// Covers the path-list logic that runs without the search: DropPath (which edges are deleted and which are only
// unlinked), _SmoothPath (the replacement of the first edge, for an edge with no to-node, so no line intersection runs)
// and MovePath (the three outcomes and the smoothing after a waypoint). The A* search, the collision lookups and the
// debug switches are not exercised: the batch source references them, so this test defines them with stub bodies so the
// object links. The shared Point2D::lineIntersection and the PFObject/PFWorld constructors are stubbed the same way.

#include <cstdint>
#include <cstdio>
#include <list>
#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerDirectEdge.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFInnerTest_PFObject.hpp"
#include "dh2/PFInnerTest_PathValidity.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/sfc/math/graph/AlgoAStar.hpp"
#include "glitch-core-io/os/logging.hpp"

// ---- Symbols the batch source references (stubs; the integrator's build links the real ones) -------------------------

int gAssertLevel = 0;
void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

namespace glitch {
namespace os {
std::uint32_t Timer::getRealTime() { return 0; }
}  // namespace os
}  // namespace glitch

DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetModule(const std::string&) { return false; }
bool DebugSwitches::GetSwitch(const std::string&) { return false; }

template <>
int Point2D<float>::lineIntersection(const Point2D& p0, const Point2D& p1, const Point2D& q0, const Point2D& q1,
                                     Point2D& out, float& t, float& u) {
    (void)p0; (void)p1; (void)q0; (void)q1; (void)out; (void)t; (void)u;
    return 0;  // not reached: the test edges have no to-node
}

template <>
bool sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::findNode(
    unsigned int, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>&, unsigned int,
    std::list<const PFGInnerEdge*>*) {
    return false;
}

template <>
bool sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::findNode(
    unsigned int, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>&, unsigned int,
    std::list<const PFGInnerEdge*>*) {
    return false;
}

PFGInnerNode* PFFloor::_GetNodeAt(const Point3D<float>&) { return nullptr; }

// The goal tests of the search derive from these; their out-of-line validity overrides belong to other batches.
bool PFInnerTest_PathValidity::isValid(const PFGInnerEdge*) const { return true; }
bool PFInnerTest_PathValidity::isValid(const PFGInnerNode*) const { return true; }
bool PFInnerTest_PFObject::isValid(const PFGInnerEdge*) const { return true; }
bool PFInnerTest_PFObject::isValid(const PFGInnerNode*) const { return true; }

PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
bool PFWorld::GetCollisionAt(const Point3D<float>&, Point3D<float>&, glitch::core::triangle3d<float>&, PFRoom**,
                             PFFloor**, bool) {
    return false;
}
PFGInnerNode* PFWorld::_GetClosestNode(const Point3D<float>&) { return nullptr; }
PFGInnerNode* PFWorld::_GetClosestNode(const PFObject&) { return nullptr; }

PFObject::PFObject() {}
PFObject::~PFObject() {}

PFGInnerEdge::~PFGInnerEdge() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return nullptr; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return nullptr; }

// Counts the destructor calls of the direct edges (the path owns the ones _SmoothPath makes; DropPath and MovePath
// delete them).
namespace {
int g_directDestroyed = 0;
bool g_pastWaypoint = false;
int g_calcWaypointCalls = 0;
}  // namespace

PFGInnerDirectEdge::~PFGInnerDirectEdge() { ++g_directDestroyed; }
const Point3D<float>* PFGInnerDirectEdge::GetSource() const { return &m_source; }
const Point3D<float>* PFGInnerDirectEdge::GetDestination() const { return &m_destination; }

bool PFWorld::_IsPastWaypoint(PFObject&) { return g_pastWaypoint; }
float PFWorld::_CalcWaypointVec(PFObject&) {
    ++g_calcWaypointCalls;
    return 0.0f;
}

// ---- Test helpers ------------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

void SetPoint(Point3D<float>& p, float x, float y, float z) {
    p.X = x;
    p.Y = y;
    p.Z = z;
}

bool PointIs(const Point3D<float>& p, float x, float y, float z) {
    return p.X == x && p.Y == y && p.Z == z;
}

// A direct edge with the given endpoints and no to-node (the value-initialised edge has null from and to nodes).
PFGInnerDirectEdge* MakeEdge(float sx, float sy, float sz, float dx, float dy, float dz) {
    auto* edge = new PFGInnerDirectEdge();
    SetPoint(edge->m_source, sx, sy, sz);
    SetPoint(edge->m_destination, dx, dy, dz);
    return edge;
}

// A direct edge that is part of the graph (not owned by the path): it lives on the stack, so the path never deletes it.
void MakeStackEdge(PFGInnerDirectEdge& edge, float sx, float sy, float sz, float dx, float dy, float dz) {
    edge.m_from = nullptr;  // no to-node: _SmoothPath then makes no crossing
    edge.m_to = nullptr;
    edge.m_weight = 1.0f;
    edge.m_distance = 0.0f;
    edge.m_clearance = 0.0f;
    SetPoint(edge.m_source, sx, sy, sz);
    SetPoint(edge.m_destination, dx, dy, dz);
}

}  // namespace

int main() {
    PFWorld world;

    // ---- DropPath -----------------------------------------------------------------------------------------------------
    {
        // Two owned edges at the front (smoothIdx 2) and two graph edges behind them: the owned ones are deleted, the
        // graph edges are only unlinked, and the path end becomes the position.
        PFObject obj;
        SetPoint(obj.m_pos, 1.0f, 2.0f, 3.0f);
        SetPoint(obj.m_pathEnd, 9.0f, 9.0f, 9.0f);
        obj.m_pathSmoothIdx = 2;
        g_directDestroyed = 0;
        PFGInnerDirectEdge* owned1 = MakeEdge(0, 0, 0, 1, 0, 0);
        PFGInnerDirectEdge* owned2 = MakeEdge(1, 0, 0, 2, 0, 0);
        PFGInnerDirectEdge graph1;
        PFGInnerDirectEdge graph2;
        MakeStackEdge(graph1, 2, 0, 0, 3, 0, 0);
        MakeStackEdge(graph2, 3, 0, 0, 4, 0, 0);
        obj.m_path.push_back(owned1);
        obj.m_path.push_back(owned2);
        obj.m_path.push_back(&graph1);
        obj.m_path.push_back(&graph2);

        world.DropPath(obj);

        EXPECT(obj.m_path.empty());
        EXPECT(g_directDestroyed == 2);
        EXPECT(obj.m_pathSmoothIdx == 0);
        EXPECT(PointIs(obj.m_pathEnd, 1.0f, 2.0f, 3.0f));
    }
    {
        // No owned edges: nothing is deleted, the list is cleared.
        PFObject obj;
        SetPoint(obj.m_pos, 5.0f, 6.0f, 7.0f);
        SetPoint(obj.m_pathEnd, 0.0f, 0.0f, 0.0f);
        obj.m_pathSmoothIdx = 0;
        g_directDestroyed = 0;
        PFGInnerDirectEdge graph1;
        MakeStackEdge(graph1, 0, 0, 0, 1, 0, 0);
        obj.m_path.push_back(&graph1);

        world.DropPath(obj);

        EXPECT(obj.m_path.empty());
        EXPECT(g_directDestroyed == 0);
        EXPECT(PointIs(obj.m_pathEnd, 5.0f, 6.0f, 7.0f));
    }
    {
        // An empty path leaves the path end alone.
        PFObject obj;
        SetPoint(obj.m_pos, 4.0f, 4.0f, 4.0f);
        SetPoint(obj.m_pathEnd, 8.0f, 8.0f, 8.0f);
        obj.m_pathSmoothIdx = 0;
        world.DropPath(obj);
        EXPECT(PointIs(obj.m_pathEnd, 8.0f, 8.0f, 8.0f));
    }

    // ---- _SmoothPath --------------------------------------------------------------------------------------------------
    {
        // The first edge is replaced by an owned copy of its endpoints with weight 1 (no to-node, so no crossing).
        PFObject obj;
        obj.m_radius = 1.0f;
        obj.m_pathSmoothIdx = 0;
        SetPoint(obj.m_pathEnd, 10.0f, 10.0f, 10.0f);
        PFGInnerDirectEdge* first = MakeEdge(1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f);
        first->m_weight = 0.5f;
        obj.m_path.push_back(first);

        world.DropPath(obj);  // leaves the list empty for the next step; the first edge is not owned, so it stays alive
        EXPECT(obj.m_path.empty());
        obj.m_path.push_back(first);
        g_directDestroyed = 0;

        world._SmoothPath(obj);

        EXPECT(obj.m_pathSmoothIdx == 1);
        EXPECT(obj.m_path.size() == 1);
        const PFGInnerEdge* front = obj.m_path.front();
        EXPECT(front != first);
        EXPECT(front->GetSource() != nullptr && PointIs(*front->GetSource(), 1.0f, 2.0f, 3.0f));
        EXPECT(front->GetDestination() != nullptr && PointIs(*front->GetDestination(), 4.0f, 5.0f, 6.0f));
        EXPECT(front->getWeight() == 1.0f);
        EXPECT(front->getToNode() == nullptr);

        // A second call does nothing: the path is already smoothed.
        const PFGInnerEdge* before = front;
        world._SmoothPath(obj);
        EXPECT(obj.m_pathSmoothIdx == 1);
        EXPECT(obj.m_path.front() == before);

        // DropPath deletes the owned edge (smoothIdx 1) and leaves the stack-free first edge untouched.
        world.DropPath(obj);
        EXPECT(g_directDestroyed == 1);
        EXPECT(obj.m_path.empty());
        delete first;
    }

    // ---- MovePath -----------------------------------------------------------------------------------------------------
    {
        // Empty path: the position is the object's and the result is 0.
        PFObject obj;
        SetPoint(obj.m_pos, 7.0f, 7.0f, 7.0f);
        Point3D<float> position{};
        EXPECT(world.MovePath(obj, position) == false);
        EXPECT(PointIs(position, 7.0f, 7.0f, 7.0f));
    }
    {
        // Not yet past the waypoint: the position is the first edge's destination and the result is 1.
        PFObject obj;
        obj.m_pathSmoothIdx = 0;
        PFGInnerDirectEdge graph1;
        MakeStackEdge(graph1, 0, 0, 0, 2, 3, 4);
        obj.m_path.push_back(&graph1);
        g_pastWaypoint = false;
        Point3D<float> position{};
        EXPECT(world.MovePath(obj, position) == true);
        EXPECT(PointIs(position, 2.0f, 3.0f, 4.0f));
        EXPECT(obj.m_path.size() == 1);
        obj.m_path.clear();
    }
    {
        // Past the only waypoint of an owned path: the owned edge is deleted, the path is empty and the position is the
        // path end; the result is 0.
        PFObject obj;
        SetPoint(obj.m_pathEnd, 11.0f, 12.0f, 13.0f);
        obj.m_pathSmoothIdx = 1;
        obj.m_path.push_back(MakeEdge(0, 0, 0, 1, 1, 1));
        g_pastWaypoint = true;
        g_directDestroyed = 0;
        Point3D<float> position{};
        EXPECT(world.MovePath(obj, position) == false);
        EXPECT(g_directDestroyed == 1);
        EXPECT(obj.m_path.empty());
        EXPECT(obj.m_pathSmoothIdx == 0);
        EXPECT(PointIs(position, 11.0f, 12.0f, 13.0f));
        g_pastWaypoint = false;
    }
    {
        // Past the first of two graph waypoints: the first is unlinked (not deleted), the second is smoothed into an
        // owned edge and becomes the target; the result is 1 and the waypoint vector is computed.
        PFObject obj;
        SetPoint(obj.m_pathEnd, 0.0f, 0.0f, 0.0f);
        obj.m_pathSmoothIdx = 0;
        PFGInnerDirectEdge graph1;
        PFGInnerDirectEdge graph2;
        MakeStackEdge(graph1, 0, 0, 0, 1, 1, 1);
        MakeStackEdge(graph2, 1, 1, 1, 7, 8, 9);
        obj.m_path.push_back(&graph1);
        obj.m_path.push_back(&graph2);
        g_pastWaypoint = true;
        g_directDestroyed = 0;
        g_calcWaypointCalls = 0;
        Point3D<float> position{};
        EXPECT(world.MovePath(obj, position) == true);
        EXPECT(obj.m_path.size() == 1);
        EXPECT(obj.m_pathSmoothIdx == 1);
        EXPECT(g_calcWaypointCalls == 1);
        EXPECT(PointIs(position, 7.0f, 8.0f, 9.0f));
        EXPECT(g_directDestroyed == 0);
        g_pastWaypoint = false;
        world.DropPath(obj);  // deletes the owned edge
        EXPECT(g_directDestroyed == 1);
    }

    if (g_failures == 0) {
        std::printf("PFWorld path tests: all passed\n");
        return 0;
    }
    std::printf("PFWorld path tests: %d failure(s)\n", g_failures);
    return 1;
}
