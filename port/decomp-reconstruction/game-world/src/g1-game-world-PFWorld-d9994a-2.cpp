// Batch g1-game-world-PFWorld-d9994a-2 (part 3 of 3 of PFWorld): path search, path smoothing and path following.
// Declarations come from dh2/PFWorld.hpp. Functions in this batch: DropPath 0x52aae4, _SearchGraph (Point3D goal) 0x52b560, HasValidPath 0x52c354 and 0x52c388, _SearchGraph (ITest) 0x52cb90,
// TestPath 0x52d4f0 and 0x52d518, _SmoothPath 0x52d538, MovePath 0x52d838 and FindPath 0x52db48.
//
// Layout facts used here (32-bit offsets, named in dh2/PFObject.hpp, dh2/PFGInnerNode.hpp and dh2/PFGInnerEdge.hpp):
//   PFObject +0x08 m_radius          +0x18 m_pos           +0x38 m_path (std::list of PFGInnerEdge const*)
//   PFObject +0x40 m_pathEnd         +0x7c m_pathSmoothIdx  count of heap-owned edges at the front of m_path
//   PFGInnerNode +0x08 m_position    +0x14 m_direction     +0x20 m_width
//   PFGInnerDirectEdge +0x18 m_source  +0x24 m_destination  (the edge is 0x30 bytes)

#include "dh2/PFWorld.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <deque>
#include <list>

#include "dh2/DebugSwitches.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerDirectEdge.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFInnerTest_PFObject.hpp"
#include "dh2/PFInnerTest_PathValidity.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/sfc/math/graph/AlgoAStar.hpp"
#include "glitch-core-io/os/logging.hpp"  // glitch::os::Timer::getRealTime (0x60b0cc)

// Global assert level (libDungeonHunter2.so gAssertLevel). dh2/global/runtime_support.hpp is not included: it pulls in
// core-platform's glitch stand-ins, which clash with the glitch headers this file needs (see CameraLevel.cpp), so the
// two profiling markers (0x3136b4, 0x3136b8) and the assert level are declared here.
extern int gAssertLevel;
void PushProfilingContext(const char* name);
void PopProfilingContext(const char* name);

namespace {

// The source path the original's ASSERT messages print (PFWorld_PathFinding.cpp in the Visual Studio project).
constexpr const char kPathFindingSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash), level 1 prints
// the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kPathFindingSource, line);
    }
}

// The "no distance found" value the original compares against (3.4028e38).
constexpr float kFarDistance = 3.4028e38f;

// The midpoint of a triangle edge, (a + b) / 2 per component, as the original computes the search nodes' probe points.
Point3D<float> EdgeMidpoint(const glitch::core::vector3d<float>& a, const glitch::core::vector3d<float>& b) {
    return Point3D<float>{(a.X + b.X) * 0.5f, (a.Y + b.Y) * 0.5f, (a.Z + b.Z) * 0.5f};
}

// Squared distance from an inner node's centre to a point (the original's (dx*dx + dy*dy) + dz*dz order).
float NodeDistanceSq(const PFGInnerNode* node, const Point3D<float>& point) {
    const float dx = node->m_position.X - point.X;
    const float dy = node->m_position.Y - point.Y;
    const float dz = node->m_position.Z - point.Z;
    return dx * dx + dy * dy + dz * dz;
}

bool SameVertex(const glitch::core::vector3d<float>& a, const glitch::core::vector3d<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

// Goal tests of the two searches. The binary builds these from PFInnerTest_BasicIdentity (the goal node at its
// unk_4, operator() is "node == goal") plus the validity tests of PFInnerTest_PFObject (object given) or
// PFInnerTest_PathValidity (no object). Its composites (PFInnerTest_Default, vtable off_96C950, and
// PFInnerTest_Anonymous, vtable off_96CA88) have no header, so the same virtual calls are made through these
// derived classes instead.
class PFWorldGoalObjectTest final : public PFInnerTest_PFObject {
public:
    bool operator()(const PFGInnerNode* node) const override { return node == goal; }

    const PFGInnerNode* goal = nullptr;  // the goal node, BasicIdentity's unk_4 in the binary
};

class PFWorldGoalPathTest final : public PFInnerTest_PathValidity {
public:
    bool operator()(const PFGInnerNode* node) const override { return node == goal; }

    const PFGInnerNode* goal = nullptr;  // the goal node, BasicIdentity's unk_4 in the binary
};

}  // namespace

