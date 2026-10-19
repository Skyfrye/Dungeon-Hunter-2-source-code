// vox::Lrand48 and vox::Srand48 (see random48.hpp).
#include "vox-audio/vox/random48.hpp"

namespace vox {
namespace {
constexpr std::uint64_t kMultiplier = 0x5DEECE66DULL;
constexpr std::uint64_t kIncrement = 0xBULL;
constexpr std::uint64_t kMask = (1ULL << 48) - 1;
std::uint64_t g_state = 0x1234ABCD330EULL;
}  // namespace

// Srand48 and Lrand48 are the POSIX definitions. The binary imports lrand48 from the C library,
// so there is no original address for these two.
void Srand48(std::int32_t seed) {
    g_state = ((static_cast<std::uint64_t>(static_cast<std::uint32_t>(seed)) << 16) | 0x330EULL) & kMask;
}

std::int32_t Lrand48() {
    g_state = (kMultiplier * g_state + kIncrement) & kMask;
    return static_cast<std::int32_t>(g_state >> 17);
}

}  // namespace vox
