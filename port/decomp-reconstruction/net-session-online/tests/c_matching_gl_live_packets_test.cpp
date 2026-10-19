#include "connection_manager_for_tests.hpp"  // real CConnectionManager and transport manager (AddServer asks it for host names)
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-transport/net_network_id.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    connection_manager_test::Initialize();
    // The callback must return for every message type, including the partial server branch
    // (type 1) and empty input. Type 2 hands the stream to ProcessClientMessage, a no-op here.
    CMatchingGLLive m;
    CNetworkId from;
    char serverMessage[2] = {1, 0};
    char clientMessage[2] = {2, 0};
    m.BroadcastPacketReceiverCallback(from, serverMessage, sizeof serverMessage);
    m.BroadcastPacketReceiverCallback(from, clientMessage, sizeof clientMessage);
    m.BroadcastPacketReceiverCallback(from, serverMessage, 0);
    CHECK(true);

    std::printf("%s\n", failures == 0 ? "PASS" : "FAILED");
    return failures == 0 ? 0 : 1;
}
