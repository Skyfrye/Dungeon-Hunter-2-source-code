// Batch g1-game-world-PFWorld-d9994a-1 (owner PFWorld, part 2 of 3): the floor flags, the height and collision queries
// over the rooms, TranslateScreenToWorld, ValidateDirection and ValidatePosition, InitObject, the obstacle forces and
// registration, the waypoint helpers and the two _GetClosestNode overloads. Declarations come from dh2/PFWorld.hpp.
//
// Layout facts used here (original 32-bit offsets; dh2/PFWorld.hpp, dh2/PFObject.hpp, dh2/PFFloor.hpp,
// dh2/PFRoom.hpp, dh2/PFGInnerNode.hpp and dh2/GameObject.hpp name them):
//   PFWorld  +0x14 m_boundsMin, +0x20 m_boundsMax, +0x2c m_obstacleParentLists, +0x8 m_rooms (begin),
//            +0x90 m_verticalTolerance, +0x94 unk_94
//   PFObject +0x04 m_flags (bit 0 static, bit 1 moving, bit 2 registered obstacle, bit 3 collisions enabled),
//            +0x08 m_radius, +0x10 m_floor, +0x14 m_moveFlags, +0x18 m_pos, +0x24 m_floorNormal,
//            +0x30 m_obstacleRadius, +0x34 m_obstacleStrength, +0x38 m_path, +0x40 m_pathEnd, +0x00 m_owner
//   PFFloor  +0x20 m_objectFlags (bit 0 enabled, bit 1 dead end), +0x24 m_typeMask
//   PFGInnerNode +0x08 m_position
//   GameObject +0x2dc m_physicalObject (PhysicalObject*)
//
// Conventions:
//  * ASSERT lines print through gAssertLevel (a print at 1, a write to address 0 at 2, which stops the port).
//  * Point3D<float>::normalize (0x34d0b0), Point3D<float>::angle (0x313058) and Point3D<float>::operator== (0x312b6c) are reproduced in the helpers at the top of this file with the original's operation order.

#include "dh2/PFWorld.hpp"

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <limits>
#include <vector>

#include "dh2/GameObject.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "dh2/global/Vec3f_K.hpp"  // Vec3f_K (0x99f878), the up vector (0, 0, 1) that AvoidObstacles crosses with

extern int gAssertLevel;  // engine assert level (core-platform/memory.hpp)

namespace {

// Point3D<float>::normalize (0x34d0b0): the length is sqrtf(((x*x) + (y*y)) + (z*z)), and each component is divided by it
// (Point3D<float>::operator/= at 0x34d04c divides in order).
void NormalizePoint(Point3D<float>& p) {
    const float length = std::sqrt(((p.X * p.X) + (p.Y * p.Y)) + (p.Z * p.Z));
    p.X = p.X / length;
    p.Y = p.Y / length;
    p.Z = p.Z / length;
}

// Point3D<float>::angle (0x313058) is acosf of angleCos (0x312f40): dot(a, b) / (|a| * |b|), with each length from
// sqrtf(((x*x) + (y*y)) + (z*z)).
float AngleBetween(const Point3D<float>& a, const Point3D<float>& b) {
    const float dot = ((a.X * b.X) + (a.Y * b.Y)) + (a.Z * b.Z);
    const float lengthA = std::sqrt(((a.X * a.X) + (a.Y * a.Y)) + (a.Z * a.Z));
    const float lengthB = std::sqrt(((b.X * b.X) + (b.Y * b.Y)) + (b.Z * b.Z));
    return std::acos(dot / (lengthA * lengthB));
}

// A float constant of the original, given by its bit pattern as the assembly loads it (the decimal literal can round
// to a neighbouring float).
float FloatFromBits(std::uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// Point3D<float>::operator== (0x312b6c): every component differs by less than 0.0001f.
bool PointsNear(const Point3D<float>& a, const Point3D<float>& b) {
    return std::fabs(a.X - b.X) < 0.0001f && std::fabs(a.Y - b.Y) < 0.0001f && std::fabs(a.Z - b.Z) < 0.0001f;
}

// The floor type test of ValidateDirection and ValidatePosition: a floor with no type bits accepts any move, and one
// with bits accepts a move only when the move has every one of them (the same test as PFObject::CanPathOn).
bool FloorAllows(const PFFloor* floor, std::uint32_t moveFlags) {
    const std::uint32_t mask = floor->m_typeMask;
    return mask == 0u || mask == (moveFlags & mask);
}

// The original ASSERT(expression) of PFWorld_Objects.cpp / PFWorld_PathFinding.cpp. Level 2 stops the process (the original writes to address 0); level 1 prints the message.
void ReportAssertIn(const char* file, const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, file, line);
    }
}

