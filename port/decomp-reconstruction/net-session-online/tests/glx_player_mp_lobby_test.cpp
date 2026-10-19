#include "net-session-online/glx_player_mp_lobby.hpp"

#include <cstdio>
#include <list>
#include <string>

// A player name for the packet senders: the real ConnectionLobby sends read it (the stand-in ignored it).
static char kName[] = "lobby";
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

    // Init: state 0, result 0, pending kind 0x15 (21), not pending.
    GLXPlayerMPLobby lobby(&obs, nullptr);
    CHECK(!lobby.mpIsInSession());
    CHECK(!lobby.mpIsInGame());
    CHECK(!lobby.mpIsMaster());

    // Refused while state <= 1: result 0x32, observer notified.
    lobby.mpSendLeaveLobby();
    CHECK(lobby.LastResultForTest() == 0x32);
    CHECK(obs.invalid == 1);
    CHECK(!lobby.PendingForTest());

    // Allowed in state 2: result -1, kind 3 (leave), pending set.
    lobby.AttachConnectionForTest();
    lobby.SetStateForTest(3);
    CHECK(lobby.mpIsInSession());
    CHECK(!lobby.mpIsInGame());
    lobby.mpSendLeaveLobby();
    CHECK(lobby.LastResultForTest() == -1);
    CHECK(lobby.PendingKindForTest() == 3);
    CHECK(lobby.PendingForTest());
    CHECK(obs.invalid == 1);

    // In game: state above 4.
    lobby.SetStateForTest(5);
    CHECK(lobby.mpIsInGame());

    // Cancel auto-match sets state to 2 and kind 0x11 (17).
    lobby.mpSendCancelAutoMatchRequest();
    CHECK(lobby.PendingKindForTest() == 17);
    CHECK(lobby.LastResultForTest() == -1);

    // Disconnect resets state to 0 and clears the pending id to -1 in the original.
    lobby.mpDisconnect();
    CHECK(!lobby.mpIsInSession());

    // Login has no state check: it always sends and sets kind 1.
    lobby.mpSendLobbyLogin(1L, kName, 0, 0);
    CHECK(lobby.PendingKindForTest() == 1);

    // The friend-list and create-lobby sends are allowed in state 2 and set their request kinds.
    {
        GLXPlayerMPLobby l(&obs, nullptr);
        l.AttachConnectionForTest();
        l.SetStateForTest(3);
        GLXPlayerUserFriend friends;
        friends.ReserveForTest(2);
        friends.SetNameForTest(0, "ab");
        friends.SetNameForTest(1, "cde");
        l.mpSendGetLobbyForFriend(1, 2, &friends);
        CHECK(l.PendingKindForTest() == 12);
        CHECK(l.PendingForTest());
        l.mpSendCreateLobby(kName, 0, 0, 0, kName, 0, kName, 0, nullptr);
        CHECK(l.PendingKindForTest() == 5);
        std::list<std::string> names;
        l.mpSendCreateLobbyWithGameCenter(kName, 0, 0, 0, kName, 0, kName, 0, nullptr, names);
        CHECK(l.PendingKindForTest() == 5);
        CHECK(obs.invalid == 1);  // none of the above was refused
    }

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
