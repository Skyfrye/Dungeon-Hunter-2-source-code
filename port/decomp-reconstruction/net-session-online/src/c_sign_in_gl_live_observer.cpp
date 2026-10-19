#include "net-session-online/c_sign_in_gl_live_observer.hpp"

#include <cstring>

#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/deps/matching.hpp"

namespace {
// The alpha server address. Its literal is at 0x90c370 in the original. Its size with the
// NUL is 0x1a, the length the original copies.
constexpr char kAlphaServer[] = "alpha01.gameloft.com:7500";
}  // namespace

// 0x8249b4 _ZN21CSignInGLLiveObserverD1Ev (the D0 at 0x8249e8 is compiler-generated)
CSignInGLLiveObserver::~CSignInGLLiveObserver() { Terminate(); }

// Helper, not in the original: the original calls CSignIn::Get() at each use. A null
// singleton (provider 1 is not ported) is skipped here instead of dereferenced.
void CSignInGLLiveObserver::CancelSignIn() {
    if (CSignIn* signIn = CSignIn::Get()) {
        signIn->CancelLogin();
    }
}

// Helper, not in the original: the event post used by the request handlers.
void CSignInGLLiveObserver::PostSignInEvent(std::int32_t type) {
    if (CSignIn* signIn = CSignIn::Get()) {
        signIn->EventQueue().AddEvent(type, nullptr, 0);
    }
}

// 0x824998 _ZN21CSignInGLLiveObserver9TerminateEv
void CSignInGLLiveObserver::Terminate() {
    configured_ = false;
    loggedIn_ = false;
    lastError_ = 0;
    std::memset(server_, 0, sizeof server_);
}

// 0x824ab4 _ZN21CSignInGLLiveObserver16OnRequestFailureEii
void CSignInGLLiveObserver::OnRequestFailure(std::int32_t code, std::int32_t detail) {
    if (code == 0xf) {
        lastError_ = detail;
        CancelSignIn();
        if (!IsErrorUsernameNotExists() && !IsErrorNoUsername()) {
            if (IsErrorInvalidUsernameOrPassword()) {
                PostSignInEvent(6);
            }
        } else {
            PostSignInEvent(5);
        }
    }
    lastError_ = detail;
}

// 0x824b4c _ZN21CSignInGLLiveObserver16OnRequestTimeoutEi
// The request id is not used by the original.
void CSignInGLLiveObserver::OnRequestTimeout(std::int32_t /*requestId*/) {
    lastError_ = 0x29;
    CancelSignIn();
    PostSignInEvent(8);
}

// 0x824b84 _ZN21CSignInGLLiveObserver14OnNetworkErrorEv
void CSignInGLLiveObserver::OnNetworkError() {
    lastError_ = -2;
    CancelSignIn();
    PostSignInEvent(7);
}

// Helper, not in the original: strncpy into the 0x80-byte buffer with the NUL at the end.
// The original does not check the length. This port keeps the terminator inside the buffer.
void CSignInGLLiveObserver::CopyServerAddress(const char* data, std::int32_t length) {
    constexpr std::size_t kMaxCopy = sizeof server_ - 1;
    std::size_t count = length < 0 ? 0 : static_cast<std::size_t>(length);
    if (count > kMaxCopy) {
        count = kMaxCopy;
    }
    std::strncpy(server_, data, count);
    server_[count] = '\0';
}

// 0x824bbc _ZN21CSignInGLLiveObserver16OnRequestSuccessEiPci
// In the code-1 branch the original sets the configured flag and calls
// CMatchingGLLive::SetGCState(1) through the matching seam. The discarded GetXPlayerURL
// lookup is omitted (see the header). The server copy is bounded, unlike the original.
void CSignInGLLiveObserver::OnRequestSuccess(std::int32_t code, char* data, std::int32_t length) {
    if (code == 0xf) {
        loggedIn_ = true;
    } else if (code < 0x10) {
        if (code == 1) {
            configured_ = true;
            CMatching::Get()->SetGCState(1);
        }
    } else if (code == 0x11) {
        loggedIn_ = false;
    } else if (code == 0x6b) {
        if (CMatching::Get()->UseAlphaServer()) {
            std::memcpy(server_, kAlphaServer, sizeof kAlphaServer);
        } else {
            CopyServerAddress(data, length);
        }
    }
    lastError_ = 0;
}
