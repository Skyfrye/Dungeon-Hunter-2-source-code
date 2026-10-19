#include "net-session-online/c_matching_bluetooth.hpp"

#include <cstdio>
#include <cstring>
#include <string>

#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/bluetooth_socket.hpp"
#include "net-transport/deps/transport_test_support.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A listening transport of type 1 (UDP) with a local address, which counts the broadcasts it is asked to start.
class BroadcastCounter : public transport_test_support::RecordingTransport {
public:
    BroadcastCounter() : RecordingTransport(1) { create_flags_ = 1; }
    CNetworkId GetLocalNetworkId() override {
        CNetworkId id;
        id.Reset();
        id.SetAddress1(5, 7);
        return id;
    }
    void StartBroadcast() override { ++started; }
    int started = 0;
};

}  // namespace

int main() {
    CHECK(CMatchingBluetooth::GetTransportType(0) == 3);
    CHECK(CMatchingBluetooth::GetTransportType(1) == 4);
    CHECK(CMatchingBluetooth::GetTransportType(2) == 4);
    CHECK(CMatchingBluetooth::GetTransportType(3) == 0);
    CHECK(CMatchingBluetooth::GetTransportType(0xffffffffu) == 0);

    // SetServerBroadcast: EnableBroadcast with the listen id (the address of the one listening transport), which
    // that transport's local id equals, starts its broadcast.
    {
        transport_test_support::Install();
        CTransportManager::Initialize();
        transport_test_support::TestTransportManager* manager = transport_test_support::Install();
        auto* counter = new BroadcastCounter();
        manager->UseOnly(counter);
        CMatchingBluetooth bluetooth;
        bluetooth.SetServerBroadcast();
        CHECK(counter->started == 1);
        CTransportManager::Terminate();
    }

    // The device name that announces a room: Generate then Parse give the peer back.
    {
        tMatchingPeer peer;
        peer.memberId = 7;
        peer.name = "Hero";
        peer.roomAttributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_1, static_cast<std::int32_t>(0xFEEDABBAu));
        peer.roomAttributes.SetAttributeInt(ROOM_INT_ATTRIBUTE_4, 2);
        peer.roomAttributes.SetAttributeBin(ROOM_BIN_ATTRIBUTE_3, "Alice", 6);
        const std::string name = CMatchingBluetooth::GenerateBluetoothDeviceName(peer);
        CHECK(name.compare(0, 9, "Hero|m=7|") == 0);
        CHECK(name.find("|i_4=2|") != std::string::npos);
        CHECK(name.find("|b_3=Alice|") != std::string::npos);
        CHECK(name.back() == '|');
        tMatchingPeer parsed = CMatchingBluetooth::ParseBluetoothDeviceName(name);
        CHECK(parsed.name == "Hero");
        CHECK(parsed.memberId == 7);
        CHECK(parsed.rank == 1);
        CHECK(parsed.roomAttributes.GetAttributeInt(ROOM_INT_ATTRIBUTE_4) == 2);
        CHECK(parsed.roomAttributes.GetAttributeInt(ROOM_INT_ATTRIBUTE_1) == static_cast<std::int32_t>(0xFEEDABBAu));
        char alice[32] = {};
        parsed.roomAttributes.GetAttributeBin(ROOM_BIN_ATTRIBUTE_3, alice, 32);
        CHECK(std::strcmp(alice, "Alice") == 0);
        // Without the member field nothing past the name is parsed.
        tMatchingPeer bare = CMatchingBluetooth::ParseBluetoothDeviceName("Just a name");
        CHECK(bare.memberId == -1);
    }

    // ProcessEvents: a found device (0x1000001) is parsed, remembered by peer id and added as a server while a room search is
    // pending; the lost event (0x1000002) removes it again.
    {
        CMatchingBluetooth bluetooth;
        bluetooth.roomOperationPending_ = true;
        bluetooth.memberId_ = -1;
        CBluetoothSocketAbstract::s_eventQueue.Clear();
        MatchingInternalEventQueue().Clear();
        CMatchingBluetooth::s_peerNames.clear();
        tMatchingPeer peer;
        peer.memberId = 3;
        peer.name = "Host";
        const std::string deviceName = CMatchingBluetooth::GenerateBluetoothDeviceName(peer);
        char event[260] = {};
        std::strncpy(event, deviceName.c_str(), 255);
        const std::uint32_t peerId = 42;
        std::memcpy(event + 256, &peerId, sizeof peerId);
        CBluetoothSocketAbstract::s_eventQueue.AddEvent(0x1000001, event, sizeof event);
        bluetooth.ProcessEvents();
        CHECK(bluetooth.ServerCountForTest() == 1);
        CHECK(CMatchingBluetooth::s_peerNames.count(peerId) == 1);
        CHECK(MatchingInternalEventQueue().HasEventOccured(8388622, true));  // 0x80000e
        CBluetoothSocketAbstract::s_eventQueue.AddEvent(0x1000002, const_cast<std::uint32_t*>(&peerId), 4);
        bluetooth.ProcessEvents();
        CHECK(bluetooth.ServerCountForTest() == 0);
        CHECK(CMatchingBluetooth::s_peerNames.empty());
        CHECK(MatchingInternalEventQueue().HasEventOccured(8388623, true));  // 0x80000f
    }
    return failures == 0 ? 0 : 1;
}
