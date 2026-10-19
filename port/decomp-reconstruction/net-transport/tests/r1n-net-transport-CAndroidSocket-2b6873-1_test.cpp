// Accept (0x842360) and the constructor (0x84232c / 0x842430) on loopback.
#include "net-transport/android_socket.hpp"

#include <chrono>
#include <cstdio>
#include <cstring>
#include <thread>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// The original returns the new object even when accept() fails. Here the object exists and
// holds no handle, so it reports not ready and port 0.
static void TestAcceptWithoutListener() {
    CAndroidSocket idle("", 0, nullptr);
    auto* accepted = dynamic_cast<CAndroidSocket*>(idle.Accept());
    CHECK(accepted != nullptr);
    if (accepted != nullptr) {
        CHECK(!accepted->IsReadyForRW());
        CHECK(accepted->GetSocketPort() == 0);
        delete accepted;
    }
}

// A TCP client connects to a listening CAndroidSocket. Accept returns a socket on the accepted
// connection: it reads the client's bytes and its local port is the listener's port.
static void TestAcceptLoopback() {
    CAndroidSocket listener("", 0, nullptr);
    listener.CreateTcpSocket();
    listener.Bind(nullptr, 0);
    const std::uint16_t port = listener.GetSocketPort();
    CHECK(port != 0);
    CHECK(listener.Listen(4) == 0);

    CAndroidSocket client("", 0, nullptr);
    client.CreateTcpSocket();
    int state = 0;
    for (int i = 0; i < 400 && state != 1; ++i) {
        state = client.ConnectTo("127.0.0.1", port);
        if (state != 1) {
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
    }
    CHECK(state == 1);
    const char msg[] = "hi";
    CHECK(client.Send(msg, static_cast<int>(sizeof(msg) - 1)) == 2);

    auto* accepted = dynamic_cast<CAndroidSocket*>(listener.Accept());
    CHECK(accepted != nullptr);
    if (accepted != nullptr) {
        CHECK(accepted->GetSocketPort() == port);
        char buf[8] = {};
        CHECK(accepted->Recv(buf, static_cast<int>(sizeof(buf))) == 2);
        CHECK(std::strcmp(buf, "hi") == 0);
        delete accepted;
    }

    CHECK(client.CloseSocket());
    CHECK(listener.CloseSocket());
}

int main() {
    CAndroidSocket::Startup();
    TestAcceptWithoutListener();
    TestAcceptLoopback();
    CAndroidSocket::Clearup();
    std::printf("%s\n", failures ? "r1n-net-transport-CAndroidSocket-2b6873-1: FAILED"
                                 : "r1n-net-transport-CAndroidSocket-2b6873-1: ok");
    return failures != 0;
}
