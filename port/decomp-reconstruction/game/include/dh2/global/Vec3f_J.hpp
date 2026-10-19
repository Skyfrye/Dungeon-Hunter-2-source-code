// Vec3f_I and Vec3f_J: the 12-byte Point3D<float> globals at ELF 0x99f860 and 0x99f86c (.bss), written by the static
// initializer at 0x312e00 (the same one that writes Vec3f_K): I = (1, 0, 0) and J = (0, 1, 0). Vec3f_J is read by
// v2GamepadController::Update (the angle between the camera's look-at vector and J).
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point3D

extern Point3D<float> Vec3f_I;  // 0x99f860
extern Point3D<float> Vec3f_J;  // 0x99f86c
