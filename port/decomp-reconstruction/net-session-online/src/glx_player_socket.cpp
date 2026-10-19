#include "net-session-online/glx_player_socket.hpp"

#include <cctype>
#include <cstdlib>
#include <cstring>

#include "core-platform/time_util.hpp"
#include "net-transport/android_socket.hpp"  // CAndroidSocket (GLXPlayerSocketFactory::GetSocket)

namespace {

constexpr std::size_t kNpos = std::string::npos;

// XP_API_GET_TIME (0x82b138) is gettimeofday in milliseconds, tv_sec * 1000 + tv_usec / 1000. That is
// the formula of OS_GetTime (0x89d368). The inline stand-in in deps/glx_stand_ins.hpp returns 0, so the
// timeouts in Run would never fire; this file reads the clock instead.
std::uint32_t ClockMs() { return static_cast<std::uint32_t>(OS_GetTime()); }

// The original's std::string::substr throws out_of_range past the end. The port returns an
// empty string instead, and the caller's loop then ends.
std::string SubstrOrEmpty(const std::string& text, std::size_t pos, std::size_t count = kNpos) {
    if (pos > text.size()) {
        return std::string();
    }
    return text.substr(pos, count);
}

// XP_API_TOLOWER over a whole string.
std::string LowerCopy(std::string text) {
    for (char& c : text) {
        c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
    }
    return text;
}

}  // namespace

// 0x8302f0 and 0x83039c _ZN15GLXPlayerSocketC1EPciP23GLXPlayerSocketObserver
// The ARM listing copies the host name with XP_API_STRNEW and stores null when the
// argument is null. The decompiled body omits that copy.
GLXPlayerSocket::GLXPlayerSocket(const char* host, std::int32_t port,
                                 GLXPlayerSocketObserver* observer)
    : port_(port), observer_(observer) {
    if (host != nullptr) {
        const std::size_t length = std::strlen(host);
        host_.reset(new char[length + 1]);
        std::memcpy(host_.get(), host, length + 1);
    }
}

// 0x8301ac _ZN15GLXPlayerSocket5StartEv
void GLXPlayerSocket::Start() {
    receiveLength_ = 0;
    std::memset(receiveBuffer_, 0, sizeof(receiveBuffer_));
    socket_ = -1;
    state_ = 1;
    hostEntry_ = nullptr;
}

// 0x83007c _ZN15GLXPlayerSocket6CancelEv
// Only an active socket (state not 0, 6, 7) is cancelled. The vtable hook runs last.
void GLXPlayerSocket::Cancel() {
    const std::int32_t state = state_;
    if (state != 0 && state != 7 && state != 6) {
        state_ = 8;
        nonBlockConnectState_ = 0;
        CloseSocket();  // vtable +0x3c
    }
}

// 0x8300bc _ZN15GLXPlayerSocket12IsInProgressEv
// States 0, 7 and 8 are not in progress. State 6 gives 0 and every other state gives 1.
std::int32_t GLXPlayerSocket::IsInProgress() const {
    if (state_ != 0 && state_ != 7 && state_ != 8) {
        return state_ - 6 != 0 ? 1 : 0;
    }
    return 0;
}

// 0x830cb0 _ZN15GLXPlayerSocket19CalculateTotalLengthEv
std::int32_t GLXPlayerSocket::CalculateTotalLength() const {
    constexpr const char* kUpper = "\r\nContent-Length:";
    constexpr const char* kLower = "\r\nContent-length:";

    const std::size_t headerEnd = content_.find("\r\n\r\n", 0, 4);
    if (headerEnd == kNpos) {
        return -1;
    }
    const std::string head = content_.substr(0, headerEnd);

    const std::size_t upper = head.find(kUpper, 0, std::strlen(kUpper));
    if (upper != kNpos) {
        std::string value = SubstrOrEmpty(head, upper + std::strlen(kUpper));
        const std::size_t lineEnd = value.find("\r\n", 0, 2);
        if (lineEnd == kNpos) {
            return -1;
        }
        value = value.substr(0, lineEnd);
        return std::atoi(value.c_str());
    }

    const std::size_t lower = head.find(kLower, 0, std::strlen(kLower));
    if (lower == kNpos) {
        return 0;
    }
    std::string value = SubstrOrEmpty(head, lower + std::strlen(kLower));
    const std::size_t lineEnd = value.find("\r\n");
    if (lineEnd == kNpos) {
        return -1;
    }
    value = value.substr(0, lineEnd);
    return std::atoi(value.c_str());
}

