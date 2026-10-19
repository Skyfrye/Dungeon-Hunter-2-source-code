// Test for the CConnectionManager batch r1n-net-transport-CConnectionManager-5c506d-0.
// Covers the batch functions that run without the engine: transport lookups, member id lists,
// handshake dispatch by member id and key, disconnect bookkeeping, ping replies and the send
// wiring to CTransportManager. Engine-side effects (transport sockets, the matching server) are
// the test doubles in fake_matching.hpp and the connection/transport stand-ins.
#include "net-transport/connection_manager.hpp"
#include "net-transport/deps/transport_test_support.hpp"  // a transport manager without a receiver thread
#include "net-transport/tb/c_net_player_manager.hpp"  // CNetPlayerManager, for the stub below
#include "fake_matching.hpp"  // CMatching test double: member id n is bit n, local and server id 0

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


namespace {

// Writes one 16-byte handshake block (four little-endian words) into the stream.
void FillBlock(NetBitStream& stream, std::int32_t w0, std::int32_t w1, std::int32_t w2, std::int32_t w3) {
    const std::int32_t words[4] = {w0, w1, w2, w3};
    stream.WriteByteArray(words, sizeof(words));
}

// A ping packet: word 0 sequence, word 1 member id, word 2 timestamp, byte 12 reply flag.
void FillPing(char* ping, std::int32_t seq, std::int32_t member, std::int32_t timestamp, bool reply) {
    std::memset(ping, 0, 16);
    std::memcpy(ping + 0, &seq, 4);
    std::memcpy(ping + 4, &member, 4);
    std::memcpy(ping + 8, &timestamp, 4);
    ping[12] = reply ? 1 : 0;
}

}  // namespace

