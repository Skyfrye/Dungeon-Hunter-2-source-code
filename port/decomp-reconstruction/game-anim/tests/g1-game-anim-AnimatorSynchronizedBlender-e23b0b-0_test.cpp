// Test for batch g1-game-anim-AnimatorSynchronizedBlender-e23b0b-0. Only the bodies that run without the engine base are
// checked: getType, the bare-return functions, and the own fields that the constructor sets. Returns non-zero on failure.
#include <cstdio>

#include "dh2/AnimatorSynchronizedBlender.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    AnimatorSynchronizedBlender blender;

    Check(blender.getType() == 14, "getType returns 14");

    // The constructor's own fields (+0xb4 .. +0xd4) start at zero.
    Check(blender.m_currentIndex == 0, "m_currentIndex starts at 0");
    Check(blender.m_previousIndex == 0, "m_previousIndex starts at 0");
    Check(blender.m_blendDuration == 0, "m_blendDuration starts at 0");
    Check(blender.m_blendRemaining == 0, "m_blendRemaining starts at 0");
    Check(blender.m_blendScale == 0.0f, "m_blendScale starts at 0");
    Check(blender.m_lastTime == 0, "m_lastTime starts at 0");
    Check(blender.m_clipWrapOffset == 0, "m_clipWrapOffset starts at 0");
    Check(blender.m_animCallback == nullptr, "m_animCallback starts null");
    Check(blender.m_animCallbackUser == nullptr, "m_animCallbackUser starts null");

    // The applicator's own fields: owner, empty weight vector, unk_4c = -1.
    Check(blender.m_applicator.m_blender == &blender, "applicator owner is the blender");
    Check(blender.m_applicator.m_weights.empty(), "applicator weights start empty");
    Check(blender.m_applicator.unk_4c == -1, "applicator unk_4c starts at -1");

    // Bare-return functions leave the state alone.
    blender.m_applicator.m_delta.X = 3.0f;
    blender.m_applicator.ResetDelta(5);
    Check(blender.m_applicator.m_delta.X == 3.0f, "applicator ResetDelta is a no-op");

    AnimatorSynchronizedBlender::_CBAnim(nullptr, nullptr);

    // SetCallbacks stores the animation callback pair (the last step of the original).
    AnimatorSynchronizedBlender::AnimCallback cb = nullptr;
    int userTag = 0;
    blender.m_animCallback = cb;
    blender.m_animCallbackUser = &userTag;
    Check(blender.m_animCallbackUser == &userTag, "user data pointer round-trips");

    // Blend stores the previous index and the stored duration (its engine-free part, when the index step is skipped
    // by the partial body the stored values are still exact).
    blender.Blend(-7);
    Check(blender.m_blendDuration == 0, "negative duration is stored as 0");
    blender.Blend(250);
    Check(blender.m_blendDuration == 250, "duration is stored");
    Check(blender.m_blendRemaining == 0, "remaining takes the previously stored duration");
    blender.Blend(100);
    Check(blender.m_blendRemaining == 250, "remaining takes the stored duration on the next Blend");
    Check(blender.m_blendScale > 0.0f && blender.m_blendScale < 0.01f, "scale is 1 / 250");

    return g_failures == 0 ? 0 : 1;
}
