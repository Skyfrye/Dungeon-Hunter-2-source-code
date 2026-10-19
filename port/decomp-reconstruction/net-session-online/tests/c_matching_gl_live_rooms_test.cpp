#include "net-session-online/c_matching_gl_live.hpp"
#include "room_test_helpers.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMatchingGLLive m;

    // A key that was never stored gives default settings.
    CHECK(RoomGetInt(m.GetSearchRoomAttributes(42), 3) == 0);

    // A stored key returns a copy of its settings.
    m.SetRoomKeyForTest(42);
    m.GetRoomAttributes()->SetAttributeInt(RoomInt(3), 77);
    CHECK(RoomGetInt(m.GetSearchRoomAttributes(42), 3) == 77);

    // Another key still gives defaults, and the lookup did not insert it.
    CHECK(RoomGetInt(m.GetSearchRoomAttributes(43), 3) == 0);

    std::printf("%s\n", failures == 0 ? "PASS" : "FAILED");
    return failures == 0 ? 0 : 1;
}
