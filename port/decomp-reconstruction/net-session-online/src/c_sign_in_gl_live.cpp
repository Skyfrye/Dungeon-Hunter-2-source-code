#include "net-session-online/c_sign_in_gl_live.hpp"

#include <cstring>

#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/deps/matching.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"

// 0x824204 _ZN13CSignInGLLive10InitializeEv
// The original sets the active flag at +0x10 when it is clear and returns 0. That is the
// CSignIn::Initialize body, so the base is called.
std::int32_t CSignInGLLive::Initialize() { return CSignIn::Initialize(); }

// 0x82421c _ZN13CSignInGLLive6SignInEv
std::int32_t CSignInGLLive::SignIn() { return 0; }

// 0x8246b8 _ZN13CSignInGLLiveC1Ev (C2 at 0x824734 has the same body; skipped).
// The original runs the CSignIn base ctor, sets the vtables, clears the lobby flag, and builds
// the mutex and the empty CEvent list. The member initialisers do all of that here.
CSignInGLLive::CSignInGLLive() {}

// 0x8247ec _ZN13CSignInGLLiveD1Ev (D2 at 0x8248a8 has the same body; skipped).
// Clears the CEvent list, then the mutex and the second queue are destroyed as members, and
// CSignIn::~CSignIn runs last. The original does not destroy the second queue in this body;
// CEventQueueBase's own dtor does it here.
CSignInGLLive::~CSignInGLLive() { pendingEvents_.clear(); }

// 0x8243dc _ZN13CSignInGLLive6SignInER18CSignInCredentials
// Returns 1 when active and 0 otherwise. When active it sends the login (kind 0x0f, with
// "EN" as the language and the context as the device value) through the login seam, keeps the
// credentials, and posts event 1 to both queues.
std::int32_t CSignInGLLive::SignIn(CSignInCredentials& credentials) {
    if (!active_) {
        return 0;
    }
    CMatchingGLLive::GetGLXPlayerLogin()->SendLogin(credentials.Name(), credentials.Password(), nullptr, 1,
                                                    static_cast<char*>(credentials.Context()), const_cast<char*>("EN"),
                                                    true);
    credentials_ = CSignInCredentials(credentials.Name(), credentials.Password(), credentials.Context());
    events_.AddEvent(1, nullptr, 0);
    loginEvents_.AddEvent(1, nullptr, 0);
    return 1;
}

// 0x8243a8 _ZN13CSignInGLLive7SignOutEv
// Sends the logout when logged in, then posts event 4 to the CSignIn queue.
void CSignInGLLive::SignOut() {
    if (loggedIn_) {
        CMatchingGLLive::GetGLXPlayerLogin()->SendLogout();
    }
    events_.AddEvent(4, nullptr, 0);
}

// 0x824224 _ZN13CSignInGLLive11CancelLoginEv
// Signs out when logged in, clears the logged-in flag and the lobby flag, and empties both queues.
void CSignInGLLive::CancelLogin() {
    if (loggedIn_) {
        SignOut();
        loggedIn_ = false;
    }
    lobbyPending_ = false;
    events_.Clear();
    loginEvents_.Clear();
}

// 0x82427c _ZN13CSignInGLLive9TerminateEv
// The base Terminate (signs out when active), then clears the lobby flag and both queues.
void CSignInGLLive::Terminate() {
    CSignIn::Terminate();
    lobbyPending_ = false;
    events_.Clear();
    loginEvents_.Clear();
}

