// Test for batch g1-game-anim-AnimatedFX-6c1bfb-1: SetRotation and SetVisible.
//
// No AnimatedFX or VisualObject is constructed. Both live in zero-filled storage and the batch
// functions are called non-virtually, as in the game-world test. The functions the batch references
// but does not define (SyncIrrData, SetSpeed, HasCompleted, VisualObject::SetVisible, GetSwitch) are stubbed
// below and record their calls; DebugSwitches::GetInstance returns a real (empty) object, see below.
// Update is linked but not called here; its lifetime countdown is tested in r2a-game-anim-pack0-392f84-0_test.cpp.

#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/deps/game_types.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/RootSceneNode.hpp"
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
alignas(VisualObject) unsigned char g_visualStorage[sizeof(VisualObject)];
alignas(RootSceneNode) unsigned char g_nodeStorage[sizeof(RootSceneNode)];  // the visual's root node (SetVisible writes its cull flag)

int g_syncCalls = 0;
bool g_syncLastPush = true;
int g_visualCalls = 0;
bool g_visualLastArg = true;

// Reads a 32-bit word that holds float bits.
float WordAsFloat(int word) {
    float value;
    std::memcpy(&value, &word, sizeof value);
    return value;
}

}  // namespace

// Stubs for the functions this batch calls but does not define.
void AnimatedFX::SyncIrrData(bool push) {
    ++g_syncCalls;
    g_syncLastPush = push;
}

void AnimatedFX::SetSpeed(float) {}

bool AnimatedFX::HasCompleted() const {
    return false;
}

void VisualObject::SetVisible(bool visible) {
    ++g_visualCalls;
    g_visualLastArg = visible;
}

// Only reached from Update, which this test does not call. A real zero-state DebugSwitches object, NOT a null
// stand-in: the batch's `DebugSwitches::GetInstance()->GetSwitch(...)` dereferences the result unconditionally, and
// this definition shadows the library's real singleton for the whole executable (tests link with
// -Wl,--allow-multiple-definition and the first definition wins). GetSwitch below answers false, as the real
// switch table does when it holds no entry.
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

// Update reads the frame time from the Application singleton. Update is linked but not called here, so the
// singleton only needs to exist for the link.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}
int Application::GetDt() {
    return 0;
}

int main() {
    std::memset(g_fxStorage, 0, sizeof g_fxStorage);
    std::memset(g_visualStorage, 0, sizeof g_visualStorage);
    std::memset(g_nodeStorage, 0, sizeof g_nodeStorage);
    RootSceneNode* node = reinterpret_cast<RootSceneNode*>(g_nodeStorage);
    AnimatedFX* fx = reinterpret_cast<AnimatedFX*>(g_fxStorage);

    // SetRotation: the three words hold the float bits, the flag at +0x4c is set, and
    // SyncIrrData(false) runs once.
    fx->SetRotation(Point3D<float>{1.5f, -2.25f, 3.0f});
    EXPECT(WordAsFloat(fx->unk_40) == 1.5f);
    EXPECT(WordAsFloat(fx->unk_44) == -2.25f);
    EXPECT(WordAsFloat(fx->unk_48) == 3.0f);
    EXPECT(fx->unk_4c == true);
    EXPECT(g_syncCalls == 1);
    EXPECT(g_syncLastPush == false);

    // SetVisible(false) on a zero-filled object: the flag is already false, so nothing happens.
    fx->SetVisible(false);
    EXPECT(fx->unk_24 == false);
    EXPECT(g_syncCalls == 1);
    EXPECT(g_visualCalls == 0);

    // SetVisible(true) with no visual: the flag is set and SyncIrrData(false) runs. No visual call.
    fx->SetVisible(true);
    EXPECT(fx->unk_24 == true);
    EXPECT(g_syncCalls == 2);
    EXPECT(g_syncLastPush == false);
    EXPECT(g_visualCalls == 0);

    // With a visual: VisualObject::SetVisible receives the new value.
    // The root node of the visual takes the flag too (RootSceneNode::m_cullBeforeUpdate, +0x200).
    VisualObject* visual = reinterpret_cast<VisualObject*>(g_visualStorage);
    visual->m_node = node;
    node->m_cullBeforeUpdate = true;
    fx->m_visual = visual;
    fx->SetVisible(false);
    EXPECT(node->m_cullBeforeUpdate == false);
    EXPECT(fx->unk_24 == false);
    EXPECT(g_visualCalls == 1);
    EXPECT(g_visualLastArg == false);
    EXPECT(g_syncCalls == 3);

    // The same value again: no change, no calls.
    fx->SetVisible(false);
    EXPECT(g_visualCalls == 1);
    EXPECT(g_syncCalls == 3);

    // A change back: the visual and its node get the new value.
    fx->SetVisible(true);
    EXPECT(g_visualCalls == 2);
    EXPECT(g_visualLastArg == true);
    EXPECT(node->m_cullBeforeUpdate == true);
    EXPECT(g_syncCalls == 4);

    if (g_failures == 0) {
        std::printf("g1-game-anim-AnimatedFX-6c1bfb-1 test OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
