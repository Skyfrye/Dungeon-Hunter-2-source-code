// Test for batch r1n-net-session-online-COnline-d15511-0: the COnline session loop (disconnect event, ping,
// packets, clock sync, the singleton and the packet callback). Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialised once, SentPacketLog()
#include "net-session-online/c_online.hpp"
#include "net-session-online/deps/matching.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/deps/connection_env.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// The clock is set by the test. The COnline virtuals (GetAbsoluteTime) are the only ones it overrides.
class FakeOnline : public COnline {
public:
    std::int64_t GetAbsoluteTime() const override { return now; }
    std::int64_t now = 0;
};

// A matching object with fixed answers. The server flag is switched by the test.
class FakeMatching : public CMatching {
public:
    // Member ids 0..31 map to bits 0..31, as the connection table expects (GetMemberIndex is the lowest bit).
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    int LocalMemberId() const override { return 6; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return server; }
    std::uint32_t GetRoomMask() const override { return 0; }
    int Update() override { return 0; }  // the base update reads the room and member state, not under test
    bool server = false;
};

// The 12-byte sync packet: three 32-bit words.
void MakePacket(char (&out)[12], std::int32_t w0, std::int32_t w1, std::int32_t w2) {
    const std::int32_t words[3] = {w0, w1, w2};
    std::memcpy(out, words, sizeof(words));
}

// The 12-byte packet last handed to the connection layer, decoded into three words.
bool LastSentWords(std::int32_t (&words)[3]) {
    if (SentPacketLog().empty()) {
        return false;
    }
    const SentPacketRecord& record = SentPacketLog().back();
    if (record.bytes.size() != 12) {
        return false;
    }
    std::memcpy(words, record.bytes.data(), sizeof(words));
    return true;
}

// Event type and payload checks on the queue at +0x08.
void CheckSingleEvent(COnline& online, std::int32_t type, std::int32_t payload) {
    CHECK(online.EventsForTest().HasEventOccured(type, false));
    std::int32_t value = -1;
    online.EventsForTest().GetEventData(type, &value, sizeof(value));
    CHECK(value == payload);
}

}  // namespace

