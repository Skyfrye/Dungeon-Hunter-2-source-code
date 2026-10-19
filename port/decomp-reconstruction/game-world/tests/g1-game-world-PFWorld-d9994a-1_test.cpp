// Test for batch g1-game-world-PFWorld-d9994a-1.
//
// Built with the batch source and the PFObject source (its constructor and CanPathOn are used). The PFRoom, PFFloor and
// PhysicalObject members that the batch calls are defined here as small controllable stubs, because their batches are
// not linked. PFFloor and PFRoom have no constructor in this test: their objects are zeroed storage, and only plain
// words are read and written through them (m_objectFlags, m_typeMask), so the stub room and floor are identities.
// PFGInnerEdge is given a test subclass for the waypoint helpers. The triangle3d edge intersection comes from the
// glitch-core-io line2d source, linked with the test.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <deque>
#include <vector>

#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/Vec3f_K.hpp"

// ---- definitions that belong to other batches -------------------------------------------------------------------

Point3D<float> Vec3f_K{0.0f, 0.0f, 1.0f};
PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static PFWorld g_testInstance_1{};
PFWorld& PFWorld::s_inst = g_testInstance_1;
void PFWorld::DropPath(PFObject&) {}
bool PhysicalObject::canCollide(PhysicalObject*) const { return true; }
PFGInnerEdge::~PFGInnerEdge() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return nullptr; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return nullptr; }

namespace {

// Zeroed storage that stands in for a PFFloor and a PFRoom. Only the identities and the m_objectFlags and m_typeMask
// words of the floor are used.
alignas(PFFloor) unsigned char g_floorStorage[sizeof(PFFloor)];
alignas(PFFloor) unsigned char g_otherFloorStorage[sizeof(PFFloor)];
alignas(PFRoom) unsigned char g_roomStorage[sizeof(PFRoom)];

PFFloor* Floor() { return reinterpret_cast<PFFloor*>(g_floorStorage); }
PFFloor* OtherFloor() { return reinterpret_cast<PFFloor*>(g_otherFloorStorage); }
PFRoom* Room() { return reinterpret_cast<PFRoom*>(g_roomStorage); }

// Room behaviour switches. The room floor answers every point with X <= 5; the collision test answers with a triangle
// whose edge AB lies on x = 5, so a step along +X from the origin crosses that edge.
bool g_floorAnswers = false;
bool g_collisionAnswers = false;

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool Near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

}  // namespace

bool PFRoom::GetFloorHeightAt(const Point3D<float>& point, float* height, Point3D<float>* normal, PFFloor** floorOut,
                              bool) {
    if (!g_floorAnswers || point.X > 5.0f) {
        return false;
    }
    if (height != nullptr) {
        *height = 0.0f;
    }
    if (normal != nullptr) {
        *normal = Point3D<float>{0.0f, 0.0f, 1.0f};
    }
    if (floorOut != nullptr) {
        *floorOut = Floor();
    }
    return true;
}

bool PFRoom::GetCollisionAt(const Point3D<float>& start, Point3D<float>& hit, glitch::core::triangle3d<float>& triangle,
                            PFFloor** floorOut, bool) {
    if (!g_collisionAnswers) {
        return false;
    }
    triangle.A = glitch::core::vector3d<float>{5.0f, -50.0f, 0.0f};
    triangle.B = glitch::core::vector3d<float>{5.0f, 50.0f, 0.0f};
    triangle.C = glitch::core::vector3d<float>{-50.0f, 0.0f, 0.0f};
    hit = Point3D<float>{start.X, start.Y, 0.0f};
    if (floorOut != nullptr) {
        *floorOut = Floor();
    }
    return true;
}

bool PFRoom::GetCollisionAt(const Point3D<float>&, const Point3D<float>&, Point3D<float>&, bool) { return false; }

bool PFFloor::GetFloorHeightAt(const Point3D<float>&, float*, Point3D<float>*) { return false; }

PFGInnerNode* PFFloor::_GetNodeAt(const Point3D<float>&) { return nullptr; }

namespace {

// A directed edge with fixed end points, for the waypoint helpers. The base edge is never constructed by the batch.
class TestEdge : public PFGInnerEdge {
public:
    TestEdge(Point3D<float> from, Point3D<float> to) : from_(from), to_(to) {}
    const Point3D<float>* GetSource() const override { return &from_; }
    const Point3D<float>* GetDestination() const override { return &to_; }

private:
    Point3D<float> from_;
    Point3D<float> to_;
};

// The world's bounding box, with the room list set up for the test.
void SetupWorld(PFWorld& world, bool withRoom) {
    world.m_boundsMin = Point3D<float>{-100.0f, -100.0f, -100.0f};
    world.m_boundsMax = Point3D<float>{100.0f, 100.0f, 100.0f};
    world.m_rooms.clear();
    if (withRoom) {
        world.m_rooms.push_back(Room());
    }
    world.m_verticalTolerance = 100.0f;
    world.unk_94 = false;
}

}  // namespace

