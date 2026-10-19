// AnimController, part 1 of 2 (batch g1-game-anim-AnimController-83ef73-0), rebuilt from libDungeonHunter2.so.
//
// The complete-object constructor 0x474d30 has the same body as 0x474e44. The part-2 batch defines that body in
// game-anim/src/g1-game-anim-AnimController-83ef73-1.cpp, so it is not defined again here.
//
// The animator list is reached through the engine base: RootSceneNode derives from glitch::collada::CRootSceneNode, which
// derives from ISceneNode (animators at +0xfc, flags at +0x11c). The collada animator derives from
// glitch::scene::ISceneNodeAnimator, so getTimelineCtrl and the clip interface are available.
//
// Partial bodies: GetAnimationSet (the result type is incomplete), the destructor (the drop of m_node goes through the
// node's second reference-counted subobject), SetCallbacks for one animator (its body is not reconstructed), and the
// SetCallbacksOnAll walk that calls it.

#include "dh2/AnimController.hpp"
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

#include <cstdint>
#include <cstdlib>

#include "dh2/AnimApplicator.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/global/GetApplicator.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

// Static data member, initialised from the .data byte at 0x999841 (value 1, read with IDA get_global_value).
// Written by Script_EnterCutSceneMode::Execute (0x45a384) and Script_ExitCutSceneMode::Execute (0x4599ac);
// read by AnimController::SetScale and BlendedAnimSetController::SetScale.
bool AnimController::s_scalingEnabled = true;

// 0x474678 _ZN14AnimController15GetAnimationSetEv
// The base controller has no set: an empty reference.
boost::intrusive_ptr<AnimationSet> AnimController::GetAnimationSet() {
    return boost::intrusive_ptr<AnimationSet>();
}

// 0x474684 _ZN14AnimControllerD2Ev
// 0x4746c8 _ZN14AnimControllerD1Ev
// Both bodies are identical. The vptr reset is the compiler's; the node reference is dropped through its IReferenceCounted
// virtual base.
AnimController::~AnimController() {
    if (m_node != nullptr) {
        m_node->drop();
    }
}

// 0x47470c _ZN14AnimController17_CBAnim_DoNothingEPN6glitch5scene19ITimelineControllerEPv
void AnimController::_CBAnim_DoNothing(glitch::scene::ITimelineController*, void*) {}

// 0x474710 _ZN14AnimController18_CBEvent_DoNothingERKN6glitch7collada15STriggeredEventEPv
void AnimController::_CBEvent_DoNothing(const glitch::collada::STriggeredEvent&, void*) {}

// 0x474734 _ZNK14AnimController10GetNumAnimEv
// The count of the animator list of m_node (ISceneNode +0xfc).
int AnimController::GetNumAnim() const {
    return static_cast<int>(m_node->getAnimators().size());
}

// 0x474770 _ZNK14AnimController7GetAnimEj
// Returns null when index >= GetNumAnim() (virtual slot +0x0c). Otherwise the element at that index of m_node's animator
// list (element value at node +0x08). The list holds collada animators; the scene base is the primary base, so the
// downcast keeps the pointer value.
const glitch::collada::ISceneNodeAnimator* AnimController::GetAnim(unsigned int index) const {
    if (static_cast<unsigned int>(GetNumAnim()) <= index) {
        return nullptr;
    }
    unsigned int i = 0;
    for (auto it = m_node->getAnimators().begin(); it != m_node->getAnimators().end(); ++it, ++i) {
        if (i == index) {
            return static_cast<const glitch::collada::ISceneNodeAnimator*>(*it);
        }
    }
    return nullptr;
}

// 0x4747d8 _ZNK14AnimController15GetClipDurationEj
// anim = GetAnim(index); tc = anim->getTimelineCtrl() const (slot +0x40). When both are non-null, the current clip length
// of tc (slot +0x34). Otherwise -1.
int AnimController::GetClipDuration(unsigned int index) const {
    const glitch::collada::ISceneNodeAnimator* anim = GetAnim(index);
    glitch::scene::ITimelineController* tc = anim != nullptr ? anim->getTimelineCtrl() : nullptr;
    if (anim != nullptr && tc != nullptr) {
        return static_cast<int>(tc->getCurrentClipLength());
    }
    return -1;
}

// 0x474814 _ZNK14AnimController7HasClipEPKcj
// tc = GetAnim(index)->getTimelineCtrl() const. When tc is non-null and has clips (getClipCount, slot +0x1c > 0), returns
// tc->getClipIndex(clipName) (slot +0x18) != -1. Otherwise false.
bool AnimController::HasClip(const char* clipName, unsigned int index) const {
    const glitch::collada::ISceneNodeAnimator* anim = GetAnim(index);
    glitch::scene::ITimelineController* tc = anim != nullptr ? anim->getTimelineCtrl() : nullptr;
    if (anim != nullptr && tc != nullptr && tc->getClipCount() > 0) {
        return tc->getClipIndex(clipName) != -1;
    }
    return false;
}

