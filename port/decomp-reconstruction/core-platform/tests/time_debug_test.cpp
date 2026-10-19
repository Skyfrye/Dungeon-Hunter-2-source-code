#include "core-platform/debug_out.hpp"
#include "core-platform/time_util.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    unsigned int t0 = TimeNow();
    int ms = OS_GetTime();
    double secs = _GetTime();
    // The three clocks read the same clock, so they agree within a second.
    const unsigned int um = static_cast<unsigned int>(ms);
    CHECK(um - t0 < 1000u || t0 - um < 1000u);  // 32-bit wraparound safe
    CHECK(secs > 1.0e9);
    _DEBUG_OUT("time test %d\n", 7);  // prints the line and forwards it to appDebugLog
    std::printf("%s\n", failures ? "time_debug: FAILED" : "time_debug: ok");
    return failures != 0;
}
