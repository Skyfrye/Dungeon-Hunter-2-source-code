#include "net-transport/lc_android_socket.hpp"

#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    LCAndroidSocket::Startup();
    {
        // Fresh object: no handle, not ready, nothing to select.
        LCAndroidSocket s(nullptr, 0, nullptr);
        s.Init();
        CHECK(!s.IsReadyForRW());
        CHECK(s.Select(LCAndroidSocket::kSelectRead) == -1);
        CHECK(s.SendTo("x", 1, nullptr, 0) == 0);
        CHECK(s.CloseSocket());
    }
    {
        // Two UDP sockets on loopback: A sends to B, B polls and receives.
        LCAndroidSocket a(nullptr, 0, nullptr);
        LCAndroidSocket b(nullptr, 0, nullptr);
        CHECK(a.CreateUdpSocket());
        CHECK(b.CreateUdpSocket());
        CHECK(a.SetNonBlocking());
        CHECK(b.SetNonBlocking());
        CHECK(b.Bind(nullptr, 0) == 0);
        const std::uint16_t port_b = b.GetSocketPort();
        CHECK(port_b != 0);

        CHECK(b.Select(LCAndroidSocket::kSelectRead) == 0);
        CHECK(!b.IsReadyForRW());

        const char msg[] = "hello";
        CHECK(a.SendTo(msg, static_cast<int>(sizeof(msg)), "127.0.0.1", port_b) == static_cast<int>(sizeof(msg)));

        int ready = 0;
        for (int i = 0; i < 200 && ready == 0; ++i) {
            ready = b.Select(LCAndroidSocket::kSelectRead);
            if (ready == 0) {
                std::this_thread::sleep_for(std::chrono::milliseconds(5));
            }
        }
        CHECK(ready == 1);
        CHECK(b.IsReadyForRW());

        char buf[16] = {};
        CHECK(b.Recv(buf, sizeof(buf)) == static_cast<int>(sizeof(msg)));
        CHECK(std::strcmp(buf, "hello") == 0);

        CHECK(a.CloseSocket());
        CHECK(b.CloseSocket());
        CHECK(!b.IsReadyForRW());
    }
    {
        // Broadcast flag on a valid UDP socket, and the TCP and generic creators.
        LCAndroidSocket u(nullptr, 0, nullptr);
        CHECK(u.CreateUdpSocket());
        u.SetBroadcast();
        CHECK(u.CloseSocket());
        CHECK(u.CreateTcpSocket());
        CHECK(u.CloseSocket());
        CHECK(u.CreateSocket());
        CHECK(u.CloseSocket());
    }
    {
        // Host lookup: the first call starts the worker and returns null; once the worker has cached
        // the name, a later call returns the cached entry. The destructor joins the worker.
        LCAndroidSocket h(nullptr, 0, nullptr);
        char host[] = "localhost";
        CHECK(h.GetHostByName(host) == nullptr);
        bool cached = false;
        for (int i = 0; i < 400 && !cached; ++i) {
            cached = h.GetHostByName(host) != nullptr;
            if (!cached) {
                std::this_thread::sleep_for(std::chrono::milliseconds(5));
            }
        }
        CHECK(cached);
    }
    LCAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "lc_android_socket: FAILED" : "lc_android_socket: ok");
    return failures != 0;
}
