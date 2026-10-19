#include "net-session-online/glx_player_http.hpp"

#include <cstring>

namespace {

// The original's STRNEW: a copy of the text, or null for a null argument.
std::unique_ptr<char[]> CopyText(const char* text) {
    if (text == nullptr) {
        return nullptr;
    }
    const std::size_t length = std::strlen(text);
    std::unique_ptr<char[]> copy(new char[length + 1]);
    std::memcpy(copy.get(), text, length + 1);
    return copy;
}

}  // namespace

// 0x82deac and 0x82df54 _ZN13GLXPlayerHttpC1EPcS0_S0_
// Partial: the factory creates the base socket class in the port, while the original
// creates CAndroidSocket. The observer callbacks are not recovered.
GLXPlayerHttp::GLXPlayerHttp(const char* serverAddress, const char* second, const char* third)
    : field414_(CopyText(second)), field418_(CopyText(third)) {
    serverAddress_ = CopyText(serverAddress);
    socket_.reset(GLXPlayerSocketFactory::GetSocket(serverAddress, 0x50, this));
}

// 0x82d298 _ZN13GLXPlayerHttpD1Ev and 0x82d37c _ZN13GLXPlayerHttpD2Ev
// The original frees the response and the post body with operator delete in D1 and with
// free in D2. The port frees both through their owners. Partial, because the two allocators
// do not match in the original and the port does not reproduce that.
GLXPlayerHttp::~GLXPlayerHttp() {
    Cancel();
}

// 0x82ce08 _ZN13GLXPlayerHttp5StartEv
void GLXPlayerHttp::Start() {
    if (socket_) {
        socket_->Start();
    }
}

// 0x82ce48 _ZN13GLXPlayerHttp13UpdateRequestEv
void GLXPlayerHttp::UpdateRequest() {
    if (socket_) {
        socket_->Run();
    }
}

// 0x82ce6c _ZN13GLXPlayerHttp12IsInProgressEv
std::int32_t GLXPlayerHttp::IsInProgress() const {
    return socket_ ? socket_->IsInProgress() : 0;
}

// 0x82ce98 _ZN13GLXPlayerHttp15IsErrorOccurredEv
std::int32_t GLXPlayerHttp::IsErrorOccurred() const {
    return socket_ ? (socket_->IsErrorOccurred() ? 1 : 0) : 0;
}

// 0x82ceec _ZN13GLXPlayerHttp6CancelEv
// The original frees the post body and the response but leaves the pointers set, which is
// a dangling pointer. The port clears them.
void GLXPlayerHttp::Cancel() {
    if (socket_) {
        socket_->Cancel();
    }
    postBody_.reset();
    response_.reset();
    responseLength_ = 0;
}

// 0x82d23c _ZN13GLXPlayerHttp15SetResponseDataEPci
void GLXPlayerHttp::SetResponseData(const char* data, std::int32_t length) {
    const std::size_t count = static_cast<std::size_t>(length);
    response_.reset(new char[count + 1]());
    std::memcpy(response_.get(), data, count);
    responseLength_ = length;
}

// 0x82cedc _ZN13GLXPlayerHttp17GetSendPercentageEv
std::uint32_t GLXPlayerHttp::GetSendPercentage() const {
    if (!socket_) {
        return 0;
    }
    return socket_->GetSendPercentage();
}

// 0x82d220 _ZN13GLXPlayerHttp16GetRequestLengthEv
// The GET path is XP_API_STRLEN on the inline buffer. The POST path returns the stored length.
std::uint32_t GLXPlayerHttp::GetRequestLength() const {
    if (sendByPost_) {
        return static_cast<std::uint32_t>(postLength_);
    }
    return static_cast<std::uint32_t>(std::strlen(request_));
}

void GLXPlayerHttp::SetRequestForTest(const char* text) {
    std::strncpy(request_, text, sizeof(request_) - 1);
    request_[sizeof(request_) - 1] = '\0';
}

void GLXPlayerHttp::SetPostForTest(const char* body, std::int32_t length, bool byPost) {
    const std::size_t count = static_cast<std::size_t>(length);
    postBody_.reset(new char[count + 1]());
    std::memcpy(postBody_.get(), body, count);
    postLength_ = length;
    sendByPost_ = byPost;
}

void GLXPlayerHttp::SetServerAddressForTest(const char* address) {
    serverAddress_ = CopyText(address);
}

void GLXPlayerHttp::SetResponseForTest(const char* text) {
    SetResponseData(text, static_cast<std::int32_t>(std::strlen(text)));
}
