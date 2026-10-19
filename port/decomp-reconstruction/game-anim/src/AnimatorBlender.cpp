// AnimatorBlender, batch g1-game-anim-AnimatorBlender-0caed3-0 (part 1 of 2). The deleting destructor 0x367284 is in
// g1-game-anim-AnimatorBlender-0caed3-1.cpp. Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so; asm was
// checked for the integer duration compare in Blend and for the thunk in compile. Functions marked partial in the
// ledger have a comment at the place where the missing piece goes.
#include "dh2/AnimatorBlender.hpp"

#include "dh2/global/GetApplicator.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

// core-platform/memory.hpp declares this too. The header is not included here: its deps/glitch_core.hpp repeats
// the glitch::core types that AnimatorBlender.hpp already gets from glitch-core-io.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its ASSERT macro.
constexpr const char* kAnimatorBlenderSource =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorBlender.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash); gAssertLevel 1
// prints the message to stderr and execution continues.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kAnimatorBlenderSource, line);
    }
}

// Cross-fade step shared by animateNode and updateTime (the same block in both originals). It counts the remaining
// time down by the time since the last update, then sets the weights of the previous and current child from it.
void StepCrossFade(AnimatorBlender& blender, unsigned int timeMs) {
    if (blender.m_blendRemaining < 0) {
        return;
    }
    // Unsigned subtraction, as in the original (timeMs - m_lastTime is unsigned).
    const int remaining =
        static_cast<int>(static_cast<unsigned int>(blender.m_blendRemaining) - (timeMs - blender.m_lastTime));
    blender.m_blendRemaining = remaining;
    if (remaining <= 0) {
        blender.weights[blender.m_previousIndex] = 0.0f;
        blender.weights[blender.m_currentIndex] = 1.0f;
    } else {
        const float previousWeight = static_cast<float>(remaining) * blender.m_blendScale;
        blender.weights[blender.m_previousIndex] = previousWeight;
        blender.weights[blender.m_currentIndex] = 1.0f - previousWeight;
    }
}

}  // namespace

// 0x366620 AnimatorBlender::getType() const
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE AnimatorBlender::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(12);
}

// 0x366628 AnimatorBlender::_HandleAnimEnding(glitch::scene::ITimelineController*)
// When the timeline of the current child is the one that ended, the time left in the clip step is stored in
// m_applicator.unk_10 (+0x98) and the pending callback flag (+0xb8) is set.
void AnimatorBlender::_HandleAnimEnding(glitch::scene::ITimelineController* timeline) {
    glitch::scene::ITimelineController* current = animators[m_currentIndex]->getTimelineCtrl();
    if (current == timeline) {
        if (current != nullptr) {
            const glitch::collada::CTimelineController* controller = static_cast<const glitch::collada::CTimelineController*>(current);
            const int stepMs = static_cast<int>(controller->lastStep * 1000.0f);                       // +0x1c
            const int remainingMs = static_cast<int>(controller->currentSec * 1000.0f) - current->currentTimeMs;   // +0x2c, +0x04
            bool inside = remainingMs < stepMs;
            if (remainingMs < 0) {
                inside = false;
            }
            m_applicator.unk_10 = inside ? stepMs - remainingMs : 0;
        }
        m_applicator.m_callbackPending = true;
    }
}

// 0x3666c8 AnimatorBlender::_CBAnim(glitch::scene::ITimelineController*, void*)
// Timeline callback. The Hex-Rays argument names are shifted: the first argument is the timeline and the second is the
// blender that SetCallbacks stores as user data.
void AnimatorBlender::_CBAnim(glitch::scene::ITimelineController* timeline, void* userData) {
    static_cast<AnimatorBlender*>(userData)->AnimatorBlender::_HandleAnimEnding(timeline);
}

// 0x3666d8 AnimatorBlender::SetScale(float)
// The scale of the timeline of every child (the original returns the last call result).
void AnimatorBlender::SetScale(float scale) {
    for (std::size_t i = 0; i != animators.size(); ++i) {
        glitch::scene::ITimelineController* timeline = animators[i]->getTimelineCtrl();
        if (timeline != nullptr) {
            timeline->setScale(scale);
        }
    }
}

// 0x366740 AnimatorBlender::BlendPost()
void AnimatorBlender::BlendPost() {}

