// Batch g1-game-anim-AnimatorSet-8cd819-0 (game-anim, owner AnimatorSet).
//
// AnimatorSet derives from glitch::collada::CSceneNodeAnimatorSet (canonical, glitch-scene-collada-gui), which is
// the original base. Every body that forwards to a base method, or reads the timeline or Animation fields that
// have no declaration yet, is still partial. Those spots are written as TODO comments with the original
// address and offset. The layout requests for them are in the batch report.

#include "dh2/AnimatorSet.hpp"

#include "dh2/AnimApplicator.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "dh2/AnimationSet.hpp"

namespace animator_set_detail {

// Helper, not an original symbol. It is the arithmetic of AnimatorSet::_HandleAnimEnding (0x3672c8) on the
// timeline values that function reads. startSec is the float at ITimelineController +0x1c, endSec the float at
// +0x2c, currentMs the int at +0x04 (currentFrame). The result is what the original stores at AnimatorSet +0x68
// (AnimApplicator unk_10). Checked against the asm: fmul by 1000.0f, f2iz (truncation), RSB, signed compares.
int remainingAnimTimeMs(float startSec, float endSec, int currentMs) {
    const int startMs = static_cast<int>(startSec * 1000.0f);
    const int endMs = static_cast<int>(endSec * 1000.0f);
    const int rem = endMs - currentMs;
    int result = rem < startMs ? 1 : 0;
    if (rem < 0) result = 0;
    if (result != 0) result = startMs - rem;
    return result;
}

}  // namespace animator_set_detail

// 0x3672c0 _ZNK11AnimatorSet7getTypeEv
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE AnimatorSet::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(13);
}

// 0x3672c8 _ZN11AnimatorSet17_HandleAnimEndingEPN6glitch5scene19ITimelineControllerE
// With a timeline the time left in the clip step is stored in m_applicator.unk_10 (+0x68); the callback flag is set on every path.
void AnimatorSet::_HandleAnimEnding(glitch::scene::ITimelineController* timeline) {
    if (timeline != nullptr) {
        const glitch::collada::CTimelineController* controller = static_cast<const glitch::collada::CTimelineController*>(timeline);
        m_applicator.unk_10 = animator_set_detail::remainingAnimTimeMs(controller->lastStep, controller->currentSec, timeline->currentTimeMs);
    }
    m_applicator.m_callbackPending = true;  // AnimatorSet +0x88 (AnimApplicator +0x30), set unconditionally
}

// 0x367338 _ZN11AnimatorSet7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
// Timeline callback. SetCallbacks stores this function and the AnimatorSet in the timeline (+0x08 and +0x0c). The
// timeline passes the user data back, so the first argument of _HandleAnimEnding is the user data (the asm swaps
// r0 and r1 before the tail call).
void AnimatorSet::_CBAnim(glitch::scene::ITimelineController* timeline, void* userData) {
    static_cast<AnimatorSet*>(userData)->_HandleAnimEnding(timeline);
}

// 0x367368 _ZN11AnimatorSet22computeAnimationValuesEj
// The engine animation index (+0x50) follows the current game animation (Animation +0x20), then the base computes.
void AnimatorSet::computeAnimationValues(unsigned int time) {
    currentAnimation = m_currentAnimation != nullptr ? m_currentAnimation->unk_20 : 0;
    glitch::collada::CSceneNodeAnimatorSet::computeAnimationValues(time);
}

// 0x36737c _ZN11AnimatorSet20applyAnimationValuesEj
// As computeAnimationValues, then the base applies.
void AnimatorSet::applyAnimationValues(unsigned int time) {
    currentAnimation = m_currentAnimation != nullptr ? m_currentAnimation->unk_20 : 0;
    glitch::collada::CSceneNodeAnimatorSet::applyAnimationValues(time);
}

// 0x367390 _ZN11AnimatorSet17getAnimationValueEiiPv
// As computeAnimationValues, then the base reads the value.
void AnimatorSet::getAnimationValue(int track, int index, void* out) {
    currentAnimation = m_currentAnimation != nullptr ? m_currentAnimation->unk_20 : 0;
    glitch::collada::CSceneNodeAnimatorSet::getAnimationValue(track, index, out);
}

// 0x3673a4 _ZN11AnimatorSet11animateNodeEPN6glitch5scene10ISceneNodeEj
// The base animateNode, the applicator (non-virtual AnimApplicator::AnimateNode) and its callback check against the timeline of
// the animator (vtable +0x44). The original returns the CheckCallback result; the override is void.
void AnimatorSet::animateNode(glitch::scene::ISceneNode* node, unsigned int time) {
    glitch::collada::CSceneNodeAnimatorSet::animateNode(node, time);
    m_applicator.AnimApplicator::AnimateNode(time);
    m_applicator.CheckCallback(getTimelineCtrl());
}

