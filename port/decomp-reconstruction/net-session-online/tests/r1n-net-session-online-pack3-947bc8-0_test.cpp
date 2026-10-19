// Tests for batch r1n-net-session-online-pack3-947bc8-0: the GLXPlayerMPLobby send paths
// (join predefined, establish connection, disconnect) and the GLXPlayerPing probe state machine
// (Kernel with a send that succeeds or fails). Returns non-zero on any failure.
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "net-session-online/glx_player_ping.hpp"
#include "net-transport/android_socket.hpp"

#include <cstdio>
#include <map>
#include <memory>
#include <string>
#include <utility>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Counts the observer callbacks the lobby sends.
struct CountingObserver : GLXPlayerMPBaseObserver {
    int finish = 0;
    int leave = 0;
    void OnMPNetworkError(std::int32_t) override { ++finish; }
    void OnMPEstablishConnectionSuccess() override { ++leave; }
};

// A socket whose echo send result is fixed by the test and which counts the sends. It is a real CAndroidSocket
// with an open UDP socket (so the probe's select call has a valid handle) whose SendTo is replaced.
class EchoSocket : public CAndroidSocket {
public:
    explicit EchoSocket(std::int32_t sendResult)
        : CAndroidSocket(nullptr, 0, nullptr), sendResult_(sendResult) {
        CAndroidSocket::Startup();
        CreateUdpSocket();
    }
    int SendTo(const char* data, int length, const char* address, int port) override {
        (void)data; (void)length; (void)address; (void)port;
        ++sends;
        return sendResult_;
    }
    int sends = 0;

private:
    std::int32_t sendResult_;
};

// Join predefined: refused while the state is 1 or less; sent (pending, kind 14) otherwise.
void TestJoinPredefinedLobby() {
    CountingObserver obs;
    GLXPlayerMPLobby lobby(&obs, nullptr);
    char host[] = "lobby.local";
    char password[] = "pw";
    std::map<std::int32_t, std::string> names{{1, "alpha"}, {2, "beta"}};

    lobby.mpSendJoinPredefinedLobby(host, 4, password, 5, 6, names);
    CHECK(lobby.LastResultForTest() == 0x32);
    CHECK(obs.finish == 1);
    CHECK(!lobby.PendingForTest());

    lobby.AttachConnectionForTest();
    lobby.SetStateForTest(2);
    lobby.mpSendJoinPredefinedLobby(host, 4, password, 5, 6, names);
    CHECK(lobby.LastResultForTest() == -1);
    CHECK(lobby.PendingForTest());
    CHECK(lobby.PendingKindForTest() == 14);
    CHECK(obs.finish == 1);
}

// Establish connection: a non-zero state tells the observer (slot 2) and sets the result to 0;
// a zero state builds the connection and sets the result to -1.
void TestEstablishConnection() {
    CountingObserver obs;
    GLXPlayerMPLobby lobby(&obs, nullptr);

    lobby.SetStateForTest(1);
    lobby.mpSendEstablishConnection();
    CHECK(obs.leave == 1);
    CHECK(lobby.LastResultForTest() == 0);

    lobby.SetStateForTest(0);
    lobby.mpSendEstablishConnection();
    CHECK(obs.leave == 1);
    CHECK(lobby.LastResultForTest() == -1);
}

// Disconnect with no connection does nothing (the original returns the null connection).
void TestDisconnectWithoutConnection() {
    CountingObserver obs;
    GLXPlayerMPLobby lobby(&obs, nullptr);
    lobby.SetStateForTest(3);
    lobby.mpSendDisconnect();
    CHECK(lobby.mpIsInSession());
    CHECK(lobby.LastResultForTest() == 0);
    CHECK(!lobby.PendingForTest());
    CHECK(obs.finish == 0 && obs.leave == 0);
}

// Kernel state 1 (idle) returns 0 and keeps the state.
void TestKernelIdle() {
    GLXPlayerPing ping("probe.local", 7);
    CHECK(ping.StateForTest() == 1);
    CHECK(ping.ResultForTest() == -1);
    CHECK(ping.Kernel() == 0);
    CHECK(ping.StateForTest() == 1);
}

// Kernel state 3 with a failing send: LABEL_2, result -1, receive timer, state 5.
void TestKernelSendFailure() {
    GLXPlayerPing ping("probe.local", 7);
    ping.SetSocketForTest(std::make_unique<EchoSocket>(-1));
    ping.SetStateForTest(3);
    CHECK(ping.Kernel() == 0);
    CHECK(ping.StateForTest() == 5);
    CHECK(ping.ResultForTest() == -1);
}

// Kernel state 3 with a successful send: one echo request, then the wait step in the same call.
// The wait step finds no data on the open UDP socket and the send timer has not expired, so the state is 4.
void TestKernelSendSuccess() {
    GLXPlayerPing ping("probe.local", 7);
    auto socket = std::make_unique<EchoSocket>(48);
    EchoSocket* raw = socket.get();
    ping.SetSocketForTest(std::move(socket));
    ping.SetStateForTest(3);
    CHECK(ping.Kernel() == 0);
    CHECK(raw->sends == 1);
    CHECK(ping.StateForTest() == 4);
    CHECK(ping.ResultForTest() == -1);
}

}  // namespace

int main() {
    TestJoinPredefinedLobby();
    TestEstablishConnection();
    TestDisconnectWithoutConnection();
    TestKernelIdle();
    TestKernelSendFailure();
    TestKernelSendSuccess();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("r1n-net-session-online-pack3-947bc8-0 tests passed\n");
    return 0;
}