// 0x8242b4 _ZN13CSignInGLLive10LoginLobbyEv
// Runs when the lobby observer reports the connection up (+0x05). With Game Center active the lobby login is
// mpSendLobbyLoginWithGameCenter(the matching object's GGI, the user UID, its length, 1, 1, the UID, "NON"); otherwise
// mpSendLobbyLogin(the login component's GGI, its UID, the UID length, 1). The original returns the send's leftover;
// the port returns void.
void CSignInGLLive::LoginLobby() {
    CMatchingGLLive::GetGLXPlayerMPLobbyObserver();
    if (!CMatchingGLLive::GetGLXPlayerMPLobbyObserver()->Connected()) {
        return;
    }
    auto* live = dynamic_cast<CMatchingGLLive*>(CMatching::Get());
    if (live != nullptr && live->gameCenterActive_) {
        GLXPlayerMPLobby* lobby = CMatchingGLLive::GetGLXPlayerMPLobby();
        const unsigned long ggi = live->GetGGI();
        const char* userId = CMatchingGLLive::s_GameCenterInfo.userUid_;  // dword_A3387C
        const auto userIdLength = static_cast<std::int32_t>(userId != nullptr ? std::strlen(userId) : 0);
        lobby->mpSendLobbyLoginWithGameCenter(static_cast<long>(ggi), const_cast<char*>(userId), userIdLength, 1, 1,
                                              const_cast<char*>(userId), const_cast<char*>("NON"));
        return;
    }
    GLXPlayerMPLobby* lobby = CMatchingGLLive::GetGLXPlayerMPLobby();
    GLXPlayerLogin* login = CMatchingGLLive::GetGLXPlayerLogin();
    const unsigned long ggi = login->GetGGI();
    const char* uid = CMatchingGLLive::GetGLXPlayerLogin()->GetUID();
    const auto uidLength = static_cast<std::int32_t>(uid != nullptr ? std::strlen(uid) : 0);
    lobby->mpSendLobbyLogin(static_cast<long>(ggi), const_cast<char*>(uid), uidLength, 1);
}

// 0x82447c _ZN13CSignInGLLive6UpdateEv
// One step of the login state machine per call, in the original's order (nothing happens until the sign-in is active):
//   1. login observer configured: GLXPlayerLogin::Update (vtable +0x08).
//   2. lobby pending (+0x28): GLXPlayerMPLobby::Update (vtable +0x08).
//   3. event 1 with the login observer logged in: SendGetLobbyServer, post event 2; with Game Center active instead
//      SendGetLobbyServerWithGameCenter(user UID, 0, 0), post event 2.
//   4. event 2 with the login observer's server buffer (+0x06) not empty: lobby pending, mpSendEstablishConnection
//      (vtable +0x0c), post event 4 (the login UID is read and discarded).
//   5. event 4 with the lobby observer connected (+0x05): LoginLobby, post event 6.
//   6. event 6 with lobby state > 1: consume, post CSignIn event 2, logged in, SetGCState(2).
void CSignInGLLive::Update() {
    if (!active_) {
        return;
    }
    if (CMatchingGLLive::GetGLXPlayerLoginObserver()->Configured()) {
        CMatchingGLLive::GetGLXPlayerLogin()->Update();
    }
    if (lobbyPending_) {
        CMatchingGLLive::GetGLXPlayerMPLobby()->Update();
    }

    if (loginEvents_.HasEventOccured(1, false)) {
        if (CMatchingGLLive::GetGLXPlayerLoginObserver()->LoggedIn()) {
            loginEvents_.ConsumeEvent(1);
            CMatchingGLLive::GetGLXPlayerLogin()->SendGetLobbyServer();
            loginEvents_.AddEvent(2, nullptr, 0);
        } else if (auto* live = dynamic_cast<CMatchingGLLive*>(CMatching::Get());
                   live != nullptr && live->gameCenterActive_) {
            loginEvents_.ConsumeEvent(1);
            CMatchingGLLive::GetGLXPlayerLogin()->SendGetLobbyServerWithGameCenter(
                CMatchingGLLive::s_GameCenterInfo.userUid_, nullptr, nullptr);
            loginEvents_.AddEvent(2, nullptr, 0);
        }
    }

    if (loginEvents_.HasEventOccured(2, false) && CMatchingGLLive::GetGLXPlayerLoginObserver()->Server()[0] != '\0') {
        lobbyPending_ = true;
        loginEvents_.ConsumeEvent(2);
        CMatchingGLLive::GetGLXPlayerMPLobby()->mpSendEstablishConnection();
        loginEvents_.AddEvent(4, nullptr, 0);
        (void)CMatchingGLLive::GetGLXPlayerLogin()->GetUID();
    }

    if (loginEvents_.HasEventOccured(4, false) && CMatchingGLLive::GetGLXPlayerMPLobbyObserver()->Connected()) {
        loginEvents_.ConsumeEvent(4);
        LoginLobby();
        loginEvents_.AddEvent(6, nullptr, 0);
    }

    if (loginEvents_.HasEventOccured(6, false) && CMatchingGLLive::GetGLXPlayerMPLobby()->State() > 1) {
        loginEvents_.ConsumeEvent(6);
        events_.AddEvent(2, nullptr, 0);
        loggedIn_ = true;
        if (CMatching* matching = CMatching::Get(); matching != nullptr) {
            matching->SetGCState(2);
        }
    }
}