// 0x366764 AnimatorBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, ...>>*)
// Thunk: the original tail-branches to the engine base with the buffer argument unchanged (asm checked).
void AnimatorBlender::compile(glitch::core::svector<std::uint8_t>* buffer) {
    glitch::collada::CSceneNodeAnimatorBlender::compile(buffer);
}

// 0x366768 AnimatorBlender::BlenderApplicator::~BlenderApplicator() (D1)
// The vptr reset and the AnimApplicator destructor are the implicit destruction of the base.
AnimatorBlender::BlenderApplicator::~BlenderApplicator() {}

// No symbol of its own: the original inlines this constructor into 0x367018 and 0x3670c8.
AnimatorBlender::BlenderApplicator::BlenderApplicator(AnimatorBlender* blender)
    : AnimApplicator(blender), m_blender(blender) {}

// 0x36679c AnimatorBlender::Blend(int)
// The float that the original returns is not used: the only caller (BlendedAnimSetController::PlayClip) discards it.
void AnimatorBlender::Blend(int duration) {
    const unsigned int count = static_cast<unsigned int>(animators.size());
    if (count != 2) {
        ReportAssert("numAnimators == 2", 122);
    }
    m_previousIndex = m_currentIndex;
    // ARM unsigned divide by zero yields 0, so an empty list keeps index 0.
    m_currentIndex = count != 0 ? static_cast<int>(static_cast<unsigned int>(m_currentIndex + 1) % count) : 0;
    // The duration stored by the previous call drives this cross-fade. The original compares it as an integer.
    m_blendRemaining = m_blendDuration;
    if (m_blendDuration > 0) {
        m_blendScale = 1.0f / static_cast<float>(m_blendDuration);
    }
    m_blendDuration = duration < 0 ? 0 : duration;  // a negative duration is stored as 0
}

// 0x366888 AnimatorBlender::BlenderApplicator::AnimateNode(unsigned int)
// The delta is zeroed. With a reference clip every child samples that clip at its timeline time, its applicator computes its
// delta for `time`, and the weighted sum of the deltas becomes the blender delta. A child without an applicator trips the assert
// (AnimatorBlender.cpp:394).
void AnimatorBlender::BlenderApplicator::AnimateNode(unsigned int time) {
    m_delta.Z = 0.0f;
    glitch::core::vector3d<float> pose = {0.0f, 0.0f, 0.0f};
    m_delta.X = 0.0f;
    m_delta.Y = 0.0f;
    if (m_refClip != -1) {
        for (std::size_t i = 0; i < m_blender->animators.size(); ++i) {
            glitch::collada::ISceneNodeAnimator* child = m_blender->animators[i];
            glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
            child->getAnimationValue(m_refClip, timeline->currentTimeMs, &pose);
            AnimApplicator* applicator = GetApplicator(child);
            if (applicator == nullptr) {
                ReportAssert("aa", 394);
            }
            applicator->CalculateDelta(time, pose);
            const float weight = m_blender->weights[i];
            m_delta.X = m_delta.X + weight * applicator->m_delta.X;
            m_delta.Y = m_delta.Y + weight * applicator->m_delta.Y;
            m_delta.Z = m_delta.Z + weight * applicator->m_delta.Z;
        }
    }
}

// 0x366a68 AnimatorBlender::BlenderApplicator::ResetDelta(unsigned int)
// With a reference node the current child applicator is reset to the pose of the reference clip at the start of its range
// (zero without a reference clip). A missing applicator trips the assert (AnimatorBlender.cpp:359).
void AnimatorBlender::BlenderApplicator::ResetDelta(unsigned int time) {
    if (m_refNode != nullptr) {
        glitch::collada::ISceneNodeAnimator* child = m_blender->animators[m_blender->m_currentIndex];
        glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
        AnimApplicator* applicator = GetApplicator(child);
        if (applicator == nullptr) {
            ReportAssert("aa", 359);
        }
        glitch::core::vector3d<float> pose = {0.0f, 0.0f, 0.0f};
        if (m_refClip != -1) {
            child->getAnimationValue(m_refClip, timeline->rangeStartMs, &pose);
        }
        if (applicator != nullptr) {
            applicator->ResetDelta(time, pose);
        }
    }
}

