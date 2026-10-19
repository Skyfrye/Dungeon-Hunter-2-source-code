#include "connection_manager_for_tests.hpp"  // real CConnectionManager (the transcription calls the singleton)
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/deps/matching_queue.hpp"

#include <cstdint>
#include <cstdio>
#include <set>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Test double for the pure virtual slots of CMatching.
class TestMatching : public CMatching {
public:
    int localId = 0;
    int serverId = 0;
    bool server = false;
    CRoomAttributes room;

    int LocalMemberId() const override { return localId; }
    int ServerMemberId() const override { return serverId; }
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    bool IsInRoom() override { return true; }  // vtable +0x64 (was UnknownGate)
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    std::vector<int> ConnectedMemberIds() const override { return {}; }
    CRoomAttributes* GetRoomAttributes() override { return &room; }
    bool IsServer() const override { return server; }
    std::vector<int> ConnectionMemberIdList() const override { return {}; }
    bool IsConnectedMember(int memberId) const override { return connected.count(memberId) != 0; }
    void DisconnectMember(int memberId) override { connected.erase(memberId); }
    std::set<int> connected;

    void SetInitialized(bool value) { initialized_ = value; }
    bool Initialized() const { return initialized_; }
    void SetDirty(bool value) { roomMaskDirty_ = value; }
    bool Dirty() const { return roomMaskDirty_; }
    void SetCount(int count) { memberCount_ = count; }
};

static void Reset() {
    MatchingInternalEventQueue().Clear();
    MatchingOutputEventQueue().Clear();
}

// True when the queue holds the type; when it does, the first payload is read and the event consumed.
static bool Take(CEventQueueBase& queue, int type, std::int32_t& payload) {
    if (!queue.HasEventOccured(type, false)) return false;
    payload = -1;
    queue.GetEventData(type, &payload, 4);
    return queue.ConsumeEvent(type);
}

static bool Has(CEventQueueBase& queue, int type) {
    return queue.HasEventOccured(type, false);
}

int main() {
    // 0x800000 is forwarded to 0x400000 with its payload, and the internal event is consumed.
    {
        Reset();
        TestMatching m;
        std::int32_t value = 42;
        MatchingInternalEventQueue().AddEvent(0x800000, &value, 4);
        m.ProcessEvents();
        std::int32_t out = -1;
        CHECK(Take(MatchingOutputEventQueue(), 0x400000, out));
        CHECK(out == 42);
        CHECK(!Has(MatchingInternalEventQueue(), 0x800000));
    }

    // 0x800001 sets initialized_ and posts 0x400001.
    {
        Reset();
        TestMatching m;
        m.SetInitialized(false);
        MatchingInternalEventQueue().AddEvent(0x800001, nullptr, 0);
        m.ProcessEvents();
        CHECK(m.Initialized());
        CHECK(Has(MatchingOutputEventQueue(), 0x400001));
        CHECK(!Has(MatchingInternalEventQueue(), 0x800001));
    }

    // 0x800017 posts 0x400014. 0x800014 posts 0x400013. Both run without the initialized flag.
    {
        Reset();
        TestMatching m;
        m.SetInitialized(false);
        MatchingInternalEventQueue().AddEvent(0x800017, nullptr, 0);
        MatchingInternalEventQueue().AddEvent(0x800014, nullptr, 0);
        m.ProcessEvents();
        CHECK(Has(MatchingOutputEventQueue(), 0x400014));
        CHECK(Has(MatchingOutputEventQueue(), 0x400013));
    }

    // 0x800006 with a payload is forwarded as 0x40000c (initialized branch).
    {
        Reset();
        TestMatching m;
        m.SetInitialized(true);
        std::int32_t value = 7;
        MatchingInternalEventQueue().AddEvent(0x800006, &value, 4);
        m.ProcessEvents();
        std::int32_t out = -1;
        CHECK(Take(MatchingOutputEventQueue(), 0x40000c, out));
        CHECK(out == 7);
        CHECK(!Has(MatchingInternalEventQueue(), 0x800006));
    }

    // 0x800007 for a member that is not connected posts 0x40000d with the member id.
    {
        Reset();
        TestMatching m;
        m.SetInitialized(true);
        std::int32_t member = 9;
        MatchingInternalEventQueue().AddEvent(0x800007, &member, 4);
        m.ProcessEvents();
        std::int32_t out = -1;
        CHECK(Take(MatchingOutputEventQueue(), 0x40000d, out));
        CHECK(out == 9);
    }

    // 0x800007 for a connected member disconnects it (through the connection manager singleton) and posts nothing.
    {
        Reset();
        connection_manager_test::Reset();
        TestMatching m;
        m.SetInitialized(true);
        connection_manager_test::ConnectPeer(5);
        CHECK(CConnectionManager::GetInstance()->IsConnected(5));
        std::int32_t member = 5;
        MatchingInternalEventQueue().AddEvent(0x800007, &member, 4);
        m.ProcessEvents();
        CHECK(!CConnectionManager::GetInstance()->IsConnected(5));
        CHECK(!Has(MatchingOutputEventQueue(), 0x40000d));
    }

    // 0x800004 posts 0x400009 (reset set is not ported, the post is).
    {
        Reset();
        TestMatching m;
        m.SetInitialized(true);
        MatchingInternalEventQueue().AddEvent(0x800004, nullptr, 0);
        m.ProcessEvents();
        CHECK(Has(MatchingOutputEventQueue(), 0x400009));
    }

    // 0x80000b posts 0x400012 (the member flag loop is not ported).
    {
        Reset();
        TestMatching m;
        m.SetInitialized(true);
        m.SetCount(2);
        MatchingInternalEventQueue().AddEvent(0x80000b, nullptr, 0);
        m.ProcessEvents();
        CHECK(Has(MatchingOutputEventQueue(), 0x400012));
    }

    // Update runs ProcessEvents and sets the room mask dirty flag, then returns 0.
    {
        Reset();
        TestMatching m;
        m.SetInitialized(false);
        m.SetDirty(false);
        MatchingInternalEventQueue().AddEvent(0x800001, nullptr, 0);
        const int ret = m.Update();
        CHECK(ret == 0);
        CHECK(m.Initialized());
        CHECK(m.Dirty());
        CHECK(Has(MatchingOutputEventQueue(), 0x400001));
    }

    if (failures == 0) std::printf("e2-net-session-online-pack0-9acceb-0 tests: all passed\n");
    return failures == 0 ? 0 : 1;
}
