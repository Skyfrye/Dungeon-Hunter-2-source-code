// Checks the float constants of the CharAI attack search against the bit patterns in libDungeonHunter2.so.
// The AI bodies themselves call Character, CharTimers and ObjectSearcher members, so they cannot link standalone.
#include <cstdint>
#include <cstring>

#include "dh2/global/charai_ai.hpp"

namespace {

std::uint32_t Bits(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

}  // namespace

int main() {
    int failures = 0;
    if (Bits(kCharAIRadPerDegree) != 0x3c8efa35u) {
        ++failures;  // pi/180 as float
    }
    if (Bits(kCharAIFullCircle) != 0x40c90fdbu) {
        ++failures;  // 2*pi as float
    }
    return failures == 0 ? 0 : 1;
}
