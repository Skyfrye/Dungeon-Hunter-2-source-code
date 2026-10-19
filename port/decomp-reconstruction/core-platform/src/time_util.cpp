#include "core-platform/time_util.hpp"

#include <sys/time.h>

// 0x320550 _Z7TimeNowv
// The original computes sec * 1000 + usec / 1000 in 32-bit arithmetic.
unsigned int TimeNow() {
    timeval tv{};
    gettimeofday(&tv, nullptr);
    return static_cast<unsigned int>(tv.tv_sec * 1000 + tv.tv_usec / 1000);
}

// 0x862bf4 _Z8_GetTimev
// The original converts usec to double, divides by 1e6, then adds sec.
double _GetTime() {
    timeval tv{};
    gettimeofday(&tv, nullptr);
    const double fraction = static_cast<double>(tv.tv_usec) / 1000000.0;
    return fraction + static_cast<double>(tv.tv_sec);
}

// 0x89d368 _Z10OS_GetTimev
int OS_GetTime() {
    timeval tv{};
    gettimeofday(&tv, nullptr);
    return static_cast<int>(tv.tv_sec * 1000 + tv.tv_usec / 1000);
}
