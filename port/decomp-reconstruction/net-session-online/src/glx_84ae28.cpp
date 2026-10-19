// Slice glx-09 (first address 0x84ae28): GLXPlayerMPBase::mpSendDisconnect, the
// LCXPlayerHttp socket methods, and the LC_API_IP_STR2INT / LC_API_PARSE_DATA_NEW /
// LC_API_STRNEW helpers. The LC_API_FREE, LC_API_MALLOC and LC_API_GET_TIME thunks
// are not rebuilt here (see the ledger).
#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "net-session-online/xp_api.hpp"
#include "net-session-online/glx_player_mp_base.hpp"
#include "net-session-online/lc_api_net.hpp"
#include "net-session-online/lcx_player_http.hpp"
#include "net-session-online/lcx_player_socket.hpp"

namespace {

// Longest dotted part that LC_API_IP_STR2INT copies (the original's part buffer is 16 bytes).
constexpr std::size_t kIpPartMax = 15;

}  // namespace

// 0x84ae28 _ZN15GLXPlayerMPBase16mpSendDisconnectEv
// With a connection (+0x54): a connected one gets the result -1, the finish package (Connection vtable +0x14), +0x71 set and
// its +0x08 time stamped with XP_API_GET_TIME; an unconnected one is disconnected through mpDisconnect (vtable +0x18), the
// result becomes 0 and OnMPDisconnectSuccess (observer +0x0c) runs. Without a connection nothing happens. The original
// returns the observer call's or the time's leftover; the port returns void.
void GLXPlayerMPBase::mpSendDisconnect() {
    if (!baseConnection_) {
        return;
    }
    if (baseConnection_->isConnected()) {
        lastResult_ = -1;
        baseConnection_->sendFinishConnectionPackage();
        field71_ = 1;
        baseConnection_->handshake_time_ = XP_API_GET_TIME();
    } else {
        mpDisconnect();
        lastResult_ = 0;
        observer_->OnMPDisconnectSuccess();
    }
}

// 0x89d3c0 _ZN13LCXPlayerHttp13UpdateRequestEv
// The original calls the socket's slot 4 without a null check. The port checks, as
// GLXPlayerHttp does.
void LCXPlayerHttp::UpdateRequest() {
    if (socket_ != nullptr) {
        socket_->Run();
    }
}

// 0x89d3dc _ZN13LCXPlayerHttp12IsInProgressEv
bool LCXPlayerHttp::IsInProgress() const {
    return socket_ != nullptr && socket_->IsInProgress();
}

// 0x89d3f8 _ZN13LCXPlayerHttp15IsErrorOccurredEv
bool LCXPlayerHttp::IsErrorOccurred() const {
    return socket_ != nullptr && socket_->IsErrorOccurred();
}

// 0x89d42c _ZN13LCXPlayerHttp6CancelEv
// The original leaves the freed pointers set, so the port clears them.
void LCXPlayerHttp::Cancel() {
    if (socket_ != nullptr) {
        socket_->Cancel();
    }
    postBody_.reset();
    response_.reset();
    responseLength_ = 0;
}

// 0x89cf04 LC_API_IP_STR2INT
// Each dotted part is read with atoi and its low byte goes to the next byte of the result.
// The fourth part ends the loop even when more dots follow. Deviation: parts longer than
// kIpPartMax are clamped, because the original copies them into a 16-byte buffer unchecked.
std::uint32_t LC_API_IP_STR2INT(char* ip) {
    std::uint32_t value = 0;
    int part = 0;
    char* rest = ip;
    for (;;) {
        char token[16];
        std::memset(token, 0, sizeof(token));
        char* dot = std::strstr(rest, ".");
        if (dot == nullptr) {
            break;
        }
        std::size_t len = static_cast<std::size_t>(dot - rest);
        if (len > kIpPartMax) {
            len = kIpPartMax;
        }
        std::memcpy(token, rest, len);
        const std::uint32_t low = static_cast<std::uint32_t>(std::atoi(token)) & 0xffu;
        value |= low << (part * 8);
        ++part;
        if (part == 4) {
            return value;
        }
        rest = dot + 1;
    }
    char token[16];
    std::memset(token, 0, sizeof(token));
    std::strncpy(token, rest, kIpPartMax);
    const std::uint32_t low = static_cast<std::uint32_t>(std::atoi(token)) & 0xffu;
    value |= low << (part * 8);
    return value;
}

// 0x89d1d0 LC_API_PARSE_DATA_NEW
// The original's scan, with `pos` counting the separators still to skip:
//   - a separator decrements pos;
//   - a non-separator at pos == 0 records the start of the field (once);
//   - a non-separator at pos < 0 ends the scan;
//   - the scan ends at the terminating NUL.
// The new buffer has length (end - start) and the copy is length - 1 characters, as
// decompiled. So a field that ends at a separator is copied whole, but a last field that
// ends at the NUL loses its final character (kept; verify against the binary).
// Partial: when no field starts (start == -1) the original reads src[-1]; the port copies
// nothing and returns -1.
int LC_API_PARSE_DATA_NEW(const char* src, char** dst, int pos, char separator) {
    int index = 0;
    int start = -1;
    char c = src[0];
    if (c != '\0') {
        for (;;) {
            if (c == separator) {
                --pos;
            } else if (pos == 0) {
                if (start == -1) {
                    start = index;
                }
            } else if (pos < 0) {
                break;
            }
            ++index;
            c = src[index];
            if (c == '\0') {
                break;
            }
        }
    }
    const int length = index - start;
    if (start == -1) {
        *dst = new char[1]{};
        return -1;
    }
    *dst = new char[static_cast<std::size_t>(length)]{};
    std::memcpy(*dst, src + start, static_cast<std::size_t>(length - 1));
    return start;
}

// 0x89d31c LC_API_STRNEW
char* LC_API_STRNEW(const char* text) {
    if (text == nullptr) {
        return nullptr;
    }
    const std::size_t length = std::strlen(text);
    char* copy = new char[length + 1]{};
    std::memcpy(copy, text, length);
    return copy;
}
