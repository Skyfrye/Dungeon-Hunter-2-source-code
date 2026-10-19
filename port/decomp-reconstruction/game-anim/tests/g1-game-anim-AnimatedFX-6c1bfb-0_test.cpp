// Test for batch g1-game-anim-AnimatedFX-6c1bfb-0: constructor defaults, the SetAnimFX field stores, speed,
// the loop countdown and end-of-loop flag/callback, and the material assert level. Returns non-zero when a
// check fails.
//
// The checks do not inspect a VisualObject, but the loop-end ones do run Load, which builds one and its
// AnimController (0x49296c). The stubs below therefore stand in for the real VisualObject with a live controller
// and a real RootSceneNode, and define the engine calls the batch file links against.

#include <cstdio>

#include "core-platform/deps/game_types.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

// Global assert level read by AnimatedFX::ForceMaterial.
int gAssertLevel = 0;

// The loop-end checks below run _HandleLoopEnd, which goes through the visual to its AnimController (Load builds
// one), so the test supplies the two objects AnimatedFX::GetAnimator walks: a real VisualObject stand-in with a
// live AnimController and a real RootSceneNode. The animator and the timeline those checks need follow. _HandleLoopEnd
// (0x4927a4) runs its end-of-loop callback and then reads the animator unconditionally (asm: four BL
// AnimatedFX::GetAnimator with no null test, 0x492818 .. 0x492874), so the FX must have a visual whose controller
// returns an animator. The original's GetAnimator is `m_visual->m_animController->GetAnim(0)`: the doubles below give
// the visual an AnimController whose GetAnim answers with the animator, and the animator a timeline.
namespace {

class TestTimeline : public glitch::scene::ITimelineController {
public:
    float setClip(std::int32_t) override { return 0.0f; }
    std::int32_t setClip(const char*) override { return -1; }
    std::int32_t getClipIndex(const char*) const override { return -1; }
    std::int32_t getClipCount() const override { return 0; }
    std::uint32_t getClipStart(std::int32_t) const override { return 0; }
    std::uint32_t getClipEnd(std::int32_t) const override { return 0; }
    std::uint32_t getClipLength(std::int32_t) const override { return 0; }
    std::uint32_t getCurrentClipStart() const override { return 0; }
    std::uint32_t getCurrentClipEnd() const override { return 0; }
    std::uint32_t getCurrentClipLength() const override { return 0; }
    std::int32_t getCurrentClipIndex() const override { return -1; }
    const char* getClipName(std::int32_t) const override { return ""; }
    void setLoop(bool loop) override { loopSet = loop; ++setLoopCalls; }
    void setRange(std::int32_t, std::int32_t, bool) override {}

    int setLoopCalls = 0;
    bool loopSet = false;
};

class TestAnimator : public glitch::collada::ISceneNodeAnimator {
public:
    explicit TestAnimator(TestTimeline* timeline) { timelineCtrl = timeline; }

    void animateNode(glitch::scene::ISceneNode* node, std::uint32_t timeMs) override {
        ++animateCalls;
        lastNode = node;
        lastTime = timeMs;
    }
    ISceneNodeAnimator* createClone() override { return nullptr; }
    const glitch::collada::SChannel* getAnimationTrack(std::int32_t) override { return nullptr; }
    glitch::collada::IAnimationTrackEx* getAnimationTrackEx(std::int32_t) override { return nullptr; }
    void setTarget(std::int32_t, void*, const glitch::collada::animation_track::CApplicatorInfo*) override {}
    const char* getBindURI(std::int32_t) override { return ""; }
    std::int32_t getTargetCount() override { return 0; }
    std::int32_t getTargetSize(std::int32_t) override { return 0; }
    std::int32_t getTargetsSize() override { return 0; }
    void getAnimationValue(std::int32_t, std::int32_t, void*) override {}

