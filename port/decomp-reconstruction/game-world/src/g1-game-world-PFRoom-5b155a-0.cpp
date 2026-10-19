// Batch g1-game-world-PFRoom-5b155a-0: the PFRoom bounding-box update, the floor height and collision queries, the
// post-load and cross-room linking, the debug draw, the constructor, the destructors and _LoadFloor. Declarations come
// from dh2/PFRoom.hpp. _LoadFloor is PARTIAL (see its comment).
//
// Layout facts used here (original 32-bit offsets, named in dh2/PFRoom.hpp, dh2/PFFloor.hpp and dh2/PFWorld.hpp):
//   PFRoom  +0x20 m_world   +0x28 m_oGraph   +0x2c m_iGraph   +0x30 m_floors   +0x3c m_boundsMin   +0x48 m_boundsMax
//   PFFloor +0x20 m_objectFlags  (bit 0x04000000 keeps a floor out of _PostLoad and _Link)
//           +0x24 m_typeMask     (bits 0x01000000 and 0x02000000 keep a floor out of the room queries)
//           +0x40 m_navMesh      +0x44 m_boundsMin   +0x50 m_boundsMax
//   PFWorld +0x14 m_boundsMin    +0x20 m_boundsMax

#include "dh2/PFRoom.hpp"

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/DebugSwitches.hpp"          // DebugSwitches::s_inst, the trace switches
#include "dh2/PFFloor.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-core-io/os/logging.hpp"  // glitch::os::Timer::getRealTime

// The engine's assert level, declared in core-platform/memory.hpp. That header is not included here: it pulls in a
// second copy of glitch_core that conflicts with glitch-shared/glitch_core.hpp, which PFWorld.hpp needs.
extern int gAssertLevel;

namespace {

// Floors whose type word has one of these bits are left out of the room queries unless the caller passes includeAll.
constexpr std::uint32_t kQuerySkipTypeMask = 0x03000000u;
// m_objectFlags bit that _PostLoad and _Link skip.
constexpr std::uint32_t kLinkSkipFlag = 0x04000000u;

constexpr const char kPFRoomSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFRoom.cpp";

// The engine ASSERT as the original prints it: gAssertLevel 2 stops the program, 1 prints the message and anything else
// continues. The original writes to address 0 for level 2 to force a crash; abort stands in for that crash.
void AssertFailed(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kPFRoomSource, line);
    }
}

// The box update of the original. The asm tests the positive form: fcmplt(candidate, current) for a minimum and
// fcmplt(current, candidate) for a maximum. The candidate wins only when that test is true, so a tie keeps the current
// value, and a NaN on either side keeps it too, because every comparison with NaN is false.
float MinKeep(float current, float candidate) {
    return candidate < current ? candidate : current;
}

float MaxKeep(float current, float candidate) {
    return current < candidate ? candidate : current;
}

// The room's point test: the point must lie inside the room's box on every axis (boundaries included). The original
// calls fcmple(min, x) and fcmple(x, max) on each axis and returns false when any call gives 0, so a NaN coordinate is
// outside the box.
bool PointInRoomBox(const PFRoom& room, const Point3D<float>& point) {
    return room.m_boundsMin.X <= point.X && point.X <= room.m_boundsMax.X &&
           room.m_boundsMin.Y <= point.Y && point.Y <= room.m_boundsMax.Y &&
           room.m_boundsMin.Z <= point.Z && point.Z <= room.m_boundsMax.Z;
}

// The overlap test of PFRoom::_PostLoad: the two floors' boxes touch or overlap on every axis.
bool BoxesOverlap(const PFFloor& a, const PFFloor& b) {
    return a.m_boundsMin.X <= b.m_boundsMax.X && a.m_boundsMax.X >= b.m_boundsMin.X &&
           a.m_boundsMin.Y <= b.m_boundsMax.Y && a.m_boundsMax.Y >= b.m_boundsMin.Y &&
           a.m_boundsMin.Z <= b.m_boundsMax.Z && a.m_boundsMax.Z >= b.m_boundsMin.Z;
}

