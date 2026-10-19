#include "net-session-online/lcx_player_http.hpp"
#include "net-session-online/lcx_player_socket.hpp"
#include "socket_test_doubles.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    StubLCXSocket sock("lobby.local", 7001, nullptr);
    CHECK(sock.GetAcceptIP() == nullptr);
    CHECK(!sock.IsInProgress());
    sock.Start();
    CHECK(sock.IsInProgress());
    sock.Cancel();
    CHECK(!sock.IsInProgress());
    sock.SetStateForTest(6);
    sock.Cancel();
    CHECK(sock.IsInProgress() == false);

    StubLCXSocket parser(nullptr, 0, nullptr);
    parser.SetContentForTest("HTTP/1.1 200 OK\r\nContent-Length: 12\r\nX-Test: yes\r\n\r\nbody12345678");
    CHECK(parser.ParseHttpHeader("x-test") == 37);
    CHECK(parser.ParseHttpHeader("missing") == -1);
    CHECK(parser.CalculateTotalLength() == 12);
    parser.RemoveHttpHeader();
    CHECK(parser.ContentForTest() == "body12345678");
    parser.SetContentForTest("5\r\nhello\r\n0\r\n\r\n");
    CHECK(parser.ParseChunkedContent() == 1);
    CHECK(parser.ContentForTest() == "hello");
    sock.SetAcceptPort(7000);
    CHECK(sock.GetAcceptPort() == 7000);
    sock.SetSocketType(2);
    CHECK(sock.GetSocketType() == 2);
    sock.SetSocket(9);
    sock.SetAcceptIP("lobby.local");
    CHECK(std::strcmp(sock.GetAcceptIP(), "lobby.local") == 0);
    CHECK(!sock.IsErrorOccurred());
    sock.SetStateForTest(7);
    CHECK(sock.IsErrorOccurred());

    LCXPlayerHttp http(nullptr, nullptr, nullptr);
    http.SetRequestForTest("GET /lobby");
    CHECK(std::strcmp(http.GetRequestData(), "GET /lobby") == 0);
    CHECK(http.GetRequestLength() == 10);
    const char body[] = "a=b";
    http.SetPostForTest(body, 3, true);
    CHECK(std::memcmp(http.GetRequestData(), body, 3) == 0);
    CHECK(http.GetRequestLength() == 3);
    http.SetResponseLen(12);
    CHECK(http.GetResponseLen() == 12);
    http.SetResponseForTest("reply");
    CHECK(std::strcmp(http.GetResponse(), "reply") == 0);

    std::printf("%s\n", failures ? "lcx_player_socket: FAILED" : "lcx_player_socket: ok");
    return failures != 0;
}
