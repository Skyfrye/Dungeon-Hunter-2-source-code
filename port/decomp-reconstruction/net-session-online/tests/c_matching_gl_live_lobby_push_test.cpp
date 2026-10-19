#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CMatchingGLLiveLobbyObserver observer;
    CSignIn* signIn = CSignIn::Get();
    CHECK(signIn != nullptr);
    CHECK(!signIn->EventQueue().HasEventOccured(9, false));

    CHECK(observer.OnMPProcessPushSameAccountLogin(nullptr) == 0);
    CHECK(signIn->EventQueue().HasEventOccured(9, false));

    std::printf("%s\n", failures == 0 ? "PASS" : "FAILED");
    return failures == 0 ? 0 : 1;
}
