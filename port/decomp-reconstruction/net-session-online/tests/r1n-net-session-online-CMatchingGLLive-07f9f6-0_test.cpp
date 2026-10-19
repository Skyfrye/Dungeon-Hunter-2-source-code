// Batch r1n-net-session-online-CMatchingGLLive-07f9f6-0: the redo of the CMatchingGLLive bodies that
// the earlier partial pass left open. Each block checks one body against the Hex-Rays control flow.
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // InitializeFriend fetches the login singleton before the friend list check, so the login
    // singleton and its observer exist even when no friend list is set. Runs first: the singletons
    // are still null here.
    {
        CHECK(CMatchingGLLive::s_GLXPlayerLogin == nullptr);
        CMatchingGLLive m;
        CHECK(m.InitializeFriend() == 0);  // no friend list: nothing is requested
        CHECK(CMatchingGLLive::s_GLXPlayerLogin != nullptr);
        CHECK(CMatchingGLLive::s_GLXPlayerLoginObserver != nullptr);
    }

    // GetGLXPlayerUserFriend creates the friend list singleton and its friend observer on first use.
    {
        CHECK(CMatchingGLLive::s_GLXPlayerUserFriendObserver == nullptr);
        CMatchingGLLive m;
        CHECK(m.GetGLXPlayerUserFriend() != nullptr);
        CHECK(CMatchingGLLive::s_GLXPlayerUserFriendObserver != nullptr);
        CHECK(m.GetGLXPlayerUserFriend() == m.GetGLXPlayerUserFriend());
    }

    // GetRoomId: -1 while signed in (CSignIn +0x11), otherwise the observer's room id at +0x08 (-1 from its
    // constructor, until a create or join handler stores the host id). The lobby observer is created on first use.
    {
        CMatchingGLLive m;
        CSignIn* signIn = CSignIn::Get();
        CHECK(signIn != nullptr);
        signIn->SetLoggedInForTest(false);
        CHECK(m.GetRoomId() == -1);
        CHECK(CMatchingGLLive::s_GLXPlayerMPLobbyObserver != nullptr);
        signIn->SetLoggedInForTest(true);
        CHECK(m.GetRoomId() == -1);
        signIn->SetLoggedInForTest(false);
    }

    // GetMemberCount: outside a started game the count is 0 whatever the lobby flags are, because the
    // observer's member vector size is not modelled (the started branch returns 0 here too).
    {
        CMatchingGLLive m;
        CHECK(m.GetMemberCount() == 0);
        m.GetGLXPlayerMPLobbyObserver()->SetFlagsForTest(true, true, true);
        CHECK(m.GetMemberCount() == 0);  // game started, empty member vector
        tMemberInfo joined;
        joined.SetForTest(7, 0);
        joined.SetNameForTest("Alice");
        m.GetGLXPlayerMPLobbyObserver()->PushMemberForTest(joined);
        CHECK(m.GetMemberCount() == 1);  // the size of the member vector (0x81c524)
        CHECK(m.GetMemberName(7) == "Alice");
        CHECK(m.GetMemberName(8).empty());
        CHECK(m.IsInRoom(0) && !m.IsInRoom(1));
        m.GetGLXPlayerMPLobbyObserver()->SetFlagsForTest(false, false, false);
        CHECK(m.GetMemberCount() == 0);
    }

    // GetMemberByMemberId and GetGLLiveMemberIdList read the lobby observer member vector (one entry, id 7,
    // is pushed here: the destructor deletes the observer singleton, as the original does, so nothing is left over
    // from the block above): a missing id gives the observer invalid-member sentinel (id -1).
    {
        CMatchingGLLive m;
        tMemberInfo joined;
        joined.SetForTest(7, 0);
        joined.SetNameForTest("Alice");
        m.GetGLXPlayerMPLobbyObserver()->PushMemberForTest(joined);
        CHECK(m.GetMemberByMemberId(7) != nullptr && m.GetMemberByMemberId(7)->MemberId() == 7);
        CHECK(m.GetMemberByMemberId(3) != nullptr && m.GetMemberByMemberId(3)->MemberId() == -1);
        const std::vector<std::int32_t> ids = m.GetGLLiveMemberIdList();
        CHECK(ids.size() == 1 && ids[0] == 7);
        CHECK(CMatchingGLLive::s_GLXPlayerMPLobbyObserver != nullptr);
    }

    // The packet callbacks route to CMatching::s_Matching. With no singleton the static callback
    // returns without touching anything (the deviation is the null guard).
    {
        CMatching::Set(nullptr);
        char none[1] = {0};
        CMatchingGLLive::sPacketReceiverCallback(1, none, 0);
        CHECK(true);
    }

    // Type 4 (server change) reads a 4-byte member id after the type byte and stores it in the server
    // member id (+0x3644).
    {
        CMatchingGLLive m;
        CMatching::Set(&m);
        char serverChange[5] = {4, 42, 0, 0, 0};
        CMatchingGLLive::sPacketReceiverCallback(7, serverChange, sizeof serverChange);
        CHECK(m.ServerMemberIdForTest() == 42);
        CMatching::Set(nullptr);
    }

    // Type 5 (room status) reads 12 bytes after the type byte: bytes 0 and 1 are the status bytes,
    // bytes 4..7 and 8..11 are the two values.
    {
        CMatchingGLLive m;
        CMatching::Set(&m);
        char roomStatus[13] = {5, 7, 8, 9, 10, 1, 0, 0, 0, 2, 0, 0, 0};
        CMatchingGLLive::sPacketReceiverCallback(7, roomStatus, sizeof roomStatus);
        CHECK(m.RoomStatusForTest(0) == 7);
        CHECK(m.RoomStatusForTest(1) == 8);
        CHECK(m.RoomValue0ForTest() == 1);
        CHECK(m.RoomValue1ForTest() == 2);
        CMatching::Set(nullptr);
    }

    // The packet loss and acknowledgement paths run the base call and the member loop without faults.
    {
        CMatchingGLLive m;
        m.ProcessLostPacket(1, 2);
        m.ProcessAcknowledgedPacket(1, 2);
        CHECK(true);
    }

    std::printf("%s\n", failures == 0 ? "PASS" : "FAILED");
    return failures == 0 ? 0 : 1;
}
