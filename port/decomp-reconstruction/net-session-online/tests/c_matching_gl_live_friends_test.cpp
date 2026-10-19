#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CHECK(CMatchingGLLive::GetTransportType(0) == 1);
    CHECK(CMatchingGLLive::GetTransportType(1) == 2);
    CHECK(CMatchingGLLive::GetTransportType(2) == 1);
    CHECK(CMatchingGLLive::GetTransportType(3) == 0);

    // No friend list: count 0, every index out of range, invite sends nothing.
    CMatchingGLLive m;
    CHECK(m.GetGLFriendsCount() == 0);
    CHECK(m.GetGLFriendState(0) == -1);
    CHECK(m.GetGLFriendsName(0) == nullptr);
    CHECK(m.SendGLFriendInvite("someone") == 0);

    // An empty friend list: count 0, so the same index guards apply.
    // The matching object owns its friend service (the destructor deletes it), so the test hands over a heap object.
    auto* friends = new GLXPlayerUserFriend;
    m.SetGLFriendListForTest(friends);
    CHECK(m.GetGLFriendsCount() == 0);
    CHECK(m.GetGLFriendState(-1) == -1);
    CHECK(m.GetGLFriendState(0) == -1);
    CHECK(m.GetGLFriendsName(0) == nullptr);
    CHECK(m.GetGLFriendsName(-1) == nullptr);

    if (failures == 0) {
        std::printf("c_matching_gl_live_friends_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