const char kPFObjectsSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_Objects.cpp";
const char kPFPathFindingSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFWorld_PathFinding.cpp";

// The physics test of _CalcObstaclesForce: an obstacle whose owner has no body, or an object or obstacle with no body
// on its side, always counts. When both bodies exist, they must be able to collide (PhysicalObject::canCollide).
bool ObstaclePhysicsPasses(const PFObject& object, const PFObject& obstacle) {
    if (obstacle.m_owner == nullptr) {
        return true;
    }
    PhysicalObject* own =
        object.m_owner != nullptr ? static_cast<GameObject*>(object.m_owner)->m_physicalObject : nullptr;
    PhysicalObject* other = static_cast<GameObject*>(obstacle.m_owner)->m_physicalObject;
    if (own == nullptr || other == nullptr) {
        return true;
    }
    return own->canCollide(other);
}

// Squared distance from a node's midpoint (PFGInnerNode +0x08) to a point, in the original's order.
float NodeDistanceSquared(const PFGInnerNode& node, const Point3D<float>& position) {
    const float dx = node.m_position.X - position.X;
    const float dy = node.m_position.Y - position.Y;
    const float dz = node.m_position.Z - position.Z;
    return ((dx * dx) + (dy * dy)) + (dz * dz);
}

// The node closest to position among the midpoints of the triangle's edges AB, AC and BC on floor. This is the body
// of both _GetClosestNode overloads (0x528b2c and 0x528ea0), which differ only in where the triangle comes from.
// A missing node counts as the largest float, and a node whose distance is not below it (or is NaN) is dropped the
// same way. Ties go to the earlier node, and BC is returned only when it is strictly closer.
PFGInnerNode* ClosestTriangleNode(PFFloor* floor, const glitch::core::triangle3d<float>& tri,
                                  const Point3D<float>& position) {
    const float noNode = std::numeric_limits<float>::max();  // 0x7f7fffff, the 3.4028e38 of the original
    const Point3D<float> midAB{(tri.A.X + tri.B.X) * 0.5f, (tri.A.Y + tri.B.Y) * 0.5f, (tri.A.Z + tri.B.Z) * 0.5f};
    const Point3D<float> midAC{(tri.A.X + tri.C.X) * 0.5f, (tri.A.Y + tri.C.Y) * 0.5f, (tri.A.Z + tri.C.Z) * 0.5f};
    const Point3D<float> midBC{(tri.B.X + tri.C.X) * 0.5f, (tri.B.Y + tri.C.Y) * 0.5f, (tri.B.Z + tri.C.Z) * 0.5f};
    PFGInnerNode* nodeAB = floor->_GetNodeAt(midAB);
    PFGInnerNode* nodeAC = floor->_GetNodeAt(midAC);
    PFGInnerNode* nodeBC = floor->_GetNodeAt(midBC);

    float best = noNode;
    PFGInnerNode* closest = nullptr;
    if (nodeAB != nullptr) {
        const float d = NodeDistanceSquared(*nodeAB, position);
        if (!(d >= noNode)) {
            best = d;
            closest = nodeAB;
        }
    }
    if (nodeAC != nullptr) {
        const float d = NodeDistanceSquared(*nodeAC, position);
        if (best > d) {
            best = d;
            closest = nodeAC;
        }
    }
    if (nodeBC != nullptr && best > NodeDistanceSquared(*nodeBC, position)) {
        return nodeBC;
    }
    return closest;
}

}  // namespace

// 0x5252c8 PFWorld::FlagFloorAsEnabled(PFObject const&, bool)
// Sets or clears bit 0 of m_objectFlags on the floor the object stands on. No floor, no change.
void PFWorld::FlagFloorAsEnabled(const PFObject& object, bool enabled) {
    PFFloor* floor = object.m_floor;
    if (floor == nullptr) {
        return;
    }
    floor->m_objectFlags = enabled ? (floor->m_objectFlags | 1u) : (floor->m_objectFlags & ~1u);
}