int main() {
    // A local instance before any initialisation: no transports, no connections.
    {
        CConnectionManager local;
        CHECK(local.GetTransportType(0) == 0);
        CHECK(local.GetTransportType(2) == 0);
        CHECK(local.GetTransportType(7) == 0);  // out of range: the port returns 0 (partial, see the source)
        CHECK(local.GetConnMemberIdList(true).empty());
        // A client (not the server) gets the server member id, which is 0 in the fake.
        CHECK(local.GetConnMemberIdList(false) == std::vector<int>{0});
        CHECK(local.GetConnectionCount(false) == 0);
    }

    // Singleton lifecycle.
    CHECK(!CConnectionManager::IsInitialized());
    CHECK((transport_test_support::Install(), CConnectionManager::Initialize()) == 0);
    CHECK(CConnectionManager::IsInitialized());
    CConnectionManager* cm = CConnectionManager::GetInstance();
    CHECK(cm != nullptr);

    // Connect: slot 3 (member id 3 is bit 3 in the fake).
    CNetworkId peer;
    CHECK(cm->Connect(3, peer) == 0);
    CConnection* c3 = cm->GetConnectionByMemberId(3);
    CHECK(c3 != nullptr);
    c3->SetState(4);
    CHECK(cm->IsConnected(3));

    // GetConnMemberIdList: a client sees the server member id; the server sees its connected slots.
    CHECK(cm->GetConnMemberIdList(true) == std::vector<int>{3});
    CHECK(cm->GetConnMemberIdList(false) == std::vector<int>{0});
    SetServerForTest(true);
    CHECK(cm->GetConnMemberIdList(false) == std::vector<int>{3});
    CHECK(cm->GetServerPing() == 0);  // the server has no server ping
    SetServerForTest(false);

    // Send wiring: no transport is connected to the peer, so CTransportManager::Send returns -1
    // for a point-to-point send. A broadcast on transport type 0 is not sent and returns 0.
    CNetworkId to;
    char payload[32] = {};
    CHECK(cm->SendTo(7, to, payload, 16) == -1);
    CHECK(cm->SendBroadcast(7, payload, 16) == 0);

    // Ping: a ping for member 3 is dispatched to its connection, and a ping with the reply flag is
    // answered on packet type 0 (no transport, so nothing is sent). Neither must crash.
    {
        CNetworkId from;
        char ping[16];
        FillPing(ping, 1, 3, 0, false);
        cm->PingReceiverCallback(from, ping, 16);
        FillPing(ping, 2, 3, 0, true);
        cm->PingReceiverCallback(from, ping, 16);
        FillPing(ping, 3, 99, 0, false);  // unknown member: nothing to dispatch to
        cm->PingReceiverCallback(from, ping, 16);
    }

    // ProcessConnectionRequest with a member id >= 0 accepts that member (slot 5), and the connection
    // enters the accept state (3).
    {
        CNetworkId from;
        NetBitStream stream(0x800);
        FillBlock(stream, 5, 0, 0x1234, 0);
        cm->ProcessConnectionRequest(from, stream);
        CConnection* c5 = cm->GetConnectionByMemberId(5);
        CHECK(c5 != nullptr);
        CHECK(c5 != nullptr && c5->State() == 3);
        CHECK(cm->GetConnectionCount(false) == 2);
    }

    // A negative member id with the key of connection 5 is accepted under member 5 again: no new slot.
    {
        CNetworkId from;
        NetBitStream stream(0x800);
        FillBlock(stream, -1, 0, 0x1234, 0);
        cm->ProcessConnectionRequest(from, stream);
        CHECK(cm->GetConnectionCount(false) == 2);
        CHECK(cm->GetConnectionByMemberId(5) != nullptr);
    }

    // A negative member id with an unknown key takes a new member id (the fake returns 0): slot 0.
    {
        CNetworkId from;
        NetBitStream stream(0x800);
        FillBlock(stream, -1, 0, 0x9999, 0);
        cm->ProcessConnectionRequest(from, stream);
        CHECK(cm->GetConnectionByMemberId(0) != nullptr);
        CHECK(cm->GetConnectionCount(false) == 3);
    }

    // Finalize and response packets: a mismatched first word changes nothing; a matching one is
    // handed to the connection. Neither must crash.
    {
        CNetworkId from;
        NetBitStream finalize(0x800);
        FillBlock(finalize, 77, 0, 0, 0);
        cm->ProcessConnectionFinalize(from, finalize);
        NetBitStream response(0x800);
        FillBlock(response, 77, 9, 0, 0);
        cm->ProcessConnectionResponse(from, response);
    }

    // Disconnect as a client. A peer other than the local member (0) is disconnected alone.
    CHECK(cm->Disconnect(3, false) == 0);
    CHECK(!cm->IsConnected(3));
    CHECK(cm->GetConnectionByMemberId(3)->State() == 1);

    // Disconnect of the local member id disconnects every connection (DisconnectAll).
    CHECK(cm->Disconnect(0, false) == 0);
    CHECK(cm->GetConnectionCount(true) == 0);

    // Disconnect as the server: a connected peer gets the disconnect message and is then dropped.
    {
        CConnection* c5 = cm->GetConnectionByMemberId(5);
        CHECK(c5 != nullptr);
        if (c5) {
            c5->SetState(4);
        }
        SetServerForTest(true);
        CHECK(cm->Disconnect(5, true) == 0);
        CHECK(!cm->IsConnected(5));
        SetServerForTest(false);
    }

    // Terminate tears the singleton down; a second Initialize starts from an empty table.
    CConnectionManager::Terminate();
    CHECK(!CConnectionManager::IsInitialized());
    CHECK(CConnectionManager::GetInstance() == nullptr);
    CHECK((transport_test_support::Install(), CConnectionManager::Initialize()) == 0);
    CHECK(CConnectionManager::GetInstance()->GetConnectionCount(false) == 0);
    CConnectionManager::Terminate();

    std::printf("%s\n", failures ? "r1n-net-transport-CConnectionManager-5c506d-0: FAILED"
                                 : "r1n-net-transport-CConnectionManager-5c506d-0: ok");
    return failures != 0;
}
