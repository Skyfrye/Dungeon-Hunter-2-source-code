// Vec3f_Origin: the 12-byte Point3D<float> global at ELF 0x99f854 (STT_OBJECT, size 12, in .bss). The listings
// read its X word as Vec3f_Origin and its Y and Z words as dword_99F858 and dword_99F85C, so a Point3D<float> copy
// of it covers all three. Declared for batch g1-game-world-CameraTarget-255099-0 (CameraTarget constructor,
// EnableDamping and SetTarget). No translation unit defines it yet; the integrator defines it once.
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point3D

extern Point3D<float> Vec3f_Origin;  // 0x99f854
