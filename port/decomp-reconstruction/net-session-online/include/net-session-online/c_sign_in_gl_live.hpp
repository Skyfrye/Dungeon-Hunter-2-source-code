// CSignInGLLive: the Gameloft Live provider of CSignIn (provider 1). The sign-in,
// sign-out, cancel, terminate and update paths are reconstructed. Calls into the
// CMatchingGLLive accessors and the GLXPlayerLogin / GLXPlayerMPLobby services go through
// the seams in src/c_sign_in_gl_live.cpp, because those accessors are not in the port yet.
//
// Layout (original 32-bit offsets, kept as comments; the base is CSignIn):
//   +0x10 active flag, +0x11 logged-in flag (both in CSignIn)
//   +0x14 event queue (CSignIn::events_)
//   +0x28 lobby-pending flag (byte), set by the lobby-connect event, cleared by Terminate
//   +0x2c second event queue (loginEvents_), +0x30 CNetMutex, +0x34 list of CEvent
//
// Virtual slots (vtable _ZTV13CSignInGLLive): +0x00/+0x04 dtors, +0x08 Initialize,
// +0x0c SignIn(), +0x10 SignIn(CSignInCredentials&), +0x14 SignOut, +0x18 CancelLogin,
// +0x1c Update, +0x20 Terminate, +0x24 Destroy (thunk to CSignIn::Destroy).
#pragma once

#include <cstdint>
#include <list>

#include "net-session-online/c_event.hpp"
#include "net-session-online/c_event_queue_base.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-transport/sync.hpp"

class CSignInGLLive : public CSignIn {
public:
    // 0x8246b8 _ZN13CSignInGLLiveC1Ev (C2 at 0x824734 has the same body; skipped).
    CSignInGLLive();
    // 0x8247ec _ZN13CSignInGLLiveD1Ev (D2 at 0x8248a8 has the same body; skipped).
    ~CSignInGLLive() override;

    // 0x824204 _ZN13CSignInGLLive10InitializeEv: same body as CSignIn::Initialize.
    std::int32_t Initialize() override;
    // 0x82421c _ZN13CSignInGLLive6SignInEv: returns 0.
    std::int32_t SignIn() override;
    // 0x8243dc _ZN13CSignInGLLive6SignInER18CSignInCredentials: returns the active flag. When
    // active, sends the login request, stores the credentials and posts events 1 to both queues.
    std::int32_t SignIn(CSignInCredentials& credentials) override;
    // 0x8243a8 _ZN13CSignInGLLive7SignOutEv: sends a logout when logged in, then posts event 4.
    void SignOut() override;
    // 0x824224 _ZN13CSignInGLLive11CancelLoginEv
    void CancelLogin() override;
    // 0x82447c _ZN13CSignInGLLive6UpdateEv. Partial, see the cpp for the seams it uses.
    void Update() override;
    // 0x82427c _ZN13CSignInGLLive9TerminateEv: CSignIn::Terminate, then clears the lobby flag
    // and both queues.
    void Terminate() override;
    // 0x8242b4 _ZN13CSignInGLLive10LoginLobbyEv. Partial, see the cpp for the seams it uses.
    void LoginLobby();

    // The second event queue at +0x2c (the login events), which SetGCState state 1 posts to.
    CEventQueueBase& LoginEvents() { return loginEvents_; }

private:
    bool lobbyPending_ = false;                  // +0x28
    CEventQueueBase loginEvents_;                // +0x2c
    CNetMutex mutex_;                            // +0x30 (not locked by these bodies)
    std::list<CEvent> pendingEvents_;            // +0x34 (never filled by these bodies)
};
