// Stream operators for the glitch math and colour types. The original writes
// vector components as numbers separated by one character (','), and reads them
// back by skipping one separator character after each value.
#pragma once

#include <istream>
#include <ostream>
#include <vector>

#include "core-platform/deps/game_types.hpp"
#include "glitch-shared/glitch_core.hpp"

std::ostream& operator<<(std::ostream& os, const glitch::core::vector3d<float>& v);  // 0x30fdd0
std::ostream& operator<<(std::ostream& os, const glitch::core::vector3d<int>& v);    // 0x30ff48
std::ostream& operator<<(std::ostream& os, const glitch::video::SColor& c);          // 0x310178
std::ostream& operator<<(std::ostream& os, const std::vector<Point3D<float>>& v);    // 0x3133e0

std::istream& operator>>(std::istream& is, glitch::core::dimension2d<int>& d);  // 0x31026c
std::istream& operator>>(std::istream& is, glitch::video::SColor& c);           // 0x3102b4
std::istream& operator>>(std::istream& is, glitch::core::vector3d<int>& v);     // 0x31032c
std::istream& operator>>(std::istream& is, glitch::core::vector3d<float>& v);   // 0x310380
