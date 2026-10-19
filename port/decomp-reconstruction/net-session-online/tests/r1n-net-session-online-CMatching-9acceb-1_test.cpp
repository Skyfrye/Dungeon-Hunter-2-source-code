// Test for CMatching::WritePacketData (0x8010a4, batch r1n-net-session-online-CMatching-9acceb-1) and for the
// review of CMatching::Get (0x800f8c, src/glx_320e98.cpp). Links against the whole library, as the other tests do.
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_bluetooth.hpp"
#include "net-session-online/c_matching_local.hpp"
#include "room_test_helpers.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/tb/c_net_player_manager.hpp"

#include <cstdint>
#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


// Test double: a server flag and a room of its own, so WritePacketData can be checked on another object.
class TestMatching : public CMatching {
public:
    bool server = false;
    CRoomAttributes room;

    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    std::uint32_t MemberBit(int memberId) const override {
        return (memberId >= 0 && memberId < 32) ? (1u << memberId) : 0u;
    }
    bool IsServer() const override { return server; }
    CRoomAttributes* GetRoomAttributes() override { return &room; }
};

int main() {
    // Get (0x800f8c): with no instance and provider 0, the first call builds the local matching object and
    // sets the provider to 1. The next call returns the same instance. This runs first, before Set.
    {
        CHECK(CMatching::s_Matching == nullptr);
        CHECK(CMatching::s_matchingProvider == 1);  // .data 0x99e234 starts at 1 (STUB-AUDIT)
        CMatching* first = CMatching::Get();
        CHECK(first != nullptr);
        CHECK(CMatching::s_matchingProvider == 1);
        CHECK(dynamic_cast<CMatchingLocal*>(first) != nullptr);
        CHECK(CMatching::Get() == first);
    }

    // Provider 2 builds a CMatchingBluetooth (a CMatchingLocal) and keeps it as the instance.
    {
        CMatching::Set(nullptr);
        CMatching::s_matchingProvider = 2;
        CMatching* bluetooth = CMatching::Get();
        CHECK(bluetooth != nullptr);
        CHECK(dynamic_cast<CMatchingBluetooth*>(bluetooth) != nullptr);
        CHECK(CMatching::s_Matching == bluetooth);
        CMatching::Set(nullptr);
        CMatching::s_matchingProvider = 1;
    }

    // WritePacketData (0x8010a4): the room's replicated block is enabled from IsServer() of the static
    // instance (NetStruct::SetEnabled, CRoomAttributes+0x08) before the room serializes, both sub-serializes
    // are OR-ed into the return value, and the room used is the one of the object it is called on. Neither
    // sub-serialize has anything to send here -- the room's NetStruct is enabled but every member was just
    // marked sent, and the static object's member elements were never enabled -- so the return is 0.
    {
        TestMatching server;
        server.server = true;
        TestMatching client;
        client.server = false;
        NetBitStream stream(64);

        TestMatching target;
        CMatching::Set(&server);
        target.room.m_netRoomAttributes.SetEnabled(false);
        CHECK(target.WritePacketData(0, 0, stream) == 0);
        CHECK(RoomNetEnabled(target.room));

        CMatching::Set(&client);
        target.room.m_netRoomAttributes.SetEnabled(true);
        CHECK(target.WritePacketData(0, 0, stream) == 0);
        CHECK(!RoomNetEnabled(target.room));
    }
    CMatching::Set(nullptr);

    if (failures == 0) std::printf("r1n-net-session-online-CMatching-9acceb-1 tests: all passed\n");
    return failures == 0 ? 0 : 1;
}