// 0x52aae4 PFWorld::DropPath(PFObject&)
// The first m_pathSmoothIdx edges of the path are heap-owned (made by _SmoothPath) and are deleted as they leave the
// list. The rest are graph edges and are only unlinked. The path is then cleared and its end becomes the object's
// position. The original's loop reads past the end of the list when m_pathSmoothIdx exceeds the size, which only
// happens after the assert above; the port stops at the end of the list instead.
void PFWorld::DropPath(PFObject& object) {
    auto& path = object.m_path;
    if (path.empty()) {
        return;
    }
    if (object.m_pathSmoothIdx > path.size()) {
        ReportAssert("pfo.path_smoothIdx <= pfo.path.size()", 466);
    }
    while (object.m_pathSmoothIdx != 0 && !path.empty()) {
        const PFGInnerEdge* front = path.front();
        object.m_pathSmoothIdx = object.m_pathSmoothIdx - 1;
        delete front;  // the binary calls the edge's deleting destructor (vtable slot 8); a null edge is a no-op
        path.pop_front();
    }
    path.clear();
    object.m_pathEnd = object.m_pos;  // +0x40 .. +0x48 take +0x18 .. +0x20
}

// 0x52b560 PFWorld::_SearchGraph(PFObject const*, Point3D<float> const&, Point3D<float> const&, uint,
//                                std::list<PFGInnerEdge const*>*)
// Returns 0 unless the PathFinding_Search module is enabled. Both end points are looked up on the floors (GetCollisionAt); a missing triangle or floor at either end gives 0. When both lie on one triangle (all
// nine coordinates equal) the result is 1 and, when an object and a path are both given, the object's embedded direct edge (PFObject +0x4c, source and destination set to the two points) is pushed onto the path.
// Otherwise the inner nodes at the midpoints of the triangle edges are the candidates: the nearest to the start for the start side, to the goal for the goal side (the second candidate on each side updates the stored
// distance, the third does not). No node on a side gives 0, the same node on both sides gives 1 (with the same embedded edge link), and a search that failed with the same {start, goal, flags} before gives 0 from the
// cache. Else the A* search runs (the object's or the plain path validity test) and a failure is added to the cache. With a path: a failed search clears it, a found path of more than one edge loses its last edge when
// that edge starts at a goal-side candidate.
int PFWorld::_SearchGraph(const PFObject* object, const Point3D<float>& from, const Point3D<float>& to,
                          unsigned int flags, std::list<const PFGInnerEdge*>* path) {
    DebugSwitches::s_inst.load();
    if (!DebugSwitches::s_inst.GetModule("PathFinding_Search")) {
        return 0;
    }

    // The 9-float triangle copies of the original (v61..v69 for the goal side, v70..v78 for the start side).
    glitch::core::triangle3d<float> fromTriangle{};
    glitch::core::triangle3d<float> toTriangle{};
    Point3D<float> fromHit{};
    Point3D<float> toHit{};
    PFFloor* fromFloor = nullptr;
    PFFloor* toFloor = nullptr;
    if (!GetCollisionAt(from, fromHit, fromTriangle, nullptr, &fromFloor, false) || fromFloor == nullptr ||
        !GetCollisionAt(to, toHit, toTriangle, nullptr, &toFloor, false) || toFloor == nullptr) {
        return 0;
    }

    const auto& fa = fromTriangle;
    const auto& ta = toTriangle;
    if (SameVertex(ta.A, fa.A) && SameVertex(ta.B, fa.B) && SameVertex(ta.C, fa.C)) {
        // Both points lie on one triangle. With an object and a path the object's embedded direct edge is linked into the path.
        if (path != nullptr && object != nullptr) {
            PFObject* writable = const_cast<PFObject*>(object);
            writable->m_edge.m_source = from;
            writable->m_edge.m_destination = to;
            path->push_back(&writable->m_edge);
        }
        return 1;
    }

    // The inner nodes at the midpoints of the start triangle's edges (AB, AC, BC) and the goal triangle's edges.
    PFGInnerNode* startAB = fromFloor->_GetNodeAt(EdgeMidpoint(fa.A, fa.B));
    PFGInnerNode* startAC = fromFloor->_GetNodeAt(EdgeMidpoint(fa.A, fa.C));
    PFGInnerNode* startBC = fromFloor->_GetNodeAt(EdgeMidpoint(fa.B, fa.C));
    PFGInnerNode* goalAB = toFloor->_GetNodeAt(EdgeMidpoint(ta.A, ta.B));
    PFGInnerNode* goalAC = toFloor->_GetNodeAt(EdgeMidpoint(ta.A, ta.C));
    PFGInnerNode* goalBC = toFloor->_GetNodeAt(EdgeMidpoint(ta.B, ta.C));

    // Start node: the nearest of the three start candidates to from. The AB candidate is tested first; the AC candidate
    // replaces it when closer and updates the distance; the BC candidate replaces it when closer but the distance stays
    // as it was (the binary does not store it).
    PFGInnerNode* start = startAB;
    float startDistance = kFarDistance;
    if (start != nullptr) {
        startDistance = NodeDistanceSq(start, from);
        if (startDistance >= kFarDistance) {
            startDistance = kFarDistance;
            start = nullptr;
        }
    }
    if (startAC != nullptr) {
        const float d = NodeDistanceSq(startAC, from);
        if (startDistance > d) {
            start = startAC;
            startDistance = d;
        }
    }
    if (startBC != nullptr && startDistance > NodeDistanceSq(startBC, from)) {
        start = startBC;
    }

    // Goal node: the same rule against to.
    PFGInnerNode* goal = nullptr;
    float goalDistance = kFarDistance;
    if (goalAB != nullptr) {
        const float d = NodeDistanceSq(goalAB, to);
        if (d < kFarDistance) {
            goal = goalAB;
            goalDistance = d;
        }
    }
    if (goalAC != nullptr) {
        const float d = NodeDistanceSq(goalAC, to);
        if (goalDistance > d) {
            goal = goalAC;
            goalDistance = d;
        }
    }
    if (goalBC != nullptr && goalDistance > NodeDistanceSq(goalBC, to)) {
        goal = goalBC;
    }

    if (start == nullptr || goal == nullptr) {
        return 0;
    }
    if (start == goal) {
        // Same inner node on both sides. With an object and a path the object's embedded direct edge is linked into the path.
        if (path != nullptr && object != nullptr) {
            PFObject* writable = const_cast<PFObject*>(object);
            writable->m_edge.m_source = from;
            writable->m_edge.m_destination = to;
            path->push_back(&writable->m_edge);
        }
        return 1;
    }

    // The fail cache: a search that failed with the same start node, goal node and flags fails again.
    for (auto it = m_searchFails.m_entries.rbegin(); it != m_searchFails.m_entries.rend(); ++it) {
        if (it->m_start == start && it->m_goal == goal && it->m_flags == flags) {
            return 0;
        }
    }

    // The search object: AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic> with m_graph set to the inner graph and
    // m_outPath pointing at its own m_path (the binary's v59/v60 setup).
    sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic> search{};
    search.m_graph = m_iGraph;
    search.m_outPath = &search.m_path;

    int result = 0;
    if (object != nullptr) {
        PFWorldGoalObjectTest test;
        test.goal = goal;
        test.m_object = const_cast<PFObject*>(object);  // PFInnerTest_PFObject only reads the object
        result = search.findNode(start->getID(), test, flags, path) ? 1 : 0;
    } else {
        PFWorldGoalPathTest test;
        test.goal = goal;
        result = search.findNode(start->getID(), test, flags, path) ? 1 : 0;
    }

    if (result == 0) {
        SearchFailCache::Entry entry{start, goal, flags};
        m_searchFails.add(entry);
    }

    if (path != nullptr) {
        if (result != 0) {
            // A path of more than one edge loses its last edge when that edge starts at one of the goal-side candidates.
            if (path->size() > 1) {
                const PFGInnerNode* lastFrom = path->back()->getFromNode();
                if (goalAB == lastFrom || goalAC == lastFrom || goalBC == lastFrom) {
                    path->pop_back();
                }
            }
        } else {
            path->clear();
        }
    }
    return result;
}

