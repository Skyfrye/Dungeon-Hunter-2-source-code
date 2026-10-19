#include "net-transport/connection.hpp"

#include <cstdio>

#include "fake_matching.hpp"
#include "net-session-online/c_event_queue_base.hpp"
#include "net-transport/deps/transport_test_support.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // CConnection::Send reaches the transport manager singleton (GetTransportMgr), so one is installed.
    transport_test_support::InstallInitialized();
    // CMatching comes from net-session-online. The fake installed by fake_matching.hpp is the one
    // CMatching::Get() returns; GetMemberIndex is the lowest set bit of MemberBit (member n -> slot n).
    CHECK(CMatching::Get() == &InstalledFakeMatching());
    SetServerForTest(true);
    CHECK(CMatching::Get()->IsServer());
    SetServerForTest(false);
    CHECK(!CMatching::Get()->IsServer());
    CHECK(CMatching::Get()->GetMemberIndex(31) == 31);
    CHECK(CMatching::Get()->GetMemberIndex(32) == -1);
    CHECK(CMatching::Get()->GetMemberIndex(-1) == -1);
    CHECK(CMatching::Get()->TransportTypeForProtocol(1) == 0);  // base value
    CHECK(CMatching::Get()->GenerateNewMemberId() == 0);

    // CConnection: state and member id accessors. The member id defaults to the constructor sentinel.
    CConnection conn;
    CHECK(conn.State() == 0);
    CHECK(conn.MemberId() == -14531089);
    conn.SetState(4);
    conn.SetMemberId(7);
    CHECK(conn.State() == 4);
    CHECK(conn.MemberId() == 7);
    CHECK(conn.Send(5, nullptr, 0) == 8);  // an empty payload is framed in the 8-byte header; a recorder takes it

    // CEventQueueBase (net-session-online): AddEvent stores an event, GetEventData copies it back and
    // Clear empties the queue. Both return the unlock result, 0.
    CEventQueueBase queue;
    CHECK(!queue.HasEvents());
    CHECK(queue.AddEvent(1, nullptr, 0) == 0);
    CHECK(queue.HasEvents());
    CHECK(queue.HasEventOccured(1, false));
    CHECK(queue.Clear() == 0);
    CHECK(!queue.HasEvents());

    std::printf("%s\n", failures ? "connection_deps: FAILED" : "connection_deps: ok");
    return failures != 0;
}
