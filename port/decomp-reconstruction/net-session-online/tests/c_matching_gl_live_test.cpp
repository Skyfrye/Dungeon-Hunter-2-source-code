#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMatchingGLLive m;
    CHECK(m.MemberIdForTest() == 0);
    m.SetMemberId(12);
    CHECK(m.MemberIdForTest() == 12);
    CHECK(m.GenerateNewMemberId() == -1);
    CHECK(m.SendConnectRequestMessage(3, 4) == 0);
    CHECK(m.ReceiveInvitation() == 0);
    CHECK(m.GetInvitationRoomId() == 0);
    CHECK(m.CloseRoom() == 0);
    CHECK(m.OpenRoom(true) == 0);
    CHECK(m.HideRoom() == 0);
    CHECK(m.ShowRoom() == 0);
    CHECK(m.ProcessFriendEvents() == 0);
    m.InitGLFriends();

    CHECK(!m.IsRoomClosed());
    CHECK(!m.IsRoomHidden());
    m.SetRoomFlagsForTest(true, false);
    CHECK(m.IsRoomClosed());
    CHECK(!m.IsRoomHidden());

    CHECK(!m.GLFriendsListLoaded());
    m.GLFriendsListLoaded(true);
    CHECK(m.GLFriendsListLoaded());

    std::printf("%s\n", failures ? "c_matching_gl_live: FAILED" : "c_matching_gl_live: ok");
    return failures != 0;
}
