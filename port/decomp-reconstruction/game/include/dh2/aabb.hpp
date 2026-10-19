// aabb<T>: the game's axis aligned box (<global> template). Two corners, minimum first, as the users read it: GameObject::SetRelativeAABB
// (0x38b110) copies six floats (+0x00 min x, y, z; +0x0c max x, y, z), ObjectBase::TestCullingBeforeUpdate (0x33de90) takes the box
// by reference and PFRoom::ExtendBoundingBox (0x388218) reads both corners. The binary has no named members; the corner names
// follow glitch::core::aabbox3d.
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point3D

template <typename T>
struct aabb {
    Point3D<T> MinEdge;  // +0x00
    Point3D<T> MaxEdge;  // +0x0c
};
