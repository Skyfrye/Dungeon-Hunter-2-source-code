// Batch r1n-net-session-online-CMatchingLocal-402124-1: CMatchingLocal::Update (0x80890c) pending-room
// block, the output-queue 0x40000e check, the server-branch skip, and the purge of old servers.
// The checks read queue and timer state only. The packet log is not used: in the current tree the
// transport send does not record into SentPacketLog(), so a send check would test the transport, not Update.
#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"

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

static void Clean() {
    connection_manager_test::Reset();
    MatchingInternalEventQueue().Clear();
    MatchingOutputEventQueue().Clear();
}

static CNetworkId Address(std::uint8_t tag) {
    CNetworkId id;
    id.SetAddress0(tag, 0);
    return id;
}

int main() {
    // Pending room, poll made 500 ms ago (zero whole seconds, allowance 4): no request, the poll time is kept.
    {
        Clean();
        OnlineClockStorage() = 1500;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(1000);
        CHECK(local.Update() == 0);
        CHECK(local.ServerPollTimeForTest() == 1000);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000f, false));
    }

    // Pending room, no poll yet: a request is made. The poll time moves to the clock only when the
    // request reports success, so it is either still 0 or the clock value.
    {
        Clean();
        OnlineClockStorage() = 1500;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(0);
        CHECK(local.Update() == 0);
        CHECK(local.ServerPollTimeForTest() == 0 || local.ServerPollTimeForTest() == 1500);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000f, false));
    }

    // Pending room with a connected peer and no local member id (not the server branch): same rule.
    {
        Clean();
        connection_manager_test::ConnectPeer(7);
        OnlineClockStorage() = 1500;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(0);
        CHECK(local.Update() == 0);
        CHECK(local.ServerPollTimeForTest() == 0 || local.ServerPollTimeForTest() == 1500);
    }

    // Elapsed time (10 s) beyond the allowance (no servers: 4) with a poll already made: 0x80000f is posted.
    {
        Clean();
        OnlineClockStorage() = 11000;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(1000);
        CHECK(local.Update() == 0);
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000f, false));
    }

    // The server branch (the local id becomes the server id) skips the pending block. The same state as the
    // case above would post 0x80000f, so its absence shows the block did not run.
    {
        Clean();
        OnlineClockStorage() = 11000;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(1000);
        CHECK(local.Update() == 0);
        CHECK(local.ServerMemberIdForTest() == 5);
        CHECK(local.ServerPollTimeForTest() == 1000);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(0x80000f, false));
        CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000b, false));
    }

    // A server last seen 29 s before the poll is purged (older than 20000 ms); the poll itself is recent.
    {
        Clean();
        OnlineClockStorage() = 1000;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        const CRoomAttributes attrs;
        CHECK(AddServerTo(local, 11, Address(1), 3, attrs) == 0);
        CHECK(local.ServerCountForTest() == 1);
        OnlineClockStorage() = 30000;
        local.SetRoomOperationPendingForTest(true);
        local.SetServerPollTimeForTest(29000);
        CHECK(local.Update() == 0);
        CHECK(local.ServerCountForTest() == 0);
    }

    // Output event 0x40000e carrying the local member id posts 0x40000a on the output queue.
    {
        Clean();
        OnlineClockStorage() = 1500;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        std::int32_t who = 5;
        MatchingOutputEventQueue().AddEvent(0x40000e, &who, sizeof who);
        CHECK(local.Update() == 0);
        CHECK(MatchingOutputEventQueue().HasEventOccured(0x40000a, false));
    }

    // Output event 0x40000e carrying another member id posts nothing.
    {
        Clean();
        OnlineClockStorage() = 1500;
        CMatchingLocal local;
        local.SetInitializedForTest(true);
        local.SetMemberId(5);
        std::int32_t who = 6;
        MatchingOutputEventQueue().AddEvent(0x40000e, &who, sizeof who);
        CHECK(local.Update() == 0);
        CHECK(!MatchingOutputEventQueue().HasEventOccured(0x40000a, false));
    }

    std::printf("%s\n", failures ? "r1n-net-session-online-CMatchingLocal-402124-1: FAILED"
                                  : "r1n-net-session-online-CMatchingLocal-402124-1: ok");
    return failures != 0;
}