// 0x47487c _ZNK14AnimController10GetNumClipEj
// The clip count (slot +0x1c) of tc = GetAnim(index)->getTimelineCtrl() const, or 0 when either is missing.
int AnimController::GetNumClip(unsigned int index) const {
    const glitch::collada::ISceneNodeAnimator* anim = GetAnim(index);
    glitch::scene::ITimelineController* tc = anim != nullptr ? anim->getTimelineCtrl() : nullptr;
    if (anim != nullptr && tc != nullptr) {
        return tc->getClipCount();
    }
    return 0;
}

// 0x4748b8 _ZN14AnimController7GetAnimEj
// Non-const overload: the same walk as 0x474770, returning the animator without const.
glitch::collada::ISceneNodeAnimator* AnimController::GetAnim(unsigned int index) {
    if (static_cast<unsigned int>(GetNumAnim()) <= index) {
        return nullptr;
    }
    unsigned int i = 0;
    for (auto it = m_node->getAnimators().begin(); it != m_node->getAnimators().end(); ++it, ++i) {
        if (i == index) {
            return static_cast<glitch::collada::ISceneNodeAnimator*>(*it);
        }
    }
    return nullptr;
}

// 0x474920 _ZN14AnimController8SetScaleEfj
// When s_scalingEnabled is set: anim = GetAnim(index); tc = anim->getTimelineCtrl() (slot +0x44); tc->setScale(scale)
// (slot +0x48).
void AnimController::SetScale(float scale, unsigned int animIndex) {
    if (!s_scalingEnabled) {
        return;
    }
    glitch::collada::ISceneNodeAnimator* anim = GetAnim(animIndex);
    if (anim != nullptr) {
        glitch::scene::ITimelineController* tc = anim->getTimelineCtrl();
        if (tc != nullptr) {
            tc->setScale(scale);
        }
    }
}

// 0x474988 _ZN14AnimController8StopClipEbj
// anim = GetAnim(index); tc = anim->getTimelineCtrl() (slot +0x44). When tc is non-null: tc->setScale(0) (slot +0x48);
// when rewind is set, tc->jumpTo(tc->getCurrentClipEnd()) (jumpTo slot +0x0c, getCurrentClipEnd slot +0x30).
void AnimController::StopClip(bool rewind, unsigned int animIndex) {
    glitch::collada::ISceneNodeAnimator* anim = GetAnim(animIndex);
    if (anim == nullptr) {
        return;
    }
    glitch::scene::ITimelineController* tc = anim->getTimelineCtrl();
    if (tc == nullptr) {
        return;
    }
    tc->setScale(0.0f);
    if (rewind) {
        tc->jumpTo(static_cast<std::int32_t>(tc->getCurrentClipEnd()));
    }
}

// 0x4749f4 _ZN14AnimController8PlayClipEPKcbij
// anim = GetAnim(index); applicator = GetApplicator(anim) (computed before the checks, as in the original).
//   anim null: GetApplicator(null), return false.
//   tc = anim->getTimelineCtrl() (slot +0x44). When tc has clips and getClipIndex(name) == -1: return false.
//   v12 = tc->getCurrentClipIndex() (slot +0x38); v13 = anim->getAnimationClipIndex(name) (slot +0x38);
//   anim->setAnimationClip(v13) (slot +0x30).
//   When v12 == v13 and !tc->getLoop(): tc->jumpTo(base + tc->rangeStartMs), base = applicator->unk_10 or 0.
//   tc->setLoop(loop) (slot +0x40); tc->setScale(1.0f) (slot +0x48).
//   m_node->NewAnim(false); m_node flags |= 0x200 (ESNF_ANIMATE); return true.
// Deviation: the original dereferences a null tc in the final branch; here that path returns false.
bool AnimController::PlayClip(const char* clipName, bool loop, int unused, unsigned int animIndex) {
    (void)unused;
    glitch::collada::ISceneNodeAnimator* anim = GetAnim(animIndex);
    if (anim == nullptr) {
        GetApplicator(nullptr);
        return false;
    }
    glitch::scene::ITimelineController* tc = anim->getTimelineCtrl();
    AnimApplicator* applicator = GetApplicator(anim);
    if (tc != nullptr && tc->getClipCount() > 0 && tc->getClipIndex(clipName) == -1) {
        return false;
    }
    if (tc == nullptr) {
        return false;
    }
    const std::int32_t currentClip = tc->getCurrentClipIndex();
    const std::int32_t clipIndex = anim->getAnimationClipIndex(clipName);
    anim->setAnimationClip(clipIndex);
    if (currentClip == clipIndex && !tc->getLoop()) {
        const std::int32_t base = applicator != nullptr ? applicator->unk_10 : 0;
        tc->jumpTo(base + tc->rangeStartMs);
    }
    tc->setLoop(loop);
    tc->setScale(1.0f);
    m_node->NewAnim(false);
    m_node->flags |= glitch::scene::ESNF_ANIMATE;
    return true;
}

