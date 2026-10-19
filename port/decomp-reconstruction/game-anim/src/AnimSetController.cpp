#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-anim-AnimSetController-be4322-0 (game-anim, owner AnimSetController), rebuilt from libDungeonHunter2.so.
//
// AnimSetController plays the clips of one animation set on a root scene node. Its animator is read through
// AnimController::GetAnim, which is partial in g1-game-anim-AnimController-83ef73-0.cpp (it returns null until the
// RootSceneNode animator list is modelled). Every body that reaches the animator through GetAnim is therefore partial
// here, and so is the constructor, which needs Singleton<AnimSetManager>::s_inst (no declaration in the repository).
//
// Notes on the layouts used below (asm checked):
//   - The animator returned by AnimController::GetAnim is the AnimatorSet built by AnimSetManager::GetAnimator (0xa4
//     bytes). AnimatorSet is not derived from glitch::collada::ISceneNodeAnimator in its header, so the cast is a
//     reinterpret_cast, as the original's direct call of AnimatorSet::SetCallbacks on that pointer.
//   - ISceneNode::addAnimator is the vtable slot at vptr+0x6c (decomp_vtable lists it at +0x78 from the vtable base).

#include "dh2/AnimSetController.hpp"
#include "dh2/AnimApplicator.hpp"
#include "dh2/AnimationSet.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/Animator.hpp"
#include "dh2/AnimatorBlender.hpp"
#include "dh2/AnimatorSet.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/global/GetApplicator.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

#include <cstdlib>

#include "dh2/AnimatorSet.hpp"

// 0x474f58 _ZNK17AnimSetController7HasClipEPKcj
// Stub in the original: returns false (asm: MOV R0,#0; BX LR). The clip name and index are not read.
bool AnimSetController::HasClip(const char* /*clipName*/, unsigned int /*animIndex*/) const {
    return false;
}

// 0x474f60 _ZNK17AnimSetController15GetClipDurationEj
// Stub in the original: returns -1 (asm: MVN R0,#0; BX LR).
int AnimSetController::GetClipDuration(unsigned int /*animIndex*/) const {
    return -1;
}

// 0x474f68 _ZN17AnimSetController8PlayClipEPKcbij
// Stub in the original: returns false (asm: MOV R0,#0; BX LR).
bool AnimSetController::PlayClip(const char* /*clipName*/, bool /*loop*/, int /*unused*/,
                                 unsigned int /*animIndex*/) {
    return false;
}

// 0x474f70 _ZN17AnimSetController15GetAnimationSetEv
// The animation set of the first animator (an AnimatorSet, +0x94), with a reference taken; empty without animator.
boost::intrusive_ptr<AnimationSet> AnimSetController::GetAnimationSet() {
    glitch::collada::ISceneNodeAnimator* animator = GetAnim(0);
    if (animator != nullptr) {
        return static_cast<AnimatorSet*>(animator)->m_animationSet;
    }
    return boost::intrusive_ptr<AnimationSet>();
}

// 0x474fb0 _ZN17AnimSetController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// A tail call to AnimatorSet::SetCallbacks on the first animator, when there is one.
void AnimSetController::SetCallbacks(AnimCallback animCallback, void* animUserData, EventCallback eventCallback,
                                     void* eventUserData) {
    glitch::collada::ISceneNodeAnimator* animator = GetAnim(0);
    if (animator != nullptr) {
        static_cast<AnimatorSet*>(animator)->AnimatorSet::SetCallbacks(animCallback, animUserData, eventCallback, eventUserData);
    }
}

// 0x474ff0 _ZN17AnimSetController8PlayClipEjbij
// Plays animation `clip` of the animation set of the animator: the animator selects it (AnimatorSet::SetCurrentAnimation, -1 when
// the set has none), a timeline with a clip table gets clip unk_0c, a clip played again without looping jumps to the range start
// plus the remaining time of the applicator, and the timeline loop and scale are set; the node starts its animation (NewAnim with
// unk_10). Clip -1 plays nothing. The original reads the current animation of a missing animator through a null pointer; it
// returns false here.
bool AnimSetController::PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex) {
    (void)unused;
    if (clip == static_cast<unsigned int>(-1)) {
        return false;
    }
    glitch::collada::ISceneNodeAnimator* animator = GetAnim(animIndex);
    if (animator == nullptr) {
        GetApplicator(nullptr);
        return false;
    }
    glitch::scene::ITimelineController* timeline = animator->getTimelineCtrl();
    glitch::collada::CSceneNodeAnimatorSet* animatorSet = static_cast<glitch::collada::CSceneNodeAnimatorSet*>(animator);
    const int currentAnimation = animatorSet->getCurrentAnimation();
    AnimApplicator* applicator = GetApplicator(animator);
    const int selected = static_cast<AnimatorSet*>(animator)->SetCurrentAnimation(static_cast<int>(clip));
    if (selected == -1) {
        return false;
    }
    if (static_cast<glitch::collada::CTimelineController*>(timeline)->clipTable != nullptr) {   // timeline +0x34
        animator->setAnimationClip(unk_0c);
    }
    if (currentAnimation == selected && !timeline->getLoop()) {
        const std::int32_t base = applicator != nullptr ? applicator->unk_10 : 0;
        timeline->jumpTo(base + timeline->rangeStartMs);
    }
    timeline->setLoop(loop);
    timeline->setScale(1.0f);
    m_node->NewAnim(unk_10);
    return true;
}

// 0x475114 _ZNK17AnimSetController10GetNumClipEj
// The animation count of the animator set of the animator `animIndex`, or 0 without animator.
int AnimSetController::GetNumClip(unsigned int animIndex) const {
    const glitch::collada::ISceneNodeAnimator* animator = GetAnim(animIndex);
    if (animator != nullptr) {
        return static_cast<int>(static_cast<const glitch::collada::CSceneNodeAnimatorSet*>(animator)->getAnimationCount());
    }
    return 0;
}

// 0x475130 _ZN17AnimSetControllerD1Ev
// 0x475180 _ZN17AnimSetControllerD2Ev
// Both bodies are identical (asm checked): the vptr is reset (the compiler does this) and then the base destructor
// AnimController::~AnimController (0x474684) runs. Nothing else is written here. The D2 body is the same code, so it has
// no body of its own.
AnimSetController::~AnimSetController() {}

// 0x475164 _ZN17AnimSetControllerD0Ev
// SKIPPED: the scalar deleting destructor. It calls the destructor above and then CustomFree(this) (asm checked). The
// C++ delete expression produces it, as for AnimatorSet (0x36761c).

// 0x4751b4 _ZN17AnimSetControllerC1EP13RootSceneNodei
// 0x475248 _ZN17AnimSetControllerC2EP13RootSceneNodei
// The animator of the set is taken from the AnimSetManager and added to the node (the creation reference is dropped again).
AnimSetController::AnimSetController(RootSceneNode* node, int animSetId)
    : AnimController(node, true), m_animSetId(animSetId), unk_0c(0), unk_10(true) {
    glitch::collada::ISceneNodeAnimator* animator = AnimSetManager::s_inst.GetAnimator(animSetId);
    if (animator != nullptr) {
        m_node->addAnimator(animator);
        animator->drop();
    }
}