// 0x5252ec PFWorld::FlagFloorAsDeadEnd(PFObject const&, bool)
// Sets or clears bit 1 of m_objectFlags on the object's floor.
void PFWorld::FlagFloorAsDeadEnd(const PFObject& object, bool deadEnd) {
    PFFloor* floor = object.m_floor;
    if (floor == nullptr) {
        return;
    }
    floor->m_objectFlags = deadEnd ? (floor->m_objectFlags | 2u) : (floor->m_objectFlags & ~2u);
}

// 0x525508 PFWorld::GetFloorHeightAt(Point3D<float> const&, float*, Point3D<float>*, PFRoom**, PFFloor**, bool)
// The position must lie inside the world's bounding box (each axis, both ends inclusive). Then the first room whose
// floor answers gives the result; *room is set to that room when room is not null.
bool PFWorld::GetFloorHeightAt(const Point3D<float>& position, float* height, Point3D<float>* normal,
                               PFRoom** room, PFFloor** floor, bool flag) {
    if (m_boundsMin.X > position.X || position.X > m_boundsMax.X) {
        return false;
    }
    if (m_boundsMin.Y > position.Y || position.Y > m_boundsMax.Y) {
        return false;
    }
    if (m_boundsMin.Z > position.Z || position.Z > m_boundsMax.Z) {
        return false;
    }
    for (PFRoom* candidate : m_rooms) {
        if (candidate->GetFloorHeightAt(position, height, normal, floor, flag)) {
            if (room != nullptr) {
                *room = candidate;
            }
            return true;
        }
    }
    return false;
}

// 0x525634 PFWorld::FlagFloorAsDeadEnd(Point3D<float> const&, bool)
// The floor at the position (through GetFloorHeightAt, with no height or normal output) gets bit 1 set or cleared.
// Returns GetFloorHeightAt's result.
bool PFWorld::FlagFloorAsDeadEnd(const Point3D<float>& position, bool deadEnd) {
    PFFloor* floor = nullptr;
    const bool found = GetFloorHeightAt(position, nullptr, nullptr, nullptr, &floor, false);
    if (found) {
        floor->m_objectFlags = deadEnd ? (floor->m_objectFlags | 2u) : (floor->m_objectFlags & ~2u);
    }
    return found;
}

// 0x525684 PFWorld::FlagFloorAsEnabled(Point3D<float> const&, bool)
// The floor at the position gets bit 0 set or cleared. Returns GetFloorHeightAt's result.
bool PFWorld::FlagFloorAsEnabled(const Point3D<float>& position, bool enabled) {
    PFFloor* floor = nullptr;
    const bool found = GetFloorHeightAt(position, nullptr, nullptr, nullptr, &floor, false);
    if (found) {
        floor->m_objectFlags = enabled ? (floor->m_objectFlags | 1u) : (floor->m_objectFlags & ~1u);
    }
    return found;
}

// 0x5256d4 PFWorld::GetCollisionAt(Point3D<float> const&, Point3D<float>&, glitch::core::triangle3d<float>&, PFRoom**, PFFloor**, bool)
// The same bounding-box test and room walk as GetFloorHeightAt, with the ray-style collision of each room.
bool PFWorld::GetCollisionAt(const Point3D<float>& from, Point3D<float>& hit, glitch::core::triangle3d<float>& triangle,
                             PFRoom** room, PFFloor** floor, bool flag) {
    if (m_boundsMin.X > from.X || from.X > m_boundsMax.X) {
        return false;
    }
    if (m_boundsMin.Y > from.Y || from.Y > m_boundsMax.Y) {
        return false;
    }
    if (m_boundsMin.Z > from.Z || from.Z > m_boundsMax.Z) {
        return false;
    }
    for (PFRoom* candidate : m_rooms) {
        if (candidate->GetCollisionAt(from, hit, triangle, floor, flag)) {
            if (room != nullptr) {
                *room = candidate;
            }
            return true;
        }
    }
    return false;
}

