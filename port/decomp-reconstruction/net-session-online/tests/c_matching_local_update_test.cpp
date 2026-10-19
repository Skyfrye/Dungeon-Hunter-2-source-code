#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static void Clean() {
    connection_manager_test::ResetForSends();
    MatchingInternalEventQueue().Clear();
}

int main() {
    // Not initialized: -1 and nothing is sent.
    {
        CMatchingLocal local;
        Clean();
        CHECK(local.Update() == -1);
        CHECK(SentPacketLog().empty());
    }

    // Server change with no connections: the local id becomes the server id, the change message
    // goes out (type 4), and 0x80000b is posted. No server response without a 0x80000a event.
    {
        CMatchingLocal local;
        Clean();
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        CHECK(local.Update() == 0);
        CHECK(local.ServerMemberIdForTest() == 5);
        // The change message goes to connected peers only (SendToAll); there are none, so nothing is sent.
        CHECK(SentPacketLog().empty());
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000b, false));
    }

    // With a connected peer Update does not announce the server change (it runs only with no connections).
    {
        CMatchingLocal local;
        Clean();
        connection_manager_test::ConnectPeer(7);
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        CHECK(local.Update() == 0);
        CHECK(SentPacketLog().empty());
    }

    // Final step: with 0x80000a pending and this member as the server, a response goes out
    // (type 2, broadcast) and the event is consumed.
    {
        CMatchingLocal local;
        Clean();
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        std::int32_t server = 5;
        NetBitStream change(8);
        change.WriteByteArray(&server, sizeof server);
        local.ProcessChangeServerMessage(0, change);
        local.SetRoomFlagsForTest(false, false);
        MatchingInternalEventQueue().AddEvent(0x80000a, nullptr, 0);
        CHECK(local.Update() == 0);
        CHECK(!SentPacketLog().empty());
        CHECK(SentPacketLog().back().packetType == 2);
        CHECK(SentPacketLog().back().broadcast);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000a, false));
    }

    // Hidden but not closed: the response is held back.
    {
        CMatchingLocal local;
        Clean();
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        std::int32_t server = 5;
        NetBitStream change(8);
        change.WriteByteArray(&server, sizeof server);
        local.ProcessChangeServerMessage(0, change);
        local.SetRoomFlagsForTest(false, true);
        MatchingInternalEventQueue().AddEvent(0x80000a, nullptr, 0);
        CHECK(local.Update() == 0);
        CHECK(SentPacketLog().empty());
    }

    std::printf("%s\n", failures ? "c_matching_local_update: FAILED" : "c_matching_local_update: ok");
    return failures != 0;
}
