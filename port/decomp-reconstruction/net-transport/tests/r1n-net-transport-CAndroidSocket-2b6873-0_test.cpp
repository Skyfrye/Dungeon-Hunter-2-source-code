// Test for the CAndroidSocket batch r1n-net-transport-CAndroidSocket-2b6873-0 (loopback only).
// Covers Startup and Clearup, the host cache (GetHostByName and the static GetHostIP, the
// full-cache quirk and the name length limit), the TCP connect state machine (ConnectTo,
// ConnectByName and Connect against a listener on 127.0.0.1), and UDP SendTo, RecvFrom and
// RecvFromUnkownIP.
#include "net-transport/android_socket.hpp"

#include <chrono>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <thread>

namespace {

int failures = 0;

#define CHECK(c)                                                    \
    do {                                                            \
        if (!(c)) {                                                 \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); \
            ++failures;                                             \
        }                                                           \
    } while (0)

// Calls one connect step per iteration until it reports 1 (done), with a bounded wait.
template <typename Step>
bool DriveToDone(Step step) {
    for (int i = 0; i < 400; ++i) {
        if (step() == 1) {
            return true;
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(5));
    }
    return false;
}

// Sets up a TCP listener on an ephemeral loopback port and returns the port.
std::uint16_t StartListener(CAndroidSocket& listener) {
    listener.CreateTcpSocket();
    CHECK(listener.Bind(nullptr, 0) == 0);
    CHECK(listener.Listen(4) == 0);
    return listener.GetSocketPort();
}

void TestHostCache() {
    CAndroidSocket s("", 0, nullptr);
    CHECK(s.GetHostByName(nullptr) == nullptr);
    const std::string too_long(1025, 'a');
    CHECK(s.GetHostByName(const_cast<char*>(too_long.c_str())) == nullptr);

    // First lookup stores an entry; the same name hits the cache and gets the same entry.
    hostent* first = s.GetHostByName("127.0.0.1");
    CHECK(first != nullptr);
    CHECK(s.GetHostByName("127.0.0.1") == first);
    CHECK(CAndroidSocket::GetHostIP("127.0.0.1") == first);

    // Fill the remaining slots so the count reaches 4.
    CHECK(s.GetHostByName("127.0.0.2") != nullptr);
    CHECK(s.GetHostByName("127.0.0.3") != nullptr);
    hostent* fourth = s.GetHostByName("127.0.0.4");
    CHECK(fourth != nullptr);
    // Cache full: a new name returns the last cached entry in place of the new lookup.
    CHECK(s.GetHostByName("127.0.0.5") == fourth);
    // GetHostIP with a full cache returns the system entry and stores nothing new.
    CHECK(CAndroidSocket::GetHostIP("127.0.0.6") != nullptr);

    // Clearup empties the cache; the next lookup stores a fresh entry.
    CAndroidSocket::Clearup();
    CHECK(CAndroidSocket::Startup() == 0);
    CHECK(s.GetHostByName("127.0.0.1") != nullptr);
}

void TestUdp() {
    CAndroidSocket a("", 0, nullptr);
    CAndroidSocket b("", 0, nullptr);
    CHECK(a.CreateUdpSocket());
    CHECK(b.CreateUdpSocket());
    // Port 0 binds an ephemeral port on the first try, so Bind reports 0 retries.
    CHECK(a.Bind(nullptr, 0) == 0);
    CHECK(b.Bind(nullptr, 0) == 0);
    const std::uint16_t port_a = a.GetSocketPort();
    const std::uint16_t port_b = b.GetSocketPort();
    CHECK(port_a != 0);
    CHECK(port_b != 0);
    CHECK(b.SetBroadcast() == 0);

    const char msg[] = "dh2";
    const int len = static_cast<int>(sizeof(msg));

    // RecvFromUnkownIP returns the byte count and the sender address and port (host order).
    CHECK(a.SendTo(msg, len, "127.0.0.1", port_b) == len);
    char buf[16] = {};
    char* ip = nullptr;
    int from_port = 0;
    CHECK(b.RecvFromUnkownIP(buf, static_cast<int>(sizeof(buf)), &ip, &from_port) == len);
    CHECK(ip != nullptr && std::strcmp(ip, "127.0.0.1") == 0);
    CHECK(from_port == port_a);
    CHECK(std::strcmp(buf, msg) == 0);
    delete[] ip;

    // RecvFrom returns the byte count and drops the sender address.
    CHECK(b.SendTo(msg, len, "127.0.0.1", port_a) == len);
    char buf2[16] = {};
    CHECK(a.RecvFrom(buf2, static_cast<int>(sizeof(buf2))) == len);
    CHECK(std::strcmp(buf2, msg) == 0);

    // A null host sends nothing and returns 0.
    CHECK(a.SendTo(msg, len, nullptr, port_b) == 0);

    CHECK(a.CloseSocket());
    CHECK(b.CloseSocket());
}

void TestConnect() {
    CAndroidSocket listener("", 0, nullptr);
    const std::uint16_t port = StartListener(listener);
    CHECK(port != 0);

    // ConnectTo: the first call starts the connect and returns 0; later calls return 1 once done.
    CAndroidSocket client("", 0, nullptr);
    CHECK(client.CreateSocket());
    CHECK(client.ConnectTo("127.0.0.1", port) == 0);
    CHECK(DriveToDone([&] { return client.ConnectTo("127.0.0.1", port); }));
    CHECK(client.ConnectTo("127.0.0.1", port) == 0);  // done: the state machine does nothing more
    CHECK(client.Send("hi", 2) == 2);                  // the connected socket accepts data
    CHECK(client.CloseSocket());

    // ConnectByName: the port comes from the constructor (port_), the name is resolved first.
    CAndroidSocket by_name("127.0.0.1", port, nullptr);
    CHECK(by_name.CreateSocket());
    CHECK(by_name.ConnectByName("127.0.0.1", port) == 0);
    CHECK(DriveToDone([&] { return by_name.ConnectByName("127.0.0.1", port); }));
    CHECK(by_name.CloseSocket());

    // Connect with no resolved host fails and stays failed.
    CAndroidSocket nohost("", 0, nullptr);
    CHECK(nohost.CreateSocket());
    CHECK(nohost.Connect() == 0);
    CHECK(nohost.Connect() == 0);

    // A socket without a handle cannot connect, and it stays failed.
    CAndroidSocket closed("", 0, nullptr);
    CHECK(closed.ConnectTo("127.0.0.1", 9) == 0);
    CHECK(closed.ConnectTo("127.0.0.1", 9) == 0);
    CHECK(!closed.SetNonBlocking());

    CHECK(listener.CloseSocket());
}

}  // namespace

int main() {
    CHECK(CAndroidSocket::Startup() == 0);
    TestHostCache();
    TestUdp();
    TestConnect();
    CAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "r1n-net-transport-CAndroidSocket-2b6873-0: FAILED"
                                 : "r1n-net-transport-CAndroidSocket-2b6873-0: ok");
    return failures != 0;
}
