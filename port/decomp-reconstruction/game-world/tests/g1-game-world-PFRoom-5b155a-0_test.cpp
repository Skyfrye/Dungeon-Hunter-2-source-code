// Test for batch g1-game-world-PFRoom-5b155a-0.
//
// The batch source calls PFFloor, PFWorld, DebugSwitches and the clock, and reads the assert level. Only this batch is
// linked, so those are defined here as test doubles: PFFloor records the calls it gets and answers its queries from a
// set, the world and the debug switches are empty, and the clock returns 0. The PFRoom code itself runs for real: the
// constructor, the box update that reaches the world box, the floor filters of the queries, the post-load and link
// pairs, and the destructor.

#include <cstdint>
#include <cstdio>
#include <limits>
#include <set>
#include <string>
#include <utility>
#include <vector>

// aabb<float> is declared in dh2/PFRoom.hpp but not defined in the tree. The test gives it the six-float layout the
// original reads: minimum X, Y, Z, then maximum X, Y, Z.
template <typename T>
struct aabb {
    T values[6];
};

#include "dh2/DebugSwitches.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFWorld.hpp"
#include "glitch-core-io/os/logging.hpp"

// The engine assert level the batch source reads. 0 keeps the asserts silent.
int gAssertLevel = 0;

namespace {

int g_failures = 0;
int g_floorDeletes = 0;
std::set<const PFFloor*> g_answers;  // floors whose height and collision queries answer true
std::vector<const PFFloor*> g_queried;
std::vector<std::pair<const PFFloor*, const PFFloor*>> g_links;
std::vector<const PFFloor*> g_postLoads;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void ResetLog() {
    g_answers.clear();
    g_queried.clear();
    g_links.clear();
    g_postLoads.clear();
    g_floorDeletes = 0;
}

bool Same(const Point3D<float>& p, float x, float y, float z) {
    return p.X == x && p.Y == y && p.Z == z;
}

// A floor with the given flags and type word. Its X extent is [minX, maxX]; Y and Z run from 0 to 1.
PFFloor* MakeFloor(std::uint32_t objectFlags, std::uint32_t typeMask, float minX, float maxX) {
    PFFloor* floor = new PFFloor("floor", nullptr, nullptr, nullptr, objectFlags);
    floor->m_typeMask = typeMask;
    floor->m_boundsMin = Point3D<float>{minX, 0.0f, 0.0f};
    floor->m_boundsMax = Point3D<float>{maxX, 1.0f, 1.0f};
    return floor;
}

// Tags whose addresses stand in for the graph pointers. The batch source never dereferences them.
char g_outerTag;
char g_innerTag;

PFRoom MakeRoom(const char* name, PFWorld* world) {
    return PFRoom(name, 0u, world, reinterpret_cast<PFGOuterGraph*>(&g_outerTag),
                  reinterpret_cast<PFGInnerGraph*>(&g_innerTag));
}

void TestConstructor() {
    ResetLog();
    PFWorld world;
    PFRoom room("room_a", 7u, &world, reinterpret_cast<PFGOuterGraph*>(&g_outerTag),
                reinterpret_cast<PFGInnerGraph*>(&g_innerTag));
    Check(room.m_name == "room_a", "ctor copies the name");
    Check(room.unk_1c == 7u, "ctor stores the uint argument at +0x1c");
    Check(room.m_world == &world, "ctor stores the world at +0x20");
    Check(room.m_oGraph == reinterpret_cast<PFGOuterGraph*>(&g_outerTag), "ctor stores the outer graph at +0x28");
    Check(room.m_iGraph == reinterpret_cast<PFGInnerGraph*>(&g_innerTag), "ctor stores the inner graph at +0x2c");
    Check(room.m_flags == 0u, "ctor zeroes +0x24");
    Check(room.m_floors.empty(), "ctor starts with no floors");
    Check(Same(room.m_boundsMin, 0.0f, 0.0f, 0.0f) && Same(room.m_boundsMax, 0.0f, 0.0f, 0.0f),
          "ctor zeroes the room box");
}

void TestExtendBoundingBox() {
    ResetLog();
    PFWorld world;
    world.m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
    world.m_boundsMax = Point3D<float>{10.0f, 10.0f, 10.0f};
    PFRoom room = MakeRoom("box", &world);

    // Starts from the zeroed room box: the room takes the box, and the world keeps 10 on X and Y but grows to 20 on Z.
    const aabb<float> first{{-5.0f, -2.0f, -1.0f, 3.0f, 4.0f, 20.0f}};
    bool grew = room.ExtendBoundingBox(first);
    Check(Same(room.m_boundsMin, -5.0f, -2.0f, -1.0f), "room minimum takes the smaller values");
    Check(Same(room.m_boundsMax, 3.0f, 4.0f, 20.0f), "room maximum takes the larger values");
    Check(Same(world.m_boundsMin, -5.0f, -2.0f, -1.0f), "world minimum follows the room");
    Check(Same(world.m_boundsMax, 10.0f, 10.0f, 20.0f), "world maximum grows only where the room exceeds it");
    Check(grew, "world top grew from 10 to 20");

    // A box inside the room changes nothing and reports no growth.
    const aabb<float> inside{{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f}};
    grew = room.ExtendBoundingBox(inside);
    Check(Same(room.m_boundsMin, -5.0f, -2.0f, -1.0f) && Same(room.m_boundsMax, 3.0f, 4.0f, 20.0f),
          "a box inside the room leaves the room box alone");
    Check(Same(world.m_boundsMin, -5.0f, -2.0f, -1.0f) && Same(world.m_boundsMax, 10.0f, 10.0f, 20.0f),
          "a box inside the room leaves the world box alone");
    Check(!grew, "a box inside the room reports no growth");

    // A box that extends the minimum X and the maximum Z.
    const aabb<float> higher{{-9.0f, 0.0f, 0.0f, 0.0f, 0.0f, 25.0f}};
    grew = room.ExtendBoundingBox(higher);
    Check(Same(room.m_boundsMin, -9.0f, -2.0f, -1.0f), "room minimum X extends to -9");
    Check(Same(room.m_boundsMax, 3.0f, 4.0f, 25.0f), "room maximum Z extends to 25");
    Check(Same(world.m_boundsMin, -9.0f, -2.0f, -1.0f), "world minimum X extends to -9");
    Check(Same(world.m_boundsMax, 10.0f, 10.0f, 25.0f), "world maximum Z extends to 25");
    Check(grew, "world top grew from 20 to 25");

    // A NaN in every slot of the argument box keeps every current value: each positive fcmplt test is false for NaN.
    const float nan = std::numeric_limits<float>::quiet_NaN();
    const aabb<float> broken{{nan, nan, nan, nan, nan, nan}};
    grew = room.ExtendBoundingBox(broken);
    Check(Same(room.m_boundsMin, -9.0f, -2.0f, -1.0f) && Same(room.m_boundsMax, 3.0f, 4.0f, 25.0f),
          "a NaN box leaves the room box alone");
    Check(Same(world.m_boundsMin, -9.0f, -2.0f, -1.0f) && Same(world.m_boundsMax, 10.0f, 10.0f, 25.0f),
          "a NaN box leaves the world box alone");
    Check(!grew, "a NaN box reports no growth");
}

void TestFloorQueries() {
    ResetLog();
    PFWorld world;
    PFRoom room = MakeRoom("floors", &world);
    room.m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
    room.m_boundsMax = Point3D<float>{10.0f, 10.0f, 10.0f};
    PFFloor* voidFloor = MakeFloor(1u, 0x01000000u, 0.0f, 10.0f);
    PFFloor* plain = MakeFloor(1u, 0u, 0.0f, 10.0f);
    PFFloor* second = MakeFloor(1u, 0u, 0.0f, 10.0f);
    room.m_floors.push_back(voidFloor);
    room.m_floors.push_back(plain);
    room.m_floors.push_back(second);

    const Point3D<float> inside{5.0f, 5.0f, 5.0f};
    const Point3D<float> outside{20.0f, 5.0f, 5.0f};
    Point3D<float> normal{};
    float height = 0.0f;
    PFFloor* found = nullptr;

    // Without includeAll the void floor is skipped, even though it would answer.
    g_answers = {voidFloor, plain};
    bool hit = room.GetFloorHeightAt(inside, &height, &normal, &found, false);
    Check(hit && found == plain, "height query skips the void floor and returns the first answering floor");
    Check(height == 1.5f, "height query passes the height output through");
    Check(g_queried.size() == 1 && g_queried[0] == plain, "height query asks only the floors it does not skip");

    // With includeAll the void floor is asked first and answers.
    ResetLog();
    g_answers = {voidFloor, plain};
    found = nullptr;
    hit = room.GetFloorHeightAt(inside, &height, &normal, &found, true);
    Check(hit && found == voidFloor, "includeAll asks the void floor first");

    // A point outside the room box is rejected before any floor is asked.
    ResetLog();
    found = nullptr;
    hit = room.GetFloorHeightAt(outside, &height, &normal, &found, true);
    Check(!hit && found == nullptr && g_queried.empty(), "a point outside the room box asks no floor");

    // No floor answers: false, and the output stays unset.
    ResetLog();
    found = nullptr;
    hit = room.GetFloorHeightAt(inside, &height, &normal, &found, false);
    Check(!hit && found == nullptr, "no answering floor gives false and leaves floorOut alone");

    // The floor output may be null.
    ResetLog();
    g_answers = {second};
    hit = room.GetFloorHeightAt(inside, &height, &normal, nullptr, false);
    Check(hit, "a null floor output still reports the hit");

    // Triangle collision uses the same box test and filter.
    ResetLog();
    glitch::core::triangle3d<float> triangle{};
    Point3D<float> hitPoint{};
    g_answers = {voidFloor, plain};
    found = nullptr;
    hit = room.GetCollisionAt(inside, hitPoint, triangle, &found, false);
    Check(hit && found == plain, "triangle collision skips the void floor and reports the first hit");
    Check(g_queried.size() == 1 && g_queried[0] == plain, "triangle collision asks only the unskipped floors");
    ResetLog();
    found = nullptr;
    hit = room.GetCollisionAt(outside, hitPoint, triangle, &found, true);
    Check(!hit && g_queried.empty(), "triangle collision rejects a point outside the room box");

    // Segment collision has no box test: an outside start still reaches the floors.
    ResetLog();
    g_answers = {plain};
    hit = room.GetCollisionAt(outside, inside, hitPoint, false);
    Check(hit && g_queried.size() == 1 && g_queried[0] == plain,
          "segment collision asks the floors without a box test and skips the void floor");
    ResetLog();
    hit = room.GetCollisionAt(outside, inside, hitPoint, true);
    Check(!hit && g_queried.size() == 3, "segment collision with includeAll asks every floor when none answers");

    // A NaN coordinate is outside the room box on its axis, so the box-tested queries ask no floor.
    ResetLog();
    g_answers = {plain};
    const Point3D<float> nanPoint{std::numeric_limits<float>::quiet_NaN(), 5.0f, 5.0f};
    found = nullptr;
    hit = room.GetFloorHeightAt(nanPoint, &height, &normal, &found, true);
    Check(!hit && found == nullptr && g_queried.empty(), "a NaN coordinate is outside the room box for the height query");
    hit = room.GetCollisionAt(nanPoint, hitPoint, triangle, &found, true);
    Check(!hit && g_queried.empty(), "a NaN coordinate is outside the room box for the triangle collision");
}

void TestPostLoadAndLink() {
    // Post-load: a and b overlap, c is far away, d carries the 0x04000000 flag and is passed over on both sides.
    ResetLog();
    PFWorld world;
    PFRoom room = MakeRoom("post", &world);
    PFFloor* a = MakeFloor(1u, 0u, 0.0f, 1.0f);
    PFFloor* b = MakeFloor(1u, 0u, 0.5f, 2.0f);
    PFFloor* c = MakeFloor(1u, 0u, 100.0f, 101.0f);
    PFFloor* d = MakeFloor(0x04000000u, 0u, 0.0f, 1.0f);
    room.m_floors.push_back(a);
    room.m_floors.push_back(b);
    room.m_floors.push_back(c);
    room.m_floors.push_back(d);
    room._PostLoad();
    Check(g_links.size() == 1 && g_links[0].first == a && g_links[0].second == b,
          "post-load links only the overlapping pair");
    Check(g_postLoads.size() == 3 && g_postLoads[0] == a && g_postLoads[1] == b && g_postLoads[2] == c,
          "post-load runs on each floor without the flag, in order");

    // Link: the other room's floors within 50 units of a floor link to it. R reaches P, U (starting at 51.5) does not,
    // S carries the flag, T and the far floor Q are out of reach.
    ResetLog();
    PFWorld otherWorld;
    PFRoom here = MakeRoom("here", &world);
    PFRoom there = MakeRoom("there", &otherWorld);
    PFFloor* p = MakeFloor(1u, 0u, 0.0f, 1.0f);
    PFFloor* q = MakeFloor(1u, 0u, 200.0f, 201.0f);
    here.m_floors.push_back(p);
    here.m_floors.push_back(q);
    PFFloor* r = MakeFloor(1u, 0u, 51.0f, 52.0f);
    PFFloor* s = MakeFloor(0x04000000u, 0u, 51.0f, 52.0f);
    PFFloor* t = MakeFloor(1u, 0u, 500.0f, 501.0f);
    PFFloor* u = MakeFloor(1u, 0u, 51.5f, 52.5f);
    there.m_floors.push_back(r);
    there.m_floors.push_back(s);
    there.m_floors.push_back(t);
    there.m_floors.push_back(u);
    here._Link(&there);
    Check(g_links.size() == 1 && g_links[0].first == p && g_links[0].second == r,
          "link pairs only the floors within 50 units, skipping flagged floors");

    // A floor whose box has a NaN minimum on X fails the reach test against every floor of there, so nothing links.
    ResetLog();
    PFRoom nanRoom = MakeRoom("nan", &world);
    nanRoom.m_floors.push_back(MakeFloor(1u, 0u, std::numeric_limits<float>::quiet_NaN(), 1.0f));
    nanRoom._Link(&there);
    Check(g_links.empty(), "a floor with a NaN box edge is not linked, as the original's reach test fails on NaN");
}

void TestDestructor() {
    ResetLog();
    PFWorld world;
    {
        PFRoom room = MakeRoom("dtor", &world);
        room.m_floors.push_back(MakeFloor(1u, 0u, 0.0f, 1.0f));
        room.m_floors.push_back(MakeFloor(1u, 0u, 0.0f, 1.0f));
        room.m_floors.push_back(MakeFloor(1u, 0u, 0.0f, 1.0f));
    }
    Check(g_floorDeletes == 3, "destructor deletes each floor it owns");
}

}  // namespace

