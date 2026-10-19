// Stand-in for gettimeofday(), which the online layer uses for its timeouts. The
// fields keep the 32-bit widths of the original timeval so the arithmetic matches.
// Written with std::chrono so that it builds on MinGW and MSVC.
#pragma once

#include <chrono>
#include <cstdint>

struct Timeval {
    std::int32_t tv_sec;   // seconds
    std::int32_t tv_usec;  // microseconds
};

inline void GetTimeOfDay(Timeval* out) {
    const auto now = std::chrono::duration_cast<std::chrono::microseconds>(
                         std::chrono::system_clock::now().time_since_epoch())
                         .count();
    out->tv_sec = static_cast<std::int32_t>(now / 1000000);
    out->tv_usec = static_cast<std::int32_t>(now % 1000000);
}
