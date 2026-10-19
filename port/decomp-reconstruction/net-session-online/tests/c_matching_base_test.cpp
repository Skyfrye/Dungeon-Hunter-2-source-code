#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/deps/matching_queue.hpp"

#include <algorithm>
#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Test double: member slot i holds the bit for member id i (MemberBit(id) = 1 << id).
class TestMatching : public CMatching {
public:
    int localId = 0;
    int serverId = 0;
    bool server = false;
    bool gate = true;
    std::vector<int> connectionIds;   // CConnectionManager::GetConnMemberIdList
    std::vector<int> connectedPeers;  // vtable +0x88 (used by GetRoomMask on the server)
    CRoomAttributes room;

    int LocalMemberId() const override { return localId; }
    int ServerMemberId() const override { return serverId; }
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    bool IsInRoom() override { return gate; }  // vtable +0x64 (was UnknownGate)
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    std::vector<int> ConnectedMemberIds() const override { return connectedPeers; }
    CRoomAttributes* GetRoomAttributes() override { return &room; }
    bool IsServer() const override { return server; }
    std::vector<int> ConnectionMemberIdList() const override { return connectionIds; }
    bool IsConnectedMember(int memberId) const override {
        return std::find(connectionIds.begin(), connectionIds.end(), memberId) != connectionIds.end();
    }

    // Test access to the protected layout.
    void SetCount(int count) { memberCount_ = count; }
    void SetDirty(bool dirty) { roomMaskDirty_ = dirty; }
    MemberInfoNetStruct& Slot(int index) { return members_[index]; }
};

// Drains the three event codes so each test starts from an empty queue.
static void DrainEvents() {
    while (MatchingInternalEventQueue().ConsumeEvent(0x800006)) {}
    while (MatchingInternalEventQueue().ConsumeEvent(0x800007)) {}
}

// Reads and consumes the first event of a type; returns false when none is queued.
static bool TakeEvent(int type, int& payload) {
    if (!MatchingInternalEventQueue().HasEventOccured(type, false)) return false;
    payload = -1;
    MatchingInternalEventQueue().GetEventData(type, &payload, 4);
    return MatchingInternalEventQueue().ConsumeEvent(type);
}

int main() {
    // SetRoomMemberAttibute copies the bytes into the slot of the member; GetRoomMemberAttibute returns them.
    {
        TestMatching m;
        m.SetCount(3);
        const std::uint8_t attr[] = {'a', 'b', 'c'};
        m.SetRoomMemberAttibute(1, attr, 3);
        std::uint8_t out[8] = {};
        CHECK(m.GetRoomMemberAttibute(1, out, sizeof out) == 3);
        CHECK(std::memcmp(out, attr, 3) == 0);
        // Member outside the count is not stored and reads 0.
        m.SetRoomMemberAttibute(5, attr, 3);
        CHECK(m.GetRoomMemberAttibute(5, out, sizeof out) == 0);
        // A null or zero-size set empties the buffer.
        m.SetRoomMemberAttibute(1, nullptr, 0);
        CHECK(m.GetRoomMemberAttibute(1, out, sizeof out) == 0);
    }

    // Room mask on a client: the server bit plus the local bit.
    {
        TestMatching m;
        m.localId = 2;
        m.serverId = 0;
        m.SetDirty(true);
        CHECK(m.GetRoomMask() == ((1u << 0) | (1u << 2)));
        // The cache is kept until the dirty flag is set again.
        m.localId = 5;
        CHECK(m.GetRoomMask() == ((1u << 0) | (1u << 2)));
        m.SetDirty(true);
        CHECK(m.GetRoomMask() == ((1u << 0) | (1u << 5)));
        // Bit test: every bit of the mask must be in the argument.
        CHECK(m.TestRoomMask((1u << 0) | (1u << 5) | (1u << 7)));
        CHECK(!m.TestRoomMask((1u << 0) | (1u << 7)));
    }

    // Room mask on the server: the server bit plus the bits of the connected peers (not the local one).
    {
        TestMatching m;
        m.server = true;
        m.localId = 0;
        m.serverId = 0;
        m.connectedPeers = {3, 4};
        m.SetDirty(true);
        CHECK(m.GetRoomMask() == ((1u << 0) | (1u << 3) | (1u << 4)));
    }

    // GetMemberIdList returns the ids of the slots that hold one (id >= 0), in slot order.
    {
        TestMatching m;
        m.SetCount(4);
        m.Slot(0).setId(-1);
        m.Slot(1).setId(7);
        m.Slot(2).setId(-1);
        m.Slot(3).setId(9);
        const std::vector<int> ids = m.GetMemberIdList();
        CHECK(ids.size() == 2);
        CHECK(ids.size() == 2 && ids[0] == 7 && ids[1] == 9);
    }

    // SetTeamId stores the team of the member; an unknown member is left alone.
    {
        TestMatching m;
        m.SetCount(2);
        m.SetTeamId(1, 200);
        CHECK(m.Slot(1).team() == 200);
        m.SetTeamId(9, 3);
        CHECK(m.Slot(0).team() == 0);
    }

    // UpdateMemberIdList on the server: connected members get a slot, the others lose theirs.
    {
        DrainEvents();
        TestMatching m;
        m.server = true;
        m.localId = 0;
        m.serverId = 0;
        m.SetCount(4);
        m.connectionIds = {2};
        m.UpdateMemberIdList();
        CHECK(m.Slot(0).id() == 0);  // local member, the server id
        CHECK(m.Slot(2).id() == 2);  // connected peer
        CHECK(m.Slot(1).id() == -1);
        int payload = -1;
        CHECK(TakeEvent(0x800006, payload) && payload == 0);
        CHECK(TakeEvent(0x800006, payload) && payload == 2);
        CHECK(!TakeEvent(0x800006, payload));

        // Peer 2 disconnects: its slot is cleared and event 0x800007 carries its old id.
        m.connectionIds.clear();
        m.UpdateMemberIdList();
        CHECK(m.Slot(2).id() == -1);
        CHECK(m.Slot(2).previousMemberId() == -1);
        CHECK(TakeEvent(0x800007, payload) && payload == 2);
        CHECK(!TakeEvent(0x800007, payload));
    }

    // UpdateMemberIdList with the gate closed does nothing.
    {
        DrainEvents();
        TestMatching m;
        m.gate = false;
        m.SetCount(2);
        m.Slot(1).setId(1);
        m.UpdateMemberIdList();
        CHECK(m.Slot(1).previousMemberId() == -1);
        int payload = 0;
        CHECK(!TakeEvent(0x800006, payload));
    }

    // ProcessLostPacket reaches the room attributes and then every member element's NetStruct slot +0x44.
    {
        TestMatching m;
        m.ProcessLostPacket(1, 2);
    }

    if (failures == 0) std::printf("c_matching_base_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