// 0x52c354 PFWorld::HasValidPath(Point3D<float> const&, Point3D<float> const&, uint)
// Forwards to the Point3D _SearchGraph with no object and no path.
bool PFWorld::HasValidPath(const Point3D<float>& from, const Point3D<float>& to, unsigned int flags) {
    return _SearchGraph(nullptr, from, to, flags, nullptr) != 0;
}

// 0x52c388 PFWorld::HasValidPath(PFObject const&, Point3D<float> const&, uint)
// Forwards to the Point3D _SearchGraph with the object and no path. The start is the object's position (PFObject +0x18).
bool PFWorld::HasValidPath(const PFObject& object, const Point3D<float>& to, unsigned int flags) {
    return _SearchGraph(&object, object.m_pos, to, flags, nullptr) != 0;
}

// 0x52cb90 PFWorld::_SearchGraph(PFObject const*, Point3D<float> const&, ITest<PFGInnerEdge,PFGInnerNode> const&, uint)
// Returns 0 unless the PathFinding_Search module is enabled. The start node is the closest inner node to the object, or to the point. The binary then runs AlgoAStar<PFGInnerGraph, DijkstraHeuristic>::findNode
// inline (same loop as the DiabloIPhoneHeuristic findNode 0x52ad4c: the test on the current node, the expansion limit, getEdges, the edge tests, _markNode, the open-list push), with its path kept in the search
// object's m_path and discarded, and returns whether the goal test accepted the last node. The instance shares findNode's body.
int PFWorld::_SearchGraph(const PFObject* object, const Point3D<float>& from,
                          const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test, unsigned int flags) {
    DebugSwitches::s_inst.load();
    if (!DebugSwitches::s_inst.GetModule("PathFinding_Search")) {
        return 0;
    }
    PFGInnerNode* start = object != nullptr ? _GetClosestNode(*object) : _GetClosestNode(from);
    if (start == nullptr) {
        return 0;
    }
    sfc::math::graph::AlgoAStar<PFGInnerGraph, DijkstraHeuristic> search{};
    search.m_graph = m_iGraph;
    search.m_outPath = &search.m_path;
    return search.findNode(start->getID(), test, flags, nullptr) ? 1 : 0;
}

