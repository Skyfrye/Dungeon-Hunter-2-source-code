// Batch e1-glitch-core-io-glitch_os_Timer-0 (glitch::os::Timer, one function).
//
// 0x60b0cc _ZN6glitch2os5Timer11getRealTimeEv
// The body is already defined in glitch-core-io/src/timer.cpp (reconstructed in an earlier
// wave). Re-checked against the Hex-Rays listing: gettimeofday(), then
// tv_usec / 1000 + 1000 * tv_sec. The port computes the same value through the 64-bit
// microsecond helper; truncating to 32 bits gives the same result as the original's 32-bit
// arithmetic. A second definition here would be a duplicate symbol, so this file only pins
// the declared signature.
#include "glitch-core-io/os/logging.hpp"

#include <cstdint>
#include <type_traits>

static_assert(std::is_same_v<decltype(&glitch::os::Timer::getRealTime), std::uint32_t (*)()>,
              "glitch::os::Timer::getRealTime must return std::uint32_t (32-bit milliseconds)");
