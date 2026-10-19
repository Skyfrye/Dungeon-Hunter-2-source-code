#include "net-transport/connection_manager.hpp"
#include "net-transport/deps/transport_test_support.hpp"  // a transport manager without a receiver thread
#include "fake_matching.hpp"  // CMatching test double

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Packet type table: register, query, unregister.
    CHECK(!CConnectionManager::IsPacketTypeRegistered(3));
    CConnectionManager::RegisterPacketType(3, 1, [](int, char*, int) {});
    CHECK(CConnectionManager::IsPacketTypeRegistered(3));
    CHECK(CConnectionManager::UnregisterPacketType(3) == -1);
    CHECK(!CConnectionManager::IsPacketTypeRegistered(3));

    // Singleton and connection table.
    CHECK(!CConnectionManager::IsInitialized());
    CHECK((transport_test_support::Install(), CConnectionManager::Initialize()) == 0);
    CHECK(CConnectionManager::IsInitialized());
    CConnectionManager* cm = CConnectionManager::GetInstance();
    CHECK(cm != nullptr);
    CHECK(cm->GetConnectionCount(false) == 0);

    CNetworkId id;
    CHECK(cm->Connect(3, id) == 0);
    CHECK(cm->GetConnectionCount(false) == 1);
    CHECK(cm->GetConnectionCount(true) == 0);

    CConnection* conn = cm->GetConnectionByMemberId(3);
    CHECK(conn != nullptr);
    CHECK(cm->GetConnectionByMemberId(4) == nullptr);
    conn->SetState(4);
    CHECK(cm->IsConnected(3));
    CHECK(cm->GetConnectionCount(true) == 1);

    // Duplicate add is refused; a second Connect reuses the slot.
    CHECK(cm->AddConnection(3, conn) == -1);
    CHECK(cm->Connect(3, id) == 0);
    CHECK(cm->GetConnectionCount(false) == 1);

    cm->SetConnectionTimeouts(5000);
    CHECK(cm->KeepAliveConnections() == 0);
    CHECK(cm->GetImpl() == 0);

    // Disconnect as a client (not server): removes the peer.
    SetServerForTest(false);
    CHECK(cm->Disconnect(3, false) == 0);

    // Terminate tears the singleton down.
    CConnectionManager::Terminate();
    CHECK(!CConnectionManager::IsInitialized());
    CHECK(CConnectionManager::GetInstance() == nullptr);

    std::printf("%s\n", failures ? "connection_manager: FAILED" : "connection_manager: ok");
    return failures != 0;
}
