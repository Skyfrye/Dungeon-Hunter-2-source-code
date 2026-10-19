// Tests for the LCXPlayerSocket::Run state machine (0x8a1c1c) and the tGLRoomInfo destructor
// (0x82138c). The socket's platform calls are scripted by a subclass; the observer records
// what Run hands it.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "net-session-online/lcx_player_socket.hpp"
#include "net-session-online/tb/t_gl_room_info.hpp"
#include "socket_test_doubles.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class RecordingObserver : public LCXPlayerSocketObserver {
public:
    std::string request;
    std::string response;
    std::int32_t lastLength = -1;
    int dataCalls = 0;

    const char* GetRequestData() const override { return request.c_str(); }
    std::int32_t GetRequestLength() const override {
        return static_cast<std::int32_t>(request.size());
    }
    void SetResponseData(const char* data, std::int32_t length) override {
        response.assign(data, static_cast<std::size_t>(length));
        ++dataCalls;
    }
    void SetResponseLen(std::int32_t length) override { lastLength = length; }
};

// A socket whose platform calls are scripted. Send accepts at most sendLimit bytes per call;
// Recv hands out the incoming bytes in pieces of recvPiece, then returns 0 (the peer closed).
class ScriptedSocket : public StubLCXSocket {
public:
    using StubLCXSocket::StubLCXSocket;

    bool connectOk = true;
    std::size_t sendLimit = static_cast<std::size_t>(-1);
    std::string incoming;
    std::size_t recvPiece = static_cast<std::size_t>(-1);
    std::size_t readPos = 0;
    std::string sent;
    int closeCalls = 0;

    hostent* GetHostByName(char*) override { return reinterpret_cast<hostent*>(this); }
    bool CreateSocket() override { return true; }
    int GetLastError() override { return 0; }
    bool Connect() override { return connectOk; }
    int Select(XSocketSelectFlag) override { return 1; }
    int Send(const char* data, int length) override {
        std::size_t n = static_cast<std::size_t>(length);
        if (n > sendLimit) {
            n = sendLimit;
        }
        sent.append(data, n);
        return static_cast<std::int32_t>(n);
    }
    int Recv(char* buffer, int length) override {
        std::size_t left = incoming.size() - readPos;
        if (left == 0) {
            return 0;
        }
        std::size_t n = static_cast<std::size_t>(length);
        if (n > recvPiece) {
            n = recvPiece;
        }
        if (n > left) {
            n = left;
        }
        std::memcpy(buffer, incoming.data() + readPos, n);
        readPos += n;
        return static_cast<std::int32_t>(n);
    }
    bool CloseSocket() override {
        ++closeCalls;
        return true;
    }
};

// Runs the socket until it leaves the state it is in, or gives up after a fixed count.
void RunUntilNot(ScriptedSocket& sock, std::int32_t state, int limit) {
    for (int i = 0; i < limit && sock.StateForTest() == state; ++i) {
        sock.Run();
    }
}

const char kResponse[] = "HTTP/1.1 200 OK\r\nContent-Length: 4\r\nX-Test: y\r\n\r\nbody";

}  // namespace

int main() {
    // A full exchange: start, connect, send, read the header and the body, close.
    {
        RecordingObserver obs;
        obs.request = "GET /lobby HTTP/1.1\r\n\r\n";
        ScriptedSocket sock("lobby.local", 80, &obs);
        sock.incoming = kResponse;
        sock.Start();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateStartConnect);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateWaitConnecting);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateSendRequest);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateWaitResponse);
        CHECK(sock.sent == obs.request);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateCloseConnection);
        CHECK(obs.lastLength == 4);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateRequestComplete);
        CHECK(obs.response == "body");
        CHECK(obs.dataCalls == 1);
        CHECK(sock.closeCalls == 1);
        sock.Run();  // REQUEST_COMPLETE is terminal: nothing more happens
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateRequestComplete);
        CHECK(obs.dataCalls == 1);
    }

    // A connect that fails in WAIT_CONNECTING closes the socket and ends in the error state.
    {
        RecordingObserver obs;
        ScriptedSocket sock("lobby.local", 80, &obs);
        sock.connectOk = false;
        sock.Start();
        sock.Run();
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateError);
        CHECK(sock.IsErrorOccurred());
        CHECK(sock.closeCalls == 1);
        CHECK(obs.dataCalls == 0);
    }

    // Sends that accept only part of the request continue from the sent offset.
    {
        RecordingObserver obs;
        obs.request = "0123456789";
        ScriptedSocket sock("lobby.local", 80, &obs);
        sock.sendLimit = 3;
        sock.incoming = kResponse;
        sock.SetStateForTest(LCXPlayerSocket::kStateSendRequest);
        RunUntilNot(sock, LCXPlayerSocket::kStateSendRequest, 10);
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateWaitResponse);
        CHECK(sock.sent == "0123456789");
    }

    // The header may arrive in pieces: no length is reported until the blank line has come.
    {
        RecordingObserver obs;
        obs.request = "x";
        ScriptedSocket sock("lobby.local", 80, &obs);
        sock.incoming = kResponse;
        sock.recvPiece = 10;
        sock.SetStateForTest(LCXPlayerSocket::kStateSendRequest);
        sock.Run();  // sends the one byte and enters WAIT_RESPONSE with the header pending
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateWaitResponse);
        for (int i = 0; i < 4; ++i) {  // the first four 10-byte pieces hold no blank line yet
            sock.Run();
        }
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateWaitResponse);
        CHECK(obs.lastLength == -1);
        RunUntilNot(sock, LCXPlayerSocket::kStateWaitResponse, 20);
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateCloseConnection);
        CHECK(obs.lastLength == 4);
    }

    // A null observer ends a send in the error state (a deviation: the original would fault).
    {
        ScriptedSocket sock("lobby.local", 80, nullptr);
        sock.SetStateForTest(LCXPlayerSocket::kStateSendRequest);
        sock.Run();
        CHECK(sock.StateForTest() == LCXPlayerSocket::kStateError);
        CHECK(sock.closeCalls == 1);
    }

    // tGLRoomInfo: the destructor releases the owned name and clears it (the record is not used
    // again after the explicit call; its storage is returned with the matching operator delete).
    {
        tGLRoomInfo* room = new tGLRoomInfo();
        room->SetNameForTest("lobby-1");
        CHECK(std::strcmp(room->name(), "lobby-1") == 0);
        room->~tGLRoomInfo();
        CHECK(room->name() == nullptr);
        ::operator delete(room);
    }

    std::printf("%s\n", failures ? "r1n-net-session-online-pack4-461b38-0: FAILED"
                                  : "r1n-net-session-online-pack4-461b38-0: ok");
    return failures != 0;
}
