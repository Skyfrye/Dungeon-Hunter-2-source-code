#include "net-session-online/c_online_impl.hpp"
#include "net-session-online/cxplayer_manager.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    COnlineImpl impl;
    CHECK(impl.IsSignedIn() == 1);
    CHECK(impl.IsNetworkConnected() == 1);
    CHECK(impl.GetAbsoluteTime() > 0);

    // Zero milliseconds is always due, and a due check restarts the clock.
    CHECK(impl.ElapsedTimeMs(0));
    CHECK(!impl.ElapsedTimeMs(1000000));  // not 1000 seconds since the restart

    impl.SignIn();
    CHECK(impl.EventsForTest().HasEvents());
    CHECK(impl.EventsForTest().ConsumeEvent(0x500000));

    CXPlayerManager mgr;
    CHECK(!mgr.IsReady());
    mgr.SwitchState(0x10);
    CHECK(mgr.IsReady());
    CHECK(mgr.StateForTest() == 0x10);
    mgr.SwitchState(3);
    CHECK(!mgr.IsReady());
    mgr.OnNetworkError();
    CHECK(mgr.StateForTest() == 0x11);
    CHECK(mgr.LastErrorForTest() == 3);

    std::printf("%s\n", failures ? "c_online_impl: FAILED" : "c_online_impl: ok");
    return failures != 0;
}