// 0x52d4f0 PFWorld::TestPath(Point3D<float> const&, ITest<PFGInnerEdge,PFGInnerNode> const&, uint)
// Forwards to the ITest _SearchGraph with no object.
bool PFWorld::TestPath(const Point3D<float>& from, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test,
                       unsigned int flags) {
    return _SearchGraph(nullptr, from, test, flags) != 0;
}

// 0x52d518 PFWorld::TestPath(PFObject const&, ITest<PFGInnerEdge,PFGInnerNode> const&, uint)
// Forwards to the ITest _SearchGraph with the object. The start point is the object's position (PFObject +0x18).
bool PFWorld::TestPath(const PFObject& object, const sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>& test,
                       unsigned int flags) {
    return _SearchGraph(&object, object.m_pos, test, flags) != 0;
}

// 0x52d538 PFWorld::_SmoothPath(PFObject&)
// Runs once per path (m_pathSmoothIdx 0 -> 1). The first edge of the path is replaced by a heap-owned direct edge that
// runs from the old edge's source to a point where the line toward m_pathEnd crosses the old edge's to-node. The
// to-node is the edge's portal: its midpoint (m_position) and direction (m_direction) give the segment of half-width
// (m_width - m_radius) / 2 that the crossing is taken against.
void PFWorld::_SmoothPath(PFObject& object) {
    auto& path = object.m_path;
    if (path.empty()) {
        ReportAssert("pfo.path.size() > 0", 255);
        return;  // the binary reads the list sentinel here, which is undefined; the port stops
    }
    if (object.m_pathSmoothIdx != 0) {
        return;
    }
    object.m_pathSmoothIdx = 1;

    const PFGInnerEdge* first = path.front();
    const PFGInnerNode* node = first->getToNode();
    const Point3D<float>* source = first->GetSource();
    const Point3D<float>* destination = first->GetDestination();

    // operator new(0x30) with the direct-edge vtable: from and to nodes null, weight 1.0, distance and clearance 0.
    auto* direct = new PFGInnerDirectEdge();
    direct->m_weight = 1.0f;
    direct->m_source = *source;
    direct->m_destination = *destination;

    // The old front node is unlinked (its edge is not deleted) and the new edge takes its place.
    path.pop_front();
    path.push_front(direct);

    if (node == nullptr) {
        return;
    }

    const float half = (node->m_width - object.m_radius) * 0.5f;
    const float dx = node->m_direction.X * half;
    const float dy = node->m_direction.Y * half;
    const Point2D<float> p0{node->m_position.X + dx, node->m_position.Y + dy};
    const Point2D<float> p1{node->m_position.X - dx, node->m_position.Y - dy};
    const Point2D<float> q0{direct->m_source.X, direct->m_source.Y};
    const Point2D<float> q1{object.m_pathEnd.X, object.m_pathEnd.Y};

    Point2D<float> crossing{0.0f, 0.0f};
    float t = 0.0f;
    float u = 0.0f;
    const int code = Point2D<float>::lineIntersection(p0, p1, q0, q1, crossing, t, u);

    Point2D<float> to{};
    if (code == 4) {
        // The segments meet at an end of the portal: t >= 0 takes p1, otherwise p0.
        to = t >= 0.0f ? p1 : p0;
    } else if (code == 5 || code == 3) {
        to = crossing;
    } else {
        return;  // parallel or out of range: the destination stays as copied
    }
    direct->m_destination.X = to.X;
    direct->m_destination.Y = to.Y;
}

