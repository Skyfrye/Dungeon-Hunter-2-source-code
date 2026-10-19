// Tests for the CTransportManager bodies in net-transport/src/transport_manager.cpp
// (batch r1n-net-transport-CTransportManager-fbfc4f-0). Only logic that runs without a
// network or a transport is checked here: lifecycle, guards, empty-table answers and the
// receive framing rejections.
#include <cstdio>
#include <cstring>

#include "net-transport/deps/transport_test_support.hpp"
#include "net-transport/transport_manager.hpp"

namespace {
int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

// Packet header as ReceiverCallback reads it: magic (little endian) at +0, length at +4, type at +6.
void WriteHeader(char* packet, std::uint16_t length, std::uint8_t type) {
    const std::uint32_t magic = CTransportManager::kPacketMagic;
    std::memcpy(packet, &magic, 4);  // little-endian host; the port's ReadU32 assumes the same order
    packet[4] = static_cast<char>(length & 0xFF);
    packet[5] = static_cast<char>(length >> 8);
    packet[6] = static_cast<char>(type);
    packet[7] = 0;
}
}  // namespace

int main() {
    // Terminate with no instance does nothing.
    CTransportManager::Terminate();
    CHECK(CTransportManager::GetInstance() == nullptr);
    CHECK(!CTransportManager::IsInitialized());

    // Lifecycle: Initialize creates the singleton, InitializeInternal sets the flag and the timestamp.
    CHECK(CTransportManager::Initialize() == 0);
    CTransportManager* instance = CTransportManager::GetInstance();
    CHECK(instance != nullptr);
    CHECK(CTransportManager::IsInitialized());
    CHECK(instance->thread_timestamp() > 0);

    // A second Initialize keeps the same instance.
    CHECK(CTransportManager::Initialize() == 0);
    CHECK(CTransportManager::GetInstance() == instance);

    // Connect needs the initialized flag; with it, the prepared id goes to the factory and 0 comes back.
    CNetworkId peer;
    peer.SetAddress1(6776, 0x7f000001u);
    CHECK(instance->Disconnect(peer) == 0);  // empty table: nothing removed
    CHECK(instance->Connect(peer) == 0);
    instance->Receive();                    // one pass over an empty table
    instance->ReceiverThreadExecute();      // no main-thread block; no connection manager running: no crash

    // Keep-alive reply and broadcast helpers on an empty table do nothing.
    instance->EnableBroadcast(peer);
    instance->DisableBroadcast(peer);
    CHECK(instance->GetTransportByPeer(1, peer) == nullptr);
    CHECK(!instance->IsConnectedTo(peer));

    // Terminate tears the singleton down; a second Terminate is a no-op.
    CTransportManager::Terminate();
    CHECK(!CTransportManager::IsInitialized());
    CHECK(CTransportManager::GetInstance() == nullptr);
    CTransportManager::Terminate();
    CHECK(CTransportManager::GetInstance() == nullptr);

    // Without a singleton, transport availability: types 1 to 4 have no listening transport.
    CHECK(CTransportManager::IsTransportAvailable(9));       // outside 1..4: available
    CHECK(!CTransportManager::IsTransportAvailable(1));
    CHECK(!CTransportManager::IsTransportAvailable(3));

    // A standalone manager that was never initialized (the base is abstract: the test manager fills in the
    // receiver-thread and host-name slots, and runs no thread).
    transport_test_support::TestTransportManager manager;
    CHECK(manager.Connect(peer) == -1);
    CHECK(manager.Disconnect(peer) == 0);
    manager.Receive();                       // not initialized: no pass
    CHECK(manager.GetListenNetworkId(1).Flags() == 0);
    CHECK(manager.PrepareConnectionNetworkId(peer).IsEqual(peer));  // no connected transport: copy of the peer
    CHECK(!manager.IsMainThreadBlocked());

    // Send guards: an oversize payload and a missing transport both return -1.
    CHECK(manager.Send(static_cast<CTransport*>(nullptr), peer, 1, "x", 1) == -1);
    CHECK(manager.Send(static_cast<CTransport*>(nullptr), peer, 1, nullptr, 0xFF9) == -1);

    // Send by transport type: the default branch (types outside 1..4) sends nothing and returns 0. Types 1 to 4
    // build a broadcast id (address1, address0, field2 = -1, field3 = -1) and look for a transport of that type:
    // an empty table has none, so the send returns -1.
    CHECK(manager.Send(9, 1, "x", 1) == 0);
    CHECK(manager.Send(1, 1, "x", 1) == -1);
    CHECK(manager.Send(3, 1, "x", 1) == -1);
    CHECK(manager.Send(4, 1, "x", 1) == -1);

    // With a transport of the type, the packet is framed (8-byte header) and handed to it, broadcast id included.
    {
        SentPacketLog().clear();
        manager.AddTransport(new transport_test_support::RecordingTransport(3));
        manager.AddTransport(new transport_test_support::RecordingTransport(4));
        CHECK(manager.Send(3, 5, "xy", 2) == 10);
        CHECK(manager.Send(4, 6, "z", 1) == 9);
        CHECK(SentPacketLog().size() == 2);
        CHECK(SentPacketLog()[0].packetType == 5 && SentPacketLog()[0].broadcast &&
              SentPacketLog()[0].bytes.size() == 2);
        CHECK(SentPacketLog()[1].packetType == 6 && SentPacketLog()[1].broadcast);
        // The listening flag (create flags bit 0) and the local id decide GetListenNetworkId; a recorder
        // does not listen, so no id is listed, and IsConnectedTo answers true for any peer.
        CHECK(manager.GetListenNetworkId(3).Flags() == 0);
        CHECK(manager.IsConnectedTo(peer));
        CHECK(manager.GetTransportByPeer(3, peer) != nullptr);
        CHECK(manager.GetTransportByPeer(1, peer) == nullptr);
        manager.Disconnect(peer);  // CanDisconnectFrom is false for the recorders: both stay
        CHECK(manager.GetTransportByPeer(4, peer) != nullptr);
    }

    // ReceiverCallback framing: each buffer below is rejected before any dispatch.
    CNetworkId from;
    from.Reset();
    char buffer[16] = {0};
    CTransportManager::ReceiverCallback(nullptr, from, buffer, 0);      // nothing to read
    CTransportManager::ReceiverCallback(nullptr, from, buffer, 4);      // shorter than a header
    char bad_magic[16] = {0};
    bad_magic[4] = 16;                                                  // length fits, magic does not
    CTransportManager::ReceiverCallback(nullptr, from, bad_magic, 16);
    char zero_length[16] = {0};
    WriteHeader(zero_length, 0, 3);                                     // length below the header: no spin
    CTransportManager::ReceiverCallback(nullptr, from, zero_length, 16);
    char too_long[16] = {0};
    WriteHeader(too_long, 32, 3);                                       // length above the bytes received
    CTransportManager::ReceiverCallback(nullptr, from, too_long, 16);
    char flagged[16] = {0};
    WriteHeader(flagged, 12, 0x83);                                     // type bit 7 set
    CTransportManager::ReceiverCallback(nullptr, from, flagged, 12);

    // A valid unregistered packet is dispatched; with no connection manager and no registration,
    // sReceiverCallback only takes and releases its lock.
    char valid[12] = {0};
    WriteHeader(valid, 12, 3);
    CTransportManager::ReceiverCallback(nullptr, from, valid, 12);

    if (failures == 0) {
        std::printf("r1n-net-transport-CTransportManager-fbfc4f-0_test: ok\n");
    }
    return failures == 0 ? 0 : 1;
}