// 0x525800 PFWorld::GetCollisionAt(Point3D<float> const&, Point3D<float> const&, Point3D<float>&, bool)
// Segment collision over the rooms in order. There is no bounding-box test on this overload.
bool PFWorld::GetCollisionAt(const Point3D<float>& from, const Point3D<float>& to, Point3D<float>& hit, bool flag) {
    for (PFRoom* candidate : m_rooms) {
        if (candidate->GetCollisionAt(from, to, hit, flag)) {
            return true;
        }
    }
    return false;
}

// 0x525884 PFWorld::TranslateScreenToWorld(Point2D<float> const&, Point3D<float>&)
// The screen ray comes from the scene collision manager of the device's scene manager (+0x2c, vtable slot 5 getRayFromScreenCoordinates) for the screen position truncated to integers and the active camera;
// the world point is then the first floor hit of the ray (GetCollisionAt(ray start, ray end, world, false)).
bool PFWorld::TranslateScreenToWorld(const Point2D<float>& screen, Point3D<float>& world) {
    glitch::core::position2d<std::int32_t> position;
    position.X = static_cast<std::int32_t>(screen.X);
    position.Y = static_cast<std::int32_t>(screen.Y);
    const glitch::core::line3d<float> ray = DeviceSceneManager()->collisionManager->getRayFromScreenCoordinates(position, nullptr);
    const Point3D<float> start{ray.start.X, ray.start.Y, ray.start.Z};
    const Point3D<float> end{ray.end.X, ray.end.Y, ray.end.Z};
    return GetCollisionAt(start, end, world, false);
}

// 0x525944 PFWorld::ValidateDirection(Point3D<float>&, Point3D<float> const&, float, unsigned int)
// Checks that a step of 10 units from the position along the direction is walkable. The position must be over a floor
// whose type the move allows. The direction is scaled to 10 units and the floor 10 units ahead is queried. When that
// floor is blocked, the step is turned along the first triangle edge (AB, AC or BC) that it crosses: the direction
// becomes the edge's direction, with the original length, and that position must lie over a floor. Returns false when
// the move is refused, true otherwise. The radius is taken as the original takes it and not read.
bool PFWorld::ValidateDirection(Point3D<float>& direction, const Point3D<float>& position, float radius,
                                unsigned int moveFlags) {
    (void)radius;
    glitch::core::triangle3d<float> tri{};
    Point3D<float> hit{};
    PFFloor* floor = nullptr;
    if (!GetCollisionAt(position, hit, tri, nullptr, &floor, false)) {
        return false;
    }
    if (!FloorAllows(floor, moveFlags)) {
        return false;
    }

    // v46..v48: the direction, normalised and scaled to 10 units.
    Point3D<float> step = direction;
    NormalizePoint(step);
    step.X = step.X * 10.0f;
    step.Y = step.Y * 10.0f;
    step.Z = step.Z * 10.0f;

    const Point3D<float> ahead{position.X + step.X, position.Y + step.Y, position.Z + step.Z};
    PFFloor* aheadFloor = nullptr;
    const bool blocked = !GetFloorHeightAt(ahead, nullptr, nullptr, nullptr, &aheadFloor, false) ||
                         !FloorAllows(aheadFloor, moveFlags);
    if (!blocked) {
        return true;
    }

    // The step as a 2D segment from the position, and the three edges of the triangle under the position.
    const glitch::core::line2d<float> stepLine{{position.X, position.Y}, {position.X + step.X, position.Y + step.Y}};
    const glitch::core::line2d<float> edgeAB{{tri.A.X, tri.A.Y}, {tri.B.X, tri.B.Y}};
    const glitch::core::line2d<float> edgeAC{{tri.A.X, tri.A.Y}, {tri.C.X, tri.C.Y}};
    const glitch::core::line2d<float> edgeBC{{tri.B.X, tri.B.Y}, {tri.C.X, tri.C.Y}};
    glitch::core::vector2d<float> crossing{};
    const glitch::core::line2d<float>* edge = nullptr;
    if (stepLine.intersectWith(edgeAB, crossing)) {
        edge = &edgeAB;
    } else if (stepLine.intersectWith(edgeAC, crossing)) {
        edge = &edgeAC;
    } else if (stepLine.intersectWith(edgeBC, crossing)) {
        edge = &edgeBC;
    }
    if (edge == nullptr) {
        return true;
    }

    // The wall direction is the edge's direction, flipped when it points away from the step (|angle| >= pi/2, the
    // original's float constant 0x3fc90fdb).
    step.Z = 0.0f;
    Point3D<float> wall{edge->start.X - edge->end.X, edge->start.Y - edge->end.Y, 0.0f};
    if (!(std::fabs(AngleBetween(wall, step)) < FloatFromBits(0x3fc90fdbu))) {
        wall.X = -wall.X;
        wall.Y = -wall.Y;
        wall.Z = -wall.Z;
    }
    NormalizePoint(wall);
    const Point3D<float> target{wall.X * 10.0f + position.X, wall.Y * 10.0f + position.Y, wall.Z * 10.0f + position.Z};
    if (!GetFloorHeightAt(target, nullptr, nullptr, nullptr, nullptr, false)) {
        return false;
    }
    const float length = std::sqrt(((direction.X * direction.X) + (direction.Y * direction.Y)) +
                                   (direction.Z * direction.Z));
    direction.X = length * wall.X;
    direction.Y = length * wall.Y;
    direction.Z = length * wall.Z;
    return true;
}

