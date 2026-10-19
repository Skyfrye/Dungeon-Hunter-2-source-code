#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // GetGLXPlayerUserFriend creates the singleton once and returns the same object afterwards.
    CMatchingGLLive m;
    GLXPlayerUserFriend* friendList = m.GetGLXPlayerUserFriend();
    CHECK(friendList != nullptr);
    CHECK(m.GetGLXPlayerUserFriend() == friendList);
    CHECK(CMatchingGLLive::s_GLXPlayerUserFriend == friendList);

    // GetGLXPlayerLogin behaves the same way.
    GLXPlayerLogin* login = m.GetGLXPlayerLogin();
    CHECK(login != nullptr);
    CHECK(m.GetGLXPlayerLogin() == login);

    // Terminate clears the Game Center flag and the GLLive started flag and returns 0.
    CMatchingGLLive::s_IsGameStarting = true;
    m.SetGameCenterActiveForTest(true);
    CHECK(m.Terminate() == 0);
    CHECK(!CMatchingGLLive::s_IsGameStarting);

    // The destructor clears the GLLive started flag.
    CMatchingGLLive::s_IsGameStarting = true;
    {
        CMatchingGLLive scoped(false);
        CHECK(CMatchingGLLive::s_IsGameStarting);
    }
    CHECK(!CMatchingGLLive::s_IsGameStarting);

    if (failures == 0) std::printf("c_matching_gl_live_lifecycle_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