// 0x3673e4 _ZN11AnimatorSet10updateTimeEj
// The engine animation index follows the current game animation, the base updateTime runs (ISceneNodeAnimator::updateTime) and
// the applicator callback is checked against the timeline.
void AnimatorSet::updateTime(unsigned int time) {
    currentAnimation = m_currentAnimation != nullptr ? m_currentAnimation->unk_20 : 0;
    glitch::collada::ISceneNodeAnimator::updateTime(time);
    m_applicator.CheckCallback(getTimelineCtrl());
}

// 0x367420 _ZN11AnimatorSet19setCurrentAnimationEi
// The game animation of the engine set index: when it has a clip, it gets a use (+0x24 and +0x2c), becomes the current animation
// (the old one loses a use) and the base selects the index.
void AnimatorSet::setCurrentAnimation(int setIndex) {
    Animation* animation = m_animationSet->GetAnimationBySetIndex(setIndex);
    if (animation->unk_20 != -1) {
        ++animation->m_useCount;      // +0x24
        ++animation->unk_2c;          // +0x2c
        Animation* previous = m_currentAnimation;
        m_currentAnimation = animation;
        if (previous != nullptr) {
            --previous->m_useCount;
        }
        glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(setIndex);
    }
}

// 0x367484 _ZN11AnimatorSet8onUnbindEPN6glitch5scene10ISceneNodeE
// The applicator forgets its reference node, then the base onUnbind (a tail call in the original).
void AnimatorSet::onUnbind(glitch::scene::ISceneNode* node) {
    m_applicator.AnimApplicator::SetRefNode(nullptr);
    glitch::collada::ISceneNodeAnimator::onUnbind(node);
}

// 0x3674ac _ZN11AnimatorSet19SetCurrentAnimationEi
// As setCurrentAnimation, by AnimDict id; returns the engine index of the clip (-1 when it has none), and the base selects it.
int AnimatorSet::SetCurrentAnimation(int animId) {
    Animation* animation = m_animationSet->GetAnimation(animId);
    if (animation->unk_20 != -1) {
        ++animation->m_useCount;      // +0x24
        ++animation->unk_2c;          // +0x2c
        Animation* previous = m_currentAnimation;
        m_currentAnimation = animation;
        if (previous != nullptr) {
            --previous->m_useCount;
        }
        glitch::collada::CSceneNodeAnimatorSet::setCurrentAnimation(animation->unk_20);
        return animation->unk_20;
    }
    return animation->unk_20;
}

// 0x367510 _ZN11AnimatorSet12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// The event pair goes into the animator (+0x1c, +0x20) and the events manager of its track; the timeline calls _CBAnim with this;
// the applicator gets the animation callback pair.
void AnimatorSet::SetCallbacks(AnimCallback animCallback, void* animUserData,
                               EventCallback eventCallback, void* eventUserData) {
    this->eventCallback = eventCallback;      // +0x1c
    this->eventUserData = eventUserData;      // +0x20
    if (eventsTrack) {                        // +0x18
        eventsTrack->callbackUserData = eventUserData;
        eventsTrack->callback = eventCallback;
    }
    glitch::scene::ITimelineController* timeline = getTimelineCtrl();
    if (timeline != nullptr) {
        timeline->callbackData = this;
        timeline->callback = &AnimatorSet::_CBAnim;
    }
    m_applicator.AnimApplicator::SetCallback(animCallback, animUserData);
}

// 0x367590 _ZN11AnimatorSetD1Ev
// The current animation loses its use; the set reference, the applicator and the engine base are released by the member and base
// destructors in the original order.
AnimatorSet::~AnimatorSet() {
    if (m_currentAnimation != nullptr) {
        --m_currentAnimation->m_useCount;  // +0x24
    }
}

// 0x36761c _ZN11AnimatorSetD0Ev
// SKIPPED: the scalar deleting destructor. It is the destructor followed by CustomFree(this) (core-platform
// memory.hpp, 0x310440). The C++ delete expression produces it, and this tree declares no class operator delete.

// 0x367638 _ZN11AnimatorSetD2Ev
// PARTIAL: the base-object destructor form with a VTT argument. Its work is the destructor body above (0x367590)
// minus the secondary vptr store at +0x9c. Not rebuilt separately.

// 0x3676b8 _ZN11AnimatorSetC1ERKN5boost13intrusive_ptrI12AnimationSetEE
// The engine base takes the engine set of the animation set (AnimationSet +0x20, with a use held during the call); the applicator
// is built with this as animator; the set reference is taken; no current animation.
AnimatorSet::AnimatorSet(const boost::intrusive_ptr<AnimationSet>& animationSet)
    : glitch::collada::CSceneNodeAnimatorSet(boost::intrusive_ptr<glitch::collada::CAnimationSet>(animationSet->m_animSet, true)),
      m_applicator(this),
      m_animationSet(animationSet),
      m_currentAnimation(nullptr) {
}

// 0x367790 _ZN11AnimatorSetC2ERKN5boost13intrusive_ptrI12AnimationSetEE
// PARTIAL: the base-object constructor form with a VTT argument (asm-level detail: it does not initialise the secondary
// sub-object at +0x9c and +0xa0). Not rebuilt separately; the source constructor is the one above (0x3676b8).
