// Track B batch e1-net-session-online-GLXPlayerPing-0: RecvEchoReply and Kernel of the ICMP
// echo probe. The rest of the class is in src/glx_player_ping.cpp.
#include <chrono>
#include <cstring>
#include <thread>

#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <winsock2.h>
#else
#include <netdb.h>
#include <arpa/inet.h>
#endif

#include "net-session-online/deps/glx_stand_ins.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_ping.hpp"
#include "net-session-online/xp_api.hpp"

// 0x8402f8 GLXPlayerPing::RecvEchoReply()
// The receive step is the socket's vtable +0x5c (RecvFrom) with the 324-byte buffer. The parsing below
// follows the original's byte offsets in the 324-byte packet:
// +0x08 TTL, +0x0c source address, +0x14 ICMP type, +0x15 ICMP code, +0x18 ICMP identifier,
// +0x1a ICMP sequence and +0x20 the echoed send timestamp (32-bit, host order as written by
// SendEchoRequest).
std::int32_t GLXPlayerPing::RecvEchoReply() {
    std::uint8_t packet[324];
    XP_API_MEMSET(packet, 0, sizeof(packet));
    const std::int32_t count = socket_->RecvFrom(reinterpret_cast<char*>(packet), static_cast<int>(sizeof(packet)));
    if (count < 0) {
        result_ = -1;
        return -1;
    }

    std::uint16_t replyId = 0;
    std::uint16_t replySeq = 0;
    std::uint32_t sentStamp = 0;
    std::memcpy(&replyId, &packet[24], sizeof(replyId));
    std::memcpy(&replySeq, &packet[26], sizeof(replySeq));
    std::memcpy(&sentStamp, &packet[32], sizeof(sentStamp));
    const std::uint8_t icmpType = packet[20];
    const std::uint8_t icmpCode = packet[21];

    if (replyId != echoId_ || icmpType != 0) {
        // The original passes in_addr to inet_ntoa; the packed form (low byte first) is the
        // in_addr memory order of the four source bytes, so XP_API_IP_INT2STR prints the same text.
        const std::uint32_t source = static_cast<std::uint32_t>(packet[12]) |
                                     (static_cast<std::uint32_t>(packet[13]) << 8) |
                                     (static_cast<std::uint32_t>(packet[14]) << 16) |
                                     (static_cast<std::uint32_t>(packet[15]) << 24);
        char sourceText[32] = {};
        XP_API_IP_INT2STR(source, sourceText);
        XP_DEBUG_OUT("recv icmp packet from %s type=%d code=%d\n", sourceText,
                     static_cast<int>(icmpType), static_cast<int>(icmpCode));
        return -2;
    }

    const std::int32_t elapsed = static_cast<std::int32_t>(
        XP_API_GET_TIME() - sentStamp);
    result_ = elapsed;
    if (elapsed <= 0) {
        XP_DEBUG_OUT("\nReply from: %s: bytes=%d seq:%d time<1ms\n", address_.get(), 32,
                     static_cast<int>(replySeq));
    } else {
        XP_DEBUG_OUT("\nReply from: %s: bytes=%d seq:%d TTL=%d time=%dms\n", address_.get(), 32,
                     static_cast<int>(replySeq), static_cast<int>(packet[8]), elapsed);
    }
    return count;
}

// 0x84069c GLXPlayerPing::Kernel()
// The probe state machine, run once per call: state 2 resolves the host, 3 sends an echo
// request, 4 waits for the reply, 5 holds the result for the receive timeout. Every path ends
// with a 1 ms sleep (usleep(0x3e8) in the original) and returns 0.
// State 2 calls the socket's GetHostByName (vtable +0x20) with the host: a null result keeps the state;
// otherwise the first address (h_length bytes) is turned into dotted text with inet_ntoa, replaces the
// owned address string, and the round starts. State 4 passes the socket handle (GLXPlayerSocket +0x08) to
// WaitForEchoReply.
// The timeouts use the original's two-int pair: tv_sec holds the start time and tv_usec the
// timeout in the same unit as XP_API_GET_TIME.
std::int32_t GLXPlayerPing::Kernel() {
    // LABEL_2 in the original: a failed send or wait. Result -1, receive timer starts, state 5.
    auto failRound = [this]() {
        result_ = -1;
        receiveTimeout_.tv_sec = static_cast<std::int32_t>(XP_API_GET_TIME());
        state_ = 5;
    };
    // LABEL_10 in the original: one wait step of state 4 (select, then receive or time out).
    auto waitRound = [this, &failRound]() {
        const std::int32_t waited = WaitForEchoReply(socket_->socket_);
        if (waited < 0) {
            failRound();
        } else if (waited != 0) {
            if (RecvEchoReply() >= 0) {
                receiveTimeout_.tv_sec = static_cast<std::int32_t>(XP_API_GET_TIME());
                state_ = 5;
            }
        } else {
            const std::int32_t sinceSend = static_cast<std::int32_t>(
                XP_API_GET_TIME() - static_cast<std::uint32_t>(sendTimeout_.tv_sec));
            if (sinceSend >= sendTimeout_.tv_usec) {
                XP_DEBUG_OUT("TimeOut\n");
                receiveTimeout_.tv_sec = static_cast<std::int32_t>(XP_API_GET_TIME());
                result_ = -2;
                state_ = 3;
            }
        }
    };
    // LABEL_8 in the original: send one echo request, start the send timer, state 4. The original
    // then falls into the wait step (LABEL_10) in the same call.
    auto startRound = [this, &failRound, &waitRound]() {
        if (SendEchoRequest() < 0) {
            failRound();
            return;
        }
        state_ = 4;
        sendTimeout_.tv_sec = static_cast<std::int32_t>(XP_API_GET_TIME());
        waitRound();
    };

    switch (state_) {
    case 2: {
        hostent* entry = socket_->GetHostByName(host_.get());  // vtable +0x20
        if (entry != nullptr) {
            in_addr address{};
            std::memcpy(&address, entry->h_addr_list[0], static_cast<std::size_t>(entry->h_length));
            address_.reset();
            const char* text = inet_ntoa(address);
            const std::size_t length = std::strlen(text);
            address_.reset(new char[length + 1]);
            std::memcpy(address_.get(), text, length + 1);
            startRound();  // LABEL_8
        }
        break;
    }
    case 3:
        startRound();
        break;
    case 4:
        waitRound();
        break;
    case 5: {
        const std::int32_t sinceReceive = static_cast<std::int32_t>(
            XP_API_GET_TIME() - static_cast<std::uint32_t>(receiveTimeout_.tv_sec));
        if (sinceReceive >= receiveTimeout_.tv_usec) {
            state_ = 3;
        }
        break;
    }
    default:
        break;
    }

    std::this_thread::sleep_for(std::chrono::microseconds(0x3e8));
    return 0;
}