// 0x525d60 PFWorld::ValidateDirection(Point3D<float>&, PFObject const&)
// Uses the object's position, radius and move flags.
bool PFWorld::ValidateDirection(Point3D<float>& direction, const PFObject& object) {
    return ValidateDirection(direction, object.m_pos, object.m_radius, object.m_moveFlags);
}

// 0x525d84 PFWorld::ValidatePosition(Point3D<float>&, PFObject*)
// The position is accepted as is when it equals the object's position. Otherwise it is looked up on the object's floor, then the object's room (PFObject +0x0c), then the world. A floor found is accepted when
// the object may path on it and the height is within the vertical tolerance (or the tolerance flag is set). On acceptance the object takes the new position, its floor normal, its room and its floor, and its
// obstacle parent list moves to the new floor. Otherwise the position is replaced by the object's position, and the result is true only when the floor was found but is not allowed.
bool PFWorld::ValidatePosition(Point3D<float>& position, PFObject* object) {
    if (object != nullptr && PointsNear(object->m_pos, position)) {
        return true;
    }
    float height = 0.0f;
    Point3D<float> normal{};
    if (object == nullptr) {
        const bool found = GetFloorHeightAt(position, &height, nullptr, nullptr, nullptr, false);
        if (found) {
            position.Z = height;
        }
        return found;
    }

    PFRoom* room = object->m_room;  // +0x0c
    PFFloor* floor = object->m_floor;
    bool found = false;
    if (floor != nullptr && floor->GetFloorHeightAt(position, &height, &normal)) {
        found = true;
    } else if (room != nullptr && room->GetFloorHeightAt(position, &height, &normal, &floor, false)) {
        found = true;
    } else {
        found = GetFloorHeightAt(position, &height, &normal, &room, &floor, false);
    }
    if (!found) {
        position = object->m_pos;
        return false;
    }

    if (object->CanPathOn(floor) && (unk_94 || m_verticalTolerance > std::fabs(height - position.Z))) {
        _ChangeObstacleParentList(*object, floor);
        position.Z = height;
        object->m_pos = position;
        object->m_floorNormal = normal;
        object->m_room = room;
        object->m_floor = floor;
        return true;
    }
    position = object->m_pos;
    return true;
}

// 0x526b18 PFWorld::InitObject(PFObject&, bool, Point3D<float> const&, float, void*)
// Sets the owner, the static bit (bit 0 of m_flags), the radius (at least 1), and the position. A non-static object gets its height written into m_pos.Z, and the floor query also sets the floor normal, the
// room (PFObject +0x0c) and the floor. The result is the floor query's.
bool PFWorld::InitObject(PFObject& object, bool isStatic, const Point3D<float>& position, float radius, void* owner) {
    object.m_owner = owner;
    object.m_flags = isStatic ? (object.m_flags | 1u) : (object.m_flags & ~1u);
    object.m_radius = radius < 1.0f ? 1.0f : radius;
    object.m_pos = position;
    float* height = isStatic ? nullptr : &object.m_pos.Z;
    return GetFloorHeightAt(object.m_pos, height, &object.m_floorNormal, &object.m_room, &object.m_floor, false);
}

