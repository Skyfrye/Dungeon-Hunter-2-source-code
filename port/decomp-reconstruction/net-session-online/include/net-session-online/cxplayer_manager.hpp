// CXPlayerManager: the player-service manager state. It is a GLXPlayerObserver and owns the
// login and leaderboard services it creates. The state values are the ones the original
// switches on. 0x10 is ready, 0x11 is error or logged out.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 vptr (GLXPlayerObserver primary table; slot 0 is OnNetworkError in the original)
//   +0x04 initialized flag (byte)     +0x05 flag (byte, not identified)
//   +0x08 login service (GLXPlayerLogin*, owned)
//   +0x0c leaderboard service (GLXPlayerLeaderboard*, owned)
//   +0x10 server-config object (GLXPlayerSereverConfig, created by Init; released through its virtual dtor)
//   +0x14 state (int)                 +0x18 score (int)
//   +0x1c score waiting to be uploaded (int)
//   +0x20 user name (46 bytes)        +0x4e password (46 bytes)
//   +0x7c last error (int; 3 after a network error, 1 or 2 after a login refusal)
#pragma once

#include <cstdint>

#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_observer.hpp"

// CXPlayerManagerState in the mangled names. The value is an int in the original.
using CXPlayerManagerState = std::int32_t;

class CXPlayerManager : public GLXPlayerObserver {
public:
    CXPlayerManager();                                        // 0x52df54 C1, 0x52df10 C2
    ~CXPlayerManager() override;                              // 0x52e034 D1, 0x52df98 D2

    // 0x52e0d0 _ZN15CXPlayerManager11SwitchStateE20CXPlayerManagerState
    void SwitchState(CXPlayerManagerState state);
    // 0x52e0d8 _ZN15CXPlayerManager7IsReadyEv: true in the state 0x10.
    bool IsReady() const;
    // 0x52e0ec _ZN15CXPlayerManager10IsLoggedInEv: 1 when logged in (state 0x0b is not logged in).
    int IsLoggedIn() const;
    // 0x52e2d4 _ZN15CXPlayerManager14OnNetworkErrorEv: prints the error, sets the error code
    // to 3 and switches to state 0x11. Slot 0 of the observer calls this.
    void OnNetworkError() override;
    // Observer slot 1: a timeout in state 0x0b moves the pending score to +0x1c.
    // 0x52e15c _ZN15CXPlayerManager16OnRequestTimeoutEi
    void OnRequestTimeout(std::int32_t requestId) override;
    // 0x52e1b4 _ZN15CXPlayerManager16OnRequestFailureEii: maps the error code to the last error.
    void OnRequestFailure(std::int32_t functionId, std::int32_t errorCode) override;
    // 0x52e304 _ZN15CXPlayerManager6LogoutEv
    void Logout();
    // 0x52e358 _ZN15CXPlayerManager5LoginEPcS0_
    void Login(const char* user, const char* password);
    // Observer slot 2: 0x52e3f8 _ZN15CXPlayerManager16OnRequestSuccessEiPci
    void OnRequestSuccess(std::int32_t functionId, char* data, std::int32_t dataLength) override;
    // 0x52e524 _ZN15CXPlayerManager4InitEv. Creates the server-config object, sends its request and
    // creates the login and leaderboard services when the status is 1 (see the .cpp).
    void Init();
    // 0x52e6cc _ZN15CXPlayerManager13UploadMyScoreEi: the original returns a byte (0 or 1).
    bool UploadMyScore(std::int32_t score);
    // 0x52e784 _ZN15CXPlayerManager6UpdateEv: the per-frame state machine. It drives the
    // third service (states 0), the login (2, 3, 4, 5, 6), the leaderboard (8 to 15), and the
    // login keep-alive. Returns nothing; the original's int result is the unused this pointer.
    void Update();


    // Not in the original: test seams.
    CXPlayerManagerState StateForTest() const { return state_; }
    std::int32_t LastErrorForTest() const { return lastError_; }
    std::int32_t ScoreForTest() const { return score_; }
    std::int32_t PendingScoreForTest() const { return pendingScore_; }
    void SetLoginForTest(GLXPlayerLogin* login) { login_ = login; }

    static constexpr CXPlayerManagerState kReadyState = 0x10;
    static constexpr std::size_t kCredentialLength = 46;

    // Members are public (the game-app GSInit reads flag05_).
    bool initialized_ = false;                      // +0x04
    bool flag05_ = false;                           // +0x05
    GLXPlayerLogin* login_ = nullptr;               // +0x08
    GLXPlayerLeaderboard* leaderboard_ = nullptr;   // +0x0c
    GLXPlayerComponent* third_ = nullptr;           // +0x10
    CXPlayerManagerState state_ = 0;                // +0x14
    std::int32_t score_ = 0;                        // +0x18
    std::int32_t pendingScore_ = 0;                 // +0x1c
    char userName_[kCredentialLength] = {};         // +0x20
    char password_[kCredentialLength] = {};         // +0x4e
    std::int32_t lastError_ = 0;                    // +0x7c
};
