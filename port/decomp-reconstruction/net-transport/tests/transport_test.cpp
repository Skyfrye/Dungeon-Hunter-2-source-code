#include "net-transport/data_packet.hpp"
#include "net-transport/default_data_packet.hpp"
#include "net-transport/socket_abstract.hpp"
#include "net-transport/transport.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
class FakeSocket : public CSocketAbstract {
public:
    unsigned last_options = 0;
    bool connected = true;

protected:
    int SetSocketOptions(unsigned int options) override {
        last_options = options;
        return 0;
    }
    bool IsConnected() const override { return connected; }
};

// DataPacket declares its message slots pure (the original's slots are __cxa_pure_virtual), so the base's
// own bodies are tested through a concrete packet.
class BlankPacket : public DefaultDataPacket {};

// CTransport declares its slots pure as well (+0x0c Send, +0x10 Receive, +0x18..+0x2c); the base's own bodies
// (Connect, Disconnect, StartBroadcast, StopBroadcast) are tested through a transport that fills them in.
class ProbeTransport : public CTransport {
public:
    int Send(const CNetworkId&, const void*, int) override { return 0; }
    int Receive() override { return 0; }
    CNetworkId GetLocalNetworkId() override { return CNetworkId(); }
    CNetworkId GetPeerNetworkId() override { return CNetworkId(); }
    int GetType() override { return 9; }
    bool IsConnected() override { return true; }
    bool IsConnectedTo(const CNetworkId&) override { return true; }
    bool CanDisconnectFrom(const CNetworkId&) override { return true; }
};
}  // namespace

int main() {
    ProbeTransport t;
    CNetworkId peer;
    CHECK(t.Connect(peer) == 0);
    CHECK(t.Disconnect() == 0);
    t.StartBroadcast();
    t.StopBroadcast();

    BlankPacket p;
    CHECK(p.GetMessageType() == -1);
    CHECK(p.GetMMOMessageType() == -1);
    CHECK(p.addBlob(nullptr, 0) == 0);

    FakeSocket s;
    s.Assign(42, 7);
    CHECK(s.IsConnectedFlag() && s.IsValid() && s.Handle() == 42);
    CHECK(s.last_options == 7);
    s.connected = false;
    s.Assign(-1, 0);
    CHECK(!s.IsConnectedFlag());

    std::printf("%s\n", failures ? "transport: FAILED" : "transport: ok");
    return failures != 0;
}