// 0x474b50 _ZN14AnimController8PlayClipEjbij
// Same flow as the named overload, with the clip given as an index:
//   anim = GetAnim(animIndex) (non-const). Null: GetApplicator(null) and return false.
//   applicator = GetApplicator(anim); tc = anim->getTimelineCtrl() (slot +0x44).
//   When tc has clips and getClipCount() <= clip: return false.
//   currentClip = tc->getCurrentClipIndex(); anim->setAnimationClip(clip) (slot +0x30, the index overload).
//   When currentClip == clip and !tc->getLoop(): tc->jumpTo(base + tc->rangeStartMs).
//   tc->setLoop(loop); tc->setScale(1.0f); m_node->NewAnim(false); flags |= ESNF_ANIMATE; return true.
// Deviation: as in the named overload, a null tc returns false here instead of being dereferenced.
bool AnimController::PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex) {
    (void)unused;
    glitch::collada::ISceneNodeAnimator* anim = GetAnim(animIndex);
    if (anim == nullptr) {
        GetApplicator(nullptr);
        return false;
    }
    glitch::scene::ITimelineController* tc = anim->getTimelineCtrl();
    AnimApplicator* applicator = GetApplicator(anim);
    if (tc != nullptr && static_cast<unsigned int>(tc->getClipCount()) <= clip) {
        return false;
    }
    if (tc == nullptr) {
        return false;
    }
    const std::int32_t currentClip = tc->getCurrentClipIndex();
    anim->setAnimationClip(static_cast<std::int32_t>(clip));
    if (static_cast<unsigned int>(currentClip) == clip && !tc->getLoop()) {
        const std::int32_t base = applicator != nullptr ? applicator->unk_10 : 0;
        tc->jumpTo(base + tc->rangeStartMs);
    }
    tc->setLoop(loop);
    tc->setScale(1.0f);
    m_node->NewAnim(false);
    m_node->flags |= glitch::scene::ESNF_ANIMATE;
    return true;
}

// 0x474c78 _ZN14AnimController12SetCallbacksEPN6glitch7collada18ISceneNodeAnimatorEPFvPNS0_5scene19ITimelineControllerEPvES7_PFvRKNS1_15STriggeredEventES7_ES7_
// A non-null animator gets Animator::SetCallbacks directly (the original calls it without a type test, on whatever animator class
// the node holds; AnimatorSet and AnimatorBlender have the same members at the offsets it uses).
void AnimController::SetCallbacks(glitch::collada::ISceneNodeAnimator* animator, AnimCallback animCallback,
                                  void* animUserData, EventCallback eventCallback, void* eventUserData) {
    if (animator != nullptr) {
        static_cast<Animator*>(animator)->Animator::SetCallbacks(animCallback, animUserData, eventCallback, eventUserData);
    }
}

// 0x474cac _ZN14AnimController17SetCallbacksOnAllEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// partial: the walk over m_node's animator list (ISceneNode +0xfc) is written, and it calls the per-animator SetCallbacks
// (0x474c78) on each element, which is still partial.
void AnimController::SetCallbacksOnAll(AnimCallback animCallback, void* animUserData, EventCallback eventCallback,
                                       void* eventUserData) {
    for (auto it = m_node->getAnimators().begin(); it != m_node->getAnimators().end(); ++it) {
        SetCallbacks(static_cast<glitch::collada::ISceneNodeAnimator*>(*it), animCallback, animUserData, eventCallback,
                     eventUserData);
    }
}

// 0x474d10 _ZN14AnimController12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// Thunk: the original is a single branch to SetCallbacksOnAll (0x474cac). It is forwarded, not reimplemented.
void AnimController::SetCallbacks(AnimCallback animCallback, void* animUserData, EventCallback eventCallback,
                                  void* eventUserData) {
    SetCallbacksOnAll(animCallback, animUserData, eventCallback, eventUserData);
}

// 0x474d14 _ZN14AnimControllerD0Ev is the compiler-generated deleting destructor (D1, then CustomFree of this).
// Not written here. It is skipped and the compiler produces it from the virtual destructor above.

// 0x474d30 _ZN14AnimControllerC1EP13RootSceneNodeb is defined in game-anim/src/g1-game-anim-AnimController-83ef73-1.cpp
// together with its C2 twin 0x474e44. Not defined again here.