// 0x52d838 PFWorld::MovePath(PFObject&, Point3D<float>&)
// Gives the position the object should move to next. An empty path gives the object's own position. Otherwise it gives
// the destination of the first edge; once the object is past that waypoint the edge is dropped, and when no edge is left
// the path end is given. A remaining path is smoothed again first.
bool PFWorld::MovePath(PFObject& object, Point3D<float>& position) {
    auto& path = object.m_path;
    if (path.empty()) {
        position = object.m_pos;
        return false;
    }
    position = *path.front()->GetDestination();
    if (!_IsPastWaypoint(object)) {
        return true;
    }
    if (object.m_pathSmoothIdx != 0) {
        --object.m_pathSmoothIdx;
        delete path.front();  // heap-owned edge (the binary calls its deleting destructor when non-null)
    }
    path.pop_front();
    if (path.empty()) {
        position = object.m_pathEnd;
        return false;
    }
    _SmoothPath(object);
    _CalcWaypointVec(object);
    position = *path.front()->GetDestination();
    return true;
}

// 0x52db48 PFWorld::FindPath(PFObject&, Point3D<float> const&, uint)
// Drops the old path, records the goal (PFObject +0x40), runs the Point3D _SearchGraph from the object's position into the object's own path (timed into the window of the last ten durations when
// PF_ProfileSearches is on: each duration is added to the total and the oldest leaves when more than ten are held), and on success smooths the path and builds the waypoint vector.
bool PFWorld::FindPath(PFObject& object, const Point3D<float>& goal, unsigned int flags) {
    PushProfilingContext("PFWorld::FindPath");
    DropPath(object);
    object.m_pathEnd = goal;  // +0x40 .. +0x48

    DebugSwitches::s_inst.load();
    const bool profile = DebugSwitches::s_inst.GetSwitch("PF_ProfileSearches");
    int found = 0;
    if (profile) {
        const std::uint32_t startTime = glitch::os::Timer::getRealTime();
        found = _SearchGraph(&object, object.m_pos, goal, flags, &object.m_path);
        const std::uint32_t duration = glitch::os::Timer::getRealTime() - startTime;
        // The window of the last ten durations: each search adds its time and the oldest one leaves when more than ten
        // are held.
        m_searchTimes.push_back(duration);
        m_searchTimeTotal += duration;
        if (m_searchTimes.size() > 10) {
            m_searchTimeTotal -= m_searchTimes.front();
            m_searchTimes.pop_front();
        }
    } else {
        found = _SearchGraph(&object, object.m_pos, goal, flags, &object.m_path);
    }
    if (found != 0) {
        _SmoothPath(object);
        _CalcWaypointVec(object);
        found = 1;
    }
    PopProfilingContext("PFWorld::FindPath");
    return found != 0;
}
