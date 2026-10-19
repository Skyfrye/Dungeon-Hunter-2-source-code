// glitch::os::byteswap for floats and the float vector and box types: each float has
// its four bytes reversed. Used by the io code for big-endian file fields.
#pragma once

#include <cstdint>
#include <cstring>

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::os {

// Reverses the bytes of one float (the original's byteswap<float> body).
inline float byteswap(float value) {
    std::uint32_t bits;
    std::memcpy(&bits, &value, sizeof bits);
    bits = (bits >> 24) | ((bits >> 8) & 0x0000ff00u) | ((bits << 8) & 0x00ff0000u) | (bits << 24);
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// 0x578dec _ZN6glitch2os8byteswapIfEENS_4core8vector3dIT_EERKS5_
inline glitch::core::vector3d<float> byteswap(const glitch::core::vector3d<float>& v) {
    return {byteswap(v.X), byteswap(v.Y), byteswap(v.Z)};
}

// 0x578e80 _ZN6glitch2os8byteswapIfEENS_4core8aabbox3dIT_EERKS5_
// Partial: the box is taken to be its two corners, each byte-swapped in turn (MinEdge,
// then MaxEdge). The ARM listing for the body was not read past its first stores.
inline glitch::core::aabbox3d<float> byteswap(const glitch::core::aabbox3d<float>& box) {
    return {byteswap(box.MinEdge), byteswap(box.MaxEdge)};
}

}  // namespace glitch::os
