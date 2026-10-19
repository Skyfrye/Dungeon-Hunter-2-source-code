#include "net-transport/bluetooth_transport.hpp"
#include "net-transport/deps/transport_test_support.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // A new reliable transport is not initialized and is not listening.
    CBluetoothReliable transport;
    CHECK(transport.GetType() == 4);
    CHECK(!transport.IsListening());

    // Connect fails until the transport is initialized.
    CNetworkId peer;
    peer.Reset();
    CHECK(transport.Connect(peer) == -1);
    CHECK(transport.Initialize() == 0);
    CHECK(transport.Initialize() == -1);
    CHECK(transport.Connect(peer) == 0);
    CHECK(transport.Connect(peer) == 0);

    // Open and Listen return 0 (the pseudocode does not reach the socket).
    CHECK(transport.Open("addr", "name", 1) == 0);
    CHECK(transport.Listen("addr", "name") == 0);

    // The id getters return a reset id with presence bit 3 (flags 0x8) and field3 = 0.
    CNetworkId local = transport.GetLocalNetworkId();
    CNetworkId remote = transport.GetPeerNetworkId();
    CHECK(local.Flags() == 8 && local.Field3() == 0);
    CHECK(remote.Flags() == 8 && remote.Field3() == 0);

    CHECK(transport.Disconnect() == 0);
    CHECK(transport.Disconnect() == -1);

    // Create builds an initialized transport through the same steps as the original.
    CBluetoothReliable* created = CBluetoothReliable::Create("first", "second", 3);
    CHECK(created != nullptr);
    if (created) {
        CHECK(created->GetType() == 4);
        delete created;
    }

    // The constructor with arguments behaves like the default one.
    CBluetoothReliable with_args(7, true);
    CHECK(with_args.Initialize() == 0);

    // InitializeTransport registers one default transport with the transport manager (the singleton), once.
    transport_test_support::Install();
    CHECK(CBluetoothReliable::InitializeTransport() == 0);
    CHECK(CBluetoothReliable::InitializeTransport() == 0);  // the flag is set: nothing more is added
    CHECK(transport_test_support::Install()->Count(4) == 1);
    CTransportManager::Terminate();  // deletes the registered transport

    std::printf("%s\n", failures ? "bluetooth_reliable: FAILED" : "bluetooth_reliable: ok");
    return failures ? 1 : 0;
}
