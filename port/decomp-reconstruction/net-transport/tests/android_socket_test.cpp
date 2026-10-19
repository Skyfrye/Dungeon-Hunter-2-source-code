#include "net-transport/android_socket.hpp"

#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CAndroidSocket::Startup();
    {
        // Fresh object: no handle, not ready.
        CAndroidSocket s("", 0, nullptr);
        s.Init();
        CHECK(!s.IsReadyForRW());
        CHECK(s.Select(CAndroidSocket::kSelectRead) == -1);
        CHECK(s.CloseSocket());
    }
    {
        // Two UDP sockets on loopback: A sends to B, B polls and receives.
        CAndroidSocket a("", 0, nullptr);
        CAndroidSocket b("", 0, nullptr);
        CHECK(a.CreateUdpSocket());
        CHECK(b.CreateUdpSocket());
        a.Bind(nullptr, 0);
        b.Bind(nullptr, 0);
        const std::uint16_t port_b = b.GetSocketPort();
        CHECK(port_b != 0);

        const char msg[] = "hello";
        a.SendTo(msg, static_cast<int>(sizeof(msg)), "127.0.0.1", port_b);

        int ready = 0;
        for (int i = 0; i < 200 && ready == 0; ++i) {
            ready = b.Select(CAndroidSocket::kSelectRead);
            if (ready == 0) {
                std::this_thread::sleep_for(std::chrono::milliseconds(5));
            }
        }
        CHECK(ready == 1);
        CHECK(b.IsReadyForRW());

        char buf[16] = {};
        const std::ptrdiff_t n = b.Recv(buf, sizeof(buf));
        CHECK(n == static_cast<std::ptrdiff_t>(sizeof(msg)));
        CHECK(std::strcmp(buf, "hello") == 0);

        CHECK(a.CloseSocket());
        CHECK(b.CloseSocket());
        CHECK(!b.IsReadyForRW());
    }
    {
        // Broadcast flag and GetLastError on a valid socket.
        CAndroidSocket u("", 0, nullptr);
        CHECK(u.CreateUdpSocket());
        u.SetBroadcast();
        u.CloseSocket();
    }
    CAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "android_socket: FAILED" : "android_socket: ok");
    return failures != 0;
}
