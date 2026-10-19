// Tests for the CMatchingGLLiveLobbyObserver list and state bodies (batch
// r1n-net-session-online-CMatchingGLLiveLobbyObserver-9d847a-0). The packet-reading handlers get an empty
// DefaultDataPacket: its string reads are the original stubs (they return 0), so the strings stay empty.
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/t_member_info.hpp"
#include "net-session-online/tb/t_gl_room_info.hpp"
#include "net-transport/default_data_packet.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static std::vector<std::int32_t> Ids(const CMatchingGLLiveLobbyObserver& lobby) {
    return lobby.GetMemberIdVector();
}

// A room record allocated on the heap with its name set. ClearRoomList and the destructor free it.
static tGLRoomInfo* NewRoomForTest(const char* name) {
    void* memory = std::malloc(sizeof(tGLRoomInfo));
    tGLRoomInfo* room = new (memory) tGLRoomInfo();
    room->SetNameForTest(name);
    return room;
}

int main() {
    // Constructed observer: empty lists, nothing found.
    CMatchingGLLiveLobbyObserver lobby;
    CHECK(lobby.StateForTest() == 0);
    CHECK(lobby.RoomCountForTest() == 0);
    CHECK(lobby.MemberCountForTest() == 0);
    CHECK(Ids(lobby).empty());
    CHECK(lobby.GetRoomIndexByName("hall") == -1);
    CHECK(lobby.GetMemberIndexByName("alpha") == -1);
    CHECK(lobby.GetMemberByMemberId(3) != nullptr);
    CHECK(lobby.GetMemberByMemberId(3)->MemberId() == -1);
    CHECK(lobby.GetMemberByMemberId(3) == lobby.GetMemberByMemberId(4));   // one sentinel

    // Members, in list order: ids 5, 7, 9 with names alpha, beta, gamma.
    tMemberInfo alpha(5), beta(7), gamma(9);
    alpha.SetNameForTest("alpha");
    beta.SetNameForTest("beta");
    gamma.SetNameForTest("gamma");
    beta.SetLaunchedForTest(true);
    gamma.SetLaunchedForTest(true);
    lobby.PushMemberForTest(alpha);
    lobby.PushMemberForTest(beta);
    lobby.PushMemberForTest(gamma);
    CHECK(lobby.MemberCountForTest() == 3);
    CHECK((Ids(lobby) == std::vector<std::int32_t>{5, 7, 9}));
    CHECK(lobby.GetMemberIndexByName("alpha") == 0);
    CHECK(lobby.GetMemberIndexByName("beta") == 1);
    CHECK(lobby.GetMemberIndexByName("gamma") == 2);
    CHECK(lobby.GetMemberIndexByName("delta") == -1);
    CHECK(lobby.GetMemberIndexByName(nullptr) == -1);
    CHECK(lobby.GetMemberByMemberId(9) != nullptr);
    CHECK(std::strcmp(lobby.GetMemberByMemberId(9)->Name(), "gamma") == 0);
    CHECK(lobby.GetMemberByMemberId(42)->MemberId() == -1);

    // SetPlayerParam writes the value of the member at the local index (+0x0c).
    lobby.SetLocalMemberIndexForTest(1);
    lobby.SetPlayerParam("hello");
    CHECK(lobby.GetMemberByMemberId(7)->Value() == "hello");
    CHECK(lobby.GetMemberByMemberId(5)->Value().empty());
    lobby.SetLocalMemberIndexForTest(-1);
    lobby.SetPlayerParam("negative");
    CHECK(lobby.GetMemberByMemberId(7)->Value() == "hello");
    lobby.SetLocalMemberIndexForTest(3);                 // past the end of the list
    lobby.SetPlayerParam("past");
    CHECK(lobby.GetMemberByMemberId(7)->Value() == "hello");
    CHECK(lobby.GetMemberByMemberId(9)->Value().empty());

    // CollapseMemberList keeps the launched entries, in order.
    lobby.CollapseMemberList();
    CHECK(lobby.MemberCountForTest() == 2);
    CHECK((Ids(lobby) == std::vector<std::int32_t>{7, 9}));
    CHECK(lobby.GetMemberIndexByName("alpha") == -1);
    CHECK(lobby.GetMemberByMemberId(7)->Value() == "hello");   // copies keep the value

    // Room list: lookup by name, then clear. ClearRoomList destroys and frees each record, so the
    // records are allocated on the heap, as the original allocates them (malloc here, matching CustomFree).
    tGLRoomInfo* hall = NewRoomForTest("hall");
    lobby.PushRoomForTest(hall);
    CHECK(lobby.RoomCountForTest() == 1);
    CHECK(lobby.GetRoomIndexByName("hall") == 0);
    CHECK(lobby.GetRoomIndexByName("nope") == -1);
    CHECK(lobby.GetRoomIndexByName(nullptr) == -1);
    lobby.ClearRoomList();
    CHECK(lobby.RoomCountForTest() == 0);
    CHECK(lobby.GetRoomIndexByName("hall") == -1);

    // Two rooms: the list empties from the back, and both records are released.
    lobby.PushRoomForTest(NewRoomForTest("lake"));
    lobby.PushRoomForTest(NewRoomForTest("cave"));
    CHECK(lobby.GetRoomIndexByName("lake") == 0);
    CHECK(lobby.GetRoomIndexByName("cave") == 1);
    lobby.ClearRoomList();
    CHECK(lobby.RoomCountForTest() == 0);

    // The destructor runs Terminate, which frees a populated room list: no record is left behind.
    {
        CMatchingGLLiveLobbyObserver scoped;
        scoped.PushRoomForTest(NewRoomForTest("attic"));
        CHECK(scoped.RoomCountForTest() == 1);
        scoped.SetFlagsForTest(true, true, true);
    }

    // OnMPLeaveSessionSuccess: flags, the -1 stores, the member list and the last result.
    lobby.SetFlagsForTest(true, true, true);
    lobby.OnMPLeaveSessionSuccess();
    CHECK(lobby.MemberCountForTest() == 0);
    CHECK(!lobby.GameStartedForTest());
    CHECK(lobby.LastResultForTest() == 0);

    // Join lobby launched: refused (-1) with 16 or more members, and no member is added.
    for (std::int32_t id = 0; id < 16; ++id) {
        tMemberInfo filler(id);
        lobby.PushMemberForTest(filler);
    }
    DefaultDataPacket packet;
    CHECK(lobby.OnMPProcessPushJoinLobbyLaunched(&packet) == -1);
    CHECK(lobby.MemberCountForTest() == 16);
    lobby.OnMPLeaveSessionSuccess();
    CHECK(lobby.OnMPProcessPushJoinLobbyLaunched(&packet) == 0);
    CHECK(lobby.MemberCountForTest() == 1);  // the joined entry (launched)

    // Session handlers (an empty packet: the reads give nothing).
    lobby.OnMPCreateSessionSuccess(&packet);
    CHECK(lobby.StateForTest() == 4);
    CHECK(lobby.GameStartedForTest());
    CHECK(lobby.LastResultForTest() == 0);

    lobby.OnMPJoinSessionSuccess(&packet);
    CHECK(lobby.StateForTest() == 5);
    CHECK(lobby.GameStartedForTest());

    lobby.OnMPListSessionSuccess(&packet);
    CHECK(lobby.StateForTest() == 7);
    CHECK(lobby.Flag07ForTest());
    CHECK(lobby.LastResultForTest() == 0);

    // Terminate: state 1, last result 0, flags cleared, room list cleared.
    lobby.SetFlagsForTest(true, true, false);
    lobby.Terminate();
    CHECK(lobby.StateForTest() == 1);
    CHECK(lobby.LastResultForTest() == 0);
    CHECK(!lobby.LoggedInForTest());
    CHECK(!lobby.ConnectedForTest());
    CHECK(lobby.RoomCountForTest() == 0);

    std::printf("%s\n", failures ? "r1n-net-session-online-CMatchingGLLiveLobbyObserver: FAILED"
                                 : "r1n-net-session-online-CMatchingGLLiveLobbyObserver: ok");
    return failures != 0;
}
