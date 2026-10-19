#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMatchingGLLive m;

    // Friend number lookup: a null list gives 0 for every index.
    CHECK(m.GetGLFriendsNumber(0) == 0);
    CHECK(m.GetGLFriendsNumber(-1) == 0);

    // With an empty friend list the count is 0, so every index is out of range.
    GLXPlayerUserFriend list;
    m.SetGLFriendListForTest(&list);
    CHECK(m.GetGLFriendsNumber(0) == 0);
    m.SetGLFriendListForTest(nullptr);

    // A null user object still reports success for the password request.
    CHECK(m.SendRequestLostPassword(const_cast<char*>("name")) == 1);

    // InitializeFriend without a friend list returns 0.
    CHECK(m.InitializeFriend() == 0);

    // Member id: the local id while the game runs, otherwise the GLLive lookup (-1 when signed out).
    m.SetMemberId(7);
    CMatchingGLLive::s_IsGameStarting = true;
    CHECK(m.GetMemberId() == 7);
    CMatchingGLLive::s_IsGameStarting = false;
    CHECK(m.GetGLLiveMemberId() == -1);
    m.SetGameCenterActiveForTest(true);
    CHECK(m.GetGLLiveMemberId() == -1);
    m.SetGameCenterActiveForTest(false);

    // SetPlayerParam with a value above 0x80 bytes is rejected and does not crash.
    m.SetPlayerParam(std::string(0x81, 'x'), false);
    m.SetPlayerParam(std::string("short"), false);

    if (failures == 0) std::printf("c_matching_gl_live_member_calls_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
