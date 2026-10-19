// Checks for the CMatching room-request batch: JoinRoom and CreateJoinRoom (messaging and player resets, the
// per-member reset, the virtual room call) and the member-table reads in GetMemberIdByIndex.
#include "net-session-online/c_matching_base.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"

#include <cstdint>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


namespace {

// Test double: member id i owns bit i of the room mask; the room calls record their arguments.
class RoomFake : public CMatching {
public:
    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 7; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    std::int32_t JoinRoomInternal(std::uint64_t roomId) override {
        joinedRoom = roomId;
        ++joinCalls;
        return 21;
    }
    std::int32_t CreateJoinRoomInternal(bool flag, CRoomAttributes& attributes) override {
        createFlag = flag;
        createAttribute = attributes.GetAttributeInt(ROOM_INT_ATTRIBUTE_0);
        return 22;
    }

    // Puts a non-reset state into member slot i.
    void Seed(int i, int id, int team, int previous) {
        members_[i].setId(id);
        members_[i].setTeam(static_cast<std::uint8_t>(team));
        const std::uint8_t bytes[3] = {1, 2, 3};
        members_[i].setRoomAttribute(bytes, sizeof bytes);
        members_[i].setPreviousMemberId(previous);
    }
    bool IsReset(int i) const {
        const MemberInfoNetStruct& m = members_[i];
        return m.id() == -1 && m.team() == 0 && m.roomAttribute().size == 0 &&
               m.previousMemberId() == -1;
    }

    std::uint64_t joinedRoom = 0;
    int joinCalls = 0;
    bool createFlag = false;
    int createAttribute = 0;
};

}  // namespace

int main() {
    // JoinRoom and CreateJoinRoom call GetNetPlayerMgr()->ResetPlayers(). The binary has the manager running by
    // then, so the test installs a local one the way the net-transport tests do.
    CNetPlayerManager playerManager;
    CNetPlayerManager* savedManager = CNetPlayerManager::s_playerManager;
    CNetPlayerManager::s_playerManager = &playerManager;
    CNetPlayerManager::UnregisterPlayerInfoFunctions();  // default CNetPlayerInfo factory for ResetPlayers

    // JoinRoom: every member slot is reset and the room id goes to the virtual call.
    RoomFake room;
    room.Seed(0, 5, 3, 5);
    room.Seed(2, 9, 1, -1);
    CHECK(room.GetMemberIdByIndex(0) == 5);
    const std::int32_t joinResult = room.JoinRoom(0x1122334455667788ull);
    CHECK(joinResult == 21);
    CHECK(room.joinCalls == 1);
    CHECK(room.joinedRoom == 0x1122334455667788ull);
    CHECK(room.IsReset(0));
    CHECK(room.IsReset(2));
    CHECK(room.IsReset(31));
    CHECK(room.GetMemberIdByIndex(0) == -1);

    // CreateJoinRoom: the attributes are copied, attribute 0 is set, and the flag reaches the virtual call.
    RoomFake created;
    created.Seed(1, 4, 2, 4);
    CRoomAttributes attributes;
    CHECK(attributes.GetAttributeInt(ROOM_INT_ATTRIBUTE_0) == 0);
    const std::int32_t createResult = created.CreateJoinRoom(true, attributes);
    CHECK(createResult == 22);
    CHECK(created.createFlag);
    CHECK(created.createAttribute == -1342128411);  // 0xB000BEE5
    CHECK(created.IsReset(1));
    CHECK(attributes.GetAttributeInt(ROOM_INT_ATTRIBUTE_0) == 0);  // the caller's copy is untouched

    // GetMemberIdByIndex: past the 32-slot table the port returns -1 (partial, see the ledger).
    CHECK(room.GetMemberIdByIndex(32) == -1);

    CNetPlayerManager::s_playerManager = savedManager;
    if (failures == 0) std::printf("r1n-net-session-online-CMatching-9acceb-0_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
