#include "net-session-online/glx_player_ping.hpp"
#include "socket_test_doubles.hpp"

#include <cstdio>
#include <cstring>
#include <memory>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A socket that records the echo request and reports that the ICMP socket opened (vtable +0x74).
class RecordingSocket : public StubGLXSocket {
public:
    bool CreateIcmpSocket() override { return true; }
    int SendTo(const char* data, int length, const char* address, int port) override {
        std::memcpy(packet, data, static_cast<std::size_t>(length));
        sentLength = length;
        sentPort = port;
        sentAddressNull = address == nullptr;
        return length;
    }
    unsigned char packet[48] = {};
    std::int32_t sentLength = 0;
    std::int32_t sentPort = 0;
    bool sentAddressNull = false;
};

std::uint16_t Word(const unsigned char* at) {
    std::uint16_t value;
    std::memcpy(&value, at, sizeof(value));
    return value;
}

}  // namespace

int main() {
    GLXPlayerPing ping("192.0.2.1", 7);
    CHECK(ping.StateForTest() == 1);
    CHECK(ping.ResultForTest() == -1);
    CHECK(ping.SendTimeoutForTest().tv_usec == 5000);
    CHECK(ping.ReceiveTimeoutForTest().tv_sec == 0);

    // A socket that cannot open an ICMP socket: Prepare fails and the state stays at 1.
    ping.SetSocketForTest(std::make_unique<StubGLXSocket>());
    CHECK(ping.Prepare() == -1);
    CHECK(ping.StateForTest() == 1);
    CHECK(ping.Finish() == 0);
    CHECK(ping.StateForTest() == 1);

    // With a connected socket, Prepare returns 0 and moves to state 2.
    auto recording = std::make_unique<RecordingSocket>();
    RecordingSocket* raw = recording.get();
    ping.SetSocketForTest(std::move(recording));
    CHECK(ping.Prepare() == 0);
    CHECK(ping.StateForTest() == 2);

    CHECK(ping.SendEchoRequest() == 48);
    const unsigned char* p = raw->packet;
    CHECK(raw->sentLength == 48);
    CHECK(raw->sentPort == 7);
    CHECK(raw->sentAddressNull);
    CHECK(p[0] == 8 && p[1] == 0);
    CHECK(Word(p + 4) == 123);                 // identifier from the ctor
    CHECK(Word(p + 6) == 1);                   // first sequence number (nSeq starts at 1 in .data)
    CHECK(p[16] == 32 && p[47] == 63);         // payload pattern 0x20..0x3f
    std::uint32_t sum = 0;
    for (int i = 0; i < 48; i += 2) {
        sum += Word(p + i);
    }
    sum = (sum >> 16) + (sum & 0xffff);
    sum += (sum >> 16);
    CHECK((sum & 0xffff) == 0xffff);           // a packet with its checksum sums to all ones

    CHECK(ping.SendEchoRequest() == 48);
    CHECK(Word(raw->packet + 6) == 2);         // the sequence advances

    // A socket whose send fails sets the result to -1.
    GLXPlayerPing unconnected("192.0.2.2", 9);
    unconnected.SetSocketForTest(std::make_unique<StubGLXSocket>());
    CHECK(unconnected.SendEchoRequest() == -1);
    CHECK(unconnected.ResultForTest() == -1);

    std::printf("%s\n", failures ? "glx_player_ping: FAILED" : "glx_player_ping: ok");
    return failures != 0;
}
