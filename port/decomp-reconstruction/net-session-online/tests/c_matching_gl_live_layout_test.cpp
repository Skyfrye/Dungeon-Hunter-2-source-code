// Integrator decision 6: CMatchingGLLive derives from CMatching and declares its members at the
// original offsets. These checks cover the base slots, the constructor, Initialize, JoinRoomInternal,
// WritePacketData, CreateJoinRoomInternal and AddServer.
#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_gl_live.hpp"
#include "room_test_helpers.hpp"

#include <cstdio>
#include <cstring>
#include <type_traits>
#include <vector>

#include "net-session-online/c_lobby_parameter_and_query.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/glx_player_user.hpp"
#include "net-session-online/member_mask.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static_assert(std::is_base_of<CMatching, CMatchingGLLive>::value, "CMatchingGLLive derives from CMatching");

namespace {
struct NullObserver : GLXPlayerMPBaseObserver {};

// Runs a lobby that accepts requests (state 2) and installs it as the singleton.
// The lobby is a heap object: the matching object deletes the singleton it owns when it is destroyed (as in the original), so
// a stack lobby would be freed by mistake. A fixture that outlives the matching object finds the pointer already cleared.
struct LobbyFixture {
    NullObserver observer;
    GLXPlayerMPLobby& lobby;
    LobbyFixture() : lobby(*new GLXPlayerMPLobby(&observer, nullptr)) {
        lobby.AttachConnectionForTest();
        lobby.SetStateForTest(2);
        CMatchingGLLive::s_GLXPlayerMPLobby = &lobby;
    }
    ~LobbyFixture() { CMatchingGLLive::s_GLXPlayerMPLobby = nullptr; }  // a lobby the matching object did not delete leaks
};
}  // namespace