// 0x527660 PFWorld::_CalcObstaclesForce(PFObject const&, Point3D<float>&, std::vector<PFWorld::ObstacleForce>*)
// Walks the obstacle list of the object's floor (m_obstacleParentLists[m_floor], created when absent). An entry counts
// when it is a registered obstacle (bit 2), collidable (bit 3) and not the object, and the physics test passes. The
// obstacle must be within the object's reach in the XY plane (the object's radius plus the obstacle's radius plus its
// obstacle radius). The object must be inside the next waypoint's distance when it has a path, and inside its path end's
// distance. Each counted obstacle pushes the object away along the XY direction from the obstacle, by its strength times
// the falloff 1 - d2 / reach2, and appends an ObstacleForce when forces is not null. Returns the number of obstacles.
// A null entry in the list is skipped (the original asserts on it, then reads it).
int PFWorld::_CalcObstaclesForce(const PFObject& object, Point3D<float>& force,
                                 std::vector<ObstacleForce>* forces) {
    std::deque<PFObject*>& bucket = m_obstacleParentLists[object.m_floor];
    force = Point3D<float>{0.0f, 0.0f, 0.0f};
    int count = 0;
    for (PFObject* obstacle : bucket) {
        if (obstacle == nullptr) {
            continue;
        }
        const std::uint32_t flags = obstacle->m_flags;
        if ((flags & 4u) == 0 || obstacle == &object || (flags & 8u) == 0) {
            continue;
        }
        if (!ObstaclePhysicsPasses(object, *obstacle)) {
            continue;
        }

        const float dx = object.m_pos.X - obstacle->m_pos.X;
        const float dy = object.m_pos.Y - obstacle->m_pos.Y;
        const float dist2 = (dx * dx) + (dy * dy);

        if (!object.m_path.empty()) {
            const Point3D<float>* waypoint = object.m_path.front()->GetDestination();
            const float wx = waypoint->X - object.m_pos.X;
            const float wy = waypoint->Y - object.m_pos.Y;
            if (!(dist2 < (wx * wx) + (wy * wy))) {
                continue;
            }
        }
        const float ex = object.m_pathEnd.X - object.m_pos.X;
        const float ey = object.m_pathEnd.Y - object.m_pos.Y;
        if (!(dist2 < (ex * ex) + (ey * ey))) {
            continue;
        }

        const float reach = (object.m_radius + obstacle->m_radius) + obstacle->m_obstacleRadius;
        const float reach2 = reach * reach;
        if (!(reach2 > dist2)) {
            continue;
        }

        const float falloff = 1.0f - (dist2 / reach2);
        Point3D<float> dir{dx, dy, 0.0f};
        NormalizePoint(dir);
        const float strength = falloff * obstacle->m_obstacleStrength;
        const Point3D<float> contribution{strength * dir.X, strength * dir.Y, strength * dir.Z};
        if (forces != nullptr) {
            forces->push_back(ObstacleForce{contribution, falloff, obstacle});
        }
        force.X = force.X + contribution.X;
        force.Y = force.Y + contribution.Y;
        force.Z = force.Z + contribution.Z;
        ++count;
    }
    return count;
}

