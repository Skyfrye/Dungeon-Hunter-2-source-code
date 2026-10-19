#include "net-session-online/online_game_state.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    OnlineGameState state;
    const Timeval from{100, 900000};
    const Timeval to{102, 100000};
    // (102 - 100) * 1000 + (100000 - 900000) / 1000 = 2000 - 800 = 1200
    CHECK(state.timevaldiff(&from, &to) == 1200);
    CHECK(state.timevaldiff(&to, &from) == -1200);

    Timeval now{};
    GetTimeOfDay(&now);
    state.SetStartGameTimeForTest(now);
    CHECK(!state.GlliveStartGameTimeOutExpired());
    state.SetRoomCreationTimeForTest(now);
    CHECK(!state.GlliveRoomCreationTimeOutExpired());

    const Timeval longAgo{now.tv_sec - 200, 0};
    state.SetStartGameTimeForTest(longAgo);
    CHECK(state.GlliveStartGameTimeOutExpired());
    state.SetRoomCreationTimeForTest(longAgo);
    CHECK(state.GlliveRoomCreationTimeOutExpired());

    // Update runs the (empty) state machine; Destroy frees its entries.
    state.Update();
    state.Destroy();

    std::printf("%s\n", failures ? "online_game_state: FAILED" : "online_game_state: ok");
    return failures != 0;
}
