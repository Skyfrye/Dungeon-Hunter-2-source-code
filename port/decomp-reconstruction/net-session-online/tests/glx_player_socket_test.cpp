#include "net-session-online/glx_player_http.hpp"
#include "net-session-online/glx_player_socket.hpp"
#include "socket_test_doubles.hpp"

#include <cstdio>
#include <cstring>
#include <memory>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// Counts the CloseSocket slot (vtable +0x3c), which Cancel calls.
class CountingSocket : public StubGLXSocket {
public:
    bool CloseSocket() override {
        ++cancels;
        return true;
    }
    int cancels = 0;
};

}  // namespace

int main() {
    StubGLXSocket sock;
    CHECK(sock.GetAcceptIP() == nullptr);
    CHECK(sock.GetAcceptPort() == 0);
    sock.SetAcceptPort(9001);
    CHECK(sock.GetAcceptPort() == 9001);
    sock.SetSocketType(3);
    CHECK(sock.GetSocketType() == 3);
    sock.SetSocket(42);
    sock.SetAcceptIP("10.0.0.5");
    CHECK(std::strcmp(sock.GetAcceptIP(), "10.0.0.5") == 0);
    sock.SetAcceptIP("10.0.0.6");              // replaces the earlier copy
    CHECK(std::strcmp(sock.GetAcceptIP(), "10.0.0.6") == 0);
    sock.SetAcceptIP(nullptr);
    CHECK(sock.GetAcceptIP()[0] == '\0');
    CHECK(!sock.IsErrorOccurred());
    sock.SetStateForTest(7);
    CHECK(sock.IsErrorOccurred());
    sock.SetSendPercentageForTest(50);
    CHECK(sock.GetSendPercentage() == 50);
    sock.SetSendPercentageForTest(101);
    CHECK(sock.GetSendPercentage() == 0);

    // Start, IsInProgress and Cancel state machine (0x8301ac, 0x8300bc, 0x83007c).
    CountingSocket live;
    live.Start();
    CHECK(live.IsInProgress() == 1);
    live.SetStateForTest(6);
    CHECK(live.IsInProgress() == 0);
    live.SetStateForTest(0);
    CHECK(live.IsInProgress() == 0);
    live.Start();
    live.Cancel();
    CHECK(live.IsInProgress() == 0);
    CHECK(live.cancels == 1);
    live.Cancel();                             // state 8 is not excluded by Cancel, so the hook runs again
    CHECK(live.cancels == 2);
    CountingSocket finished;
    finished.SetStateForTest(6);
    finished.Cancel();                         // finished sockets are not cancelled
    CHECK(finished.cancels == 0);

    // Header and body helpers (0x8305bc, 0x830448, 0x830cb0, 0x83067c).
    StubGLXSocket parsed;
    parsed.SetContentForTest("HTTP/1.1 200 OK\r\nContent-Length: 12\r\nX-Test: abc\r\n\r\nbody");
    CHECK(parsed.ParseHttpHeader("content-length") == 17);
    CHECK(parsed.ParseHttpHeader("X-TEST") != 0xffffffffu);
    CHECK(parsed.ParseHttpHeader("missing") == 0xffffffffu);
    CHECK(parsed.CalculateTotalLength() == 12);
    parsed.RemoveHttpHeader();
    CHECK(parsed.ContentForTest() == "body");

    StubGLXSocket noLength;
    noLength.SetContentForTest("HTTP/1.1 200 OK\r\n\r\nbody");
    CHECK(noLength.CalculateTotalLength() == 0);
    StubGLXSocket openHeader;
    openHeader.SetContentForTest("HTTP/1.1 200 OK\r\nContent-Length: 4");
    CHECK(openHeader.CalculateTotalLength() == -1);

    StubGLXSocket chunked;
    chunked.SetContentForTest("5\r\nhello\r\n0\r\n\r\n");
    CHECK(chunked.ParseChunkedContent() == 1);
    CHECK(chunked.ContentForTest() == "hello");
    StubGLXSocket broken;
    broken.SetContentForTest("abc");
    CHECK(broken.ParseChunkedContent() == 0);

    // HTTP object: accessors, cancel, and forwarding to the socket.
    GLXPlayerHttp http;
    CHECK(!http.IsSendByPost());
    CHECK(http.GetServerAddress() == nullptr);
    CHECK(http.GetSendPercentage() == 0);      // no socket set
    CHECK(http.GetResponseLen() == 0);
    http.SetRequestForTest("GET /x?a=1");
    CHECK(std::strcmp(http.GetRequestData(), "GET /x?a=1") == 0);
    CHECK(http.GetRequestLength() == 10);
    auto owned = std::make_unique<StubGLXSocket>();
    GLXPlayerSocket* raw = owned.get();
    http.SetSocketForTest(std::move(owned));
    raw->SetSendPercentageForTest(101);
    CHECK(http.GetSendPercentage() == 0);      // the socket value is 101, which reads as 0
    raw->SetSendPercentageForTest(40);
    CHECK(http.GetSendPercentage() == 40);
    http.Start();
    CHECK(raw->IsInProgress() == 1);
    CHECK(http.IsInProgress() == 1);
    raw->SetStateForTest(7);
    CHECK(http.IsErrorOccurred() == 1);
    http.Cancel();
    CHECK(raw->IsInProgress() == 0);
    char body[] = "name=value";
    http.SetPostForTest(body, 10, true);
    CHECK(http.IsSendByPost());
    CHECK(std::strcmp(http.GetRequestData(), "name=value") == 0);
    CHECK(http.GetRequestLength() == 10);
    http.SetResponseForTest("ok!");
    CHECK(std::strcmp(http.GetResponse(), "ok!") == 0);
    CHECK(http.GetResponseLen() == 3);
    http.SetResponseData("abcdef", 4);
    CHECK(std::strcmp(http.GetResponse(), "abcd") == 0);
    CHECK(http.GetResponseLen() == 4);
    http.Cancel();                             // frees the post body and the response
    CHECK(http.GetResponse() == nullptr);
    CHECK(http.GetResponseLen() == 0);

    // The three-argument constructor keeps the address and creates a socket.
    GLXPlayerHttp created("example.test", "second", "third");
    CHECK(std::strcmp(created.GetServerAddress(), "example.test") == 0);
    CHECK(created.GetSendPercentage() == 0);

    std::printf("%s\n", failures ? "glx_player_socket: FAILED" : "glx_player_socket: ok");
    return failures != 0;
}