// 0x527cc4 PFWorld::AvoidObstacles(PFObject const&, Point3D<float>&)
// Only an object on a floor, moving and not static is steered. The obstacle force is summed (_CalcObstaclesForce). When
// the force opposes the direction, the direction is turned to the side of the force: it moves along the side vector
// (direction x Vec3f_K, normalised, flipped to agree with the force) by the force's length. With two or more obstacles
// and a turn of at least 5 degrees, the direction only grows by a small step along the side vector instead.
void PFWorld::AvoidObstacles(const PFObject& object, Point3D<float>& direction) {
    if (object.m_floor == nullptr) {
        return;
    }
    const std::uint32_t flags = object.m_flags;
    if ((flags & 1u) != 0 || (flags & 2u) == 0) {
        return;
    }

    Point3D<float> force{0.0f, 0.0f, 0.0f};
    std::vector<ObstacleForce> forces;
    const int count = _CalcObstaclesForce(object, force, &forces);
    if (count == 0) {
        return;
    }
    const float alongForce = ((direction.X * force.X) + (direction.Y * force.Y)) + (direction.Z * force.Z);
    if (alongForce >= 0.0f) {
        return;
    }

    // side = direction x Vec3f_K, the cross product in the original's operand order.
    Point3D<float> side{direction.Y * Vec3f_K.Z - direction.Z * Vec3f_K.Y,
                        direction.Z * Vec3f_K.X - direction.X * Vec3f_K.Z,
                        direction.X * Vec3f_K.Y - direction.Y * Vec3f_K.X};
    NormalizePoint(side);
    const float alongSide = ((side.X * force.X) + (side.Y * force.Y)) + (side.Z * force.Z);
    const float forceLength = std::sqrt(((force.X * force.X) + (force.Y * force.Y)) + (force.Z * force.Z));
    const float directionLength =
        std::sqrt(((direction.X * direction.X) + (direction.Y * direction.Y)) + (direction.Z * direction.Z));
    if (std::fabs(alongSide) >= 0.0001f) {
        const float sign = alongSide / std::fabs(alongSide);
        side.X = side.X * sign;
        side.Y = side.Y * sign;
        side.Z = side.Z * sign;
    }

    // The candidate direction: the direction plus the force's length along the side vector.
    const Point3D<float> candidate{forceLength * side.X + direction.X, forceLength * side.Y + direction.Y,
                                   forceLength * side.Z + direction.Z};
    if (count > 1) {
        // 5 degrees and the turn scale, as the assembly's float words 0x3db2b8c2 and 0x3db32d41.
        const float fiveDegrees = FloatFromBits(0x3db2b8c2u);
        const float turnScale = FloatFromBits(0x3db32d41u);
        if (AngleBetween(candidate, direction) >= fiveDegrees) {
            direction.X = direction.X + (directionLength * turnScale) * side.X;
            direction.Y = direction.Y + (directionLength * turnScale) * side.Y;
            direction.Z = direction.Z + (directionLength * turnScale) * side.Z;
            return;
        }
    }
    direction = candidate;
}

// 0x528234 PFWorld::InitObstacle(PFObject&, bool, float, float)
// Asserts radius >= 0 (PFWorld_Objects.cpp line 156). Removal (add false, or strength 0): an object registered as an obstacle leaves its floor's list, loses bit 2, and its radius and strength are zeroed.
// Addition: an object not yet registered joins its floor's list (its floor and room are found first when it has no floor, and it is not registered if that fails). It then gets bit 2, the radius and the
// strength.
void PFWorld::InitObstacle(PFObject& object, bool add, float radius, float strength) {
    if (radius < 0.0f) {
        ReportAssertIn(kPFObjectsSource, "radius >= 0.0f", 156);
    }
    if (!add || strength == 0.0f) {
        if ((object.m_flags & 4u) != 0) {
            std::deque<PFObject*>& bucket = m_obstacleParentLists[object.m_floor];
            auto found = std::find(bucket.begin(), bucket.end(), &object);
            if (found != bucket.end()) {
                bucket.erase(found);
            }
        }
        object.m_flags = object.m_flags & ~4u;
        object.m_obstacleStrength = 0.0f;  // +0x34
        object.m_obstacleRadius = 0.0f;    // +0x30
        return;
    }

    if ((object.m_flags & 4u) == 0) {
        if (object.m_floor != nullptr) {
            m_obstacleParentLists[object.m_floor].push_back(&object);
        } else {
            const bool isStatic = (object.m_flags & 1u) != 0;
            float* height = isStatic ? nullptr : &object.m_pos.Z;
            GetFloorHeightAt(object.m_pos, height, &object.m_floorNormal, &object.m_room, &object.m_floor, false);
            if (object.m_floor == nullptr) {
                return;
            }
            m_obstacleParentLists[object.m_floor].push_back(&object);
        }
    }
    object.m_flags = object.m_flags | 4u;
    object.m_obstacleRadius = radius;      // +0x30
    object.m_obstacleStrength = strength;  // +0x34
}

