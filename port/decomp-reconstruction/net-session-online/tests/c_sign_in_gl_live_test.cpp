#include "net-session-online/c_sign_in_gl_live.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// The class is abstract in the port (SignIn(credentials), SignOut and the rest are queued).
// The probe supplies only those so that the reconstructed overrides can be called.
class CSignInGLLiveProbe : public CSignInGLLive {
public:
    using CSignInGLLive::SignIn;
    std::int32_t SignIn(CSignInCredentials& /*credentials*/) override { return 0; }
    void SignOut() override {}
    bool ActiveFlag() const { return ActiveForTest(); }
};

int main() {
    CSignInGLLiveProbe probe;
    CHECK(!probe.ActiveFlag());
    CHECK(probe.Initialize() == 0);
    CHECK(probe.ActiveFlag());
    CHECK(probe.Initialize() == 0);  // a second call keeps the flag set
    CHECK(probe.ActiveFlag());
    CHECK(probe.SignIn() == 0);

    std::printf("%s\n", failures ? "c_sign_in_gl_live: FAILED" : "c_sign_in_gl_live: ok");
    return failures != 0;
}
