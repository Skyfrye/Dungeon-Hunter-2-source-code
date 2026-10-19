#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-anim-BlendedAnimSetController-bd761d-0 (game-anim, owner BlendedAnimSetController), rebuilt from the
// Hex-Rays pseudocode of libDungeonHunter2.so (0x476680 to 0x476ddc).
//
// Status summary. Reconstructed: HasClip, GetClipDuration, PlayClip(name) (constant returns), SetCallbacks and SetScale
// (forward to the blender at GetAnim), and the destructor, whose D1 and D2 copies share one source definition. Skipped:
// the deleting destructor. Partial: GetAnimationSet, StopClip, PlayClip(index), GetNumClip and the constructor. Their
// missing pieces are marked in the function comments and are listed in the batch report as layout requests.
//
// The children of the blender are typed glitch::collada::ISceneNodeAnimator, the same type AnimSetManager::GetAnimator
// returns. The dh2 AnimatorSet does not derive from the engine's CSceneNodeAnimatorSet, and the collada animator does not
// declare getTimelineCtrl (vtable +0x44), so every call on a child beyond the animator interface stays partial.

#include "dh2/BlendedAnimSetController.hpp"
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

#include <cstddef>
#include <cstdlib>

#include "dh2/AnimatorBlender.hpp"

// 0x476680 _ZNK24BlendedAnimSetController7HasClipEPKcj
// reconstructed: the original returns 0 without reading its arguments.
bool BlendedAnimSetController::HasClip(const char* /*clipName*/, unsigned int /*animIndex*/) const {
    return false;
}

// 0x476688 _ZNK24BlendedAnimSetController15GetClipDurationEj
// reconstructed: the original returns -1 without reading its argument.
int BlendedAnimSetController::GetClipDuration(unsigned int /*animIndex*/) const {
    return -1;
}

// 0x476690 _ZN24BlendedAnimSetController8PlayClipEPKcbij
// reconstructed: the original returns 0 (false) without reading its arguments.
bool BlendedAnimSetController::PlayClip(const char* /*clipName*/, bool /*loop*/, int /*unused*/,
                                        unsigned int /*animIndex*/) {
    return false;
}

// 0x476698 _ZN24BlendedAnimSetController15GetAnimationSetEv
// The animation set of the current child of the first animator (a blender), with a reference taken; empty without one.
boost::intrusive_ptr<AnimationSet> BlendedAnimSetController::GetAnimationSet() {
    glitch::collada::ISceneNodeAnimator* animator = GetAnim(0);
    if (animator != nullptr) {
        AnimatorBlender* blender = static_cast<AnimatorBlender*>(animator);
        glitch::collada::ISceneNodeAnimator* child = blender->animators[blender->m_currentIndex];
        if (child != nullptr) {
            return static_cast<AnimatorSet*>(child)->m_animationSet;
        }
    }
    return boost::intrusive_ptr<AnimationSet>();
}

// 0x4766fc _ZN24BlendedAnimSetController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// reconstructed: forwards the four arguments to the blender at GetAnim(0), when there is one. With no blender the
// original returns the null result and makes no call. The callee AnimatorBlender::SetCallbacks (0x366eb8) is partial in
// its own row (its per-child loop is not written); this forward is complete.
void BlendedAnimSetController::SetCallbacks(AnimCallback animCallback, void* animUserData,
                                            EventCallback eventCallback, void* eventUserData) {
    glitch::collada::ISceneNodeAnimator* anim = GetAnim(0);
    if (anim != nullptr) {
        static_cast<AnimatorBlender*>(anim)->SetCallbacks(animCallback, animUserData, eventCallback, eventUserData);
    }
}

// 0x47673c _ZN24BlendedAnimSetController8SetScaleEfj
// reconstructed: gated by AnimController::s_scalingEnabled, as in the original. The blender at GetAnim(animIndex) gets
// SetScale(scale). The original makes this call without a null test on the blender, so the same is done here. The callee
// AnimatorBlender::SetScale (0x3666d8) is partial in its own row (its per-child loop is not written).
void BlendedAnimSetController::SetScale(float scale, unsigned int animIndex) {
    if (!AnimController::s_scalingEnabled) {
        return;
    }
    static_cast<AnimatorBlender*>(GetAnim(animIndex))->SetScale(scale);
}

// 0x476780 _ZN24BlendedAnimSetController8StopClipEbj
// The blender scale is zeroed (every child timeline); with rewind the current child timeline jumps to the end of its clip.
void BlendedAnimSetController::StopClip(bool rewind, unsigned int animIndex) {
    AnimatorBlender* blender = static_cast<AnimatorBlender*>(GetAnim(animIndex));
    glitch::collada::ISceneNodeAnimator* child = blender->animators[blender->m_currentIndex];
    if (child == nullptr) {
        blender->SetScale(0.0f);
        return;
    }
    glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
    blender->SetScale(0.0f);
    if (timeline != nullptr && rewind) {
        timeline->jumpTo(static_cast<std::int32_t>(timeline->getCurrentClipEnd()));
    }
}

