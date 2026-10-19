// Checks for the CMatchingLocal redo batch r1n-net-session-online-CMatchingLocal-402124-0: the room state and the
// member-id counter that the constructor and Reset() set, IsInRoom() through the real connection manager, and
// IsInRoom(int) for the local member id.
#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Makes `id` the server: ProcessChangeServerMessage reads the 4-byte id from the stream.
static void SetServerId(CMatchingLocal& local, std::int32_t id) {
    NetBitStream stream(16);
    stream.WriteByteArray(&id, sizeof id);
    local.ProcessChangeServerMessage(0, stream);
}

int main() {
    // The constructor ends with Reset(): the room is closed and hidden, the counter is 0, and both ids are unset.
    {
        CMatchingLocal local;
        CHECK(local.IsRoomClosed());
        CHECK(local.IsRoomHidden());
        CHECK(local.MemberIdForTest() == -1);
        CHECK(local.ServerMemberIdForTest() == -2);
        CHECK(local.GenerateNewMemberId() == 1);   // counter 0: 0 / 17 + 1 + 0
        CHECK(local.GenerateNewMemberId() == 17);  // counter 1: 1 / 17 + 1 + 16
    }

    // Reset() sets the counter back to 0, clears both ids and closes and hides the room again.
    {
        CMatchingLocal local;
        local.GenerateNewMemberId();
        local.GenerateNewMemberId();
        local.OpenRoom(true);
        CHECK(!local.IsRoomClosed());
        CHECK(!local.IsRoomHidden());
        local.SetMemberId(9);
        local.Reset();
        CHECK(local.IsRoomClosed());
        CHECK(local.IsRoomHidden());
        CHECK(local.MemberIdForTest() == -1);
        CHECK(local.ServerMemberIdForTest() == -2);
        CHECK(local.GenerateNewMemberId() == 1);
    }

    // IsInRoom(): with no server and no connected peer the local member is not in the room.
    connection_manager_test::Reset();
    {
        CMatchingLocal local;
        CHECK(!local.IsInRoom());
        local.SetMemberId(5);
        CHECK(!local.IsInRoom(5));  // vtable +0x64 answer for the local id, nothing connected
    }

    // The local member that is the server is in the room (first clause of IsInRoom()).
    connection_manager_test::Reset();
    {
        CMatchingLocal local;
        local.SetMemberId(3);
        SetServerId(local, 3);
        CHECK(local.IsInRoom());
        CHECK(local.IsInRoom(3));
    }

    // A connected server is in the room (second clause). Other ids are checked through the connection.
    connection_manager_test::Reset();
    connection_manager_test::ConnectPeer(7);
    {
        CMatchingLocal local;
        SetServerId(local, 7);
        CHECK(local.IsInRoom());
        CHECK(local.IsInRoom(7));
        CHECK(!local.IsInRoom(99));
    }

    std::printf("%s\n", failures ? "r1n-net-session-online-CMatchingLocal-402124-0: FAILED"
                                 : "r1n-net-session-online-CMatchingLocal-402124-0: ok");
    return failures != 0;
}
