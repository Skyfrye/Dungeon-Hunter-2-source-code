// Track B batch e1-net-session-online-lib_online_glx-0: lib-online-glx platform clock wrapper.
//
// XP_API_GET_TIME is the only body in this batch that has a Hex-Rays pseudocode. The
// FUN_008b1704 queue row is not a function entry (see the ledger note), so it is skipped.
//
// Declared in xp_api.hpp (C symbol, as the original).
#include <cstdint>

#include "net-session-online/deps/time_of_day.hpp"
#include "net-session-online/xp_api.hpp"

// 0x82b138 XP_API_GET_TIME
// int XP_API_GET_TIME()
// {
//     struct timeval v1;
//     gettimeofday(&v1, nullptr);
//     return v1.tv_usec / 1000 + 1000 * v1.tv_sec;
// }
// The ARM listing agrees: gettimeofday(sp, 0), then tv_usec / 1000 by a multiply-high
// (0x10624DD3 >> 6), then 1000 * tv_sec added in 32-bit registers. The fields are 32-bit on
// the device, so the sum wraps modulo 2^32 and is returned as a signed int. Timeval is the
// 32-bit stand-in from deps/time_of_day.hpp, and GetTimeOfDay fills it from the host clock.
extern "C" int XP_API_GET_TIME() {
    Timeval now{};                                              // +0x00 tv_sec, +0x04 tv_usec
    GetTimeOfDay(&now);
    const std::uint32_t msPart = static_cast<std::uint32_t>(now.tv_usec / 1000);
    const std::uint32_t secPart = static_cast<std::uint32_t>(now.tv_sec) * 1000u;
    return static_cast<int>(msPart + secPart);                  // 32-bit wrap as on ARM
}