// 0x47680c _ZN24BlendedAnimSetController8PlayClipEjbij
// A cross-fade starts (Blend with unk_14), then animation `clip` is selected on the new current child like
// AnimSetController::PlayClip does (the applicator is the blender one); BlendPost closes it. Clip -1 plays nothing.
bool BlendedAnimSetController::PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex) {
    (void)unused;
    AnimatorBlender* blender = static_cast<AnimatorBlender*>(GetAnim(animIndex));
    if (blender == nullptr) {
        return false;
    }
    blender->Blend(unk_14);
    if (clip == static_cast<unsigned int>(-1)) {
        return false;
    }
    glitch::collada::CSceneNodeAnimatorSet* child =
        static_cast<glitch::collada::CSceneNodeAnimatorSet*>(blender->animators[blender->m_currentIndex]);
    if (child == nullptr) {
        GetApplicator(blender);
        return false;
    }
    glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
    const int currentAnimation = child->getCurrentAnimation();
    AnimApplicator* applicator = GetApplicator(blender);
    const int selected = static_cast<AnimatorSet*>(child)->SetCurrentAnimation(static_cast<int>(clip));
    if (selected == -1) {
        return false;
    }
    if (static_cast<glitch::collada::CTimelineController*>(timeline)->clipTable != nullptr) {   // timeline +0x34
        child->setAnimationClip(unk_0c);
    }
    if (currentAnimation == selected && !timeline->getLoop()) {
        const std::int32_t base = applicator != nullptr ? applicator->unk_10 : 0;
        timeline->jumpTo(base + timeline->rangeStartMs);
    }
    timeline->setLoop(loop);
    timeline->setScale(1.0f);
    m_node->NewAnim(unk_10);
    blender->BlendPost();
    return true;
}

// 0x47695c _ZNK24BlendedAnimSetController10GetNumClipEj
// The animation count of the current child of the blender `animIndex`, or 0.
int BlendedAnimSetController::GetNumClip(unsigned int animIndex) const {
    const glitch::collada::ISceneNodeAnimator* animator = GetAnim(animIndex);
    if (animator != nullptr) {
        const AnimatorBlender* blender = static_cast<const AnimatorBlender*>(animator);
        const glitch::collada::CSceneNodeAnimatorSet* child =
            static_cast<const glitch::collada::CSceneNodeAnimatorSet*>(blender->animators[blender->m_currentIndex]);
        if (child != nullptr) {
            return static_cast<int>(child->getAnimationCount());
        }
    }
    return 0;
}

// 0x476990 _ZN24BlendedAnimSetControllerD1Ev
// 0x4769e0 _ZN24BlendedAnimSetControllerD2Ev
// Both copies have the same body, so one source definition covers both (the class has no virtual base, so the complete and
// base-object destructors are the same). The original resets the vptr (the compiler does this) and calls the base
// destructor AnimController::~AnimController (0x474684). This body is complete. The base destructor is partial in its own
// row (it does not yet drop m_node), so this destructor inherits that gap.
BlendedAnimSetController::~BlendedAnimSetController() {}

// 0x4769c4 _ZN24BlendedAnimSetControllerD0Ev
// skipped: compiler-generated deleting destructor. The original is the destructor at 0x476990 followed by CustomFree(this).
// A C++ delete expression produces the same shape, so no body is written here.

// 0x476b4c _ZN24BlendedAnimSetControllerC2EP13RootSceneNodei
// 0x476ddc _ZN24BlendedAnimSetControllerC1EP13RootSceneNodei
// Two animators of the same set are taken from the AnimSetManager; with both present a blender over the two is built (needs a
// compile; weights 1 and 0; the first set must have an animation, assert at BlendedAnimSetController.cpp:69), added to the node,
// and the three creation references are dropped. Otherwise the animators that exist are dropped.
BlendedAnimSetController::BlendedAnimSetController(RootSceneNode* node, int animSetId)
    : AnimController(node, true), m_animSetId(animSetId), unk_0c(0), unk_10(true), unk_14(0) {
    glitch::collada::ISceneNodeAnimator* first = AnimSetManager::s_inst.GetAnimator(animSetId);
    glitch::collada::ISceneNodeAnimator* second = AnimSetManager::s_inst.GetAnimator(m_animSetId);
    if (second != nullptr && first != nullptr) {
        if (static_cast<int>(static_cast<glitch::collada::CSceneNodeAnimatorSet*>(first)->getAnimationCount()) <= 0) {
            // ASSERT(set1->getAnimationCount() > 0) FAILED: BlendedAnimSetController.cpp:69
        }
        AnimatorBlender* blender = new AnimatorBlender();
        blender->needsCompile = true;        // +0x24
        ++first->referenceCounter;
        blender->animators.push_back(first);
        blender->needsCompile = true;
        ++second->referenceCounter;
        blender->animators.push_back(second);
        blender->compile(nullptr);
        blender->weights[0] = 1.0f;
        blender->weights[1] = 0.0f;
        m_node->addAnimator(blender);
        first->drop();
        second->drop();
        blender->drop();
    } else {
        if (first != nullptr) {
            first->drop();
        }
        if (second != nullptr) {
            second->drop();
        }
    }
}
