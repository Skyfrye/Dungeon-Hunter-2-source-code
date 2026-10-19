#include "net-session-online/lcx_player_socket.hpp"

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <cstring>

#include "core-platform/lc_api.hpp"  // LC_API_GET_TIME (0x89d3a8)
#include "net-transport/lc_android_socket.hpp"  // LCAndroidSocket (LCXPlayerSocketFactory::GetSocket)

namespace {

// The original lower-cases with LC_API_TOLOWER before it searches.
std::string LowerCopy(const char* text) {
    std::string out(text != nullptr ? text : "");
    for (char& c : out) {
        c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
    }
    return out;
}

// LC_API_STRLEN("\r\n\r\n") is 4: the header terminator.
constexpr char kHeaderEnd[] = "\r\n\r\n";
constexpr std::size_t kHeaderEndLength = sizeof(kHeaderEnd) - 1;

// The original's Content-Length literals. Both are 17 bytes.
constexpr char kContentLengthUpper[] = "\r\nContent-Length:";
constexpr char kContentLengthLower[] = "\r\nContent-length:";
constexpr std::size_t kContentLengthLiteralLength = sizeof(kContentLengthUpper) - 1;

// The chunk size line may carry an extension after a space. The original cuts the line at
// the first space when that space is not the first byte.
void StripChunkExtension(std::string& line) {
    const std::size_t space = line.find(' ');
    if (space != std::string::npos && space > 0) {
        line.resize(space);
    }
}

}  // namespace

// 0x8a0314 and 0x8a03bc _ZN15LCXPlayerSocketC1EPciP23LCXPlayerSocketObserver
LCXPlayerSocket::LCXPlayerSocket(const char* serverName, std::int32_t port,
                                 LCXPlayerSocketObserver* observer)
    : serverPort_(port), observer_(observer) {
    if (serverName != nullptr) {
        const std::size_t length = std::strlen(serverName);
        serverName_.reset(new char[length + 1]);
        std::memcpy(serverName_.get(), serverName, length + 1);
    }
}

// 0x8a02c4 _ZN15LCXPlayerSocket5StartEv
void LCXPlayerSocket::Start() {
    receiveLength_ = 0;
    std::memset(receiveBuffer_, 0, sizeof(receiveBuffer_));
    socket_ = -1;
    state_ = kStateStartConnect;
    serverAddress_ = nullptr;
}

// 0x8a01b4 _ZN15LCXPlayerSocket6CancelEv
// A socket that has not started, has failed or has finished is left alone. Otherwise the
// state becomes cancelled, the non-blocking connect state is cleared, and CloseSocket (vtable +0x3c) runs.
void LCXPlayerSocket::Cancel() {
    if (state_ == kStateNone || state_ == kStateError) {
        return;
    }
    if (state_ == kStateRequestComplete) {
        return;
    }
    state_ = kStateCancelled;
    nonBlockConnectState_ = 0;
    CloseSocket();  // vtable +0x3c
}

// 0x8a01f4 _ZN15LCXPlayerSocket12IsInProgressEv
bool LCXPlayerSocket::IsInProgress() const {
    if (state_ == kStateNone || state_ == kStateError) {
        return false;
    }
    return state_ != kStateCancelled && state_ != kStateRequestComplete;
}

namespace {

// The lookup timeout of the start state (0x270F, 9999 ms) and the chunk size of a send or receive.
constexpr std::int32_t kLookupTimeoutMs = 0x270F;
constexpr std::int32_t kChunkSize = 2048;

}  // namespace

