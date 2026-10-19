// vendor-lua/dh2_rand48.hpp: srand48 and lrand48, the two libc imports of libDungeonHunter2.so that
// the Lua math library uses.
//
// Hosts with the POSIX functions (Android, Linux, macOS) call them. Windows (MinGW and MSVC) has no
// lrand48, so there the POSIX algorithm is implemented here. POSIX fixes the sequence: the state X is
// 48 bits, each lrand48 step is X = (0x5DEECE66D * X + 0xB) mod 2^48, lrand48 returns the top 31 bits
// of the new X, and srand48(seed) sets X = (seed << 16) | 0x330E. Without a seed, X starts at 0x1234ABCD330E.
#pragma once

#include <cstdint>

#if defined(_WIN32)

namespace dh2 {

// Generator state X. Before any rand48_seed call it holds the POSIX default.
inline std::uint64_t& rand48_state() {
    static std::uint64_t x = 0x1234ABCD330Eull;
    return x;
}

// srand48(seedval): the high 32 bits of X are the low 32 bits of seedval, the low 16 bits are 0x330E.
inline void rand48_seed(long seedval) {
    rand48_state() = (static_cast<std::uint64_t>(static_cast<std::uint32_t>(seedval)) << 16) | 0x330Eull;
}

// lrand48(): one step, result is the top 31 bits of X (0 .. 2^31 - 1). The product wraps at 2^64 first,
// which does not change the value mod 2^48.
inline long rand48_next() {
    std::uint64_t& x = rand48_state();
    x = (x * 0x5DEECE66Dull + 0xBull) & 0xFFFFFFFFFFFFull;
    return static_cast<long>(x >> 17);
}

}  // namespace dh2

#else

#include <stdlib.h>

namespace dh2 {

inline void rand48_seed(long seedval) { ::srand48(seedval); }

inline long rand48_next() { return ::lrand48(); }

}  // namespace dh2

#endif