// 0x830448 _ZN15GLXPlayerSocket15ParseHttpHeaderEPc
// The found path matches the binary line by line (checked against the 17 branch targets): a lower-cased
// copy of the name, the CRLF CRLF split in the content string at +0x840, a lower-cased copy of the header
// block, and a find of the name in it. Deviations: the binary copies npos bytes when the terminator is
// missing (undefined), so the port returns npos; and the binary's temporary allocations are emulated by
// std::string here.
std::uint32_t GLXPlayerSocket::ParseHttpHeader(const char* name) const {
    const std::string lowerName = LowerCopy(name != nullptr ? name : "");
    const std::size_t end = content_.find("\r\n\r\n", 0, 4);
    if (end == kNpos) {
        return static_cast<std::uint32_t>(kNpos);
    }
    const std::string header = LowerCopy(content_.substr(0, end));
    return static_cast<std::uint32_t>(header.find(lowerName, 0));
}

// 0x8305bc _ZN15GLXPlayerSocket16RemoveHttpHeaderEv
void GLXPlayerSocket::RemoveHttpHeader() {
    const std::size_t end = content_.find("\r\n\r\n", 0, 4);
    if (end != kNpos && end > 0) {
        content_ = SubstrOrEmpty(content_, end + std::strlen("\r\n\r\n"));
    }
}

// 0x83067c _ZN15GLXPlayerSocket19ParseChunkedContentEv
// Walks the chunks in the content, appends each chunk's data to content_ and returns 1.
// The original computes the next chunk offset as (CRLF position + 2 + CRLF position), and
// the size line is cut at the absolute CRLF position (substr(next, crlf)). Both are kept as
// decompiled, so multi-chunk bodies decode the way the original does, not necessarily the
// way the server meant. The debug traces are not reproduced.
std::int32_t GLXPlayerSocket::ParseChunkedContent() {
    const std::string raw = content_;
    content_.clear();

    std::size_t crlf = raw.find("\r\n", 0, 2);
    if (crlf == kNpos || crlf == 0) {
        return 0;
    }
    std::string line = raw.substr(0, crlf);

    std::size_t space = line.find(" ", 0, 1);
    if (space != kNpos && space > 0) {
        line = line.substr(0, space);
    }
    std::int32_t chunkSize = static_cast<std::int32_t>(std::strtol(line.c_str(), nullptr, 16));
    std::size_t pos = crlf + 2;

    while (chunkSize > 0) {
        content_.append(SubstrOrEmpty(raw, pos, static_cast<std::size_t>(chunkSize)));
        const std::size_t dataEnd = pos + static_cast<std::size_t>(chunkSize);
        const std::size_t next = dataEnd + 2;
        crlf = raw.find("\r\n", next, 2);
        if (crlf == kNpos || crlf == 0) {
            return 0;
        }
        line = SubstrOrEmpty(raw, dataEnd + 2, crlf);
        space = line.find(" ", 0, 1);
        if (space != kNpos && space > 0) {
            line = line.substr(0, space);
        }
        chunkSize = static_cast<std::int32_t>(std::strtol(line.c_str(), nullptr, 16));
        pos = next + 2 + crlf;
    }
    return 1;
}

// Error path of the Run states: GetLastError (vtable +0x2c, read for its trace), CloseSocket
// (vtable +0x3c) and state 7.
void GLXPlayerSocket::FailAndClose() {
    GetLastError();
    CloseSocket();
    state_ = 7;
}

