// Vec3f_K: the 12-byte Point3D<float> global at ELF 0x99f878 (.bss). The static initializer at 0x312e00 writes
// X = 0 (Vec3f_K = 0), Y = 0 (dword_99F87C) and Z = 1.0f (dword_99F880), so K = (0, 0, 1). Read by GameObject,
// Zone, _HeadTo, _TargetListSearch and PFObject (m_floorNormal starts from it). No translation unit defines it yet;
// the integrator defines it once, as for Vec3f_Origin.
#pragma once

#include "core-platform/deps/game_types.hpp"  // Point3D

extern Point3D<float> Vec3f_K;  // 0x99f878
