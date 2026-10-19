// Test for batch g1-game-anim-AnimSetController-be4322-0.
//
// Only the constant results run without an engine: HasClip, GetClipDuration and PlayClip(const char*) (each is a
// two-instruction body in the asm), and the field values the constructor writes. The clip, callback and animator paths
// need the root scene node and the animator list, which are not modelled yet, so they are not tested here.
// The definitions below marked as doubles exist only so that this test links on its own. They are test doubles, not
// reconstructed code, and no RootSceneNode is built. Returns non-zero on failure.

#include <cstdio>
#include <cstdlib>

#include "dh2/AnimSetController.hpp"
#include "dh2/AnimatorSet.hpp"

// Test doubles for out-of-line callees of the batch source (AnimController and AnimatorSet belong to other batches).
// AnimController's own vtable is emitted in this test (its key function, the destructor, is defined here), so every
// AnimController virtual needs a definition. None of the AnimController doubles below is called by the test.
AnimController::AnimController(RootSceneNode*, bool) {}
AnimController::~AnimController() {}
boost::intrusive_ptr<AnimationSet> AnimController::GetAnimationSet() { std::abort(); }
glitch::collada::ISceneNodeAnimator* AnimController::GetAnim(unsigned int) { return nullptr; }
const glitch::collada::ISceneNodeAnimator* AnimController::GetAnim(unsigned int) const { return nullptr; }
int AnimController::GetNumAnim() const { return 0; }
int AnimController::GetNumClip(unsigned int) const { return 0; }
bool AnimController::HasClip(const char*, unsigned int) const { return false; }
int AnimController::GetClipDuration(unsigned int) const { return -1; }
bool AnimController::PlayClip(unsigned int, bool, int, unsigned int) { return false; }
bool AnimController::PlayClip(const char*, bool, int, unsigned int) { return false; }
void AnimController::StopClip(bool, unsigned int) {}
void AnimController::SetScale(float, unsigned int) {}
void AnimController::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}
void AnimatorSet::SetCallbacks(AnimCallback, void*, EventCallback, void*) {}

namespace {

int g_failures = 0;

void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // The constructor stores the set id and the two fields; with a null root node the animator attach is not reached.
    AnimSetController controller(nullptr, 7);
    check(controller.m_animSetId == 7, "constructor keeps the set id (+0x08)");
    check(controller.unk_0c == 0, "constructor sets unk_0c to 0 (+0x0c)");
    check(controller.unk_10, "constructor sets unk_10 to true (+0x10)");

    // Dispatch through the base class, as the callers do, so the overrides are the ones being checked.
    AnimController& base = controller;
    check(!base.HasClip("walk", 0), "HasClip returns false");
    check(base.GetClipDuration(0) == -1, "GetClipDuration returns -1");
    check(!base.PlayClip("walk", true, 0, 0), "PlayClip(name) returns false");

    if (g_failures == 0) {
        std::printf("AnimSetController part 1: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
