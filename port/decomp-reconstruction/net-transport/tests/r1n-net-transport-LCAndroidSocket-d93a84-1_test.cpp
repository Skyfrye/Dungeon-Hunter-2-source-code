// Batch r1n-net-transport-LCAndroidSocket-d93a84-1: host cache, TransToIp, Clearup, GetLocalIP,
// Accept, and the constructor and destructor of LCAndroidSocket.
#include "net-transport/lc_android_socket.hpp"

#include <chrono>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <thread>

#ifdef _WIN32
#include <winsock2.h>
#else
#include <netdb.h>
#endif

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    LCAndroidSocket::Startup();
    {
        // GetHostIP: the first lookup goes to gethostbyname (its own struct is returned); the entry
        // is cached, and the next lookup of the same name returns the cached entry. The first
        // address is held as the four raw bytes.
        char name[] = "127.0.0.1";
        hostent* first = LCAndroidSocket::GetHostIP(name);
        CHECK(first != nullptr);
        hostent* cached = LCAndroidSocket::GetHostIP(name);
        CHECK(cached != nullptr);
        CHECK(cached != first);
        CHECK(cached == LCAndroidSocket::GetHostIP(name));
        CHECK(cached != nullptr && std::strcmp(cached->h_name, "127.0.0.1") == 0);
        const unsigned char loopback[4] = {127, 0, 0, 1};
        CHECK(cached != nullptr && std::memcmp(cached->h_addr_list[0], loopback, 4) == 0);
    }
    {
        // TransToIp: the name is released and replaced by the dotted address (inet_ntoa's buffer).
        char* name = new char[16];
        std::strcpy(name, "127.0.0.1");
        LCAndroidSocket::TransToIp(name);
        CHECK(name != nullptr);
        CHECK(name != nullptr && std::strcmp(name, "127.0.0.1") == 0);
    }
    // Clearup frees the cached entries. On _WIN32 it also calls WSACleanup, so Startup runs again
    // before any further socket or lookup call; a later lookup then caches a new entry.
    LCAndroidSocket::Clearup();
    LCAndroidSocket::Startup();
    {
        char name[] = "127.0.0.1";
        CHECK(LCAndroidSocket::GetHostIP(name) != nullptr);
    }
    {
        // GetLocalIP: the binary's LC_API_STRCHR is a stub that returns its argument, so the first
        // name byte of every AF_INET record is cleared, SIOCGIFFLAGS fails, and szLocalIP is never
        // written. On POSIX a successful call therefore leaves the buffer empty. (On _WIN32 the
        // gethostbyname substitute may write an address, so only the loopback check applies there.)
        LCAndroidSocket s(nullptr, 0, nullptr);
        char ip[64] = {};
        if (s.GetLocalIP(ip)) {
#ifdef _WIN32
            CHECK(std::strcmp(ip, "127.0.0.1") != 0);
#else
            CHECK(ip[0] == '\0');
#endif
        }
    }
    {
        // Accept: a client's TCP connection is accepted into a new object. The accepted socket is
        // bound to the listener's port.
        LCAndroidSocket listener(nullptr, 0, nullptr);
        CHECK(listener.CreateTcpSocket());
        CHECK(listener.Bind(nullptr, 0) == 0);
        listener.Listen(4);
        const std::uint16_t port = listener.GetSocketPort();
        CHECK(port != 0);

        LCAndroidSocket client(nullptr, 0, nullptr);
        CHECK(client.CreateTcpSocket());
        char loopback_text[] = "127.0.0.1";
        bool connected = false;
        for (int i = 0; i < 200 && !connected; ++i) {
            connected = client.ConnectTo(loopback_text, port);
            if (!connected) {
                std::this_thread::sleep_for(std::chrono::milliseconds(5));
            }
        }
        CHECK(connected);

        auto* accepted = dynamic_cast<LCAndroidSocket*>(listener.Accept());
        CHECK(accepted != nullptr);
        if (accepted != nullptr) {
            CHECK(accepted->GetSocketPort() == port);
            delete accepted;
        }
        CHECK(client.CloseSocket());
        CHECK(listener.CloseSocket());
    }
    {
        // The destructor joins a lookup worker that is still running (it must not terminate).
        auto* s = new LCAndroidSocket("example.test", 80, nullptr);
        char host[] = "localhost";
        CHECK(s->GetHostByName(host) == nullptr);
        delete s;
    }
    LCAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "lc_android_socket decomp: FAILED" : "lc_android_socket decomp: ok");
    return failures != 0;
}
