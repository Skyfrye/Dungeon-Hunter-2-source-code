// CSignIn: the sign-in base of the online account layer, and its two
// providers: CSignInDummy (always succeeds, no network) and CSignInGLLive
// (Gameloft Live, not reconstructed here).
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 vptr
//   +0x04 credentials (CSignInCredentials, 12 bytes: +0x04..+0x0f)
//   +0x10 active flag (byte): set by Initialize, cleared by Terminate
//   +0x11 logged-in flag (byte): read by CMatchingGLLive::IsLoggedIn
//   +0x14 event queue (CEventQueue<tSignInEvent, 100u>, embedded; the queue class
//         is only modelled as CEventQueueBase here)
//
// Virtual slots: +0x00/+0x04 dtors, +0x08 Initialize, +0x0c SignIn(),
// +0x10 SignIn(CSignInCredentials&), +0x14 SignOut (pure in CSignIn),
// +0x18 CancelLogin, +0x1c Update, +0x20 Terminate, +0x24 Destroy.
#pragma once

#include <cstdint>

#include "net-session-online/c_event_queue_base.hpp"

// 0x81a9c4 _ZN18CSignInCredentialsC2EPcS0_Pv (and C1 at 0x81a9cc). Holds the
// three arguments as given. The dtor does nothing, so the pointers are not owned.
class CSignInCredentials {
public:
    CSignInCredentials(char* name, char* password, void* context);
    ~CSignInCredentials();

    char* Name() const { return name_; }
    char* Password() const { return password_; }
    void* Context() const { return context_; }

private:
    char* name_ = nullptr;      // +0x00 (+0x04 inside CSignIn)
    char* password_ = nullptr;  // +0x04 (+0x08 inside CSignIn)
    void* context_ = nullptr;   // +0x08 (+0x0c inside CSignIn; role not identified)
};

class CSignIn {
public:
    // 0x81a58c _ZN7CSignInC1Ev (C2 0x81a61c is the same body; skipped).
    // Complete (VF2 audit): the listing's stores at +0x1c..+0x24 are the queue's list sentinel (std::list member) and the word 100
    // at +0x24, which is CEventQueueBase::expiryCheck_ (+0x10 inside the queue), built by `events_{100}` below.
    CSignIn() = default;
    // 0x81a7b4 _ZN7CSignInD1Ev (D2 0x81a8b4 is the same body; skipped).
    virtual ~CSignIn();

    // 0x81a4dc _ZN7CSignIn10InitializeEv: sets the active flag and returns 0.
    virtual std::int32_t Initialize();
    // Pure in the base. The providers implement them (vtable +0x0c, +0x10, +0x14).
    virtual std::int32_t SignIn() = 0;
    virtual std::int32_t SignIn(CSignInCredentials& credentials) = 0;
    virtual void SignOut() = 0;
    // 0x81a4f4 _ZN7CSignIn11CancelLoginEv: no-op in the base.
    virtual void CancelLogin();
    // 0x81a4f8 _ZN7CSignIn6UpdateEv: no-op in the base.
    virtual void Update();
    // 0x81a4fc _ZN7CSignIn9TerminateEv: when active, calls SignOut() through the
    // vtable and clears the active flag.
    virtual void Terminate();
    // 0x81a528 _ZN7CSignIn7DestroyEv: terminates and deletes the singleton. The
    // original reads the global s_SignIn and does not use this.
    virtual void Destroy();

    // 0x81a6ac _ZN7CSignIn3GetEv: returns the singleton. With none and provider 0 it creates
    // a CSignInDummy, and with provider 1 a CSignInGLLive.
    static CSignIn* Get();
    // The provider switch s_SignInProvider (0 = dummy, 1 = Gameloft Live). Starts at 1 as in the binary's .data; nothing sets it.
    static std::int32_t& Provider();
    // Not in the original: the event queue at +0x14, which the observers post to.
    CEventQueueBase& EventQueue() { return events_; }

    // Production accessors for the two fields other classes read inline in the original (no symbols):
    // the logged-in flag at +0x11 and the credentials' name at +0x04.
    bool LoggedIn() const { return loggedIn_; }
    const char* CredentialsName() const { return credentials_.Name(); }
    // The credentials' password (+0x08), read inline by OnlineGameState::processEvents.
    const char* CredentialsPassword() const { return credentials_.Password(); }

    // Test seams. Not in the original.
    bool ActiveForTest() const { return active_; }
    bool LoggedInForTest() const { return loggedIn_; }
    void SetLoggedInForTest(bool value) { loggedIn_ = value; }
    static void SetInstanceForTest(CSignIn* instance);

protected:
    static CSignIn*& Instance();  // stands in for the global s_SignIn

    CSignInCredentials credentials_{nullptr, nullptr, nullptr};  // +0x04
    bool active_ = false;                                       // +0x10
    bool loggedIn_ = false;                                     // +0x11
    CEventQueueBase events_{100};                               // +0x14 (CEventQueue<tSignInEvent, 100>)
};

// 0x81a954 _ZN12CSignInDummyD1Ev (D0 at 0x81a988 is compiler-generated, skipped).
// The Dummy provider signs in at once and keeps no state.
class CSignInDummy : public CSignIn {
public:
    CSignInDummy() = default;
    ~CSignInDummy() override;

    // 0x81a4c8 _ZN12CSignInDummy6SignInEv: returns 1.
    std::int32_t SignIn() override;
    // 0x81a4d0 _ZN12CSignInDummy6SignInER18CSignInCredentials: returns 1.
    std::int32_t SignIn(CSignInCredentials& credentials) override;
    // 0x81a4d8 _ZN12CSignInDummy7SignOutEv: no-op.
    void SignOut() override;
};