// 0x8a1c1c _ZN15LCXPlayerSocket3RunEv, vtable +0x10
// One step of the state machine, as the original's switch runs it. Each state makes one platform
// call (the virtual set above) and returns. The base class has no socket, so with its defaults the
// start state times out into kStateError.
// Deviations: a null observer ends a send in kStateError (the original calls through the pointer).
// The LC_DEBUG_OUT traces are not emitted: LC_DEBUG_OUT (0x89c304) is a bare return in the binary, so
// that omission is exact. The lookup start time (+0x864) is not set by Start in the binary either,
// so the lookup timeout is measured from 0 there and here. m_nReceived and m_buffer_used are
// cleared when a send completes, as the Hex-Rays body does.
void LCXPlayerSocket::Run() {
    const std::int32_t state = state_;
    if (state == kStateNone || state == kStateError || state == kStateCancelled) {
        return;
    }
    // The error exit shared by the states: read the error (for its trace), close, and fail.
    auto fail = [this]() {
        GetLastError();
        CloseSocket();
        state_ = kStateError;
    };

    switch (state) {
        case kStateStartConnect:
            if (serverAddress_ == nullptr) {
                serverAddress_ = GetHostByName(serverName_.get());  // vtable +0x20
            }
            if (serverAddress_ != nullptr) {
                if (CreateSocket()) {
                    state_ = kStateWaitConnecting;
                } else {
                    GetLastError();  // read for the trace only; the state stays
                }
            } else if (static_cast<std::uint32_t>(LC_API_GET_TIME() - gethostbynameStartTime_) >
                       static_cast<std::uint32_t>(kLookupTimeoutMs)) {
                GetLastError();
                state_ = kStateError;
                gethostbynameState_ = 0;
            }
            return;

        case kStateWaitConnecting:
            if (Connect()) {
                sentLength_ = 0;
                sendStartTime_ = LC_API_GET_TIME();
                state_ = kStateSendRequest;
                nonBlockConnectState_ = 0;
            } else if (nonBlockConnectState_ != 1) {
                GetLastError();
                CloseSocket();
                nonBlockConnectState_ = 0;
                state_ = kStateError;
            }
            return;

        case kStateSendRequest: {
            const std::int32_t ready = Select(kSelectWrite);
            if (ready < 0) {
                fail();
                return;
            }
            if (ready == 0) {
                return;
            }
            if (observer_ == nullptr) {
                fail();
                return;
            }
            const std::int32_t total = observer_->GetRequestLength();
            const char* data = observer_->GetRequestData();
            std::int32_t chunk = total - sentLength_;
            if (chunk > kChunkSize) {
                chunk = kChunkSize;
            }
            const std::int32_t sent = Send(data != nullptr ? data + sentLength_ : nullptr, chunk);
            if (sent < 0) {
                fail();
                return;
            }
            sentLength_ += sent;
            if (sentLength_ == total) {
                receiveLength_ = 0;      // m_nReceived
                content_.clear();
                receiveHttpHeader_ = true;
                lengthKnown_ = false;
                bufferUsed_ = false;     // m_buffer_used
                recvStartTime_ = LC_API_GET_TIME();
                state_ = kStateWaitResponse;
            }
            return;
        }

        case kStateWaitResponse: {
            if (Select(kSelectRead) <= 0) {
                return;
            }
            std::memset(receiveBuffer_, 0, sizeof(receiveBuffer_));
            const std::int32_t got = Recv(receiveBuffer_, kChunkSize);
            if (got < 0) {
                GetLastError();
                CloseSocket();
                state_ = kStateError;
                if (observer_ != nullptr) {
                    observer_->SetResponseLen(0);
                }
                return;
            }
            if (got > 0) {
                content_.append(receiveBuffer_, static_cast<std::size_t>(got));
                if (receiveHttpHeader_) {
                    if (static_cast<std::int32_t>(content_.find("\r\n\r\n")) <= 0) {
                        return;  // the header is not complete yet
                    }
                    if (ParseHttpHeader("Content-Length") >= 0) {
                        totalLength_ = CalculateTotalLength();
                        lengthKnown_ = true;
                    }
                    RemoveHttpHeader();
                    receiveHttpHeader_ = false;
                }
                const std::int32_t received = static_cast<std::int32_t>(content_.size());
                if (observer_ != nullptr) {
                    observer_->SetResponseLen(received);
                }
                if (lengthKnown_ && totalLength_ == received) {
                    state_ = kStateCloseConnection;
                }
                return;
            }
            // Zero bytes: the peer closed the connection.
            if (!lengthKnown_) {
                ParseChunkedContent();
            }
            if (observer_ != nullptr) {
                observer_->SetResponseData(content_.data(), static_cast<std::int32_t>(content_.size()));
            }
            content_.clear();
            state_ = kStateRequestComplete;
            return;
        }

        case kStateCloseConnection:
            CloseSocket();
            if (observer_ != nullptr) {
                observer_->SetResponseData(content_.data(), static_cast<std::int32_t>(content_.size()));
            }
            content_.clear();
            state_ = kStateRequestComplete;
            return;

        default:
            return;  // kStateRequestComplete, and any other value
    }
}

// 0x8a02fc _ZN15LCXPlayerSocket11SetAcceptIPEPc
// The copy is LC_API_STRNEW (0x89d31c): null gives null. The previous address is released
// here; the original overwrites it and leaks it (deviation).
void LCXPlayerSocket::SetAcceptIP(const char* address) {
    if (address == nullptr) {
        acceptIp_.reset();
        return;
    }
    const std::size_t length = std::strlen(address);
    acceptIp_.reset(new char[length + 1]);
    std::memcpy(acceptIp_.get(), address, length + 1);
}

