#include "net-session-online/c_sign_in_gl_live_observer.hpp"

#include <cstdio>
#include <cstring>
#include <string>

#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/deps/matching.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
// Counts the cancels and reads the posted events, for the sign-in singleton.
class ProbeSignIn : public CSignIn {
public:
    std::int32_t SignIn() override { return 0; }
    std::int32_t SignIn(CSignInCredentials&) override { return 0; }
    void SignOut() override {}
    void CancelLogin() override { ++cancels; }
    int cancels = 0;
};

// Records the GLX matching calls the observer makes.
class FakeMatching : public CMatching {
public:
    std::uint32_t MemberBit(int) const override { return 0; }
    int LocalMemberId() const override { return 0; }
    int ServerMemberId() const override { return 0; }
    bool IsInRoom() override { return false; }  // vtable +0x64
    bool IsInRoom(int /*memberIndex*/) override { return false; }  // vtable +0x68
    bool IsServer() const override { return false; }
    std::uint32_t GetRoomMask() const override { return 0; }
    bool UseAlphaServer() const override { return alpha; }
    void SetGCState(std::int32_t state) override { gcState = state; }
    bool alpha = false;
    std::int32_t gcState = -1;
};

bool HasEvent(CSignIn& signIn, int type) { return signIn.EventQueue().FindEvent(type, false); }
}  // namespace

int main() {
    ProbeSignIn probe;
    CSignIn::SetInstanceForTest(&probe);
    FakeMatching matching;
    CMatching::Set(&matching);

    CSignInGLLiveObserver observer;
    CHECK(observer.Update() == 0);
    CHECK(observer.LastErrorForTest() == 0);
    CHECK(!observer.IsErrorNoConnection());

    // The error predicates each match their own code only.
    observer.OnNetworkError();
    CHECK(observer.LastErrorForTest() == -2);
    CHECK(observer.IsErrorNoConnection());
    CHECK(!observer.IsErrorNoUsername());
    CHECK(probe.cancels == 1);
    CHECK(HasEvent(probe, 7));
    probe.EventQueue().Clear();

    observer.OnRequestTimeout(0);
    CHECK(observer.LastErrorForTest() == 0x29);
    CHECK(probe.cancels == 2);
    CHECK(HasEvent(probe, 8));
    probe.EventQueue().Clear();

    // Code 0xf: an unknown user name posts 5, a wrong password posts 6, a bad nickname
    // (not one of the three checks) posts nothing.
    observer.OnRequestFailure(0xf, 0x43);
    CHECK(observer.IsErrorUsernameNotExists());
    CHECK(HasEvent(probe, 5));
    probe.EventQueue().Clear();

    observer.OnRequestFailure(0xf, 1);
    CHECK(observer.IsErrorNoUsername());
    CHECK(HasEvent(probe, 5));
    probe.EventQueue().Clear();

    observer.OnRequestFailure(0xf, 0x31);
    CHECK(observer.IsErrorInvalidUsernameOrPassword());
    CHECK(HasEvent(probe, 6));
    CHECK(!HasEvent(probe, 5));
    probe.EventQueue().Clear();

    observer.OnRequestFailure(0xf, 0x71);
    CHECK(observer.IsErrorInvalidNickname());
    CHECK(!HasEvent(probe, 5) && !HasEvent(probe, 6));

    // A code other than 0xf only stores the error.
    observer.OnRequestFailure(0x10, 0x6e);
    CHECK(observer.IsErrorNicknameUsed());
    observer.OnRequestFailure(0x10, 0x61);
    CHECK(observer.IsErrorLoginAuthenticationFailed());
    CHECK(probe.cancels == 2 + 4);  // only the 0xf calls cancelled (4 of them)

    // Success codes: 0xf logs in, 0x11 logs out, 1 configures and sets the GC state.
    observer.OnRequestSuccess(0xf, nullptr, 0);
    CHECK(observer.LoggedInForTest());
    CHECK(observer.LastErrorForTest() == 0);
    observer.OnRequestSuccess(0x11, nullptr, 0);
    CHECK(!observer.LoggedInForTest());
    observer.OnRequestSuccess(1, nullptr, 0);
    CHECK(observer.ConfiguredForTest());
    CHECK(matching.gcState == 1);

    // Code 0x6b copies the server address. The alpha switch uses the fixed address.
    char server[] = "game.example.com:9000";
    observer.OnRequestSuccess(0x6b, server, 3);
    CHECK(std::strcmp(observer.ServerForTest(), "gam") == 0);
    matching.alpha = true;
    observer.OnRequestSuccess(0x6b, server, 3);
    CHECK(std::strcmp(observer.ServerForTest(), "alpha01.gameloft.com:7500") == 0);
    matching.alpha = false;

    // A long address is cut to 0x7f characters with the NUL kept inside the buffer.
    const std::string longAddress(200, 'x');
    std::string longCopy = longAddress;
    observer.OnRequestSuccess(0x6b, longCopy.data(), static_cast<std::int32_t>(longCopy.size()));
    CHECK(std::strlen(observer.ServerForTest()) == 0x7f);

    // Terminate clears the flags, the error and the address.
    observer.Terminate();
    CHECK(!observer.ConfiguredForTest());
    CHECK(!observer.LoggedInForTest());
    CHECK(observer.LastErrorForTest() == 0);
    CHECK(observer.ServerForTest()[0] == '\0');

    CMatching::Set(nullptr);
    CSignIn::SetInstanceForTest(nullptr);
    std::printf("%s\n", failures ? "c_sign_in_gl_live_observer: FAILED" : "c_sign_in_gl_live_observer: ok");
    return failures != 0;
}
