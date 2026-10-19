#include "net-transport/bluetooth_transport.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CBluetoothReliable reliable;
    CBluetoothUnreliable unreliable;
    CHECK(reliable.GetType() == 4);
    CHECK(unreliable.GetType() == 3);

    // Initialize and Disconnect toggle the flag; a second Initialize fails.
    CHECK(reliable.Disconnect() == -1);
    CHECK(reliable.Initialize() == 0);
    CHECK(reliable.Initialize() == -1);
    CHECK(reliable.Disconnect() == 0);
    CHECK(unreliable.Initialize() == 0);
    CHECK(unreliable.Disconnect() == 0);

    CHECK(!reliable.IsListening());
    CNetworkId peer;
    CHECK(reliable.Send(peer, nullptr, 0) == -1);
    CHECK(reliable.Receive() == -1);
    CHECK(CBluetoothReliable::TerminateTransport() == 0);
    CHECK(CBluetoothUnreliable::TerminateTransport() == 0);

    // Connect needs an initialized transport; a repeated connect to the same peer is a no-op.
    {
        CBluetoothUnreliable link;
        CNetworkId target;
        CHECK(link.Connect(target) == -1);
        CHECK(link.Initialize() == 0);
        CHECK(link.Connect(target) == 0);
        CHECK(link.Connect(target) == 0);
    }
    // Create returns an initialized transport; deleting it runs the destructor.
    {
        CBluetoothUnreliable* made = CBluetoothUnreliable::Create(std::string("a"), std::string("b"), 1);
        CHECK(made != nullptr);
        CHECK(made != nullptr && made->GetType() == 3);
        delete made;
    }
    std::printf("%s\n", failures ? "bluetooth_transport: FAILED" : "bluetooth_transport: ok");
    return failures != 0;
}
