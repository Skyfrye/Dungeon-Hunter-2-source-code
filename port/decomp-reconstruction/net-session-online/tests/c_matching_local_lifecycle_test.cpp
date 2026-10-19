#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


int main() {
    CMatchingLocal local;
    connection_manager_test::Reset();
    MatchingInternalEventQueue().Clear();

    // Initialize registers the three packet types and posts 0x800001 when not initialized.
    CHECK(local.Initialize(0) == 0);
    CHECK(CConnectionManager::IsPacketTypeRegistered(2));
    CHECK(CConnectionManager::IsPacketTypeRegistered(3));
    CHECK(CConnectionManager::IsPacketTypeRegistered(4));
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x800001, false));

    // Initialize does nothing when already initialized.
    connection_manager_test::Reset();
    MatchingInternalEventQueue().Clear();
    local.SetInitializedForTest(true);
    CHECK(local.Initialize(0) == 0);
    CHECK(!CConnectionManager::IsPacketTypeRegistered(2));
    CHECK(!MatchingInternalEventQueue().HasEventOccured(0x800001, false));

    // Terminate unregisters only when initialized, and clears the flag.
    CHECK(local.Terminate() == 0);
    CHECK(!local.IsInitializedForTest());
    connection_manager_test::Reset();
    local.SetInitializedForTest(true);
    CConnectionManager::GetInstance()->RegisterPacketType(2, 2, &CMatchingLocal::sBroadcastPacketReceiverCallback);
    CHECK(local.Terminate() == 0);
    CHECK(!CConnectionManager::IsPacketTypeRegistered(2));

    // PingRooms posts 0x800010.
    MatchingInternalEventQueue().Clear();
    CHECK(local.PingRooms() == 0);
    CHECK(MatchingInternalEventQueue().HasEventOccured(0x800010, false));

    std::printf("%s\n", failures ? "c_matching_local_lifecycle: FAILED" : "c_matching_local_lifecycle: ok");
    return failures != 0;
}