// 0x528484 PFWorld::_ChangeObstacleParentList(PFObject const&, PFFloor*)
// A registered obstacle that is on another floor moves from its old floor's list to the new floor's list. Nothing
// changes when the object is not registered, is on that floor already, or is missing from its old list.
void PFWorld::_ChangeObstacleParentList(const PFObject& object, PFFloor* floor) {
    if ((object.m_flags & 4u) == 0 || object.m_floor == floor) {
        return;
    }
    std::deque<PFObject*>& oldBucket = m_obstacleParentLists[object.m_floor];
    auto found = std::find(oldBucket.begin(), oldBucket.end(), &object);
    if (found == oldBucket.end()) {
        return;
    }
    oldBucket.erase(found);
    // The list holds non-const pointers; the original stores the pointer it was given.
    m_obstacleParentLists[floor].push_back(const_cast<PFObject*>(&object));
}

// 0x528868 PFWorld::_IsPastWaypoint(PFObject&)
// The object is past its waypoint when its offset from the first edge's source, dotted with the waypoint direction (PFObject +0x80, +0x84; the z component +0x88 contributes nothing, its term is multiplied
// by 0), is not negative. An empty path asserts (PFWorld_PathFinding.cpp line 325) and the original then reads the list sentinel; this port reports not past.
bool PFWorld::_IsPastWaypoint(PFObject& object) {
    if (object.m_path.empty()) {
        ReportAssertIn(kPFPathFindingSource, "pfo.path.size() > 0", 325);
        return false;
    }
    const Point3D<float>* source = object.m_path.front()->GetSource();
    return ((((object.m_pos.X - source->X) * object.m_waypointDir.X) + ((object.m_pos.Y - source->Y) * object.m_waypointDir.Y)) + (object.m_waypointDir.Z * 0.0f)) >= 0.0f;
}

// 0x52899c PFWorld::_CalcWaypointVec(PFObject&)
// The waypoint direction of the first edge in the path: its destination minus its source, in x and y. The result is the x component, and the vector is stored at PFObject +0x80, +0x84, and +0x88 is zeroed.
// An empty path asserts (PFWorld_PathFinding.cpp line 313) and the original then reads the list sentinel; this port stores nothing and returns 0.
float PFWorld::_CalcWaypointVec(PFObject& object) {
    if (object.m_path.empty()) {
        ReportAssertIn(kPFPathFindingSource, "pfo.path.size() > 0", 313);
        return 0.0f;
    }
    const PFGInnerEdge* first = object.m_path.front();
    const Point3D<float>* destination = first->GetDestination();
    const Point3D<float>* source = first->GetSource();
    const float x = destination->X - source->X;
    const float y = destination->Y - source->Y;
    object.m_waypointDir.X = x;
    object.m_waypointDir.Y = y;
    object.m_waypointDir.Z = 0.0f;
    return x;
}

// 0x528b2c PFWorld::_GetClosestNode(Point3D<float> const&)
// The triangle under the position (GetCollisionAt with no room output) gives the closest of its edge-midpoint nodes on
// that triangle's floor. Null when there is no triangle or no floor.
PFGInnerNode* PFWorld::_GetClosestNode(const Point3D<float>& position) {
    glitch::core::triangle3d<float> tri{};
    Point3D<float> hit{};
    PFFloor* floor = nullptr;
    if (!GetCollisionAt(position, hit, tri, nullptr, &floor, false) || floor == nullptr) {
        return nullptr;
    }
    return ClosestTriangleNode(floor, tri, position);
}

// 0x528ea0 PFWorld::_GetClosestNode(PFObject const&)
// The triangle under the object's position, the same search as the Point3D overload. The object is const in the signature, but the original's GetCollisionAt writes the room (PFObject +0x0c) and the floor
// into it, so they are written through a const_cast here, as the original does.
PFGInnerNode* PFWorld::_GetClosestNode(const PFObject& object) {
    PFObject& writable = const_cast<PFObject&>(object);
    glitch::core::triangle3d<float> tri{};
    Point3D<float> hit{};
    if (!GetCollisionAt(object.m_pos, hit, tri, &writable.m_room, &writable.m_floor, false)) {
        return nullptr;
    }
    if (writable.m_floor == nullptr) {
        return nullptr;
    }
    return ClosestTriangleNode(writable.m_floor, tri, object.m_pos);
}
