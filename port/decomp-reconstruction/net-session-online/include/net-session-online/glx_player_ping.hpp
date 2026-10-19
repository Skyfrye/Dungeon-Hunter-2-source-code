// GLXPlayerPing: the ICMP echo probe of the GLX player services. Prepare connects the
// probe socket, SendEchoRequest sends one 48-byte echo request, and WaitForEchoReply polls
// the socket. The probe owns its host name, its address and its socket.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x04 the Thread handle, +0x08 the Thread stop flag (set from the ctor: the thread is not started)
//   +0x0c host name (owned copy of the ctor argument)
//   +0x10 address (owned, null from the ctor)
//   +0x14 port (int, ctor argument 2)
//   +0x18 socket (GLXPlayerSocket*, owned)
//   +0x1c result (int, -1 after a failed send)
//   +0x24 state (int): 1 from the ctor, 2 after Prepare, 1 again after Finish
//   +0x28 send timeout (timeval, operator new in the original; held by value here)
//   +0x2c receive timeout (timeval, same)
//   +0x30 echo identifier (123 from the ctor; the static copy is taken on the first send)
#pragma once

#include <cstdint>
#include <memory>
#include <utility>

#include "net-session-online/deps/time_of_day.hpp"
#include "net-session-online/glx_player_socket.hpp"
#include "net-transport/sync.hpp"  // Thread

class GLXPlayerPing : public Thread {
public:
    // 0x840564 and 0x840600 _ZN13GLXPlayerPingC1EPKci
    GLXPlayerPing(const char* host, std::int32_t port);
    // 0x8400fc (D1) and 0x8401cc (D2). The deleting destructor 0x8401b0 is not ported.
    ~GLXPlayerPing() override;

    // 0x84008c _ZN13GLXPlayerPing4InitEv: connects the socket when the host and port are set.
    std::int32_t Init();
    // 0x8400c8 _ZN13GLXPlayerPing7PrepareEv: returns 0 and moves to state 2 when the
    // connection is up, otherwise -1.
    std::int32_t Prepare() override;
    // 0x8400ec _ZN13GLXPlayerPing6FinishEv: sets the state to 1 and returns 0.
    std::int32_t Finish() override {
        state_ = 1;
        return 0;
    }
    // 0x840280 _ZN13GLXPlayerPing16WaitForEchoReplyEi
    // select() on the socket handle with a zero timeout; the argument is the handle set in the fd_set.
    std::int32_t WaitForEchoReply(std::int32_t fd);
    // 0x840454 _ZN13GLXPlayerPing15SendEchoRequestEv
    std::int32_t SendEchoRequest();
    // 0x8402f8 _ZN13GLXPlayerPing13RecvEchoReplyEv
    // Receives through GLXPlayerSocket::RecvFrom (vtable +0x5c) and parses the reply.
    std::int32_t RecvEchoReply();
    // 0x84069c _ZN13GLXPlayerPing6KernelEv
    std::int32_t Kernel() override;

    // Not in the original: test seams.
    void SetStateForTest(std::int32_t state) { state_ = state; }
    std::int32_t StateForTest() const { return state_; }
    std::int32_t ResultForTest() const { return result_; }
    // The result at +0x1c (-1 until a reply arrives); GLXPlayerMPLobby copies it to its +0x88 word.
    std::int32_t Result() const { return result_; }
    void SetSocketForTest(std::unique_ptr<GLXPlayerSocket> socket) { socket_ = std::move(socket); }
    const Timeval& SendTimeoutForTest() const { return sendTimeout_; }
    const Timeval& ReceiveTimeoutForTest() const { return receiveTimeout_; }

private:
    std::unique_ptr<char[]> host_;                         // +0x0c
    std::unique_ptr<char[]> address_;                      // +0x10
    std::int32_t port_ = 0;                                // +0x14
    std::unique_ptr<GLXPlayerSocket> socket_;              // +0x18
    std::int32_t result_ = -1;                             // +0x1c
    std::int32_t state_ = 1;                               // +0x24
    Timeval sendTimeout_{0, 5000};                         // +0x28
    Timeval receiveTimeout_{0, 5000};                      // +0x2c
    std::uint16_t echoId_ = 123;                           // +0x30
};
