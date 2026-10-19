// Tests for the r1n-net-session-online-pack2-7d6e5f-0 batch: GLXPlayerSocket (Run, ParseHttpHeader,
// RemoveHttpHeader) with a fake transport, and the field parsers XP_API_PARSE_DATA_NEW and
// LC_API_PARSE_DATA_NEW. Build: bash tools/trackb/check_tu.sh --test <this file> <the sources below>.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "net-session-online/glx_player_socket.hpp"
#include "net-session-online/lc_api_net.hpp"
#include "socket_test_doubles.hpp"
#include "net-session-online/xp_api.hpp"

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

namespace {

// Observer that records what Run reports and what it sends.
class RecordingObserver : public GLXPlayerSocketObserver {
public:
    std::string request = "GET / HTTP/1.1\r\n\r\n";
    int receivedCalls = 0;
    int responseCalls = 0;
    std::string response;

    const char* GetRequestData() const override { return request.c_str(); }
    std::uint32_t GetRequestLength() const override { return static_cast<std::uint32_t>(request.size()); }
    void SetResponseData(const char* data, std::int32_t length) override {
        ++responseCalls;
        response.assign(data != nullptr ? data : "", length > 0 ? static_cast<std::size_t>(length) : 0);
    }
    void SetResponseLen(std::int32_t) override { ++receivedCalls; }
};

// A transport that resolves and connects at once, accepts every send, and returns one reply and then a close.
// The slots are the platform slots of GLXPlayerSocket: GetHostByName +0x20, CreateSocket +0x28, Connect +0x34,
// Select +0x40, Send +0x44, Recv +0x48.
class FakeSocket : public StubGLXSocket {
public:
    FakeSocket(const char* host, std::int32_t port, GLXPlayerSocketObserver* observer)
        : StubGLXSocket(host, port, observer) {}

    std::string sent;
    int reads = 0;

    hostent* GetHostByName(char* /*host*/) override {
        static char storage[64];
        return reinterpret_cast<hostent*>(storage);
    }
    bool CreateSocket() override { return true; }
    int Connect() override { return 1; }
    int Select(XSocketSelectFlag /*flag*/) override { return 1; }
    int Send(const char* data, int length) override {
        sent.append(data, static_cast<std::size_t>(length));
        return length;
    }
    int Recv(char* buffer, int length) override {
        ++reads;
        if (reads == 1) {
            const char reply[] = "HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nok";
            const int n = static_cast<int>(sizeof(reply) - 1);
            const int count = n <= length ? n : length;
            std::memcpy(buffer, reply, static_cast<std::size_t>(count));
            return count;
        }
        return 0;  // the peer closed the connection
    }
};

}  // namespace

int main() {
    // ---- GLXPlayerSocket::Run: connect, send, receive, close ----
    {
        RecordingObserver observer;
        FakeSocket socket("h", 80, &observer);
        socket.Start();                       // state 1
        CHECK(socket.IsInProgress() == 1);
        socket.Run();                         // 1 -> 2: resolve the host and create the socket
        socket.Run();                         // 2 -> 3: connected
        socket.Run();                         // 3: the whole request is sent, 3 -> 4
        CHECK(socket.sent == observer.request);
        CHECK(socket.GetSendPercentage() == 100);

        socket.Run();                         // 4: first reply, header removed, body kept; the length matches, 4 -> 5
        CHECK(socket.ContentForTest() == "ok");
        CHECK(observer.receivedCalls == 1);
        CHECK(observer.responseCalls == 0);

        socket.Run();                         // 5: close, the response (the content string's span) is reported, 5 -> 6
        CHECK(observer.responseCalls == 1);
        CHECK(observer.response == "ok");
        CHECK(socket.ContentForTest().empty());
        CHECK(socket.IsInProgress() == 0);    // state 6 is finished
        socket.Run();                         // state 6 does nothing
        CHECK(observer.responseCalls == 1);
    }

    // ---- GLXPlayerSocket::Run with a socket that cannot resolve the host ----
    // The lookup start time (+0x868) is 0 here and the 9999 ms lookup timeout is already past: the first Run
    // goes to the error state.
    {
        RecordingObserver observer;
        StubGLXSocket socket("h", 80, &observer);
        socket.Start();
        socket.Run();
        CHECK(socket.IsErrorOccurred());
        CHECK(socket.IsInProgress() == 0);
    }

    // ---- ParseHttpHeader and RemoveHttpHeader ----
    {
        StubGLXSocket socket("h", 80, nullptr);
        socket.SetContentForTest("HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nok");
        CHECK(socket.ParseHttpHeader("Content-Length") == 17);
        CHECK(socket.ParseHttpHeader("X-Missing") == static_cast<std::uint32_t>(std::string::npos));
        socket.RemoveHttpHeader();
        CHECK(socket.ContentForTest() == "ok");

        socket.SetContentForTest("no terminator");
        socket.RemoveHttpHeader();            // no CRLF CRLF: nothing is dropped
        CHECK(socket.ContentForTest() == "no terminator");
    }

    // ---- XP_API_PARSE_DATA_NEW: a field that ends at the NUL keeps all its characters ----
    {
        char text[] = "ab|cd";
        char* out = nullptr;
        const int start = XP_API_PARSE_DATA_NEW(text, &out, 1, '|');
        CHECK(start == 3);
        CHECK(out != nullptr && std::strcmp(out, "cd") == 0);
        delete[] out;
    }

    // ---- LC_API_PARSE_DATA_NEW: a field that ends at a separator is copied whole; the last field loses
    //      its final character (as decompiled) ----
    {
        const char* text = "ab|cd";
        char* out = nullptr;
        CHECK(LC_API_PARSE_DATA_NEW(text, &out, 0, '|') == 0);
        CHECK(out != nullptr && std::strcmp(out, "ab") == 0);
        delete[] out;

        out = nullptr;
        CHECK(LC_API_PARSE_DATA_NEW(text, &out, 1, '|') == 3);
        CHECK(out != nullptr && std::strcmp(out, "c") == 0);
        delete[] out;
    }

    if (failures == 0) {
        std::printf("r1n-net-session-online-pack2-7d6e5f-0 tests: all passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", failures);
    return 1;
}
