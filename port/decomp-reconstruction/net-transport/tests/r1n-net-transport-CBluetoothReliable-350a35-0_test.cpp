// Tests for the CBluetoothReliable functions of batch r1n-net-transport-CBluetoothReliable-350a35-0.
// Covers the state changes that run without the engine: Connect's initialized check, Listen's
// forward to Open, Create's initialize-then-open sequence, and InitializeTransport's partial stub.
#include "net-transport/bluetooth_transport.hpp"
#include "net-transport/deps/transport_test_support.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Connect needs an initialized transport (-1 otherwise), then returns 0 for a new peer and
    // for a peer that is already stored.
    CBluetoothReliable transport;
    CNetworkId peer;
    peer.Reset();
    CHECK(transport.Connect(peer) == -1);
    CHECK(transport.Initialize() == 0);
    CHECK(transport.Connect(peer) == 0);
    CHECK(transport.Connect(peer) == 0);
    CHECK(transport.Disconnect() == 0);
    CHECK(transport.Connect(peer) == -1);

    // Listen forwards to Open with channel 1 and returns Open's result (0).
    CBluetoothReliable listener;
    CHECK(listener.Listen("address", "name") == 0);
    CHECK(listener.Open("address", "name", 1) == 0);

    // Create builds a transport that is already initialized (its Initialize call ran first).
    CBluetoothReliable* created = CBluetoothReliable::Create("Default Bluetooth Session", "host", 1);
    CHECK(created != nullptr);
    if (created) {
        CHECK(created->GetType() == 4);
        CHECK(created->Initialize() == -1);
        CHECK(created->Disconnect() == 0);
        CHECK(created->Disconnect() == -1);
        delete created;
    }

    // The id getters return a reset id with presence bit 3 (flags 0x8) and field3 = 0.
    CNetworkId local = transport.GetLocalNetworkId();
    CNetworkId remote = transport.GetPeerNetworkId();
    CHECK(local.Flags() == 8 && local.Field3() == 0);
    CHECK(remote.Flags() == 8 && remote.Field3() == 0);

    // InitializeTransport builds the id with presence bit 3, asks the manager for the host name, creates the
    // "Default Bluetooth Session" transport, initialises it and adds it to the manager.
    transport_test_support::Install();
    CHECK(CBluetoothReliable::InitializeTransport() == 0);
    CHECK(transport_test_support::Install()->Count(4) == 1);
    CTransportManager::Terminate();

    std::printf("%s\n", failures ? "r1n-net-transport-CBluetoothReliable-350a35-0: FAILED"
                                 : "r1n-net-transport-CBluetoothReliable-350a35-0: ok");
    return failures ? 1 : 0;
}
