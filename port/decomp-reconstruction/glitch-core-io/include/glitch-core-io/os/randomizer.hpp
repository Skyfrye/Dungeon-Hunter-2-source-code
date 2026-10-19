// glitch::os::Randomizer: the process-wide pseudo-random generator. The state is a single
// static seed (_ZN6glitch2os10Randomizer4SeedE). The update is a Schrage-method step for the
// multiplier 40692 modulo 0x7fffff07 (quotient 52774, remainder 3791).
#pragma once

#include <cstdint>

namespace glitch::os {

class Randomizer {
public:
    static std::int32_t Seed;   // _ZN6glitch2os10Randomizer4SeedE

    static void reset();        // 0x60ae74: Seed = 0x0f0f0f0f
    static std::int32_t rand(); // 0x60ae04: advances Seed and returns it (R0 holds the new Seed)
};

}  // namespace glitch::os