int main() {
    // ReportDisconnect: cause 0 or a set detail posts 0x500003 with the detail, else 0x500002 with the cause.
    {
        FakeOnline online;
        CHECK(online.ReportDisconnect(static_cast<COnline::tDisconnectCause>(2), 0) == 0);
        CheckSingleEvent(online, 0x500002, 2);
        CHECK(!online.EventsForTest().HasEventOccured(0x500003, false));
        online.EventsForTest().Clear();

        CHECK(online.ReportDisconnect(static_cast<COnline::tDisconnectCause>(0), 7) == 0);
        CheckSingleEvent(online, 0x500003, 7);
        CHECK(!online.EventsForTest().HasEventOccured(0x500002, false));
        online.EventsForTest().Clear();

        CHECK(online.ReportDisconnect(static_cast<COnline::tDisconnectCause>(2), 9) == 0);
        CheckSingleEvent(online, 0x500003, 9);
        online.EventsForTest().Clear();

        // Terminate clears the queue and returns the Clear result.
        online.ReportDisconnect(static_cast<COnline::tDisconnectCause>(2), 0);
        CHECK(online.Terminate() == 0);
        CHECK(!online.EventsForTest().HasEvents());
    }

    // Offline: ping is 0 and the packet loops do nothing that is observable.
    {
        FakeOnline online;
        CHECK(online.GetPing() == 0);
        online.SendPackets();
        CHECK(online.ReceivePackets() == 0);
    }

    // Initialize stores the clock at +0x20 once and registers packet type 1.
    {
        FakeOnline online;
        online.now = 1234;
        CHECK(online.Initialize() == 0);
        CHECK(online.StartTimeForTest() == 1234);
        CHECK(CConnectionManager::IsPacketTypeRegistered(1));
    }

    // Clock sync with the singleton. The clock starts at 1000, the sync samples arrive at 1010.
    {
        FakeMatching fake;
        CMatching::Set(&fake);
        connection_manager_test::Reset();
        connection_manager_test::ConnectPeer(0);  // the server member (ServerMemberId is 0)
        connection_manager_test::ConnectPeer(3);  // a client member that sends samples
        SentPacketLog().clear();

        FakeOnline online;
        online.now = 1000;
        COnline::s_Online = &online;
        online.SetIsOnlineGame(true);
        CHECK(online.Initialize() == 0);
        online.SetInitializedForTest(true);
        online.SetTimeSyncedForTest(false);
        CHECK(online.StartTimeForTest() == 1000);

        // Client, not synced: samples (sent 4, server 50) at receive time 10. Each round trip is 6.
        online.now = 1010;
        char packet[12];
        MakePacket(packet, 4, 50, 0);
        for (int i = 0; i < 19; ++i) {
            online.PacketReceiverCallback(3, packet, 12);
        }
        CHECK(!online.IsTimeSynced());
        CHECK(online.StartTimeForTest() == 1000);
        CHECK(SentPacketLog().size() == 19);  // below 20 samples each one asks for a sync
        std::int32_t sent[3] = {};
        CHECK(LastSentWords(sent));
        CHECK(sent[0] == 10);                 // the elapsed time since the start time
        CHECK(!SentPacketLog().empty() && SentPacketLog().back().packetType == 1);

        // The 20th sample: mean round trip 6, half is 3. Offset is server 50 - receive 10 + 3 = 43.
        online.PacketReceiverCallback(3, packet, 12);
        CHECK(online.StartTimeForTest() == 957);
        CHECK(online.IsTimeSynced());
        CHECK(SentPacketLog().size() == 19);

        // A synced client ignores samples.
        online.PacketReceiverCallback(3, packet, 12);
        CHECK(online.StartTimeForTest() == 957);
        CHECK(SentPacketLog().size() == 19);

        // Wrong size: the callback returns at once.
        SentPacketLog().clear();
        fake.server = true;
        online.PacketReceiverCallback(3, packet, 8);
        CHECK(SentPacketLog().empty());

        // Server echo: word 1 becomes the server's elapsed time (1030 - 957 = 73), sent back to the member.
        online.now = 1030;
        MakePacket(packet, 4, 0, 0);
        online.PacketReceiverCallback(3, packet, 12);
        CHECK(SentPacketLog().size() == 1);
        std::int32_t echo[3] = {};
        CHECK(LastSentWords(echo));
        CHECK(echo[0] == 4 && echo[1] == 73);
        CHECK(!SentPacketLog().empty() && SentPacketLog().back().packetType == 1);

        // Server SendSyncTime does nothing. Server SyncTime marks the clock synced.
        SentPacketLog().clear();
        online.SendSyncTime();
        CHECK(SentPacketLog().empty());
        online.SetTimeSyncedForTest(false);
        online.SyncTime();
        CHECK(online.IsTimeSynced());

        // Client SyncTime: not synced again, one sync request with the elapsed time (1100 - 957 = 143).
        fake.server = false;
        online.now = 1100;
        SentPacketLog().clear();
        online.SyncTime();
        CHECK(!online.IsTimeSynced());
        CHECK(SentPacketLog().size() == 1);
        CHECK(LastSentWords(sent));
        CHECK(sent[0] == 143);

        // Update: the resend fires only after more than 1000 ms since the request (start 957, sync 143).
        SentPacketLog().clear();
        online.now = 2100;                    // 2100 - 957 - 143 = 1000, not more than 1000
        online.Update(0.0f);
        CHECK(SentPacketLog().empty());
        online.now = 2101;                    // 1001, more than 1000
        online.Update(0.0f);
        CHECK(SentPacketLog().size() == 1);

        // Destroy terminates the singleton and deletes it through the virtual destructor.
        COnline::s_Online = nullptr;
        CMatching::Set(nullptr);
    }

    // Destroy on a heap singleton clears the pointer.
    {
        COnline::s_Online = new FakeOnline();
        COnline::Destroy();
        CHECK(COnline::s_Online == nullptr);
        COnline::Destroy();  // no singleton: nothing to do
        CHECK(COnline::s_Online == nullptr);
    }

    std::printf("%s\n", failures ? "r1n-net-session-online-COnline-d15511-0: FAILED" : "r1n-net-session-online-COnline-d15511-0: ok");
    return failures != 0;
}
