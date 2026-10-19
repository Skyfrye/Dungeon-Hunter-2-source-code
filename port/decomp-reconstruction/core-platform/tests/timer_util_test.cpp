#include "core-platform/timer_util.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Test stub for the Application singleton (owned by the engine category).
static int g_dt = 0;
int ApplicationGetDt() { return g_dt; }

int main() {
    TimerUtil t;
    CHECK(t.GetRemainingTime() == 0);
    t.Start(100);
    CHECK(t.GetRemainingTime() == 100);
    g_dt = 30;
    t.Update();
    CHECK(t.GetRemainingTime() == 70);
    t.Pause();
    t.Update();
    CHECK(t.GetRemainingTime() == 70);
    t.Unpause();
    g_dt = 100;
    t.Update();
    CHECK(t.GetRemainingTime() == 0);  // clamps at zero
    std::printf("%s\n", failures ? "timer_util: FAILED" : "timer_util: ok");
    return failures != 0;
}
