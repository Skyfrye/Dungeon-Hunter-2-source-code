#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // GetTransportType: table {1, 2, 1}, anything above 2 gives 0.
    CHECK(CMatchingLocal::GetTransportType(0) == 1);
    CHECK(CMatchingLocal::GetTransportType(1) == 2);
    CHECK(CMatchingLocal::GetTransportType(2) == 1);
    CHECK(CMatchingLocal::GetTransportType(3) == 0);

    // SendInvitation and ReceiveInvitation post 0x800015 and 0x800017 and return 0.
    CMatchingLocal local;
    MatchingInternalEventQueue().Clear();
    CHECK(local.SendInvitation("a", "b", true) == 0);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x800015, false));
    CHECK(local.ReceiveInvitation() == 0);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x800017, false));
    MatchingInternalEventQueue().Clear();

    // ProcessChangeServerMessage: reads a 4-byte id, stores it at +0x363c and posts 0x80000b.
    NetBitStream stream(16);
    std::int32_t id = 0x1234;
    stream.WriteByteArray(&id, sizeof id);
    local.ProcessChangeServerMessage(7, stream);
    CHECK(local.ServerMemberIdForTest() == 0x1234);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000b, false));
    MatchingInternalEventQueue().Clear();

    return failures == 0 ? 0 : 1;
}
