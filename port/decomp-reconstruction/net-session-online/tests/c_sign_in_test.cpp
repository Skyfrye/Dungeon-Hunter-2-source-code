#include "net-session-online/c_sign_in.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Counts SignOut calls and deletions so Terminate and Destroy can be checked.
int deletedCount = 0;
class CountingSignIn : public CSignIn {
public:
    ~CountingSignIn() override { ++deletedCount; }
    std::int32_t SignIn() override { return 0; }
    std::int32_t SignIn(CSignInCredentials&) override { return 0; }
    void SignOut() override { ++signOuts; }
    int signOuts = 0;
};
}  // namespace

int main() {
    char name[] = "player";
    char pass[] = "secret";
    int context = 7;
    CSignInCredentials creds(name, pass, &context);
    CHECK(creds.Name() == name);
    CHECK(creds.Password() == pass);
    CHECK(creds.Context() == &context);

    CSignInDummy dummy;
    CHECK(dummy.SignIn() == 1);
    CHECK(dummy.SignIn(creds) == 1);
    dummy.SignOut();
    CHECK(dummy.Initialize() == 0);
    CHECK(dummy.ActiveForTest());
    dummy.Initialize();
    CHECK(dummy.ActiveForTest());
    dummy.CancelLogin();
    dummy.Update();
    CHECK(!dummy.LoggedInForTest());

    CountingSignIn counting;
    counting.Terminate();  // not active: SignOut is not called
    CHECK(counting.signOuts == 0);
    counting.Initialize();
    counting.Terminate();
    CHECK(counting.signOuts == 1);
    CHECK(!counting.ActiveForTest());

    // Destroy works on the singleton, not on the object it is called on.
    auto* singleton = new CountingSignIn();
    singleton->Initialize();
    CSignIn::SetInstanceForTest(singleton);
    CSignInDummy probe;
    probe.Destroy();
    CHECK(deletedCount == 1);
    CHECK(singleton->signOuts == 1);  // Terminate ran first, and the object was active
    probe.Destroy();                  // no singleton left: nothing happens
    CHECK(deletedCount == 1);

    // Get creates the dummy provider once, and returns the same object after that.
    CSignIn::SetInstanceForTest(nullptr);
    CSignIn::Provider() = 0;
    CSignIn* got = CSignIn::Get();
    CHECK(got != nullptr);
    CHECK(CSignIn::Get() == got);
    CHECK(dynamic_cast<CSignInDummy*>(got) != nullptr);
    got->Destroy();  // deletes the singleton
    CHECK(CSignIn::Get() != nullptr);
    CSignIn::Get()->Destroy();
    CHECK(CSignIn::Get() != nullptr);
    CSignIn::Get()->Destroy();

    std::printf("%s\n", failures ? "c_sign_in: FAILED" : "c_sign_in: ok");
    return failures != 0;
}
