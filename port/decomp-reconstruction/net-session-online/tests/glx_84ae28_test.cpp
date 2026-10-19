#include <cstdio>
#include <memory>
#include <cstring>

#include "net-session-online/glx_player_mp_base.hpp"
#include "net-session-online/lc_api_net.hpp"
#include "net-session-online/lcx_player_http.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    char dotted[] = "10.20.30.40";
    CHECK(LC_API_IP_STR2INT(dotted) == 0x281e140a);
    char loopback[] = "127.0.0.1";
    CHECK(LC_API_IP_STR2INT(loopback) == 0x0100007f);

    char text[] = "ab;cd;ef";
    char* field = nullptr;
    CHECK(LC_API_PARSE_DATA_NEW(text, &field, 0, ';') == 0);
    CHECK(field != nullptr && std::strcmp(field, "ab") == 0);
    delete[] field;
    CHECK(LC_API_PARSE_DATA_NEW(text, &field, 1, ';') == 3);
    CHECK(field != nullptr && std::strcmp(field, "cd") == 0);
    delete[] field;

    char* copy = LC_API_STRNEW("lobby");
    CHECK(copy != nullptr && std::strcmp(copy, "lobby") == 0);
    delete[] copy;
    CHECK(LC_API_STRNEW(nullptr) == nullptr);

    GLXPlayerMPBaseObserver observer;
    GLXPlayerMPBase base(&observer);
    base.mpSendDisconnect();
    CHECK(base.Field50ForTest() == 0);
    CHECK(base.Field71ForTest() == 0);

    auto connection = std::make_unique<Connection>(nullptr, 0);
    Connection* raw = connection.get();
    base.SetConnectionForTest(std::move(connection));
    base.mpSendDisconnect();  // not connected: result 0, OnMPDisconnectSuccess
    CHECK(base.Field50ForTest() == 0);
    CHECK(base.Field71ForTest() == 0);

    raw->set_connected(true);
    base.mpSendDisconnect();  // connected: result -1, finish package queued, flag set
    CHECK(base.Field50ForTest() == -1);
    CHECK(base.Field71ForTest() == 1);

    // LCXPlayerHttp over the socket its constructor makes (state none: not in progress).
    LCXPlayerHttp http("lobby.local", "4", "/php/game.php");
    CHECK(!http.IsInProgress());
    CHECK(!http.IsErrorOccurred());
    http.UpdateRequest();

    http.SetResponseForTest("reply");
    http.SetPostForTest("a=b", 3, true);
    http.SetResponseLen(5);
    http.Cancel();
    CHECK(http.GetResponse() == nullptr);
    CHECK(http.GetResponseLen() == 0);
    CHECK(!http.IsInProgress());
    CHECK(!http.IsErrorOccurred());

    std::printf("%s\n", failures ? "glx_84ae28: FAILED" : "glx_84ae28: ok");
    return failures != 0;
}
