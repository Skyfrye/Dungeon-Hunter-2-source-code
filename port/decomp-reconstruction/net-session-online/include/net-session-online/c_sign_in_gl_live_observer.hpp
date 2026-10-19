// CSignInGLLiveObserver: the observer of the Gameloft Live sign-in requests. It keeps the
// error code of the last request, posts the matching sign-in events to CSignIn, and
// keeps the server address it was given. It derives from GLXPlayerObserver (slots OnNetworkError,
// OnRequestTimeout, OnRequestSuccess, OnRequestFailure, then the base OnDownloadError).
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x04 server-configured flag (byte), set by request code 1
//   +0x05 logged-in flag (byte), set by request code 0xf and cleared by 0x11
//   +0x06 server address buffer (0x80 bytes, NUL-terminated)
//   +0x88 last error code (int)
#pragma once

#include <cstddef>
#include <cstdint>

#include "net-session-online/glx_player_observer.hpp"

class CSignInGLLiveObserver : public GLXPlayerObserver {
public:
    // 0x824a1c _ZN21CSignInGLLiveObserverC1Ev (C2 at 0x824a68 is the same body).
    CSignInGLLiveObserver() = default;
    // 0x8249b4 _ZN21CSignInGLLiveObserverD1Ev (D0 at 0x8249e8 is compiler-generated, skipped).
    ~CSignInGLLiveObserver() override;

    // 0x824904 _ZN21CSignInGLLiveObserver6UpdateEv: returns 0.
    std::int32_t Update() { return 0; }

    // Error predicates. Each compares the last error code with a fixed value.
    // 0x82490c _ZNK21CSignInGLLiveObserver22IsErrorInvalidNicknameEv
    bool IsErrorInvalidNickname() const { return lastError_ == 0x71; }
    // 0x824920 _ZNK21CSignInGLLiveObserver19IsErrorNicknameUsedEv
    bool IsErrorNicknameUsed() const { return lastError_ == 0x6e; }
    // 0x824934 _ZNK21CSignInGLLiveObserver32IsErrorLoginAuthenticationFailedEv
    bool IsErrorLoginAuthenticationFailed() const { return lastError_ == 0x61; }
    // 0x824948 _ZNK21CSignInGLLiveObserver24IsErrorUsernameNotExistsEv
    bool IsErrorUsernameNotExists() const { return lastError_ == 0x43; }
    // 0x82495c _ZNK21CSignInGLLiveObserver32IsErrorInvalidUsernameOrPasswordEv
    bool IsErrorInvalidUsernameOrPassword() const { return lastError_ == 0x31; }
    // 0x824970 _ZNK21CSignInGLLiveObserver17IsErrorNoUsernameEv
    bool IsErrorNoUsername() const { return lastError_ == 1; }
    // 0x824984 _ZNK21CSignInGLLiveObserver19IsErrorNoConnectionEv
    bool IsErrorNoConnection() const { return lastError_ == -2; }

    // 0x824998 _ZN21CSignInGLLiveObserver9TerminateEv: clears the flags, the error and the
    // server address.
    void Terminate();

    // 0x824ab4 _ZN21CSignInGLLiveObserver16OnRequestFailureEii
    // Code 0xf is a login failure. It cancels the login and posts event 5 for a missing or
    // unknown user name, or event 6 for a wrong user name or password.
    void OnRequestFailure(std::int32_t code, std::int32_t detail) override;
    // 0x824b4c _ZN21CSignInGLLiveObserver16OnRequestTimeoutEi: error 0x29, cancels, posts 8.
    void OnRequestTimeout(std::int32_t requestId) override;
    // 0x824b84 _ZN21CSignInGLLiveObserver14OnNetworkErrorEv: error -2, cancels, posts 7.
    void OnNetworkError() override;
    // 0x824bbc _ZN21CSignInGLLiveObserver16OnRequestSuccessEiPci
    // The code-1 branch in the original also calls GLXPlayerSereverConfig::GetXPlayerURL
    // (0x82ef8c) and discards the result. That is a read-only getter, so it is not called
    // here. Code 0x6b copies the server address, and the alpha server when the matching
    // flag is set.
    void OnRequestSuccess(std::int32_t code, char* data, std::int32_t length) override;

    // Writes the server-configured flag (+0x04) directly. CMatchingGLLive::Initialize (0x81f264) stores
    // the byte through the observer pointer when the server config is already loaded.
    void SetConfigured(bool configured) { configured_ = configured; }

    // Accessors for the fields other classes read inline in the original (no symbols): the server-configured flag
    // (+0x04), the logged-in flag and the server address buffer (+0x06, the socket URL).
    bool Configured() const { return configured_; }
    bool LoggedIn() const { return loggedIn_; }
    const char* Server() const { return server_; }

    // Test seams. Not in the original.
    bool ConfiguredForTest() const { return configured_; }
    bool LoggedInForTest() const { return loggedIn_; }
    std::int32_t LastErrorForTest() const { return lastError_; }
    const char* ServerForTest() const { return server_; }

private:
    void CancelSignIn();
    void PostSignInEvent(std::int32_t type);
    void CopyServerAddress(const char* data, std::int32_t length);

    bool configured_ = false;      // +0x04
    bool loggedIn_ = false;        // +0x05
    char server_[0x80] = {};       // +0x06
    std::int32_t lastError_ = 0;   // +0x88
};
