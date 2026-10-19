// Test for batch g1-game-anim-AnimatorSet-8cd819-0.
//
// The only logic here that runs without an engine is the timeline arithmetic of AnimatorSet::_HandleAnimEnding,
// exposed as animator_set_detail::remainingAnimTimeMs. The batch source also refers to out-of-line functions of
// AnimApplicator and AnimationSet, which belong to other batches. The no-op definitions below exist only so that
// this test links on its own. They are test doubles, not reconstructed code, and no AnimatorSet object is built.

#include <cstdio>

#include "dh2/AnimApplicator.hpp"
#include "dh2/AnimationSet.hpp"

namespace animator_set_detail {
int remainingAnimTimeMs(float startSec, float endSec, int currentMs);
}  // namespace animator_set_detail

// Test doubles for out-of-line callees of the batch source. None of them runs in this test.
AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*) {}
AnimApplicator::~AnimApplicator() {}
void AnimApplicator::SetRefNode(glitch::scene::ISceneNode*) {}
void AnimApplicator::AnimateNode(unsigned int) {}
void AnimApplicator::ResetDelta(unsigned int) {}  // vtable slot of AnimApplicator, pulled in by its key function
void AnimApplicator::SetCallback(AnimCallback, void*) {}
Animation* AnimationSet::GetAnimationBySetIndex(int) { return nullptr; }
Animation* AnimationSet::GetAnimation(int) { return nullptr; }

namespace {

int g_failures = 0;

#define EXPECT_EQ(actual, expected)                                                        \
    do {                                                                                   \
        const long long a_ = static_cast<long long>(actual);                               \
        const long long e_ = static_cast<long long>(expected);                             \
        if (a_ != e_) {                                                                    \
            std::printf("FAIL %s:%d: %s = %lld, expected %lld\n", __FILE__, __LINE__,      \
                        #actual, a_, e_);                                                  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

}  // namespace

int main() {
    using animator_set_detail::remainingAnimTimeMs;

    // Window from 2.0 s to 5.0 s: the value is nonzero only while 0 <= (end - current) < start (in ms).
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 1000), 0);     // rem 4000, not below 2000
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 3000), 0);     // rem 2000, boundary is not below
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 3500), 500);   // rem 1500, result 2000 - 1500
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 4000), 1000);  // rem 1000, result 2000 - 1000
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 5000), 2000);  // rem 0, result 2000
    EXPECT_EQ(remainingAnimTimeMs(2.0f, 5.0f, 6000), 0);     // rem -1000, negative gives 0

    // Seconds are scaled by 1000 and truncated: 1.0019 s gives 1001 ms.
    EXPECT_EQ(remainingAnimTimeMs(1.0019f, 1.0019f, 1000), 1000);

    // Empty window.
    EXPECT_EQ(remainingAnimTimeMs(0.0f, 0.0f, 0), 0);

    if (g_failures == 0) {
        std::printf("g1-game-anim-AnimatorSet-8cd819-0: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-anim-AnimatorSet-8cd819-0: %d failure(s)\n", g_failures);
    return 1;
}
