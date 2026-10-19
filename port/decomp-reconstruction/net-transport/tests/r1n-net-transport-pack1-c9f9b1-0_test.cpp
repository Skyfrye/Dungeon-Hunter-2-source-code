// Tests for batch r1n-net-transport-pack1-c9f9b1-0: the paths that need no socket and no network.
// Covers the closed-socket returns of CUdp::Receive and CTcp::Receive, the type dispatch that
// does nothing for types outside 1..4, the no-presence case of ConnectTransport, the raw address
// words that GetHostname reads, and the no-op paths of the ConnectionLobby queue helpers.
#include <cstdint>
#include <cstdio>

#include "net-transport/connection_lobby.hpp"
#include "net-transport/ctcp.hpp"
#include "net-transport/cudp.hpp"
#include "net-transport/data_packet_lobby.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/transport_factory.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // CUdp::Receive on an unopened socket returns -1 and reads nothing.
    CUdp udp;
    CHECK(udp.Receive() == -1);

    // CTcp::Receive on an unopened socket: neither accept nor read happens, and it returns 0.
    CTcp tcp;
    CHECK(tcp.Receive() == 0);

    // CTransportFactory::InitializeTransport: types outside 1..4 do nothing and return 0.
    CHECK(CTransportFactory::InitializeTransport(0) == 0);
    CHECK(CTransportFactory::InitializeTransport(5) == 0);
    CHECK(CTransportFactory::InitializeTransport(-3) == 0);

    // CTransportFactory::ConnectTransport: an id with no presence flags starts nothing.
    CNetworkId none;
    none.Reset();
    CHECK(CTransportFactory::ConnectTransport(none) == 0);

    // GetHostname reads the raw address words. An absent address reads back as the stored words
    // (zero after Reset), and a present one returns its stored port and address.
    CNetworkId id;
    id.Reset();
    id.SetAddress0(0x1a78, 0x0100007fu);
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    CHECK(!id.GetAddress1(lo, hi));
    CHECK(lo == 0 && hi == 0);
    CHECK(id.GetAddress0(lo, hi));
    CHECK(lo == 0x1a78 && hi == 0x0100007fu);
    CHECK(id.Flags() == 2u);

    // ConnectionLobby: the queue helpers are no-ops with nothing queued and no retry copy.
    char host[] = "lobby.example";
    ConnectionLobby lobby(host, 9000);
    lobby.sendData();
    lobby.sendRetryData();
    lobby.saveRetryData(nullptr);
    lobby.sendRetryData();

    // A saved retry copy is sent again by sendRetryData without a socket (it is only queued).
    DataPacketLobby packet;
    packet.InitMessage(9);
    packet.packMessage();
    lobby.saveRetryData(&packet);
    lobby.sendRetryData();

    if (failures == 0) {
        std::printf("r1n-net-transport-pack1-c9f9b1-0 tests passed\n");
    }
    return failures == 0 ? 0 : 1;
}