// The reach test of PFRoom::_Link: the other floor's box grown by 50 units on every side must reach the first floor's
// box. The original calls fcmple(a.min, b.max + 50) and fcmpge(a.max, b.min - 50) on each axis and skips the pair when
// any call gives 0, so a NaN fails the test and the pair is not linked.
bool BoxesWithinLinkReach(const PFFloor& a, const PFFloor& b) {
    return a.m_boundsMin.X <= b.m_boundsMax.X + 50.0f && a.m_boundsMax.X >= b.m_boundsMin.X - 50.0f &&
           a.m_boundsMin.Y <= b.m_boundsMax.Y + 50.0f && a.m_boundsMax.Y >= b.m_boundsMin.Y - 50.0f &&
           a.m_boundsMin.Z <= b.m_boundsMax.Z + 50.0f && a.m_boundsMax.Z >= b.m_boundsMin.Z - 50.0f;
}

}  // namespace

// 0x521540 _ZN6PFRoomC1EPKcjP7PFWorldP13PFGOuterGraphP13PFGInnerGraph
// 0x521718 _ZN6PFRoomC2EPKcjP7PFWorldP13PFGOuterGraphP13PFGInnerGraph
// The C2 base-object constructor has the same body as C1 (both store the same fields and run the same three asserts),
// so this one definition serves both addresses.
// The asserts name m_world (line 28), m_oGraph (line 29) and m_iGraph (line 30).
PFRoom::PFRoom(const char* name, std::uint32_t value, PFWorld* world, PFGOuterGraph* oGraph, PFGInnerGraph* iGraph)
    : m_name(name),
      unk_1c(value),
      m_world(world),
      m_flags(0),
      m_oGraph(oGraph),
      m_iGraph(iGraph),
      m_floors(),
      m_boundsMin{},
      m_boundsMax{} {
    if (world == nullptr) {
        AssertFailed("m_world", 28);
    }
    if (oGraph == nullptr) {
        AssertFailed("m_oGraph", 29);
    }
    if (iGraph == nullptr) {
        AssertFailed("m_iGraph", 30);
    }
}

// 0x521c54 _ZN6PFRoomD2Ev
// 0x521db0 _ZN6PFRoomD1Ev
// The base-object and complete-object destructors have the same body, so this definition serves both. Each floor is
// deleted through its virtual destructor; the vector storage and the name are released by the member destructors.
PFRoom::~PFRoom() {
    for (PFFloor* floor : m_floors) {
        if (floor != nullptr) {
            delete floor;
        }
    }
}

// 0x521e9c _ZN6PFRoomD0Ev
// SKIPPED: the deleting destructor (vtable slot 1). The compiler emits it for `delete room`: it runs ~PFRoom and then
// frees the object with CustomFree. Nothing is written here.

// 0x388218 _ZN6PFRoom17ExtendBoundingBoxERK4aabbIfE
// Grows the room box to include the argument: each minimum keeps the smaller value and each maximum the larger. The
// world box (PFWorld +0x14 .. +0x28) then takes the room box the same way. Returns true when the world's maximum Z was
// below the room's new maximum Z, that is, when the world's top grew.
// aabb<float> is declared in dh2/PFRoom.hpp but never defined in the tree. The original reads it as six floats, the
// minimum X, Y, Z and then the maximum X, Y, Z, so the same six floats are copied here.
bool PFRoom::ExtendBoundingBox(const aabb<float>& box) {
    float in[6];
    std::memcpy(in, &box, sizeof in);

    m_boundsMin.X = MinKeep(m_boundsMin.X, in[0]);  // +0x3c
    m_boundsMin.Y = MinKeep(m_boundsMin.Y, in[1]);  // +0x40
    m_boundsMin.Z = MinKeep(m_boundsMin.Z, in[2]);  // +0x44
    m_boundsMax.X = MaxKeep(m_boundsMax.X, in[3]);  // +0x48
    m_boundsMax.Y = MaxKeep(m_boundsMax.Y, in[4]);  // +0x4c
    m_boundsMax.Z = MaxKeep(m_boundsMax.Z, in[5]);  // +0x50

    PFWorld& world = *m_world;
    world.m_boundsMin.X = MinKeep(world.m_boundsMin.X, m_boundsMin.X);  // +0x14
    world.m_boundsMin.Y = MinKeep(world.m_boundsMin.Y, m_boundsMin.Y);  // +0x18
    world.m_boundsMin.Z = MinKeep(world.m_boundsMin.Z, m_boundsMin.Z);  // +0x1c
    world.m_boundsMax.X = MaxKeep(world.m_boundsMax.X, m_boundsMax.X);  // +0x20
    world.m_boundsMax.Y = MaxKeep(world.m_boundsMax.Y, m_boundsMax.Y);  // +0x24

    // The original compares the world's maximum Z with the room's new maximum Z before it stores the larger value.
    const bool worldTopGrew = world.m_boundsMax.Z < m_boundsMax.Z;
    world.m_boundsMax.Z = MaxKeep(world.m_boundsMax.Z, m_boundsMax.Z);  // +0x28
    return worldTopGrew;
}

