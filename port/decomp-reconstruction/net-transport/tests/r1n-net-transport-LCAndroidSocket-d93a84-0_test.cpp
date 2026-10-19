// Batch r1n-net-transport-LCAndroidSocket-d93a84-0: return values and state changes of the
// LCAndroidSocket functions in this batch, checked on loopback. Returns non-zero on failure.
#include "net-transport/lc_android_socket.hpp"

#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Polls Select on a read or write flag for up to about two seconds.
int WaitSelect(LCAndroidSocket& s, LCAndroidSocket::XSocketSelectFlag flag) {
    int ready = 0;
    for (int i = 0; i < 400 && ready == 0; ++i) {
        ready = s.Select(flag);
        if (ready == 0) {
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
    }
    return ready;
}

// A TCP listener on an ephemeral loopback port.
bool OpenListener(LCAndroidSocket& listener, std::uint16_t& port) {
    if (!listener.CreateTcpSocket()) {
        return false;
    }
    if (listener.Bind(nullptr, 0) != 0) {
        return false;
    }
    port = listener.GetSocketPort();
    listener.Listen(4);
    return port != 0;
}

// Bind returns the port it bound (retries + port), and GetSocketPort reads back the same port.
void TestBindReturnsBoundPort() {
    LCAndroidSocket s(nullptr, 0, nullptr);
    CHECK(s.CreateUdpSocket());
    const int got = s.Bind(nullptr, 49321);
    CHECK(got >= 49321);
    CHECK(s.GetSocketPort() == got);
    CHECK(s.CloseSocket());
}

// RecvFromUnkownIP returns the datagram size, a new[] copy of the sender address and the sender
// port. Nothing is written when no datagram is waiting.
void TestRecvFromUnkownIP() {
    LCAndroidSocket a(nullptr, 0, nullptr);
    LCAndroidSocket b(nullptr, 0, nullptr);
    CHECK(a.CreateUdpSocket());
    CHECK(b.CreateUdpSocket());
    CHECK(a.Bind(nullptr, 0) == 0);
    CHECK(b.Bind(nullptr, 0) == 0);
    const std::uint16_t port_a = a.GetSocketPort();
    const std::uint16_t port_b = b.GetSocketPort();

    CHECK(a.SendTo("ping", 4, "127.0.0.1", port_b) == 4);
    CHECK(WaitSelect(b, LCAndroidSocket::kSelectRead) == 1);
    char buf[16] = {};
    char* ip = nullptr;
    int port = -1;
    CHECK(b.RecvFromUnkownIP(buf, sizeof(buf), &ip, &port) == 4);
    CHECK(ip != nullptr && std::strcmp(ip, "127.0.0.1") == 0);
    CHECK(port == static_cast<int>(port_a));
    CHECK(std::strcmp(buf, "ping") == 0);
    delete[] ip;

    // Non-blocking, nothing pending: -1, and *ip and *port are left alone.
    CHECK(b.SetNonBlocking());
    char* none = nullptr;
    int none_port = 7;
    CHECK(b.RecvFromUnkownIP(buf, sizeof(buf), &none, &none_port) == -1);
    CHECK(none == nullptr);
    CHECK(none_port == 7);

    CHECK(a.CloseSocket());
    CHECK(b.CloseSocket());
}

// ConnectTo: the first call starts a non-blocking connect and returns false; a later call returns
// true once the connection has completed (state 2).
void TestConnectToCompletes() {
    LCAndroidSocket listener(nullptr, 0, nullptr);
    std::uint16_t port = 0;
    CHECK(OpenListener(listener, port));

    LCAndroidSocket client(nullptr, 0, nullptr);
    CHECK(client.CreateTcpSocket());
    char ip[] = "127.0.0.1";
    CHECK(!client.ConnectTo(ip, port));
    bool done = false;
    for (int i = 0; i < 400 && !done; ++i) {
        done = client.ConnectTo(ip, port);
        if (!done) {
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
    }
    CHECK(done);
    CHECK(client.CloseSocket());
    CHECK(listener.CloseSocket());
}

// ConnectByName resolves "127.0.0.1" through the lookup worker, then connects to the server port
// given to the constructor. It returns false until the connect completes.
void TestConnectByNameCompletes() {
    LCAndroidSocket listener(nullptr, 0, nullptr);
    std::uint16_t port = 0;
    CHECK(OpenListener(listener, port));

    LCAndroidSocket client(nullptr, static_cast<int>(port), nullptr);
    CHECK(client.CreateTcpSocket());
    char name[] = "127.0.0.1";
    bool done = false;
    for (int i = 0; i < 400 && !done; ++i) {
        done = client.ConnectByName(name);
        if (!done) {
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
    }
    CHECK(done);
    CHECK(client.CloseSocket());
    CHECK(listener.CloseSocket());
}

// Recv, Send and SetNonBlocking on a socket that is closed, and GetLastError after the failure.
void TestClosedSocketReturns() {
    LCAndroidSocket s(nullptr, 0, nullptr);
    char buf[4] = {};
    CHECK(s.Recv(buf, sizeof(buf)) == -1);
    CHECK(s.GetLastError() != 0);
    CHECK(s.Send(buf, sizeof(buf)) == -1);
    CHECK(!s.SetNonBlocking());
    CHECK(s.CloseSocket());
}

// SendBroadcast returns the sendto() result: the datagram size, or -1 when the network refuses
// the broadcast (no route on some hosts).
void TestSendBroadcastResult() {
    LCAndroidSocket u(nullptr, 0, nullptr);
    CHECK(u.CreateUdpSocket());
    u.SetBroadcast();
    const int sent = u.SendBroadcast("b", 1, 49400);
    CHECK(sent == 1 || sent == -1);
    CHECK(u.CloseSocket());
}

}  // namespace

int main() {
    LCAndroidSocket::Startup();
    TestBindReturnsBoundPort();
    TestRecvFromUnkownIP();
    TestConnectToCompletes();
    TestConnectByNameCompletes();
    TestClosedSocketReturns();
    TestSendBroadcastResult();
    LCAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "r1n-net-transport-LCAndroidSocket-d93a84-0: FAILED"
                                 : "r1n-net-transport-LCAndroidSocket-d93a84-0: ok");
    return failures != 0;
}
