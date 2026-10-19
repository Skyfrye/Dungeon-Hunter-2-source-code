#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/deps/stream_bytes.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)


int main() {
    // SendChangeServerMessage: type 4, point-to-point, then the local member id (4 bytes).
    {
        CMatchingLocal local;
        connection_manager_test::ResetForSends();
        connection_manager_test::ConnectPeer(3);  // SendToAll reaches connected peers only
        local.SetMemberId(6);
        CHECK(local.SendChangeServerMessage() == 0);
        CHECK(!SentPacketLog().empty());
        const auto& p = SentPacketLog().back();
        CHECK(p.packetType == 4);
        CHECK(!p.broadcast);
        CHECK(p.bytes.size() == 5);
        CHECK(p.bytes.size() == 5 && p.bytes[0] == 4);
        std::int32_t id = 0;
        if (p.bytes.size() == 5) std::memcpy(&id, p.bytes.data() + 1, 4);
        CHECK(id == 6);
    }

    // SendServerResponse: type 1 record of 40 bytes (listen id, member id, count, flag), then the serialized room attributes
    // (flags 7, the real CRoomAttributes), broadcast type 2.
    {
        CMatchingLocal local;
        connection_manager_test::ResetForSends();
        local.SetMemberId(7);
        NetBitStream attributes(0x800);
        local.GetRoomAttributes()->Serialize(attributes, 7);
        const std::size_t attributeBytes = StreamBytes(attributes).size();
        CHECK(attributeBytes > 0);
        const std::size_t total = 1 + 40 + attributeBytes;
        CHECK(local.SendServerResponse(true) == static_cast<std::int32_t>(8 + total));  // the 8-byte packet header and the payload
        const auto& p = SentPacketLog().back();
        CHECK(p.packetType == 2);
        CHECK(p.broadcast);
        CHECK(p.bytes.size() == total);
        if (p.bytes.size() == total) {
            CHECK(p.bytes[0] == 1);
            std::int32_t id = 0;
            std::memcpy(&id, p.bytes.data() + 1 + 28, 4);
            CHECK(id == 7);
            CHECK(p.bytes[1 + 36] == 1);  // flag
        }
    }

    // SendClientRequest: a single type-2 byte, broadcast.
    {
        CMatchingLocal local;
        connection_manager_test::ResetForSends();
        CHECK(local.SendClientRequest() == 9);        // the 8-byte packet header and the type byte
        const auto& p = SentPacketLog().back();
        CHECK(p.packetType == 2 && p.broadcast && p.bytes.size() == 1 && p.bytes[0] == 2);
    }

    // ProcessClientMessage answers when this is the server and the room is not hidden (vtable +0x58 is
    // IsRoomHidden). The constructor hides the room (Reset), so the room is opened first.
    {
        CMatchingLocal local;
        connection_manager_test::ResetForSends();
        local.SetMemberId(1);
        local.OpenRoom(true);
        NetBitStream stream(8);
        // serverMemberId_ is -2 until a change message arrives: no response.
        local.ProcessClientMessage(CNetworkId{}, stream);
        CHECK(SentPacketLog().empty());
        std::int32_t server = 1;
        NetBitStream change(8);
        change.WriteByteArray(&server, sizeof server);
        local.ProcessChangeServerMessage(0, change);
        local.ProcessClientMessage(CNetworkId{}, stream);
        CHECK(!SentPacketLog().empty());
        CHECK(SentPacketLog().back().packetType == 2);
    }

    // PacketReceiverCallback: type 4 goes to ProcessChangeServerMessage with the rest of the buffer.
    {
        CMatchingLocal local;
        std::uint8_t buffer[5] = {4, 0x2a, 0, 0, 0};
        local.PacketReceiverCallback(3, reinterpret_cast<char*>(buffer), sizeof buffer);
        CHECK(local.ServerMemberIdForTest() == 0x2a);
        std::uint8_t other[5] = {9, 0x11, 0, 0, 0};
        local.PacketReceiverCallback(3, reinterpret_cast<char*>(other), sizeof other);
        CHECK(local.ServerMemberIdForTest() == 0x2a);  // other types are ignored
    }

    // The static callbacks route to CMatching::s_Matching.
    {
        CMatchingLocal local;
        CMatching::s_Matching = &local;
        std::uint8_t buffer[5] = {4, 0x07, 0, 0, 0};
        CMatchingLocal::sPacketReceiverCallback(2, reinterpret_cast<char*>(buffer), sizeof buffer);
        CHECK(local.ServerMemberIdForTest() == 7);

        // Broadcast type 1 is a server record: it is added as a server (flag 0).
        RoomServerHeader header{};
        header.listenId.SetAddress0(5, 0);
        header.memberId = 9;
        header.memberCount = 1;
        std::uint8_t record[41];
        record[0] = 1;
        std::memcpy(record + 1, &header, sizeof header);
        connection_manager_test::ResetForSends();
        local.SetJoinThresholdForTest(10);
        CNetworkId from;
        CMatchingLocal::sBroadcastPacketReceiverCallback(from, reinterpret_cast<char*>(record), sizeof record);
        local.JoinRoomInternal(1);
        CHECK(connection_manager_test::ConnectionRequested(9));
        CMatching::s_Matching = nullptr;
    }

    std::printf("%s\n", failures ? "c_matching_local_messages: FAILED" : "c_matching_local_messages: ok");
    return failures != 0;
}
