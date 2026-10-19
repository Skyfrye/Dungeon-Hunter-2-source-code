#include "net-session-online/c_sign_in_gl_live.hpp"

#include <cstdio>

#include "net-session-online/c_matching_gl_live.hpp"

// The matching statics are defined by their own slice (glx04/glx05). This test links neither,
// so it defines them as null. The login and lobby paths see no service and send nothing.
CSignInGLLiveObserver* CMatchingGLLive::s_GLXPlayerLoginObserver = nullptr;
CMatchingGLLiveLobbyObserver* CMatchingGLLive::s_GLXPlayerMPLobbyObserver = nullptr;
GLXPlayerMPLobby* CMatchingGLLive::s_GLXPlayerMPLobby = nullptr;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Inactive: SignIn(credentials) returns 0 and posts nothing.
    {
        CSignInGLLive sign;
        char name[] = "user";
        char password[] = "pw";
        char context[] = "ctx";
        CSignInCredentials credentials(name, password, context);
        CHECK(sign.SignIn(credentials) == 0);
        CHECK(!sign.EventQueue().HasEventOccured(1, false));
    }

    // Active: SignIn posts event 1, keeps the credentials, and returns 1.
    {
        CSignInGLLive sign;
        CHECK(sign.Initialize() == 0);
        char name[] = "user";
        char password[] = "pw";
        char context[] = "ctx";
        CSignInCredentials credentials(name, password, context);
        CHECK(sign.SignIn(credentials) == 1);
        CHECK(sign.EventQueue().HasEventOccured(1, false));
        CHECK(sign.EventQueue().HasEventOccured(1, true));
        CHECK(!sign.EventQueue().HasEventOccured(1, false));
    }

    // SignOut posts event 4 on the CSignIn queue.
    {
        CSignInGLLive sign;
        sign.SignOut();
        CHECK(sign.EventQueue().HasEventOccured(4, false));
    }

    // CancelLogin clears the queues; a logged-in session is signed out first (event 4).
    {
        CSignInGLLive sign;
        sign.Initialize();
        sign.SetLoggedInForTest(true);
        char name[] = "u";
        char password[] = "p";
        CSignInCredentials credentials(name, password, nullptr);
        sign.SignIn(credentials);
        sign.CancelLogin();
        CHECK(!sign.LoggedInForTest());
        CHECK(!sign.EventQueue().HasEventOccured(1, false));
        CHECK(!sign.EventQueue().HasEventOccured(4, false));  // SignOut posted 4, then the clear removed it
    }

    // Terminate: the base signs out when active, then the queues are cleared and the flag drops.
    {
        CSignInGLLive sign;
        sign.Initialize();
        sign.Terminate();
        CHECK(!sign.ActiveForTest());
        CHECK(!sign.EventQueue().HasEventOccured(4, false));
    }

    // Update with no pending events and no services does nothing and must not crash.
    {
        CSignInGLLive sign;
        sign.Update();
        sign.Initialize();
        sign.Update();
        CHECK(sign.ActiveForTest());
    }

    // LoginLobby with no lobby observer returns without sending.
    {
        CSignInGLLive sign;
        sign.LoginLobby();  // returns without touching a null observer
    }

    std::printf("%s\n", failures ? "c_sign_in_gl_live_login: FAILED" : "c_sign_in_gl_live_login: ok");
    return failures != 0;
}