// 0x520f98 _ZN6PFRoom16GetFloorHeightAtERK7Point3DIfEPfPS1_PP7PFFloorb
// Tests the point against the room box, then asks each floor in order. Without includeAll, a floor with a bit of
// kQuerySkipTypeMask in its type word is skipped. The first floor that answers gives *floorOut when floorOut is not null.
bool PFRoom::GetFloorHeightAt(const Point3D<float>& point, float* height, Point3D<float>* normal,
                              PFFloor** floorOut, bool includeAll) {
    if (!PointInRoomBox(*this, point)) {
        return false;
    }
    for (PFFloor* floor : m_floors) {
        if (!includeAll && (floor->m_typeMask & kQuerySkipTypeMask) != 0) {
            continue;
        }
        if (floor->GetFloorHeightAt(point, height, normal)) {
            if (floorOut != nullptr) {
                *floorOut = floor;
            }
            return true;
        }
    }
    return false;
}

// 0x52113c _ZN6PFRoom14GetCollisionAtERK7Point3DIfERS1_RN6glitch4core10triangle3dIfEEPP7PFFloorb
// The same box test and floor order as GetFloorHeightAt, with the floor's triangle collision query.
bool PFRoom::GetCollisionAt(const Point3D<float>& start, Point3D<float>& hit,
                            glitch::core::triangle3d<float>& triangle, PFFloor** floorOut, bool includeAll) {
    if (!PointInRoomBox(*this, start)) {
        return false;
    }
    for (PFFloor* floor : m_floors) {
        if (!includeAll && (floor->m_typeMask & kQuerySkipTypeMask) != 0) {
            continue;
        }
        if (floor->GetCollisionAt(start, hit, triangle)) {
            if (floorOut != nullptr) {
                *floorOut = floor;
            }
            return true;
        }
    }
    return false;
}

// 0x5212e0 _ZN6PFRoom14GetCollisionAtERK7Point3DIfES3_RS1_b
// No box test. Each floor in order gets the segment query, with the same floor-type skip as GetFloorHeightAt.
bool PFRoom::GetCollisionAt(const Point3D<float>& start, const Point3D<float>& end, Point3D<float>& hit,
                            bool includeAll) {
    for (PFFloor* floor : m_floors) {
        if (!includeAll && (floor->m_typeMask & kQuerySkipTypeMask) != 0) {
            continue;
        }
        if (floor->GetCollisionAt(start, end, hit)) {
            return true;
        }
    }
    return false;
}

// 0x5213c4 _ZN6PFRoom9_DBG_DrawEv
void PFRoom::_DBG_Draw() {
    for (PFFloor* floor : m_floors) {
        floor->_DBG_Draw();
    }
}

// 0x521408 _ZN6PFRoom9_PostLoadEv
// Each floor without kLinkSkipFlag is linked with every later floor that has no such flag and whose box overlaps it,
// and then runs its own _PostLoad. A floor with the flag is passed over, on either side of a link.
void PFRoom::_PostLoad() {
    for (std::size_t i = 0; i < m_floors.size(); ++i) {
        PFFloor* floor = m_floors[i];
        if ((floor->m_objectFlags & kLinkSkipFlag) != 0) {
            continue;
        }
        for (std::size_t j = i + 1; j < m_floors.size(); ++j) {
            PFFloor* other = m_floors[j];
            if ((other->m_objectFlags & kLinkSkipFlag) == 0 && BoxesOverlap(*floor, *other)) {
                floor->_Link(other);
            }
        }
        floor->_PostLoad();
    }
}

