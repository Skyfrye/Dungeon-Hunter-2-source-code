#include "net-transport/connection_lobby.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    char host[] = "lobby.example";
    ConnectionLobby lobby(host, 9000);

    // Sends that build a message return the queue result (0 from the stand-in).
    CHECK(lobby.sendGetPlayerCounter() == 0);
    CHECK(lobby.sendLoginPackage(host) == 0);
    CHECK(lobby.sendCancelAutoMatchPackage() == 0);

    // sendCreateLobbyPackageWithGameCenter returns the constant the original returns (16556).
    std::list<std::string> names{"a", "bc"};
    CHECK(lobby.sendCreateLobbyPackageWithGameCenter(0, host, 1, 2, 3, host, 4, host, 5, nullptr, names) == 16556);

    // A null name in sendKickOutPlayerPackage queues nothing and returns the object.
    CHECK(lobby.sendKickOutPlayerPackage(nullptr) == static_cast<int>(reinterpret_cast<std::uintptr_t>(&lobby)));

    // sendCreateSessionPackage sends a single space for a null second name.
    CHECK(lobby.sendCreateSessionPackage(host, nullptr, 1) == 0);

    // sendData with an empty queue does nothing.
    lobby.sendData();

    std::printf("%s\n", failures ? "connection_lobby: FAILED" : "connection_lobby: ok");
    return failures ? 1 : 0;
}
