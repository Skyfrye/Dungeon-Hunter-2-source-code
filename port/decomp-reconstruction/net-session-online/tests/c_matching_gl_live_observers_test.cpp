#include "net-session-online/c_matching_gl_live_observers.hpp"

#include <cstdio>

#include "net-transport/default_data_packet.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMatchingGLLiveFriendObserver friends;
    CHECK(!friends.FlagForTest());
    friends.OnRequestSuccess(0x3c, "", 0);
    CHECK(!friends.FlagForTest());
    friends.OnRequestSuccess(0x3d, "", 0);
    CHECK(friends.FlagForTest());
    friends.OnNetworkError();
    friends.OnRequestTimeout(1);
    friends.OnRequestFailure(2, 3);

    CMatchingGLLiveMessageObserver messages;
    messages.OnNetworkError();
    messages.OnRequestTimeout(1);
    messages.OnRequestFailure(1, 2);
    messages.OnRequestSuccess(0x6f, "", 0);

    CMatchingGLLiveLobbyObserver lobby;
    lobby.SetFlagsForTest(false, false, true);
    lobby.OnMPEstablishConnectionSuccess();
    CHECK(lobby.ConnectedForTest());
    CHECK(lobby.LastResultForTest() == 0);
    lobby.OnMPLoginSuccess(nullptr);
    CHECK(lobby.LoggedInForTest());
    CHECK(lobby.StateForTest() == 3);
    DefaultDataPacket infoPacket;
    lobby.OnMPGetLobbyInfo(&infoPacket);            // game started flag is set: state 6
    CHECK(lobby.StateForTest() == 6);
    lobby.OnMPStartGameSuccess(nullptr);
    CHECK(lobby.StateForTest() == 8);
    CHECK(!lobby.GameStartedForTest());
    CHECK(lobby.OnMPProcessPushSetGameParameter(nullptr) == 0);
    CHECK(lobby.OnMPProcessPushSetUserStatus(nullptr) == 0);
    CHECK(lobby.OnMPProcessPushGameserverParams(nullptr) == 0);
    CHECK(lobby.OnMPProcessPushAutomatchUser(nullptr) == 0);
    lobby.OnMPDisconnectSuccess();
    CHECK(lobby.StateForTest() == 1);
    CHECK(!lobby.LoggedInForTest());
    CHECK(!lobby.ConnectedForTest());
    lobby.Terminate();
    CHECK(lobby.StateForTest() == 1);

    std::printf("%s\n", failures ? "c_matching_gl_live_observers: FAILED" : "c_matching_gl_live_observers: ok");
    return failures != 0;
}
