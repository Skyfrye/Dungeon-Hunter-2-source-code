// Test for the CMatchingGLLive bodies of batch r1n-net-session-online-CMatchingGLLive-07f9f6-1 that can run without
// the Gameloft Live services: GetFriendsList (0x81ec5c), SetGCState (0x81f178), SetPlayerParam (0x81f04c),
// Terminate (0x81f858), AddServer (0x820e7c) and IsInRoom(int) outside a started game (0x81ded4).
//
// What can be observed: the friend list stays empty without a friend observer; Game Center states 2 and 4 are
// stored only while the Game Center flag is set; the user parameter is kept at 0x80 bytes or less; Terminate
// clears the Game Center flag, so a later state change is ignored; AddServer adds a peer per address and updates
// the rank of a known address without a second entry.

#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_sign_in_gl_live.hpp"
#include "net-session-online/c_room_attributes.hpp"
#include "net-session-online/t_friend_info.hpp"
#include "net-transport/deps/transport_test_support.hpp"  // the transport manager AddServer asks for host names
#include "net-transport/net_network_id.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    transport_test_support::Install();
    // GetFriendsList: no friend observer (the port never creates +0x6704), so the list is empty even when a
    // friend list object is set.
    {
        CMatchingGLLive m;
        GLXPlayerUserFriend* friends = m.GetGLXPlayerUserFriend();
        m.SetGLFriendListForTest(friends);
        CHECK(m.GetFriendsList(false).empty());
        CHECK(m.GetFriendsList(true).empty());
    }

    // SetGCState: nothing changes unless the Game Center flag is set. State 2 becomes 4 when no Game Center
    // record exists (the record is null in the tests), and a repeated state is ignored.
    {
        CMatchingGLLive m;
        m.SetGCState(2);
        CHECK(m.GcStateForTest() == 0);

        m.SetGameCenterActiveForTest(true);
        m.SetGCState(2);
        CHECK(m.GcStateForTest() == 4);
        m.SetGCState(4);
        CHECK(m.GcStateForTest() == 4);
    }

    // State 1 posts event 1 on the login queue of the sign-in object when it is a CSignInGLLive.
    {
        CSignInGLLive signIn;
        CSignIn::SetInstanceForTest(&signIn);
        CMatchingGLLive m;
        m.SetGameCenterActiveForTest(true);
        m.SetGCState(1);
        CHECK(m.GcStateForTest() == 1);
        CHECK(signIn.LoginEvents().HasEventOccured(1, true));
        CSignIn::SetInstanceForTest(nullptr);
    }

    // SetPlayerParam without the lobby send: a 0x80-byte text is kept, a longer one is refused and the previous
    // text stays.
    {
        CMatchingGLLive m;
        m.SetPlayerParam(std::string("hello"), false);
        CHECK(m.PlayerParamForTest() == "hello");
        m.SetPlayerParam(std::string(0x81, 'x'), false);
        CHECK(m.PlayerParamForTest() == "hello");
        const std::string limit(0x80, 'y');
        m.SetPlayerParam(limit, false);
        CHECK(m.PlayerParamForTest() == limit);
    }

    // IsInRoom(int) outside a started game: the member count is 0 in the port, so no id is in the room.
    {
        CMatchingGLLive m;
        CHECK(!CMatchingGLLive::s_IsGameStarting);
        CHECK(!m.IsInRoom(0));
        CHECK(!m.IsInRoom(-1));
    }

    // AddServer: a new address adds a peer under the next key; the same address again updates the rank and keeps
    // one entry; a second address adds another entry.
    {
        CMatchingGLLive m;
        CNetworkId first;
        first.SetAddress0(7, 9);
        CNetworkId second;
        second.SetAddress0(8, 9);
        CRoomAttributes attributes;

        m.AddServer(5, first, 3, attributes);
        CHECK(m.ServersForTest().size() == 1);
        const auto& peer = m.ServersForTest().begin()->second;
        CHECK(peer.memberId == 5);
        CHECK(peer.rank == 3);

        m.AddServer(6, first, 4, attributes);
        CHECK(m.ServersForTest().size() == 1);
        CHECK(m.ServersForTest().begin()->second.memberId == 5);
        CHECK(m.ServersForTest().begin()->second.rank == 4);

        m.AddServer(9, second, 1, attributes);
        CHECK(m.ServersForTest().size() == 2);
        CHECK(m.NextPeerKeyForTest() == 2);
    }

    // Terminate: returns 0, clears the started flag and the Game Center flag, so a later Game Center state change
    // is ignored.
    {
        CMatchingGLLive m;
        m.SetGameCenterActiveForTest(true);
        m.SetInitializedForTest(true);
        CMatchingGLLive::s_IsGameStarting = false;
        CHECK(m.Terminate() == 0);
        CHECK(!CMatchingGLLive::s_IsGameStarting);
        m.SetGCState(2);
        CHECK(m.GcStateForTest() == 0);
    }

    if (failures == 0) {
        std::printf("r1n-net-session-online-CMatchingGLLive-07f9f6-1 test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
