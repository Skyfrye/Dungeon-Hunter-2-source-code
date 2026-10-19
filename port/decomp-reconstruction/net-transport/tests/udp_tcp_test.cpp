#include "net-transport/cudp.hpp"
#include "net-transport/deps/transport_test_support.hpp"
#include "net-transport/ctcp.hpp"

#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
using net_platform::NativeSocket;

// A plain UDP socket on loopback that the test reads from.
NativeSocket RawUdpOnLoopback(std::uint16_t& port) {
    NativeSocket s = ::socket(AF_INET, SOCK_DGRAM, 0);
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    addr.sin_port = 0;
    ::bind(s, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));
    socklen_t len = sizeof(addr);
    ::getsockname(s, reinterpret_cast<sockaddr*>(&addr), &len);
    port = ntohs(addr.sin_port);
    return s;
}
}  // namespace

int main() {
#ifdef _WIN32
    WSADATA data;
    ::WSAStartup(MAKEWORD(2, 2), &data);
#endif
    transport_test_support::Install();  // InitializeTransport registers with the manager singleton
    CHECK(CUdp::InitializeTransport() == 0);
    CHECK(CUdp::TerminateTransport() == 0);
    CHECK(CTcp::InitializeTransport() == 0);
    CHECK(CTcp::TerminateTransport() == 0);

    {
        // UDP: a send reaches a raw socket at the address in the peer id.
        std::uint16_t raw_port = 0;
        NativeSocket raw = RawUdpOnLoopback(raw_port);
        CUdp* udp = CUdp::CreateByPort(0, 0);
        CHECK(udp->GetType() == 1);
        CHECK(udp->IsConnected());

        CNetworkId local = udp->GetLocalNetworkId();
        CHECK((local.Flags() & 1) != 0);
        CHECK(local.Flags() == 1);

        CNetworkId peer;
        peer.Reset();
        peer.SetAddress1(raw_port, htonl(INADDR_LOOPBACK));
        CHECK(udp->IsConnectedTo(peer));   // the transport's own create flags (0 here) have bit 2 clear
        CHECK(udp->Send(peer, "hi", 2) == 2);

        char buf[8] = {};
        sockaddr_in from{};
        socklen_t from_len = sizeof(from);
        CHECK(::recvfrom(raw, buf, sizeof(buf), 0, reinterpret_cast<sockaddr*>(&from), &from_len) == 2);
        CHECK(std::memcmp(buf, "hi", 2) == 0);

        CNetworkId no_address;
        no_address.Reset();
        CHECK(udp->Send(no_address, "x", 1) == -1);
        CHECK(udp->CloseSocket() == 0);
        CHECK(udp->Send(peer, "hi", 2) == -1);
        delete udp;
        net_platform::CloseSocket(raw);
    }
    {
        // TCP: a listening transport accepts a connecting one on loopback.
        CTcp* server = CTcp::CreateByPort(0, 1);
        CNetworkId server_id = server->GetLocalNetworkId();
        CHECK((server_id.Flags() & 2) != 0);

        CTcp* client = CTcp::CreateByPort(0, 0);
        std::uint16_t server_port = 0;
        std::uint32_t server_addr = 0;
        CHECK(server_id.GetAddress0(server_port, server_addr));
        CNetworkId target;
        target.Reset();
        target.SetAddress0(server_port, htonl(INADDR_LOOPBACK));
        int rc = client->Connect(target);
        CHECK(rc == 0 || rc == 1);

        // Wait for the connection to complete, then let the server accept it.
        bool connected = false;
        for (int i = 0; i < 200 && !connected; ++i) {
            connected = client->IsConnected();
            if (!connected) std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
        CHECK(connected);
        for (int i = 0; i < 20; ++i) {
            CHECK(server->Receive() == 0);
            std::this_thread::sleep_for(std::chrono::milliseconds(2));
        }
        delete client;
        delete server;
    }
    std::printf("%s\n", failures ? "udp_tcp: FAILED" : "udp_tcp: ok");
    return failures != 0;
}
