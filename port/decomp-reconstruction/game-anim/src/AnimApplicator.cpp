#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// AnimApplicator functions of libDungeonHunter2.so (game-anim batch g1-game-anim-AnimApplicator-85c725-0).
// Rebuilt from the Hex-Rays pseudocode in recovered/native/hexrays-all. Class layout and declarations:
// game/include/dh2/AnimApplicator.hpp.
#include "dh2/AnimApplicator.hpp"

#include <cstring>

#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/SAnimation.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

namespace {

// Sets a vector to (0, 0, 0). The original writes the three float words directly.
void SetZero(glitch::core::vector3d<float>& v) {
    v.X = 0.0f;
    v.Y = 0.0f;
    v.Z = 0.0f;
}

// Reads the reference-node pose into `out`. With no usable clip (m_refClip == -1) it is the position of the reference node
// (ISceneNode::getPosition, vptr+0xa0). Otherwise the animator samples the clip (getAnimationValue, vptr+0x7c) at a time taken
// from its timeline (getTimelineCtrl, vptr+0x44): the start of the current range when `atRangeStart` (ResetDelta), else the
// current time (AnimateNode); the argument time when the animator has no timeline. The original does not test the animator.
void SampleRefPose(const AnimApplicator& self, unsigned int time, bool atRangeStart, glitch::core::vector3d<float>& out) {
    out = glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f};
    if (self.m_refClip == -1) {
        out = self.m_refNode->getPosition();
        return;
    }
    glitch::scene::ITimelineController* timeline = self.m_animator->getTimelineCtrl();
    const unsigned int sampleTime = timeline != nullptr
                                        ? static_cast<unsigned int>(atRangeStart ? timeline->rangeStartMs : timeline->currentTimeMs)
                                        : time;
    self.m_animator->getAnimationValue(self.m_refClip, static_cast<std::int32_t>(sampleTime), &out);
}

}  // namespace

// 0x364330 AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*)
// 0x364398 AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator*)
// C2 and C1 have the same body. The constructor does not write m_refClip (+0x0c): SetRefNode writes it
// before any read, because it is only read while m_refNode is set.
AnimApplicator::AnimApplicator(glitch::collada::ISceneNodeAnimator* animator)
    : m_animator(animator) {
    m_refNode = nullptr;        // +0x08
    unk_10 = 0;                 // +0x10
    m_time = 0;                 // +0x14
    SetZero(m_prevPos);         // +0x18..+0x20
    SetZero(m_delta);           // +0x24..+0x2c
    m_callbackPending = false;  // +0x30
    m_callback = nullptr;       // +0x34
    m_callbackUser = nullptr;   // +0x38
}

// 0x364400 AnimApplicator::SetCallback(void (*)(glitch::scene::ITimelineController*, void*), void*)
void AnimApplicator::SetCallback(AnimCallback animCallback, void* userData) {
    m_callbackUser = userData;  // +0x38
    m_callback = animCallback;  // +0x34
}

// 0x36440c AnimApplicator::CheckCallback(glitch::scene::ITimelineController*)
void AnimApplicator::CheckCallback(glitch::scene::ITimelineController* timeline) {
    if (!m_callbackPending) return;
    if (m_callback == nullptr) return;  // the pending flag stays set until a callback is installed
    m_callback(timeline, m_callbackUser);
    m_callbackPending = false;
}

// 0x364444 AnimApplicator::CalculateDelta(unsigned int, glitch::core::vector3d<float> const&)
// Returns the X delta. The original returns r0 unchanged on the same-time path, which holds the this pointer
// (register residue); this port returns the zeroed X delta on that path instead. The only caller
// (AnimatorBlender, Hex-Rays chunk_004.c:19616) discards the result.
float AnimApplicator::CalculateDelta(unsigned int time, const glitch::core::vector3d<float>& position) {
    if (m_time == time) {
        SetZero(m_delta);  // +0x24..+0x2c
    } else {
        m_delta.X = position.X - m_prevPos.X;
        m_delta.Y = position.Y - m_prevPos.Y;
        m_delta.Z = position.Z - m_prevPos.Z;
    }
    m_prevPos.X = position.X;  // +0x18
    m_prevPos.Y = position.Y;  // +0x1c
    m_prevPos.Z = position.Z;  // +0x20
    m_time = time;             // +0x14
    return m_delta.X;
}

// 0x3644cc AnimApplicator::ResetDelta(unsigned int, glitch::core::vector3d<float> const&)
void AnimApplicator::ResetDelta(unsigned int time, const glitch::core::vector3d<float>& position) {
    m_prevPos.X = position.X;  // +0x18
    m_prevPos.Y = position.Y;  // +0x1c
    m_prevPos.Z = position.Z;  // +0x20
    m_time = time;             // +0x14
    SetZero(m_delta);          // +0x24..+0x2c
}

// 0x3644fc AnimApplicator::ResetDelta(unsigned int)
// With a reference node the pose is sampled (SampleRefPose, at the start of the current clip when the animator has a timeline) and
// becomes the previous pose; then m_time is set and the delta zeroed.
void AnimApplicator::ResetDelta(unsigned int time) {
    if (m_refNode != nullptr) {
        glitch::core::vector3d<float> pose;
        SampleRefPose(*this, time, true, pose);
        m_prevPos = pose;
    }
    m_time = time;
    SetZero(m_delta);
}

// 0x3645e8 AnimApplicator::AnimateNode(unsigned int)
// With a reference node the pose is sampled (at the current time of the animator timeline) and the delta computed like
// CalculateDelta does (zero for the same time); without one only m_time is written. The float the original leaves in r0 is the
// register residue of its last float; the header declares the function void.
void AnimApplicator::AnimateNode(unsigned int time) {
    if (m_refNode != nullptr) {
        glitch::core::vector3d<float> pose;
        SampleRefPose(*this, time, false, pose);
        CalculateDelta(time, pose);
        return;
    }
    m_time = time;  // +0x14
}

// 0x36473c AnimApplicator::SetRefNode(glitch::scene::ISceneNode*)
// The old reference node is dropped, the new one grabbed (both through the IReferenceCounted virtual base of ISceneNode). For a
// new node the clip index is the last animation track of the animator whose name equals the UID of the node and whose type is 1,
// or -1.
void AnimApplicator::SetRefNode(glitch::scene::ISceneNode* node) {
    if (m_refNode != nullptr) {
        m_refNode->drop();
    }
    m_refNode = node;  // +0x08
    if (node != nullptr) {
        ++node->referenceCounter;
        m_refClip = -1;  // +0x0c
        const int count = m_animator->getTargetCount();
        for (int i = 0; i != count; ++i) {
            if (std::strcmp(m_animator->getAnimationTrack(i)->name, m_refNode->getUID()) != 0) {
                continue;
            }
            if (m_animator->getAnimationTrack(i)->type == 1) {
                m_refClip = i;
            }
        }
    }
}

// 0x364838 AnimApplicator::~AnimApplicator()   (D1)
// 0x364870 AnimApplicator::~AnimApplicator()   (D2, same body)
// PARTIAL: the destructor's effect on the reference node is the SetRefNode release, which is partial (see above).
// With no reference node set, the body is complete.
AnimApplicator::~AnimApplicator() {
    AnimApplicator::SetRefNode(nullptr);
}
