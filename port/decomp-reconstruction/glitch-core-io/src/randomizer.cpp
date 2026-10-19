#include "glitch-core-io/os/randomizer.hpp"

namespace glitch::os {

std::int32_t Randomizer::Seed = 0x0f0f0f0f;  // .data 0x99b800 (STUB-AUDIT: was 0)

// 0x60ae74 _ZN6glitch2os10Randomizer5resetEv
void Randomizer::reset() {
    Seed = 0x0f0f0f0f;
}

// 0x60ae04 _ZN6glitch2os10Randomizer4randEv
// Schrage's method: Seed = (40692 * Seed) mod 0x7fffff07, computed as
// 40692 * (Seed mod 52774) - 3791 * (Seed div 52774), plus the modulus when the result is
// negative. The original divides with a sign correction (the shifted sign bit is added to
// the quotient); that is kept here.
std::int32_t Randomizer::rand() {
    const std::int32_t quotient = Seed / 0xce26 + (Seed >> 31);
    // The original sums in 32-bit words (wrapping); the sum is formed in 64 bits here and
    // wrapped to 32 bits, which gives the same value.
    const std::int64_t sum = static_cast<std::int64_t>(Seed >> 31) * 0x7fffff07 +
                             static_cast<std::int64_t>(quotient) * -0xecf +
                             static_cast<std::int64_t>(Seed) * 0x9ef4 +
                             static_cast<std::int64_t>(quotient) * -0x7ffff038;
    Seed = static_cast<std::int32_t>(static_cast<std::uint32_t>(sum));
    if (Seed < 0) Seed += 0x7fffff07;
    return Seed;
}

}  // namespace glitch::os
