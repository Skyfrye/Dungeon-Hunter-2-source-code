// Test for the AnimatedFX::Update path rebuilt in redo batch r2a-game-anim-pack0-392f84-0: the lifetime countdown at
// +0x1c (Application::GetDt on the singleton) and the loop count reset at expiry, with no owner set.
//
// The AnimatedFX lives in zero-filled storage, as in the other game-anim tests. The functions that Update reaches
// and this file does not define (SyncIrrData, SetSpeed, HasCompleted, VisualObject::SetVisible, GetSwitch) are
// stubbed below; DebugSwitches::GetInstance returns a real (empty) object, see the comment on its definition. The
// trace branch needs the visible flag (+0x24), which this test leaves clear, so it is not reached.

#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/VisualObject.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(AnimatedFX) unsigned char g_fxStorage[sizeof(AnimatedFX)];
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

int g_frameDt = 0;       // what Application::GetDt returns
int g_setSpeedCalls = 0;
int g_syncCalls = 0;
int g_completedCalls = 0;

}  // namespace

// Stubs for the functions Update reaches (see the header comment).
void AnimatedFX::SyncIrrData(bool) {
    ++g_syncCalls;
}

void AnimatedFX::SetSpeed(float) {
    ++g_setSpeedCalls;
}

bool AnimatedFX::HasCompleted() const {
    ++g_completedCalls;
    return false;
}

void VisualObject::SetVisible(bool) {}

// A real (empty) DebugSwitches object, NOT a null stand-in. AnimatedFX::Update is exercised here, so this accessor
// must be safe: the batch's `DebugSwitches::GetInstance()->GetSwitch(...)` would dereference a null. This definition
// still shadows the library's real singleton for the whole executable (tests link with
// -Wl,--allow-multiple-definition and the first definition wins); GetSwitch below answers false, as the real switch
// table does when it holds no entry. The trace branch is not reached by the checks, because the visible flag stays
// clear, so the accessor is only reached through the paths that stay inside this file.
DebugSwitches* DebugSwitches::GetInstance() {
    static DebugSwitches instance;
    return &instance;
}

// The function-local object above needs both, and they are the library's empty bodies (the two trees start empty).
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}

bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int Application::GetDt() {
    return g_frameDt;
}

int main() {
    std::memset(g_fxStorage, 0, sizeof g_fxStorage);
    AnimatedFX* fx = reinterpret_cast<AnimatedFX*>(g_fxStorage);
    fx->unk_24 = false;  // not visible: the trace branch and the completion check are skipped

    // Countdown without expiry: 100 ms left, 40 ms frame. The loop count is kept.
    fx->unk_1c = 100;
    fx->m_loopCount = 3;
    g_frameDt = 40;
    g_setSpeedCalls = 0;
    fx->Update();
    EXPECT(fx->unk_1c == 60);
    EXPECT(fx->m_loopCount == 3);
    EXPECT(g_setSpeedCalls == 1);

    // Countdown to expiry: 30 ms left, 40 ms frame. The result is negative, so the loop count is zeroed.
    fx->unk_1c = 30;
    fx->Update();
    EXPECT(fx->unk_1c == -10);
    EXPECT(fx->m_loopCount == 0);

    // Exactly zero left also counts as expired (the test is <= 0).
    fx->unk_1c = 40;
    fx->m_loopCount = 2;
    fx->Update();
    EXPECT(fx->unk_1c == 0);
    EXPECT(fx->m_loopCount == 0);

    // No countdown (-1, the constructor value): nothing is decremented and the loop count is kept.
    fx->unk_1c = -1;
    fx->m_loopCount = 5;
    fx->Update();
    EXPECT(fx->unk_1c == -1);
    EXPECT(fx->m_loopCount == 5);

    // With no owner, the sync with the owner does not run, and the clear flag is not visible, so no completion check.
    EXPECT(g_syncCalls == 0);
    EXPECT(g_completedCalls == 0);

    if (g_failures == 0) {
        std::printf("r2a-game-anim-pack0-392f84-0 test OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
