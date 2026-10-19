#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
struct CountingObserver : GLXPlayerMPBaseObserver {
    int invalid = 0;
    void OnMPNetworkError(std::int32_t) override { ++invalid; }
};
}  // namespace

int main() {
    CountingObserver obs;
    GLXPlayerMPLobby lobby(&obs, nullptr);
    CMatchingGLLive::s_GLXPlayerMPLobby = &lobby;

    CHECK(CMatchingGLLive::s_GLXPlayerMPLobby == &lobby);

    CMatchingGLLive m;
    CHECK(m.GetGLXPlayerMPLobby() == &lobby);

    // IsHost follows the lobby's master flag (false after Init).
    CHECK(!m.IsHost());

    // LeaveRoom sends the leave request and sets the room operation to 5.
    CHECK(m.LeaveRoom() == 0);
    CHECK(m.RoomOpForTest() == 5);

    // SendSetPlayerStatus returns 0 (the lobby call is void in the port).
    CHECK(m.SendSetPlayerStatus(3) == 0);

    // Game Center state is ignored while the mode is off.
    m.SetGCState(7);
    CHECK(m.GcStateForTest() == 0);

    // State 7 starts the game: event 11 is queued once.
    m.SetGameCenterActiveForTest(true);
    m.SetGCState(7);
    CHECK(m.GcStateForTest() == 7);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true));
    CHECK(!CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true));

    // State 2 without a Game Center record goes to state 4.
    m.SetGCState(2);
    CHECK(m.GcStateForTest() == 4);

    // StartGame does nothing while the game is starting.
    CMatchingGLLive::s_IsGameStarting = true;
    m.StartGame();
    CHECK(!CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true));
    CMatchingGLLive::s_IsGameStarting = false;

    // Lobby observer: StartGame push queues event 11 only when the game-started flag is set.
    CMatchingGLLiveLobbyObserver lobbyObs;
    CHECK(lobbyObs.OnMPProcessPushStartGame(nullptr) == 0);
    CHECK(!CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true));
    lobbyObs.SetFlagsForTest(false, false, true);
    CHECK(lobbyObs.OnMPProcessPushStartGame(nullptr) == 0);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(11, true));

    // Function errors map to events 10, 9 and 12, and each stores the code.
    lobbyObs.OnMPFunctionError(nullptr, 16398);
    CHECK(lobbyObs.LastResultForTest() == 16398);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(10, true));
    lobbyObs.OnMPFunctionError(nullptr, 16399);
    CHECK(lobbyObs.LastResultForTest() == 16399);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(9, true));
    lobbyObs.OnMPFunctionError(nullptr, -2);
    CHECK(lobbyObs.LastResultForTest() == -2);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(12, true));
    lobbyObs.OnMPFunctionError(nullptr, 5);
    CHECK(lobbyObs.LastResultForTest() == 5);
    CHECK(!CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(12, true));

    // Network error clears the flags and queues event 12 only for -2.
    lobbyObs.SetFlagsForTest(true, true, true);
    lobbyObs.OnMPNetworkError(7);
    CHECK(!lobbyObs.LoggedInForTest());
    CHECK(!lobbyObs.ConnectedForTest());
    CHECK(!lobbyObs.GameStartedForTest());
    CHECK(lobbyObs.LastResultForTest() == 7);
    CHECK(!CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(12, true));
    lobbyObs.OnMPNetworkError(-2);
    CHECK(CMatchingGLLive::s_eventQueueGLLiveInternal.HasEventOccured(12, true));

    // The disconnect thunk forwards to Terminate (state 1).
    lobbyObs.SetFlagsForTest(true, true, false);
    lobbyObs.OnMPDisconnectSuccess();
    CHECK(lobbyObs.StateForTest() == 1);
    CHECK(!lobbyObs.LoggedInForTest());

    CMatchingGLLive::s_GLXPlayerMPLobby = nullptr;  // the matching object deletes the singletons it owns
    std::printf("%s\n", failures ? "c_matching_gl_live_glx05: FAILED" : "c_matching_gl_live_glx05: ok");
    return failures != 0;
}