    int animateCalls = 0;
    glitch::scene::ISceneNode* lastNode = nullptr;
    std::uint32_t lastTime = 0;
};

TestTimeline g_timeline;
TestAnimator g_animator(&g_timeline);

// The controller the visual's GetAnimator walks through. The base constructor asserts on a null node at every
// level (0x474e44 falls through to the null dereference) and then increments the node's reference counter: with
// trackEvents false its remaining work on the node is that bump (0x474d30). The bump is not a plain store -- the
// count belongs to glitch::IReferenceCounted, a VIRTUAL base of ISceneNode, so the compiler reads the vbase offset
// from the node's vtable (as the original does through the vtable at vptr-12) before it can touch the count. A
// stand-in that is not a real node therefore cannot serve: at 0x474e44+30 the generated code does `mov (%rdx),%r9;
// mov -0x18(%r9),%rax` and a buffer without a scene-node vtable faults on the first load. The node is a real
// RootSceneNode, exactly as the game builds one (game-world/src/g1-game-world-VisualObject-0654b6-2.cpp passes
// `new AnimController(m_node, false)` with its loaded scene node), over the zeroed database block the same class's
// own test uses (game-world/tests/g1-game-world-RootSceneNode-e402f1-1_test.cpp). It is built on first use.
alignas(16) unsigned char g_databaseBlock[64] = {};
RootSceneNode& TestRootNode() {
    static RootSceneNode node(*reinterpret_cast<const glitch::collada::CColladaDatabase*>(g_databaseBlock));
    return node;
}

AnimController* ControllerForTest() {
    static AnimController* controller = new AnimController(&TestRootNode(), false);
    return controller;
}

}  // namespace

// The visual every AnimatedFX in this test gets: a real VisualObject shape with a live controller and node.
// The batch builds one with operator new in Load (0x49296c); the checks here do not run Load, so the
// constructor stands in. m_node is the real RootSceneNode the controller above holds, as the game's own
// VisualObject constructor does (`new AnimController(m_node, false)`); nothing in this test treats it as one.
VisualObject::VisualObject(GameObject*, const std::string&, const std::string&) {
    m_animController = ControllerForTest();
    m_node = &TestRootNode();
}

void VisualObject::SetScaling(const Point3D<float>&) {}

// The stub constructor writes the vtable pointer, so the vtable must exist: these virtual functions make
// this translation unit the vtable's home (the destructor is the key function).
VisualObject::~VisualObject() {}
void VisualObject::Update() {}
void VisualObject::Draw() const {}

// Link stubs for the non-virtual engine calls in the batch file. GetAnim answers with the test animator so
// AnimatedFX::GetAnimator (0x49267c, which forwards to it) is never null.
glitch::collada::ISceneNodeAnimator* AnimController::GetAnim(unsigned int) {
    return &g_animator;
}

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_callbackCalls = 0;
AnimatedFX* g_callbackFx = nullptr;
void* g_callbackSetData = nullptr;

void RecordCallback(AnimatedFX* fx, void* setData) {
    ++g_callbackCalls;
    g_callbackFx = fx;
    g_callbackSetData = setData;
}

void TestConstructorDefaults() {
    AnimatedFX fx(42);
    CHECK(fx.unk_08 == 42);
    CHECK(fx.unk_1c == -1);
    CHECK(fx.m_speed == 1.0f);
    CHECK(fx.unk_24 == true);
    CHECK(fx.m_visual == nullptr);
    CHECK(fx.m_looping == false);
    CHECK(fx.m_loopCount == 0);
    CHECK(fx.m_setData == nullptr);
    CHECK(fx.m_endOfLoop == nullptr);
    CHECK(fx.unk_30 == false && fx.unk_31 == false && fx.unk_32 == false);
    CHECK(fx.unk_4c == false);
    CHECK(fx.GetAnimController() == nullptr);
    CHECK(fx.GetAnimator() == nullptr);
}

void TestSetAnimFXStoresFields() {
    AnimatedFX fx(1);
    unsigned char setData[4] = {0, 9, 9, 9};
    fx.SetAnimFX(true, false, true, 2.5f, 3, setData, &RecordCallback);
    CHECK(fx.unk_30 == true);
    CHECK(fx.unk_31 == false);
    CHECK(fx.unk_32 == true);
    CHECK(fx.m_speed == 2.5f);
    CHECK(fx.m_loopCount == 3);
    CHECK(fx.m_setData == setData);
    CHECK(fx.m_endOfLoop == &RecordCallback);
}

