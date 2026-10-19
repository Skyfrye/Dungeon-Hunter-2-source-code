#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"

#include <cstring>

namespace glitch::scene {

namespace {
// Four-character type tags, stored as the little-endian words the original returns.
constexpr std::uint32_t kTagSkyBox = 0x5f796b73;      // "sky_"
}  // namespace

}  // namespace glitch::scene

namespace glitch {

// 0x5a20bc _ZN6glitcheqERKSt4pairIjNS_4core8aabbox3dIfEEES6_
bool operator==(const std::pair<std::uint32_t, core::aabbox3d<float>>& lhs,
                const std::pair<std::uint32_t, core::aabbox3d<float>>& rhs) {
    return lhs.first == rhs.first;
}

}  // namespace glitch