int main() {
    // ---- floor flags on the object's floor -----------------------------------------------------------------------
    {
        PFWorld world;
        SetupWorld(world, false);
        PFObject object;
        Floor()->m_objectFlags = 0u;

        world.FlagFloorAsEnabled(object, true);  // no floor: nothing changes
        EXPECT(Floor()->m_objectFlags == 0u);

        object.m_floor = Floor();
        world.FlagFloorAsEnabled(object, true);
        EXPECT(Floor()->m_objectFlags == 1u);
        world.FlagFloorAsDeadEnd(object, true);
        EXPECT(Floor()->m_objectFlags == 3u);
        world.FlagFloorAsEnabled(object, false);
        EXPECT(Floor()->m_objectFlags == 2u);
        world.FlagFloorAsDeadEnd(object, false);
        EXPECT(Floor()->m_objectFlags == 0u);
        object.m_floor = nullptr;
    }

    // ---- height query: bounding box, then the room walk -----------------------------------------------------------
    {
        PFWorld world;
        SetupWorld(world, true);
        PFRoom* room = nullptr;
        float height = -1.0f;
        g_floorAnswers = false;
        EXPECT(!world.GetFloorHeightAt(Point3D<float>{1.0f, 0.0f, 0.0f}, &height, nullptr, &room, nullptr, false));
        EXPECT(room == nullptr);

        g_floorAnswers = true;
        EXPECT(!world.GetFloorHeightAt(Point3D<float>{101.0f, 0.0f, 0.0f}, &height, nullptr, &room, nullptr, false));
        EXPECT(!world.GetFloorHeightAt(Point3D<float>{0.0f, 0.0f, -101.0f}, &height, nullptr, &room, nullptr, false));
        EXPECT(world.GetFloorHeightAt(Point3D<float>{1.0f, 2.0f, 3.0f}, &height, nullptr, &room, nullptr, false));
        EXPECT(room == Room());

        SetupWorld(world, false);
        EXPECT(!world.GetFloorHeightAt(Point3D<float>{1.0f, 2.0f, 3.0f}, &height, nullptr, nullptr, nullptr, false));
        g_floorAnswers = false;
    }

    // ---- segment collision goes through the rooms without a bounding box test -------------------------------------
    {
        PFWorld world;
        SetupWorld(world, true);
        Point3D<float> hit{};
        EXPECT(!world.GetCollisionAt(Point3D<float>{0.0f, 0.0f, 0.0f}, Point3D<float>{500.0f, 0.0f, 0.0f}, hit, false));
        SetupWorld(world, false);
        EXPECT(!world.GetCollisionAt(Point3D<float>{0.0f, 0.0f, 0.0f}, Point3D<float>{5.0f, 0.0f, 0.0f}, hit, false));
    }

    // ---- InitObject: owner, static bit, radius floor of 1, position, and the floor query result ------------------
    {
        PFWorld world;
        SetupWorld(world, false);
        PFObject object;
        int owner = 0;
        const bool found = world.InitObject(object, false, Point3D<float>{3.0f, 4.0f, 0.0f}, 0.5f, &owner);
        EXPECT(!found);
        EXPECT(object.m_owner == static_cast<void*>(&owner));
        EXPECT((object.m_flags & 1u) == 0u);
        EXPECT(object.m_radius == 1.0f);
        EXPECT(object.m_pos.X == 3.0f && object.m_pos.Y == 4.0f);
        EXPECT(world.InitObject(object, true, Point3D<float>{1.0f, 2.0f, 9.0f}, 2.5f, nullptr) == false);
        EXPECT((object.m_flags & 1u) != 0u);
        EXPECT(object.m_radius == 2.5f);
        EXPECT(object.m_pos.Z == 9.0f);  // a static object's height is not written
    }

    // ---- ValidatePosition: equal position, no floor, and the accepted floor -----------------------------------
    {
        PFWorld world;
        SetupWorld(world, true);
        PFObject object;
        object.m_pos = Point3D<float>{1.0f, 2.0f, 0.0f};

        Point3D<float> position{1.0f, 2.0f, 0.0f};
        EXPECT(world.ValidatePosition(position, &object));  // equal to the object's position

        g_floorAnswers = false;
        position = Point3D<float>{50.0f, 0.0f, 0.0f};
        EXPECT(!world.ValidatePosition(position, nullptr));
        EXPECT(position.X == 50.0f);  // no object: the position is left as it was when nothing is found

        g_floorAnswers = true;
        position = Point3D<float>{2.0f, 3.0f, 7.0f};
        EXPECT(world.ValidatePosition(position, &object));
        EXPECT(object.m_floor == Floor());
        EXPECT(object.m_pos.X == 2.0f && object.m_pos.Y == 3.0f && object.m_pos.Z == 0.0f);
        EXPECT(position.Z == 0.0f);
        object.m_floor = nullptr;
        g_floorAnswers = false;
    }

    // ---- obstacle registration on the object's floor --------------------------------------------------------
    {
        PFWorld world;
        SetupWorld(world, false);
        PFObject object;
        object.m_floor = Floor();
        world.InitObstacle(object, true, 1.5f, 2.0f);
        EXPECT((object.m_flags & 4u) != 0u);
        EXPECT(object.m_obstacleRadius == 1.5f);
        EXPECT(object.m_obstacleStrength == 2.0f);
        EXPECT(world.m_obstacleParentLists[Floor()].size() == 1u);
        EXPECT(world.m_obstacleParentLists[Floor()].front() == &object);

        world.InitObstacle(object, true, 3.0f, 4.0f);  // already registered: only the values change
        EXPECT(world.m_obstacleParentLists[Floor()].size() == 1u);
        EXPECT(object.m_obstacleRadius == 3.0f && object.m_obstacleStrength == 4.0f);

        world.InitObstacle(object, false, 3.0f, 4.0f);  // removal
        EXPECT((object.m_flags & 4u) == 0u);
        EXPECT(world.m_obstacleParentLists[Floor()].empty());
        EXPECT(object.m_obstacleRadius == 0.0f && object.m_obstacleStrength == 0.0f);

        // No floor and no room answers: the object is not registered.
        PFWorld roomWorld;
        SetupWorld(roomWorld, true);
        PFObject loose;
        g_floorAnswers = false;
        roomWorld.InitObstacle(loose, true, 1.0f, 1.0f);
        EXPECT((loose.m_flags & 4u) == 0u);
        EXPECT(loose.m_obstacleStrength == 0.0f);

        // No floor, but the floor query answers: the object joins that floor's list.
        g_floorAnswers = true;
        roomWorld.InitObstacle(loose, true, 1.0f, 1.0f);
        EXPECT((loose.m_flags & 4u) != 0u);
        EXPECT(loose.m_floor == Floor());
        EXPECT(roomWorld.m_obstacleParentLists[Floor()].size() == 1u);
        g_floorAnswers = false;
        roomWorld.m_obstacleParentLists.clear();
        loose.m_floor = nullptr;
        loose.m_flags = 0u;

        // Moving to another floor list.
        world.m_obstacleParentLists[Floor()].clear();
        PFObject mover;
        mover.m_floor = Floor();
        world.InitObstacle(mover, true, 1.0f, 1.0f);
        world._ChangeObstacleParentList(mover, OtherFloor());
        EXPECT(world.m_obstacleParentLists[Floor()].empty());
        EXPECT(world.m_obstacleParentLists[OtherFloor()].size() == 1u);
        EXPECT(world.m_obstacleParentLists[OtherFloor()].front() == &mover);
        // An unregistered object does not move.
        PFObject idle;
        idle.m_floor = Floor();
        world._ChangeObstacleParentList(idle, OtherFloor());
        EXPECT(world.m_obstacleParentLists[OtherFloor()].size() == 1u);
        mover.m_floor = nullptr;
        world.m_obstacleParentLists.clear();
    }

    // ---- obstacle force: one obstacle in reach, and AvoidObstacles steering ------------------------------------
    {
        PFWorld world;
        SetupWorld(world, false);
        PFObject object;  // moving, on the floor, radius 1, no path, path end 10 units along +X
        object.m_floor = Floor();
        object.m_flags = 2u;
        object.m_pos = Point3D<float>{1.0f, 0.0f, 0.0f};
        object.m_pathEnd = Point3D<float>{10.0f, 0.0f, 0.0f};

        PFObject obstacle;  // registered and collidable, no owner, at the origin
        obstacle.m_floor = Floor();
        obstacle.m_flags = 4u | 8u;
        obstacle.m_pos = Point3D<float>{0.0f, 0.0f, 0.0f};
        obstacle.m_obstacleRadius = 1.0f;
        obstacle.m_obstacleStrength = 2.0f;
        obstacle.m_radius = 1.0f;

        PFObject unregistered;  // collidable but not a registered obstacle: ignored
        unregistered.m_floor = Floor();
        unregistered.m_flags = 8u;
        world.m_obstacleParentLists[Floor()].push_back(&obstacle);
        world.m_obstacleParentLists[Floor()].push_back(&object);  // the object itself: ignored
        world.m_obstacleParentLists[Floor()].push_back(&unregistered);

        Point3D<float> force{};
        std::vector<PFWorld::ObstacleForce> forces;
        const int count = world._CalcObstaclesForce(object, force, &forces);
        // reach = 1 + 1 + 1 = 3, dist2 = 1, falloff = 1 - 1/9 = 8/9, strength = 16/9, direction = +X.
        EXPECT(count == 1);
        EXPECT(Near(force.X, 16.0f / 9.0f));
        EXPECT(Near(force.Y, 0.0f) && Near(force.Z, 0.0f));
        EXPECT(forces.size() == 1u);
        if (!forces.empty()) {
            EXPECT(forces[0].unk_10 == &obstacle);
            EXPECT(Near(forces[0].unk_0c, 8.0f / 9.0f));
        }

        // AvoidObstacles: the step is against the force, so the direction turns to the side (0, 1, 0), with the
        // force's length: (-1, 0, 0) becomes (-1, 16/9, 0).
        Point3D<float> direction{-1.0f, 0.0f, 0.0f};
        world.AvoidObstacles(object, direction);
        EXPECT(Near(direction.X, -1.0f));
        EXPECT(Near(direction.Y, 16.0f / 9.0f));
        EXPECT(Near(direction.Z, 0.0f));

        // With the force agreeing with the direction, nothing changes.
        Point3D<float> along{1.0f, 0.0f, 0.0f};
        world.AvoidObstacles(object, along);
        EXPECT(along.X == 1.0f && along.Y == 0.0f && along.Z == 0.0f);

        // A static object is not steered.
        object.m_flags = 3u;
        Point3D<float> still{-1.0f, 0.0f, 0.0f};
        world.AvoidObstacles(object, still);
        EXPECT(still.X == -1.0f && still.Y == 0.0f);

        world.m_obstacleParentLists.clear();
        obstacle.m_floor = nullptr;
        object.m_floor = nullptr;
    }

    // ---- ValidateDirection: a step blocked by the room is turned along the wall it crosses -----------------------
    {
        PFWorld world;
        SetupWorld(world, true);
        Floor()->m_typeMask = 0u;
        g_floorAnswers = true;     // the floor answers for X <= 5 only, so the step to X = 10 is blocked
        g_collisionAnswers = true; // the triangle's edge AB lies on X = 5

        Point3D<float> direction{1.0f, 0.0f, 0.0f};
        EXPECT(world.ValidateDirection(direction, Point3D<float>{0.0f, 0.0f, 0.0f}, 1.0f, 0u));
        EXPECT(Near(direction.X, 0.0f) && Near(direction.Y, 1.0f) && Near(direction.Z, 0.0f));

        // A floor type the move does not have is refused before any step is tried.
        Floor()->m_typeMask = 1u;
        Point3D<float> refused{1.0f, 0.0f, 0.0f};
        EXPECT(!world.ValidateDirection(refused, Point3D<float>{0.0f, 0.0f, 0.0f}, 1.0f, 0u));
        EXPECT(refused.X == 1.0f && refused.Y == 0.0f);
        Floor()->m_typeMask = 0u;

        g_floorAnswers = false;
        g_collisionAnswers = false;
    }

    // ---- waypoints: the first edge's direction, and whether the object is past its source ---------------------
    {
        PFWorld world;
        TestEdge edge(Point3D<float>{0.0f, 0.0f, 0.0f}, Point3D<float>{10.0f, 0.0f, 0.0f});
        PFObject object;
        object.m_path.push_back(&edge);
        const float dx = world._CalcWaypointVec(object);
        EXPECT(Near(dx, 10.0f));
        EXPECT(object.m_waypointDir.Z == 0.0f);
        object.m_pos = Point3D<float>{5.0f, 0.0f, 0.0f};
        EXPECT(world._IsPastWaypoint(object));
        object.m_pos = Point3D<float>{-5.0f, 0.0f, 0.0f};
        EXPECT(!world._IsPastWaypoint(object));
        object.m_path.clear();
    }

    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("PFWorld batch tests passed\n");
    return 0;
}
