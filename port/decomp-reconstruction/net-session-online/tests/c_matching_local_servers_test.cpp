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


static CNetworkId Address(std::uint8_t tag) {
    CNetworkId id;
    id.SetAddress0(tag, 0);
    return id;
}

// Joins key `key` with a threshold of 10, returning true when it connected to `member`.
static bool JoinConnects(CMatchingLocal& local, std::uint64_t key, std::int32_t member) {
    connection_manager_test::Reset();
    local.SetJoinThresholdForTest(10);
    local.JoinRoomInternal(key);
    return connection_manager_test::ConnectionRequested(member);
}

int main() {
    connection_manager_test::Reset();
    MatchingInternalEventQueue().Clear();
    OnlineClockStorage() = 100000;

    CMatchingLocal local;
    const CRoomAttributes attrs;

    // AddServer adds a new entry under key 1 (the first key), and a repeated address only refreshes it.
    CHECK(AddServerTo(local, 11, Address(1), 3, attrs) == 0);  // key 1
    CHECK(JoinConnects(local, 1, 11));
    CHECK(AddServerTo(local, 11, Address(1), 9, attrs) == 0);  // refresh: rank 9 now
    local.SetJoinThresholdForTest(5);
    connection_manager_test::Reset();
    local.JoinRoomInternal(1);
    CHECK(!CConnectionManager::GetInstance()->IsConnected(11));  // rank 9 is not under 5
    CHECK(AddServerTo(local, 12, Address(2), 1, attrs) == 0);  // key 2
    local.SetJoinThresholdForTest(10);
    CHECK(JoinConnects(local, 2, 12));

    // RemoveServer removes the entry with that address; the join then finds nothing.
    local.RemoveServer(Address(2));
    MatchingInternalEventQueue().Clear();
    connection_manager_test::Reset();
    local.JoinRoomInternal(2);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000c, false));

    // PurgeServers drops entries older than 20000 ms and keeps the others.
    CMatchingLocal purge;
    OnlineClockStorage() = 100000;
    CHECK(AddServerTo(purge, 21, Address(3), 1, attrs) == 0);  // key 1, seen at 100000
    OnlineClockStorage() = 120000;                          // age 20000: kept
    CHECK(purge.PurgeServers() == 0);
    purge.SetJoinThresholdForTest(10);
    MatchingInternalEventQueue().Clear();
    connection_manager_test::Reset();
    purge.JoinRoomInternal(1);
    CHECK(connection_manager_test::ConnectionRequested(21));
    OnlineClockStorage() = 120001;                          // age 20001: purged
    CHECK(purge.PurgeServers() == 0);
    MatchingInternalEventQueue().Clear();
    connection_manager_test::Reset();
    purge.JoinRoomInternal(1);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000c, false));

    // ProcessServerMessage on a record from another member adds it (flag 0), and removes it (flag 1).
    CMatchingLocal from;
    from.SetJoinThresholdForTest(10);
    RoomServerHeader header{};
    header.listenId = Address(9);
    header.memberId = 9;
    header.memberCount = 4;
    header.flag = 0;
    {
        NetBitStream stream(64);
        stream.WriteByteArray(&header, sizeof header);
        from.ProcessServerMessage(CNetworkId{}, stream);
    }
    connection_manager_test::Reset();
    from.JoinRoomInternal(1);
    CHECK(connection_manager_test::ConnectionRequested(9));

    header.flag = 1;
    {
        NetBitStream stream(64);
        stream.WriteByteArray(&header, sizeof header);
        from.ProcessServerMessage(CNetworkId{}, stream);
    }
    MatchingInternalEventQueue().Clear();
    connection_manager_test::Reset();
    from.JoinRoomInternal(1);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x80000c, false));

    // GetMemberName: the local member gives the local host name of the transport manager; a remote
    // member gives the part of its host name before the first '.'.
    transport_test_support::HostnamesForTest().clear();
    transport_test_support::HostnamesForTest()[0] = "alpha.beta";
    CHECK(local.GetMemberName(5) == "alpha");
    local.SetMemberId(7);
    CHECK(local.GetMemberName(7) == transport_test_support::LocalHostnameForTest());
    transport_test_support::HostnamesForTest().clear();

    std::printf("%s\n", failures ? "c_matching_local_servers: FAILED" : "c_matching_local_servers: ok");
    return failures != 0;
}
