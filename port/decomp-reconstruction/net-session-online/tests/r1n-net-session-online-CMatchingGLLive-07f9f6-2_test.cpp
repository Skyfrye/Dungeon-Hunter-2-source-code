#include "connection_manager_for_tests.hpp"  // real CConnectionManager and transport manager (AddServer asks it for host names)
// Test for the two packet callbacks of CMatchingGLLive: BroadcastPacketReceiverCallback (0x821188)
// and sBroadcastPacketReceiverCallback (0x821218).
//
// What can be observed: the static forwarder's null guard and that it leaves CMatching::s_Matching
// alone, and that the callbacks do not change the member ids for type 2 (ProcessClientMessage, empty
// in the binary) or for unknown types. The type 1 branch runs ProcessServerMessage, a stub, so it also
// changes nothing observable here. The forward into the object itself cannot be observed, because the
// callee's effects are not reproduced yet.

#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


int main() {
    connection_manager_test::Initialize();
    CNetworkId from;
    char serverMessage[2] = {1, 0};
    char clientMessage[2] = {2, 0};
    char unknownMessage[2] = {7, 0};

    // No matching object: the static forwarder returns and leaves the pointer null.
    CMatching* saved = CMatching::s_Matching;
    CMatching::s_Matching = nullptr;
    CMatchingGLLive::sBroadcastPacketReceiverCallback(from, serverMessage, sizeof serverMessage);
    CMatchingGLLive::sBroadcastPacketReceiverCallback(from, clientMessage, sizeof clientMessage);
    CMatchingGLLive::sBroadcastPacketReceiverCallback(from, unknownMessage, sizeof unknownMessage);
    CHECK(CMatching::s_Matching == nullptr);

    // A live object: the forwarder reaches the object and leaves the member ids unchanged.
    {
        CMatchingGLLive matching;
        CMatching::s_Matching = &matching;
        const std::int32_t memberBefore = matching.MemberIdForTest();
        const std::int32_t serverBefore = matching.ServerMemberIdForTest();

        CMatchingGLLive::sBroadcastPacketReceiverCallback(from, clientMessage, sizeof clientMessage);
        CMatchingGLLive::sBroadcastPacketReceiverCallback(from, serverMessage, sizeof serverMessage);
        CMatchingGLLive::sBroadcastPacketReceiverCallback(from, unknownMessage, sizeof unknownMessage);
        CHECK(CMatching::s_Matching == &matching);
        CHECK(matching.MemberIdForTest() == memberBefore);
        CHECK(matching.ServerMemberIdForTest() == serverBefore);

        // The member version of the callback: type 2, an unknown type, then a one-byte type-1 message
        // (the stub, so nothing changes).
        matching.BroadcastPacketReceiverCallback(from, clientMessage, sizeof clientMessage);
        matching.BroadcastPacketReceiverCallback(from, unknownMessage, sizeof unknownMessage);
        matching.BroadcastPacketReceiverCallback(from, serverMessage, 1);
        CHECK(matching.MemberIdForTest() == memberBefore);
        CHECK(matching.ServerMemberIdForTest() == serverBefore);

        CMatching::s_Matching = nullptr;
    }

    CMatching::s_Matching = saved;
    std::printf("%s\n", failures == 0 ? "PASS" : "FAILED");
    return failures == 0 ? 0 : 1;
}
