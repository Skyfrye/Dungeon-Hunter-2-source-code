#include "net-transport/csocket.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
using net_platform::NativeSocket;

NativeSocket MakeBoundSocket(int type) {
    NativeSocket s = ::socket(AF_INET, type, 0);
    sockaddr_in addr{};
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
    addr.sin_port = 0;
    ::bind(s, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));
    return s;
}
}  // namespace

int main() {
#ifdef _WIN32
    WSADATA data;
    ::WSAStartup(MAKEWORD(2, 2), &data);
#endif
    in_addr loopback{};
    loopback.s_addr = htonl(INADDR_LOOPBACK);

    {
        // UDP round trip through two wrapped sockets on loopback.
        CSocket a;
        CSocket b;
        a.Assign(static_cast<int>(MakeBoundSocket(SOCK_DGRAM)), 1);
        b.Assign(static_cast<int>(MakeBoundSocket(SOCK_DGRAM)), 0);
        CHECK(a.IsValid() && a.IsConnectedFlag());
        CHECK(a.GetLocalPort() != 0 && b.GetLocalPort() != 0);

        CHECK(a.SendTo(loopback, b.GetLocalPort(), "ping", 4) == 4);
        CHECK(b.DataAvailable(1000000));
        in_addr from{};
        std::uint16_t from_port = 0;
        char buf[16] = {};
        CHECK(b.ReceiveFrom(from, from_port, buf, sizeof(buf)) == 4);
        CHECK(std::memcmp(buf, "ping", 4) == 0);
        CHECK(from_port == a.GetLocalPort());
        CHECK(from.s_addr == loopback.s_addr);

        CHECK(b.Close() == 0);
        CHECK(!b.IsValid());
        CHECK(b.ReceiveFrom(from, from_port, buf, sizeof(buf)) == -1);
        CHECK(a.Close() == 0);
    }
    {
        // TCP: listen, connect, accept on loopback.
        CSocket server;
        server.Assign(static_cast<int>(MakeBoundSocket(SOCK_STREAM)), 2);
        CHECK(server.Listen() == 0);
        std::uint16_t port = server.GetLocalPort();
        CHECK(port != 0);

        CSocket client;
        client.Assign(static_cast<int>(::socket(AF_INET, SOCK_STREAM, 0)), 0);
        CHECK(client.Connect(loopback, port) == 0);
        CHECK(server.DataAvailable(1000000));
        in_addr peer{};
        std::uint16_t peer_port = 0;
        int accepted = server.Accept(peer, peer_port);
        CHECK(accepted >= 0);
        CHECK(peer.s_addr == loopback.s_addr);
        CHECK(peer_port != 0);
        if (accepted >= 0) {
            net_platform::CloseSocket(static_cast<NativeSocket>(accepted));
        }
        CHECK(client.Close() == 0);
        CHECK(server.Close() == 0);
    }
    std::printf("%s\n", failures ? "csocket: FAILED" : "csocket: ok");
    return failures != 0;
}