// 0x366b80 AnimatorBlender::BlenderApplicator::SetRefNode(glitch::scene::ISceneNode*)
// A missing blender trips the assert (AnimatorBlender.cpp:304). The base takes the node, then every child applicator gets it
// too; a child without an applicator makes this applicator drop its own node again.
void AnimatorBlender::BlenderApplicator::SetRefNode(glitch::scene::ISceneNode* node) {
    if (m_blender == nullptr) {
        ReportAssert("blender", 304);
    }
    AnimApplicator::SetRefNode(node);
    for (std::size_t i = 0; i != m_blender->animators.size(); ++i) {
        AnimApplicator* applicator = GetApplicator(m_blender->animators[i]);
        if (applicator != nullptr) {
            applicator->SetRefNode(node);
        } else {
            AnimApplicator::SetRefNode(nullptr);
        }
    }
}

// 0x366c8c AnimatorBlender::onUnbind(glitch::scene::ISceneNode*)
// The applicator forgets its reference node, then the base onUnbind (a tail call in the original).
void AnimatorBlender::onUnbind(glitch::scene::ISceneNode* node) {
    m_applicator.AnimatorBlender::BlenderApplicator::SetRefNode(nullptr);
    glitch::collada::ISceneNodeAnimator::onUnbind(node);
}

// 0x366cb4 AnimatorBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
// Cross-fade step, applyAnimationValues (vptr+0x50), the applicator, its pending callback check against the timeline of the
// current child, and the time is remembered. The original returns the CheckCallback result.
void AnimatorBlender::animateNode(glitch::scene::ISceneNode* node, unsigned int time) {
    (void)node;
    StepCrossFade(*this, time);
    applyAnimationValues(time);
    m_applicator.AnimatorBlender::BlenderApplicator::AnimateNode(time);
    m_applicator.CheckCallback(animators[m_currentIndex]->getTimelineCtrl());
    m_lastTime = time;
}

// 0x366d90 AnimatorBlender::updateTime(unsigned int)
// Cross-fade step, updateTime (vptr+0x14) on every child whose weight is not zero, normalizeWeights, the applicator callback check
// against the timeline of the current child, and the time is remembered.
void AnimatorBlender::updateTime(unsigned int time) {
    StepCrossFade(*this, time);
    for (std::size_t i = 0; i != animators.size(); ++i) {
        if (weights[i] == 0.0f) {
            continue;
        }
        animators[i]->updateTime(time);
    }
    normalizeWeights();
    m_applicator.CheckCallback(animators[m_currentIndex]->getTimelineCtrl());
    m_lastTime = time;
}

// 0x366eb8 AnimatorBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
// Every child gets the event pair (also in its events track) and the timeline callback (_CBAnim, this); the applicator gets the
// animation callback pair last.
void AnimatorBlender::SetCallbacks(AnimCallback animCallback, void* animUserData,
                                   EventCallback eventCallback, void* eventUserData) {
    for (std::size_t i = 0; i != animators.size(); ++i) {
        glitch::collada::ISceneNodeAnimator* child = animators[i];
        child->eventCallback = eventCallback;       // +0x1c
        child->eventUserData = eventUserData;       // +0x20
        if (child->eventsTrack) {                   // +0x18
            child->eventsTrack->callbackUserData = eventUserData;
            child->eventsTrack->callback = eventCallback;
        }
        glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
        if (timeline != nullptr) {
            timeline->callbackData = this;
            timeline->callback = &AnimatorBlender::_CBAnim;
        }
    }
    m_applicator.AnimApplicator::SetCallback(animCallback, animUserData);
}

// 0x367018 AnimatorBlender::AnimatorBlender()  (complete-object constructor, C1)
// The vptr writes and the base-class construction are compiler generated. The original's reference-counted sub-object
// is the virtual base IReferenceCounted of the canonical base, so no member is written here.
AnimatorBlender::AnimatorBlender()
    : glitch::collada::CSceneNodeAnimatorBlender(),
      m_currentIndex(0),
      m_previousIndex(0),
      m_blendDuration(0),
      m_blendRemaining(0),
      m_blendScale(0.0f),
      m_lastTime(0),
      m_applicator(this) {}

// 0x36720c AnimatorBlender::~AnimatorBlender()  (complete-object destructor, D1)
// The members and the engine base are destroyed by the implicit destructors. The original destroys the applicator and
// then the base, with the reference-counted virtual base last. Here that member is destroyed first.
AnimatorBlender::~AnimatorBlender() {}

// Not written here (see the ledger): 0x3670c8 (C2, base-object constructor taking the VTT), 0x36715c (D2, base-object
// destructor taking the VTT) and 0x3671c8 (D0, deleting destructor of BlenderApplicator). They are compiler-generated
// variants of the constructors and destructors above.
