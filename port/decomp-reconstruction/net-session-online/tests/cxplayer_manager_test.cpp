#include "net-session-online/cxplayer_manager.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        CXPlayerManager m;
        CHECK(m.StateForTest() == 0);
        CHECK(!m.IsReady());
        CHECK(m.IsLoggedIn() == 0);
        m.SwitchState(0x10);
        CHECK(m.IsReady());
        CHECK(m.IsLoggedIn() == 0);  // no login object

        // Without a login object an upload is refused by Init and returns false.
        CHECK(m.UploadMyScore(50) == false);
        CHECK(m.ScoreForTest() == 50);

        // A timeout in state 0x0b moves the score to the pending value.
        m.SwitchState(0x0b);
        m.OnRequestTimeout(1);
        CHECK(m.PendingScoreForTest() == 50);
        CHECK(m.ScoreForTest() == 0);
        CHECK(m.StateForTest() == 0x11);
        CHECK(m.LastErrorForTest() == 3);
    }
    {
        CXPlayerManager m;
        // Outside state 4 a failure gives error 3 and state 0x11.
        m.SwitchState(5);
        m.OnRequestFailure(0x0f, 0x2e);
        CHECK(m.LastErrorForTest() == 3);
        CHECK(m.StateForTest() == 0x11);

        // In state 4 the code decides the error.
        m.SwitchState(4);
        m.OnRequestFailure(0x0f, 0x2e);
        CHECK(m.LastErrorForTest() == 1);
        m.SwitchState(4);
        m.OnRequestFailure(0x0f, 0x31);
        CHECK(m.LastErrorForTest() == 2);
        m.SwitchState(4);
        m.OnRequestFailure(0x0f, 0x40);
        CHECK(m.LastErrorForTest() == 3);
    }
    {
        CXPlayerManager m;
        // Login without a login object goes to the error state.
        m.Login("user", "secret");
        CHECK(m.StateForTest() == 0x11);
        CHECK(m.LastErrorForTest() == 3);

        // Logout without a login object does the same.
        m.Logout();
        CHECK(m.StateForTest() == 0x11);
    }
    {
        CXPlayerManager m;
        // State 0 creates the services and waits in state 4.
        m.OnRequestSuccess(0, "ok", 2);
        CHECK(m.StateForTest() == 4);
    }
    {
        CXPlayerManager m;
        GLXPlayerLogin* login = new GLXPlayerLogin();
        m.SetLoginForTest(login);
        // Not logged in yet: no keep-alive.
        m.SwitchState(0x10);
        CHECK(m.IsLoggedIn() == 0);
        CHECK(m.UploadMyScore(30) == false);
        CHECK(m.StateForTest() == 0x10);

        // Logged in: the upload is accepted, the score is kept and the state is 10.
        login->SetKeepAliveForTest(true, 0);
        m.SwitchState(0x10);
        CHECK(m.IsLoggedIn() == 1);
        CHECK(m.UploadMyScore(30) == true);
        CHECK(m.ScoreForTest() == 30);
        CHECK(m.StateForTest() == 10);

        // A lower score is refused.
        m.SwitchState(0x10);
        CHECK(m.UploadMyScore(10) == false);
        CHECK(m.ScoreForTest() == 30);
        CHECK(m.StateForTest() == 0x10);

        // Logout with a login object moves to state 5 and clears the score.
        m.Logout();
        CHECK(m.StateForTest() == 5);
        CHECK(m.ScoreForTest() == 0);
        CHECK(m.LastErrorForTest() == 0);

        // Login with keep-alive set logs out first and waits in state 2.
        m.Login("user", "secret");
        CHECK(m.StateForTest() == 2);

        // Keep-alive set: a success in state 2 logs out and waits in state 2 again.
        m.OnRequestSuccess(0, "ok", 2);
        CHECK(m.StateForTest() == 2);

        // Keep-alive cleared: the stored credentials are sent and the state is 3.
        login->SetKeepAliveForTest(false, 0);
        m.OnRequestSuccess(0, "ok", 2);
        CHECK(m.StateForTest() == 3);
    }

    std::printf("%s\n", failures ? "cxplayer_manager: FAILED" : "cxplayer_manager: ok");
    return failures != 0;
}