// 0x830f20 _ZN15GLXPlayerSocket3RunEv
// Every state follows the Hex-Rays body and the 364-instruction listing, including the XP_API_GET_TIME
// timers (ClockMs above). Every transport call goes through the platform slot at the offset the original
// uses: GetHostByName +0x20, CreateSocket +0x28, GetLastError +0x2c, Connect +0x34, CloseSocket +0x3c,
// Select +0x40, Send +0x44, Recv +0x48. The response span the observer receives is the content string's own
// span (its finish pointer at +0x83c minus its start pointer at +0x840), so SetResponseLen gets
// content_.size() and SetResponseData gets content_.data() and content_.size().
// Deviation kept: the binary emits 12 XP_DEBUG_OUT traces in this function (0x831028, 0x8310a8, 0x8311c0,
// 0x831220, 0x83127c, 0x8312e4, 0x831320, 0x831338, 0x831390, 0x83140c, 0x83143c, 0x831478); this body
// does not (logging only, see the ledger row).
void GLXPlayerSocket::Run() {
    // States 0 (idle), 7 (error) and 8 (cancelled) do nothing.
    if (state_ == 0 || state_ == 7 || state_ == 8) {
        return;
    }
    switch (state_) {
        case 1: {  // started: resolve the host, then create the socket
            if (hostEntry_ != nullptr || (hostEntry_ = GetHostByName(host_.get())) != nullptr) {
                if (CreateSocket()) {
                    state_ = 2;
                } else {
                    // A failed create reads the error (vtable +0x2c) and leaves the state as it is.
                    GetLastError();
                }
            } else {
                const auto elapsed = static_cast<std::int32_t>(ClockMs() - static_cast<std::uint32_t>(gethostbynameTimeStart_));
                if (elapsed > 9999) {
                    GetLastError();
                    state_ = 7;
                    gethostbynameState_ = 0;
                }
            }
            return;
        }
        case 2: {  // connecting
            if (Connect() != 0) {
                sentBytes_ = 0;
                sendPercentage_ = 0;
                state_ = 3;
                sendStartTime_ = ClockMs();
                nonBlockConnectState_ = 0;
            } else if (nonBlockConnectState_ == 1) {
                // still connecting
            } else {
                GetLastError();
                CloseSocket();
                nonBlockConnectState_ = 0;
                state_ = 7;
            }
            return;
        }
        case 3: {  // sending the request from the observer's data
            const std::int32_t ready = Select(kSelectWrite);
            if (ready < 0) {
                FailAndClose();
                return;
            }
            if (ready == 0) {
                return;
            }
            // The original reads the length (observer slot +0x04) before the data (slot +0x00).
            const auto total = observer_ != nullptr
                                   ? static_cast<std::int32_t>(observer_->GetRequestLength())
                                   : 0;
            const char* data = observer_ != nullptr ? observer_->GetRequestData() : nullptr;
            std::int32_t chunk = total - sentBytes_;
            if (chunk > 2048) {
                chunk = 2048;
            }
            const std::int32_t sent = Send(data != nullptr ? data + sentBytes_ : nullptr, chunk);
            if (sent < 0) {
                FailAndClose();
                return;
            }
            sentBytes_ += sent;
            if (total > 0) {
                sendPercentage_ = static_cast<std::uint32_t>(100 * sentBytes_ / total);
            }
            if (sentBytes_ == total) {
                // Send successful: the reply starts with a header.
                receiveLength_ = 0;
                content_.clear();
                bufferUsed_ = true;
                headerPending_ = true;
                contentLengthKnown_ = false;
                state_ = 4;
                receiveStartTime_ = ClockMs();
            }
            return;
        }
        case 4: {  // receiving the reply
            if (Select(kSelectRead) <= 0) {
                return;
            }
            std::memset(receiveBuffer_, 0, sizeof(receiveBuffer_));
            const std::int32_t received = Recv(receiveBuffer_, 2048);
            if (received < 0) {
                FailAndClose();
                if (observer_ != nullptr) {
                    observer_->SetResponseLen(0);
                }
                return;
            }
            if (received > 0) {
                content_.append(receiveBuffer_, static_cast<std::size_t>(received));
                if (headerPending_) {
                    // The header ends at the first CRLF CRLF, which must not be at 0.
                    const std::size_t end = content_.find("\r\n\r\n", 0, 4);
                    if (end == std::string::npos || end == 0) {
                        return;
                    }
                    if ((ParseHttpHeader("Content-Length") & 0x80000000u) == 0) {
                        expectedLength_ = CalculateTotalLength();
                        contentLengthKnown_ = true;
                    }
                    RemoveHttpHeader();
                    headerPending_ = false;
                }
                const auto available = static_cast<std::int32_t>(content_.size());
                if (observer_ != nullptr) {
                    observer_->SetResponseLen(available);
                }
                if (contentLengthKnown_ && expectedLength_ == available) {
                    state_ = 5;
                }
            } else {
                // The peer closed the connection: decode a chunked body, then report it.
                if (!contentLengthKnown_) {
                    ParseChunkedContent();
                }
                if (observer_ != nullptr) {
                    observer_->SetResponseData(content_.data(), static_cast<std::int32_t>(content_.size()));
                }
                content_.clear();
                state_ = 6;
            }
            return;
        }
        case 5: {  // response complete: close, report, finish
            CloseSocket();
            if (observer_ != nullptr) {
                observer_->SetResponseData(content_.data(), static_cast<std::int32_t>(content_.size()));
            }
            content_.clear();
            state_ = 6;
            return;
        }
        default:
            return;
    }
}

// 0x83006c _ZN15GLXPlayerSocket17GetSendPercentageEv
std::uint32_t GLXPlayerSocket::GetSendPercentage() const {
    return sendPercentage_ > 100 ? 0 : sendPercentage_;
}

// 0x8302d8 _ZN15GLXPlayerSocket11SetAcceptIPEPc
// The original calls XP_API_STRNEW (operator new[]) on the argument, so the argument must
// not be null. The port copies a null argument as an empty string.
void GLXPlayerSocket::SetAcceptIP(const char* address) {
    const char* text = address != nullptr ? address : "";
    const std::size_t length = std::strlen(text);
    acceptIp_.reset(new char[length + 1]);
    std::memcpy(acceptIp_.get(), text, length + 1);
}

// 0x831528 _ZN22GLXPlayerSocketFactory9GetSocketEPciP23GLXPlayerSocketObserver
// operator new(0xcf4) + the CAndroidSocket constructor, as the original.
GLXPlayerSocket* GLXPlayerSocketFactory::GetSocket(const char* host, std::int32_t port,
                                                   GLXPlayerSocketObserver* observer) {
    return new CAndroidSocket(host, port, observer);
}
