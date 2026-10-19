#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/c_sign_in_gl_live.hpp"

// 0x81a9c4 _ZN18CSignInCredentialsC2EPcS0_Pv (C1 is the same body at 0x81a9cc)
CSignInCredentials::CSignInCredentials(char* name, char* password, void* context)
    : name_(name), password_(password), context_(context) {}

// 0x81a9d4 _ZN18CSignInCredentialsD2Ev (D1 is 0x81a9d8, same empty body)
CSignInCredentials::~CSignInCredentials() {}

// 0x81a7b4 _ZN7CSignInD1Ev
// Reconstructed: the original replaces the credentials with an empty set, then clears the
// event list and destroys the mutex. The last two are the member destructors here.
CSignIn::~CSignIn() {
    credentials_ = CSignInCredentials(nullptr, nullptr, nullptr);
}

CSignIn*& CSignIn::Instance() {
    static CSignIn* instance = nullptr;  // stands in for s_SignIn
    return instance;
}

void CSignIn::SetInstanceForTest(CSignIn* instance) { Instance() = instance; }

std::int32_t& CSignIn::Provider() {
    // CSignIn::s_SignInProvider is .data 0x99e240 = 1 (Gameloft Live) and nothing in the binary writes it (its only references are the GOT
    // slots and CSignIn::Get), so the Android build always uses CSignInGLLive. (Stub audit: the port started it at 0, the dummy provider.)
    static std::int32_t provider = 1;
    return provider;
}

// 0x81a6ac _ZN7CSignIn3GetEv
// Provider 0 creates the dummy and provider 1 the Gameloft Live sign-in. Any other provider
// leaves the singleton null, as the original does.
CSignIn* CSignIn::Get() {
    if (Instance() == nullptr) {
        if (Provider() == 0) {
            Instance() = new CSignInDummy();
        } else if (Provider() == 1) {
            Instance() = new CSignInGLLive();
        }
    }
    return Instance();
}

// 0x81a4dc _ZN7CSignIn10InitializeEv
std::int32_t CSignIn::Initialize() {
    if (!active_) {
        active_ = true;
    }
    return 0;
}

// 0x81a4f4 _ZN7CSignIn11CancelLoginEv
void CSignIn::CancelLogin() {}

// 0x81a4f8 _ZN7CSignIn6UpdateEv
void CSignIn::Update() {}

// 0x81a4fc _ZN7CSignIn9TerminateEv
void CSignIn::Terminate() {
    if (active_) {
        SignOut();
        active_ = false;
    }
}

// 0x81a528 _ZN7CSignIn7DestroyEv
// Terminates the singleton and deletes it. The original checks the pointer again
// after each virtual call, because a provider can clear it while it runs.
void CSignIn::Destroy() {
    CSignIn* instance = Instance();
    if (instance == nullptr) {
        return;
    }
    instance->Terminate();
    instance = Instance();
    if (instance != nullptr) {
        delete instance;
        Instance() = nullptr;
    }
}

// 0x81a4c8 _ZN12CSignInDummy6SignInEv
std::int32_t CSignInDummy::SignIn() { return 1; }

// 0x81a4d0 _ZN12CSignInDummy6SignInER18CSignInCredentials
std::int32_t CSignInDummy::SignIn(CSignInCredentials& /*credentials*/) { return 1; }

// 0x81a4d8 _ZN12CSignInDummy7SignOutEv
void CSignInDummy::SignOut() {}

// 0x81a954 _ZN12CSignInDummyD1Ev
// Reconstructed. The original stores the vptr and calls the base dtor CSignIn::~CSignIn;
// the compiler does both here.
CSignInDummy::~CSignInDummy() = default;