// 0x8a05b8 _ZN15LCXPlayerSocket15ParseHttpHeaderEPc
// The header block is the content before the first CRLF CRLF (empty when there is none).
// The name is searched for in the lower-cased block. An empty name matches at 0, as in the
// original; a name that is not found gives -1.
std::int32_t LCXPlayerSocket::ParseHttpHeader(const char* name) const {
    const std::size_t end = content_.find(kHeaderEnd);
    const std::string head =
        end == std::string::npos ? std::string() : LowerCopy(content_.substr(0, end).c_str());
    const std::size_t pos = head.find(LowerCopy(name));
    return pos == std::string::npos ? -1 : static_cast<std::int32_t>(pos);
}

// 0x8a090c _ZN15LCXPlayerSocket16RemoveHttpHeaderEv
void LCXPlayerSocket::RemoveHttpHeader() {
    const std::size_t end = content_.find(kHeaderEnd);
    if (end != std::string::npos && end > 0) {
        content_ = content_.substr(end + kHeaderEndLength);
    }
}

// 0x8a1534 _ZN15LCXPlayerSocket20CalculateTotalLengthEv
// The Content-Length value is read from the header block (the content before CRLF CRLF).
// The upper-case spelling is tried first, then the lower-case one. The value runs to the
// next CRLF and is read with atoi.
std::int32_t LCXPlayerSocket::CalculateTotalLength() const {
    const std::size_t end = content_.find(kHeaderEnd);
    if (end == std::string::npos) {
        return -1;
    }
    const std::string header = content_.substr(0, end);

    std::size_t at = header.find(kContentLengthUpper);
    if (at == std::string::npos) {
        at = header.find(kContentLengthLower);
        if (at == std::string::npos) {
            return 0;
        }
    }
    const std::string tail = header.substr(at + kContentLengthLiteralLength);
    const std::size_t lineEnd = tail.find("\r\n");
    if (lineEnd == std::string::npos) {
        return -1;
    }
    return static_cast<std::int32_t>(std::atoi(tail.substr(0, lineEnd).c_str()));
}

// 0x8a0af0 _ZN15LCXPlayerSocket19ParseChunkedContentEv
// Partial. The first chunk is decoded as the pseudocode has it. For the second and later
// chunks the pseudocode uses two offsets that look wrong: the size line is read with the
// absolute CRLF index as its length, and the next data offset is (data end + 4) plus that
// absolute index. Both are reproduced as they are, so multi-chunk bodies decode the way
// the original decodes them, not the way the server meant. The debug traces are not kept.
// The original throws std::out_of_range where this returns 0.
std::int32_t LCXPlayerSocket::ParseChunkedContent() {
    const std::string src = content_;
    content_.clear();
    if (src.size() <= 1) {
        return 0;
    }

    const std::size_t crlf = src.find("\r\n");
    if (crlf == std::string::npos || crlf == 0) {
        return 0;
    }
    std::string sizeLine = src.substr(0, crlf);
    StripChunkExtension(sizeLine);
    long chunk = std::strtol(sizeLine.c_str(), nullptr, 16);
    std::size_t next = crlf + 2;
    if (chunk <= 0) {
        return 1;
    }

    for (;;) {
        if (next > src.size()) {
            return 0;
        }
        const std::size_t dataEnd =
            std::min<std::size_t>(src.size(), next + static_cast<std::size_t>(chunk));
        content_.append(src, next, dataEnd - next);

        const std::size_t v25 = next + static_cast<std::size_t>(chunk);
        const std::size_t v26 = v25 + 2;
        if (v25 + 2 >= src.size()) {
            return 0;
        }
        const std::size_t v58 = v25 + 4;
        if (src.size() < v58) {
            return 0;
        }
        const std::size_t cr = src.find("\r\n", v26);
        if (cr == std::string::npos) {
            return 0;
        }
        // As decompiled: the length is the absolute CRLF index (clamped by substr).
        std::string line = src.substr(v26, cr);
        StripChunkExtension(line);
        chunk = std::strtol(line.c_str(), nullptr, 16);
        next = v58 + cr;
        if (chunk <= 0) {
            return 1;
        }
    }
}

// 0x89e57c _ZN22LCXPlayerSocketFactory9GetSocketEPciP23LCXPlayerSocketObserver
// operator new(0xcf0) and the LCAndroidSocket constructor, as the original.
LCXPlayerSocket* LCXPlayerSocketFactory::GetSocket(const char* serverName, std::int32_t port,
                                                   LCXPlayerSocketObserver* observer) {
    return new LCAndroidSocket(serverName, port, observer);
}
