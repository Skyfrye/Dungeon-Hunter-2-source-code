// Test for batch g1-game-anim-Animator-52d554-0.
//
// Covers the arithmetic behind _HandleAnimEnding (animator_detail::SecondsToMs and ClipTimeLeftMs), getType,
// and the callback path _CBAnim -> _HandleAnimEnding with a null timeline (which sets m_callbackPending and
// leaves unk_10 alone). No Animator constructor runs: the object is zero-filled storage and every member call
// is qualified, so no vtable dispatch happens. The constructor and the base-dependent functions are partial
// and are not exercised here.
//
// AnimApplicator's out-of-line members belong to another batch. The Animator code calls some of them, so
// this unit defines them as no-op stubs to link alone. The stubs are test-only.

#include <cstdio>
#include <cstring>

#include "dh2/Animator.hpp"

namespace animator_detail {
int SecondsToMs(float seconds);
int ClipTimeLeftMs(int stepMs, int remainingMs);
}  // namespace animator_detail

// Test-only stubs for AnimApplicator (another batch). Each one is a no-op.
AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*) {}
AnimApplicator::~AnimApplicator() {}
void AnimApplicator::SetRefNode(glitch::scene::ISceneNode*) {}
void AnimApplicator::ResetDelta(unsigned int) {}
void AnimApplicator::AnimateNode(unsigned int) {}
void AnimApplicator::SetCallback(AnimCallback, void*) {}
void AnimApplicator::CheckCallback(glitch::scene::ITimelineController*) {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(Animator) unsigned char g_storage[sizeof(Animator)];

Animator* Storage() {
    return reinterpret_cast<Animator*>(g_storage);
}

}  // namespace

int main() {
    // SecondsToMs: single-precision multiply by 1000, truncated toward zero.
    EXPECT(animator_detail::SecondsToMs(0.0f) == 0);
    EXPECT(animator_detail::SecondsToMs(1.5f) == 1500);
    EXPECT(animator_detail::SecondsToMs(2.0009f) == 2000);
    EXPECT(animator_detail::SecondsToMs(0.0005f) == 0);

    // ClipTimeLeftMs: step - remaining when 0 <= remaining < step, otherwise 0.
    EXPECT(animator_detail::ClipTimeLeftMs(1000, -5) == 0);
    EXPECT(animator_detail::ClipTimeLeftMs(1000, 0) == 1000);
    EXPECT(animator_detail::ClipTimeLeftMs(1000, 400) == 600);
    EXPECT(animator_detail::ClipTimeLeftMs(1000, 999) == 1);
    EXPECT(animator_detail::ClipTimeLeftMs(1000, 1000) == 0);
    EXPECT(animator_detail::ClipTimeLeftMs(1000, 1500) == 0);
    EXPECT(animator_detail::ClipTimeLeftMs(0, 0) == 0);

    std::memset(g_storage, 0, sizeof g_storage);
    Animator* animator = Storage();

    // getType returns 11.
    EXPECT(animator->Animator::getType() == 11);

    // The applicator's unk_10 is not touched when the timeline is null, and the callback flag is set.
    animator->m_applicator.unk_10 = 77;
    animator->m_applicator.m_callbackPending = false;
    animator->Animator::_HandleAnimEnding(nullptr);
    EXPECT(animator->m_applicator.m_callbackPending == true);
    EXPECT(animator->m_applicator.unk_10 == 77);

    // _CBAnim forwards userData (the Animator) to _HandleAnimEnding.
    animator->m_applicator.m_callbackPending = false;
    Animator::_CBAnim(nullptr, animator);
    EXPECT(animator->m_applicator.m_callbackPending == true);
    EXPECT(animator->m_applicator.unk_10 == 77);

    if (g_failures == 0) {
        std::printf("g1-game-anim-Animator-52d554-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-anim-Animator-52d554-0 test: %d failure(s)\n", g_failures);
    return 1;
}
