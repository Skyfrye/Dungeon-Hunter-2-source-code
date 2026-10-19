// vox::Srand48 and vox::Lrand48: the POSIX lrand48 generator, a 48-bit linear congruential
// step X = (0x5DEECE66D * X + 0xB) mod 2^48 with lrand48 returning X >> 17 (31 bits). The
// original calls the C library lrand48, which POSIX does not require to be available on
// every target (MinGW has none), so the port carries the same arithmetic.
//
// Seeding: Srand48(seed) sets X to (seed << 16) | 0x330E using the low 32 bits of the seed,
// as POSIX specifies. Before any seeding the state is the POSIX default 0x1234ABCD330E. The
// glibc on the development host starts from zero instead, so the unseeded sequence is not
// verified against the original; callers that depend on it are marked partial.
#pragma once

#include <cstdint>

namespace vox {

void Srand48(std::int32_t seed);
std::int32_t Lrand48();

}  // namespace vox