int main() {
    // The CMatching base slots are served by the GLLive methods (vtable +0x6c, +0x74, +0x84, +0x64, +0x88).
    {
        CMatchingGLLive m;
        CMatching& base = m;
        CMatchingGLLive::s_IsGameStarting = true;
        m.SetMemberId(20);
        CHECK(base.LocalMemberId() == 20);
        CHECK(base.ServerMemberId() == m.GetServerMemberId());
        CHECK(base.MemberBit(20) == static_cast<std::uint32_t>(MemberMaskForId(20)));
        CHECK(base.GetMemberIndex(20) == 1);       // ids 17..32 share bit 1
        CHECK(base.GetMemberIndex(3) == 0);        // ids 1..16 share bit 0
        CHECK(!base.IsInRoom());                // IsInRoom() is partial and answers false
        CHECK(base.ConnectedMemberIds().empty());  // CMatching::GetMemberIdList over empty slots
        CHECK(base.GetRoomAttributes() == m.GetRoomAttributes());
        CMatchingGLLive::s_IsGameStarting = false;
    }

    // IsServer: the base rule (initialized, local id equals the server id) through the GLLive ids.
    {
        CMatchingGLLive m;
        CMatchingGLLive::s_IsGameStarting = true;
        m.SetMemberId(1);
        CMatchingGLLive::s_IsGameStarting = true;
        NetBitStream stream(4);
        std::int32_t serverId = 1;
        stream.WriteByteArray(&serverId, sizeof serverId);
        m.ProcessChangeServerMessage(0, stream);
        CHECK(!m.IsServer());  // not initialized yet
        m.SetInitializedForTest(true);
        CHECK(m.IsServer());
        m.SetMemberId(2);
        CHECK(!m.IsServer());
        CMatchingGLLive::s_IsGameStarting = false;
        MatchingInternalEventQueue().Clear();
    }

    // Constructors: the (bool) constructor sets the local member id to -1 and the base byte +0x0f to 3.
    {
        CMatchingGLLive plain;
        CHECK(plain.MemberIdForTest() == 0);
        CHECK(plain.UnkByte0fForTest() == 0);
        CMatchingGLLive built(true);
        CHECK(built.MemberIdForTest() == -1);
        CHECK(built.UnkByte0fForTest() == 3);
        CHECK(built.MemberCapacityForTest() == 0);
        CHECK(!built.IsRoomClosed());
        CHECK(!built.IsRoomHidden());
    }

    // Initialize: stores the capacity, builds the three services, registers the four packet types and
    // sets the server member id to 1. The status is -1 here: the GGI is empty, so no config request is sent.
    {
        connection_manager_test::Reset();
        MatchingInternalEventQueue().Clear();
        CMatchingGLLive m;
        CHECK(m.ServerConfigForTest() == nullptr);
        CHECK(m.Initialize(4) == -1);
        CHECK(m.MemberCapacityForTest() == 4);
        CHECK(m.ServerConfigForTest() != nullptr);
        CHECK(m.UserForTest() != nullptr);
        CHECK(m.LobbyQueryForTest() != nullptr);
        CHECK(m.ServerMemberIdForTest() == 1);
        CHECK(CConnectionManager::IsPacketTypeRegistered(2));
        CHECK(CConnectionManager::IsPacketTypeRegistered(3));
        CHECK(CConnectionManager::IsPacketTypeRegistered(9));
        CHECK(CConnectionManager::IsPacketTypeRegistered(4));
        connection_manager_test::Reset();
    }

    // Initialize on an initialized object: the base posts 0x400001 and Initialize returns 0 at once.
    {
        MatchingOutputEventQueue().Clear();
        CMatchingGLLive m;
        m.SetInitializedForTest(true);
        CHECK(m.Initialize(8) == 0);
        CHECK(m.ServerConfigForTest() == nullptr);
        CHECK(m.MemberCapacityForTest() == 0);
        CHECK(MatchingOutputEventQueue().HasEventOccured(0x400001, true));
    }

    // JoinRoomInternal: refused when the member count is above the capacity.
    {
        LobbyFixture fixture;
        CMatchingGLLive m;
        m.SetMemberCapacityForTest(-1);  // GetMemberCount() is 0 in the port
        CHECK(m.JoinRoomInternal(77) == -1);
        CHECK(m.RoomOpForTest() == 0);
        CHECK(fixture.lobby.PendingKindForTest() != 14);
    }

    // JoinRoomInternal: sends the join request, sets the room operation 9 and the room key, clears +0x3630.
    {
        LobbyFixture fixture;
        CMatchingGLLive m;
        m.SetMemberCapacityForTest(4);
        m.SetRoomOperationPendingForTest(true);
        m.SetPlayerParam("param", false);
        CHECK(m.PlayerParamForTest() == "param");
        CHECK(m.JoinRoomInternal(0x100000005ULL) == 0);
        CHECK(fixture.lobby.PendingKindForTest() == 14);  // join request
        CHECK(fixture.lobby.LastResultForTest() == -1);   // pending
        CHECK(m.RoomOpForTest() == 9);
        CHECK(m.RoomKeyForTest() == 5);  // low 32 bits of the 64-bit id
        CHECK(!m.RoomOperationPendingForTest());
    }

    // WritePacketData: the room attributes follow IsHost(); with no server flag only the local member's
    // element is enabled; as the server every element is enabled.
    //
    // These two CHECKs used to expect 0, with the reason "Nothing is written (net-transport)": that was true
    // only while CMatchingGLLive::MemberInfoNetStruct was a STAND-IN whose Serialize wrote nothing. The record
    // is now a real NetStruct (it holds one NetStructString<16> at +0x130, recovered from the ctor 0x81e680 and
    // the vtable 0x992768), so the member elements genuinely serialize and WritePacketData reports that data was
    // written. The return value is therefore 1; the 0 was an artefact of the old stand-in, not the original's
    // behaviour. The room-attribute and enabled-element assertions below are unchanged and still hold.
    {
        LobbyFixture fixture;
        CMatchingGLLive m;
        CMatchingGLLive::s_IsGameStarting = true;
        m.SetMemberId(20);  // member index 1
        NetBitStream stream(16);
        CHECK(m.WritePacketData(0, 0, stream) == 1);  // the real member records serialize now
        CHECK(!RoomNetEnabled(*m.GetRoomAttributes()));  // IsHost() is false
        for (int i = 0; i < CMatchingGLLive::kMemberInfoCount; ++i) {
            CHECK(m.MemberInfoForTest(i).Enabled() == (i == 1));
        }
        NetBitStream serverStream(4);
        std::int32_t serverId = 20;
        serverStream.WriteByteArray(&serverId, sizeof serverId);
        m.ProcessChangeServerMessage(0, serverStream);
        m.SetInitializedForTest(true);
        CHECK(m.IsServer());
        CHECK(m.WritePacketData(0, 0, stream) == 1);  // every element enabled, all serialize
        for (int i = 0; i < CMatchingGLLive::kMemberInfoCount; ++i) {
            CHECK(m.MemberInfoForTest(i).Enabled());
        }
        CMatchingGLLive::s_IsGameStarting = false;
        MatchingInternalEventQueue().Clear();
    }

    // CreateJoinRoomInternal: refused when signed out; otherwise the flag is stored negated and the
    // attributes are copied to +0x3650.
    {
        CSignIn* signIn = CSignIn::Get();
        CMatchingGLLive m;
        m.lobbyQuery_ = new CLobbyParameterAndQuery();  // Initialize creates it (the matching object deletes it)
        CRoomAttributes attributes;
        attributes.SetAttributeInt(RoomInt(3), 55);
        signIn->SetLoggedInForTest(false);
        CHECK(m.CreateJoinRoomInternal(true, attributes) == -1);
        CHECK(RoomGetInt(m.CreateRoomAttributesForTest(), 3) == 0);
        signIn->SetLoggedInForTest(true);
        CHECK(m.CreateJoinRoomInternal(true, attributes) == 0);
        CHECK(!m.Unk67ecForTest());
        CHECK(RoomGetInt(m.CreateRoomAttributesForTest(), 3) == 55);
        CHECK(m.CreateJoinRoomInternal(false, attributes) == 0);
        CHECK(m.Unk67ecForTest());
        signIn->SetLoggedInForTest(false);
    }

    // AddServer: a new address is inserted under the next key; the same address only refreshes the
    // time and the rank; the pending flag posts event 8388622 for a new entry.
    {
        MatchingInternalEventQueue().Clear();
        transport_test_support::HostnamesForTest().clear();
        CMatchingGLLive m;
        CNetworkId first;
        first.SetAddress0(0x11, 0);
        CNetworkId second;
        second.SetAddress0(0x22, 0);
        std::uint64_t key = 0;
        key = transport_test_support::HostnameKeyOf(first);
        transport_test_support::HostnamesForTest()[key] = "first.server";
        CRoomAttributes attributes;
        attributes.SetAttributeInt(RoomInt(1), 9);

        OnlineClockStorage() = 5000;
        m.AddServer(7, first, 3, attributes);
        CHECK(m.ServersForTest().size() == 1);
        CHECK(m.NextPeerKeyForTest() == 1);
        CHECK(!MatchingInternalEventQueue().HasEventOccured(8388622, true));
        {
            const auto& entry = m.ServersForTest().begin()->second;
            CHECK(m.ServersForTest().begin()->first == 0);
            CHECK(entry.memberId == 7);
            CHECK(entry.rank == 3);
            CHECK(entry.lastSeenMs == 5000);
            CHECK(entry.name == "first.server");
            CHECK(entry.address.IsEqual(first));
            CHECK(RoomGetInt(entry.roomAttributes, 1) == 9);
        }

        OnlineClockStorage() = 6000;
        m.AddServer(7, first, 5, attributes);
        CHECK(m.ServersForTest().size() == 1);
        CHECK(m.NextPeerKeyForTest() == 1);
        CHECK(m.ServersForTest().begin()->second.rank == 5);
        CHECK(m.ServersForTest().begin()->second.lastSeenMs == 6000);

        m.SetRoomOperationPendingForTest(true);
        m.AddServer(8, second, 1, attributes);
        CHECK(m.ServersForTest().size() == 2);
        CHECK(m.NextPeerKeyForTest() == 2);
        CHECK(m.ServersForTest().count(1) == 1);
        CHECK(MatchingInternalEventQueue().HasEventOccured(8388622, true));
        OnlineClockStorage() = 0;
        MatchingInternalEventQueue().Clear();
    }

    std::printf("%s\n", failures == 0 ? "c_matching_gl_live_layout: ok" : "c_matching_gl_live_layout: FAILED");
    return failures == 0 ? 0 : 1;
}