// ---- Test doubles for the definitions the batch source calls (the batch itself does not define them). ----

PFFloor::PFFloor(const char*, PFRoom* room, PFGOuterGraph*, PFGInnerGraph*, std::uint32_t objectFlags)
    : m_room(room), m_objectFlags(objectFlags) {
    m_typeMask = 0;
}

PFFloor::~PFFloor() {
    ++g_floorDeletes;
}

bool PFFloor::GetFloorHeightAt(const Point3D<float>&, float* height, Point3D<float>*) {
    g_queried.push_back(this);
    if (height != nullptr) {
        *height = 1.5f;
    }
    return g_answers.count(this) != 0;
}

bool PFFloor::GetCollisionAt(const Point3D<float>&, const Point3D<float>&, Point3D<float>&) {
    g_queried.push_back(this);
    return g_answers.count(this) != 0;
}

bool PFFloor::GetCollisionAt(const Point3D<float>&, Point3D<float>&, glitch::core::triangle3d<float>&) {
    g_queried.push_back(this);
    return g_answers.count(this) != 0;
}

void PFFloor::_Link(PFFloor* other) {
    g_links.emplace_back(this, other);
}

void PFFloor::_PostLoad() {
    g_postLoads.push_back(this);
}

void PFFloor::_DBG_Draw() {}

void PFFloor::_LoadNavMesh(glitch::scene::IMeshSceneNode*) {}

PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

std::uint32_t glitch::os::Timer::getRealTime() {
    return 0u;
}

int main() {
    TestConstructor();
    TestExtendBoundingBox();
    TestFloorQueries();
    TestPostLoadAndLink();
    TestDestructor();
    if (g_failures == 0) {
        std::printf("PFRoom tests passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