// 0x5219cc _ZN6PFRoom5_LinkEPS_
// Each floor of this room without kLinkSkipFlag is linked with each floor of other that has no such flag and lies
// within reach (BoxesWithinLinkReach). The debug switch isTracingNavMeshLinkTime is read for each such pair. When it is
// set, the clock is sampled before and after PFFloor::_Link. The original keeps neither sample: the listing shows no
// output after them, so the samples are only read here.
void PFRoom::_Link(PFRoom* other) {
    for (PFFloor* floor : m_floors) {
        if ((floor->m_objectFlags & kLinkSkipFlag) != 0) {
            continue;
        }
        for (PFFloor* candidate : other->m_floors) {
            if ((candidate->m_objectFlags & kLinkSkipFlag) != 0) {
                continue;
            }
            if (!BoxesWithinLinkReach(*floor, *candidate)) {
                continue;
            }
            DebugSwitches::s_inst.load();
            std::string switchName("isTracingNavMeshLinkTime");
            const bool tracing = DebugSwitches::s_inst.GetSwitch(switchName);
            if (tracing) {
                glitch::os::Timer::getRealTime();
                floor->_Link(candidate);
                glitch::os::Timer::getRealTime();
            } else {
                floor->_Link(candidate);
            }
        }
    }
}

// 0x521eb8 _ZN6PFRoom10_LoadFloorEPN6glitch5scene14IMeshSceneNodeEPKc
// Asserts the node (line 53), appends a PFFloor for the mesh node (object flags 1), loads its navigation mesh (timed with glitch::os::Timer when isTracingNavMeshLoadTime is set) and merges the floor's box into the
// room box: the first floor sets it outright, the others grow it with the positive fcmplt form of the asm (MinKeep and MaxKeep). The floor's nav mesh is then added to the scene manager's node map
// (SceneManager::AddNodeToMap on the device's scene manager).
void PFRoom::_LoadFloor(glitch::scene::IMeshSceneNode* node, const char* name) {
    if (node == nullptr) {
        AssertFailed("node", 53);
    }
    PFFloor* floor = new PFFloor(name, this, m_oGraph, m_iGraph, 1);
    m_floors.push_back(floor);

    DebugSwitches::s_inst.load();
    std::string switchName("isTracingNavMeshLoadTime");
    const bool tracing = DebugSwitches::s_inst.GetSwitch(switchName);
    if (tracing) {
        glitch::os::Timer::getRealTime();
        floor->_LoadNavMesh(node);
        glitch::os::Timer::getRealTime();
    } else {
        floor->_LoadNavMesh(node);
    }

    if (m_floors.size() == 1) {
        // The first floor sets the room box outright.
        m_boundsMin = floor->m_boundsMin;  // +0x3c .. +0x44 from PFFloor +0x44 .. +0x4c
        m_boundsMax = floor->m_boundsMax;  // +0x48 .. +0x50 from PFFloor +0x50 .. +0x58
    } else {
        m_boundsMin.X = MinKeep(m_boundsMin.X, floor->m_boundsMin.X);  // +0x3c
        m_boundsMin.Y = MinKeep(m_boundsMin.Y, floor->m_boundsMin.Y);  // +0x40
        m_boundsMin.Z = MinKeep(m_boundsMin.Z, floor->m_boundsMin.Z);  // +0x44
        m_boundsMax.X = MaxKeep(m_boundsMax.X, floor->m_boundsMax.X);  // +0x48
        m_boundsMax.Y = MaxKeep(m_boundsMax.Y, floor->m_boundsMax.Y);  // +0x4c
        m_boundsMax.Z = MaxKeep(m_boundsMax.Z, floor->m_boundsMax.Z);  // +0x50
    }
    DeviceSceneManager()->AddNodeToMap(floor->m_navMesh);
}

