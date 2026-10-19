// glitch::os::E_ENDIAN: the byte order a file writer produces (a parameter of CShadowVolumeSceneNode::save, 0x6ffee4). The value 1 selects
// the swapped (big-endian) order: save writes the mark 0x1234 byte-swapped and swaps every word it writes; 0 writes the host order.
#pragma once

#include <cstdint>

namespace glitch::os {

enum E_ENDIAN : std::int32_t {
    EE_LITTLE = 0,
    EE_BIG = 1,
};

}  // namespace glitch::os
