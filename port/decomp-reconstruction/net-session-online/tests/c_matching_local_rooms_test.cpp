#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"

#include <cstdio>

static int failures = 0;
// AddServer takes the address and the room attributes by non-const reference (the original's symbol, link-1), so the
// calls here go through this wrapper, which owns lvalues for the temporaries the checks pass.
template <class Local, class Attrs>
static int AddServerTo(Local& local, std::int32_t memberId, CNetworkId address, std::int32_t rank, Attrs&& attributes) {
    CRoomAttributes copy(attributes);
    return local.AddServer(memberId, address, rank, copy);
}

#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


static int CreateJoinOf(CMatchingLocal& local, bool open) {
    CRoomAttributes attributes;  // lvalue for the non-const reference parameter
    return local.CreateJoinRoomInternal(open, attributes);
}

static int SearchOf(CMatchingLocal& local) {
    CRoomSearchFilter filter;  // lvalue for the non-const reference parameter
    return local.SearchRoomInternal(filter, false, 0);
}

static void Clean() {
    connection_manager_test::ResetForSends();
    MatchingInternalEventQueue().Clear();
}

// Feeds a 0x800 record to ProcessChangeServerMessage so the server id becomes `id`.
static void SetServerId(CMatchingLocal& local, std::int32_t id) {
    NetBitStream stream(16);
    stream.WriteByteArray(&id, sizeof id);
    local.ProcessChangeServerMessage(0, stream);
}

int main() {
    // Hide, close, show and open.
    {
        CMatchingLocal local;
        Clean();
        CHECK(local.HideRoom() == 0);
        CHECK(local.IsRoomHidden());
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000a, false));

        Clean();
        local.SetRoomFlagsForTest(false, false);
        CHECK(local.CloseRoom() == 0);
        CHECK(local.IsRoomClosed());
        CHECK(local.IsRoomHidden());

        Clean();
        local.SetRoomFlagsForTest(false, true);
        local.SetBaseRoomClosedForTest(false);
        CHECK(local.ShowRoom() == 0);
        CHECK(!local.IsRoomHidden());
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000a, false));

        Clean();
        CHECK(local.OpenRoom(false) == 0);
        CHECK(!local.IsRoomClosed());
        CHECK(local.IsRoomHidden());

        // ShowRoom and OpenRoom do nothing while the base room-closed flag is set.
        Clean();
        local.SetBaseRoomClosedForTest(true);
        local.SetRoomFlagsForTest(true, true);
        CHECK(local.ShowRoom() == 0);
        CHECK(local.IsRoomHidden());
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000a, false));
        CHECK(local.OpenRoom(true) == 0);
        CHECK(local.IsRoomClosed());
    }

    // CreateJoinRoomInternal refuses when not initialized; otherwise it takes the first id and,
    // with the room open and not hidden, sends a server response (broadcast type 2).
    {
        CMatchingLocal local;
        Clean();
        CHECK(CreateJoinOf(local, true) == -1);

        local.SetInitializedForTest(true);
        CHECK(CreateJoinOf(local, true) == 0);
        CHECK(local.MemberIdForTest() == 1);
        CHECK(local.ServerMemberIdForTest() == 1);
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x800003, false));
        CHECK(!SentPacketLog().empty());
        CHECK(SentPacketLog().back().packetType == 2);
        CHECK(SentPacketLog().back().broadcast);
    }

    // SearchRoomInternal posts 0x80000e only when the server list is not empty.
    {
        CMatchingLocal local;
        Clean();
        CHECK(SearchOf(local) == -1);
        local.SetInitializedForTest(true);
        CHECK(SearchOf(local) == 0);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000e, false));
        CHECK(AddServerTo(local, 4, CNetworkId{}, 1, CRoomAttributes()) == 0);
        CHECK(SearchOf(local) == 0);
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000e, false));
    }

    // JoinRoomInternal: an unknown key posts 0x80000c; a rank under the threshold connects
    // and sets the server id; a rank at or above it posts 0x80000d.
    {
        CMatchingLocal local;
        Clean();
        CHECK(local.JoinRoomInternal(99) == 0);
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000c, false));

        Clean();
        local.SetJoinThresholdForTest(5);
        CHECK(AddServerTo(local, 11, CNetworkId{}, 3, CRoomAttributes()) == 0);  // key 1, rank 3
        CHECK(local.JoinRoomInternal(1) == 0);
        CHECK(connection_manager_test::ConnectionRequested(11));
        CHECK(local.ServerMemberIdForTest() == 11);

        Clean();
        local.SetJoinThresholdForTest(5);
        CNetworkId other;
        other.SetAddress0(2, 0);
        CHECK(AddServerTo(local, 12, other, 9, CRoomAttributes()) == 0);  // key 2, rank 9
        CHECK(local.JoinRoomInternal(2) == 0);
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000d, false));
        CHECK(!CConnectionManager::GetInstance()->IsConnected(12));
    }

    // LeaveRoom: when this member is the server it answers first; then it disconnects everything
    // and posts 0x800004.
    {
        CMatchingLocal local;
        Clean();
        local.SetMemberId(5);
        SetServerId(local, 5);
        connection_manager_test::ConnectPeer(8);
        Clean();
        connection_manager_test::ConnectPeer(8);
        CHECK(local.LeaveRoom() == 0);
        CHECK(!CConnectionManager::GetInstance()->IsConnected(8));
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x800004, false));
        // The server response goes out before the disconnect.
        CHECK(!SentPacketLog().empty());
        CHECK(SentPacketLog().front().packetType == 2);
    }

    // GetSearchRoomAttributes is safe for an unknown key.
    {
        CMatchingLocal local;
        (void)local.GetSearchRoomAttributes(7);
    }

    std::printf("%s\n", failures ? "c_matching_local_rooms: FAILED" : "c_matching_local_rooms: ok");
    return failures != 0;
}