void TestSetSpeedWithoutVisual() {
    AnimatedFX fx(0);
    fx.SetSpeed(4.0f);
    CHECK(fx.m_speed == 4.0f);
}

void TestSetScaleWithoutVisual() {
    AnimatedFX fx(0);
    fx.unk_32 = true;
    fx.SetScale(Point3D<float>{1.0f, 2.0f, 3.0f});
    // Without a visual the original does not clear the scale flag either.
    CHECK(fx.unk_32 == true);
}

void TestSetLoopingStoresFlag() {
    AnimatedFX fx(0);
    fx.SetLooping(true);
    CHECK(fx.m_looping == true);
    fx.SetLooping(false);
    CHECK(fx.m_looping == false);
}

void TestLoopCountdown() {
    AnimatedFX fx(0);
    fx.SetAnimFX(false, false, false, 1.0f, 2, nullptr, nullptr);
    AnimatedFX::_CBLoop(nullptr, &fx);
    CHECK(fx.m_loopCount == 1);
    AnimatedFX::_CBLoop(nullptr, &fx);
    CHECK(fx.m_loopCount == 0);
}

void TestLoopEndFinishSetsFlag() {
    AnimatedFX fx(0);
    fx.Load("fx", "anim", 1.0f, 0, false);
    unsigned char setData[4] = {0, 0, 0, 0};
    fx.SetAnimFX(false, false, false, 1.0f, 0, setData, nullptr);
    fx.SetLooping(true);
    fx._HandleLoopEnd();
    CHECK(fx.m_looping == false);
    CHECK(setData[0] == 1);
    CHECK(fx.m_loopCount == 0);
}

void TestLoopEndCallback() {
    AnimatedFX fx(0);
    fx.Load("fx", "anim", 1.0f, 0, false);
    unsigned char setData[2] = {0, 0};
    g_callbackCalls = 0;
    g_callbackFx = nullptr;
    g_callbackSetData = nullptr;
    fx.SetAnimFX(false, false, false, 1.0f, 0, setData, &RecordCallback);
    fx._HandleLoopEnd();
    CHECK(g_callbackCalls == 1);
    CHECK(g_callbackFx == &fx);
    CHECK(g_callbackSetData == setData);
    CHECK(setData[0] == 1);
    CHECK(fx.m_endOfLoop == nullptr);
}

void TestLoopEndGateClosed() {
    AnimatedFX fx(0);
    unsigned char setData[1] = {0};
    fx.SetAnimFX(false, false, false, 0.0f, 0, setData, nullptr);
    fx._HandleLoopEnd();
    // Speed <= 0 and no callback: the original does nothing here.
    CHECK(setData[0] == 0);
    CHECK(fx.m_loopCount == 0);
}

void TestLoopEndNegativeCountIsEndless() {
    AnimatedFX fx(0);
    unsigned char setData[1] = {0};
    fx.SetAnimFX(false, false, false, 1.0f, -1, setData, nullptr);
    fx._HandleLoopEnd();
    CHECK(setData[0] == 0);
    CHECK(fx.m_loopCount == -1);
}

void TestForceMaterialLevelZeroIsSilent() {
    AnimatedFX fx(0);
    gAssertLevel = 0;
    fx.ForceMaterial(7);
    CHECK(gAssertLevel == 0);
}

}  // namespace

int main() {
    TestConstructorDefaults();
    TestSetAnimFXStoresFields();
    TestSetSpeedWithoutVisual();
    TestSetScaleWithoutVisual();
    TestSetLoopingStoresFlag();
    TestLoopCountdown();
    TestLoopEndFinishSetsFlag();
    TestLoopEndCallback();
    TestLoopEndGateClosed();
    TestLoopEndNegativeCountIsEndless();
    TestForceMaterialLevelZeroIsSilent();
    if (g_failures == 0) {
        std::printf("AnimatedFX batch g1-game-anim-AnimatedFX-6c1bfb-0: all checks passed\n");
        return 0;
    }
    std::printf("AnimatedFX batch g1-game-anim-AnimatedFX-6c1bfb-0: %d check(s) failed\n", g_failures);
    return 1;
}
