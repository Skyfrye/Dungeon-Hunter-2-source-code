// Batch g1-game-anim-AnimatorSynchronizedBlender-e23b0b-0 (AnimatorSynchronizedBlender, part 1 of 1), redone in place by
// batch r2a-game-anim-AnimatorSynchronizedBlender-e23b0b-0. Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so;
// asm was checked for the bare-return functions, the D0 thunks and the child lookup of the per-target loop in AnimateNode.
//
// The main gap is still the engine base glitch::collada::CSceneNodeAnimatorSynchronizedBlender (+0x04 .. +0xb3). Its
// segment vector (+0x30 begin, +0x34 end), its weight vector (+0x3c begin, +0x40 end), its dirty flag (+0xb1), its
// per-target arrays (+0x54, +0x60, +0x6c) and its methods are not declared with members in a canonical header.
// glitch-scene-collada-gui/synchronized_blender.hpp declares only two helpers and no layout, and
// glitch-scene-collada-gui/layouts/animation_track_members.hpp is 32-bit guest-width evidence that cannot be used for
// host-width pointers. The canonical scene::ISceneNodeAnimator and scene::ITimelineController headers now exist, so the
// timeline calls are expressible once the segment vector is declared. Every body that walks the segments or the weights
// stays partial. The layout requests are in the ledger notes. The own fields (+0xb4 .. +0x12f) are all declared in the
// owner header; the engine base ctor writes +0xb4 and +0xb8 and the owner ctor (0x3688f0) overwrites them with its own fields.
#include "dh2/AnimatorSynchronizedBlender.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "dh2/global/GetApplicator.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada/SAnimation.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

extern int gAssertLevel;

namespace {

// The original ASSERT of AnimatorSynchronizedBlender.cpp. gAssertLevel 2 stops the program (the original stores to address 0),
// gAssertLevel 1 prints the message to stderr and execution continues.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression,
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\Nodes\\Animators\\AnimatorSynchronizedBlender.cpp", line);
    }
}

}  // namespace

// 0x367b64 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ResetDelta(unsigned int)
// The original is a bare return (bx lr, asm checked).
void AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ResetDelta(unsigned int timeMs) {
    (void)timeMs;
}

// 0x367b68 AnimatorSynchronizedBlender::_CBAnim(glitch::scene::ITimelineController*, void*)
// The original is a bare return (bx lr, asm checked). SetCallbacks installs it as the timeline callback with this as data.
void AnimatorSynchronizedBlender::_CBAnim(glitch::scene::ITimelineController* timeline, void* userData) {
    (void)timeline;
    (void)userData;
}

// 0x367b6c AnimatorSynchronizedBlender::getType() const
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE AnimatorSynchronizedBlender::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(14);
}

// 0x367b74 AnimatorSynchronizedBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
// For every child animator: the event pair goes into the animator (+0x1c, +0x20) and its events manager, and its timeline
// calls _CBAnim with this. The animation callback pair is stored last.
void AnimatorSynchronizedBlender::SetCallbacks(AnimCallback animCallback, void* animUserData,
                                               EventCallback eventCallback, void* eventUserData) {
    for (std::size_t i = 0; i != children.size(); ++i) {
        glitch::collada::ISceneNodeAnimator* child = children[i]->owner;
        child->eventCallback = eventCallback;       // +0x1c
        child->eventUserData = eventUserData;       // +0x20
        if (child->eventsTrack) {                   // +0x18
            child->eventsTrack->callbackUserData = eventUserData;
            child->eventsTrack->callback = eventCallback;
        }
        glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
        if (timeline != nullptr) {
            timeline->callbackData = this;
            timeline->callback = &AnimatorSynchronizedBlender::_CBAnim;
        }
    }
    m_animCallbackUser = animUserData;  // +0xd4
    m_animCallback = animCallback;      // +0xd0
}

// 0x367c38 AnimatorSynchronizedBlender::SetScale(float)
// The timeline scale of every child.
void AnimatorSynchronizedBlender::SetScale(float scale) {
    for (std::size_t i = 0; i != children.size(); ++i) {
        glitch::scene::ITimelineController* timeline = children[i]->owner->getTimelineCtrl();
        if (timeline != nullptr) {
            timeline->setScale(scale);
        }
    }
}

// 0x367ca4 AnimatorSynchronizedBlender::BlendPost()
// The timeline of the current child jumps to its clip start plus the overshoot (the overshoot is first wrapped by the clip length
// when it is not shorter), then the overshoot is cleared.
void AnimatorSynchronizedBlender::BlendPost() {
    glitch::scene::ITimelineController* timeline = children[m_currentIndex]->owner->getTimelineCtrl();
    if (timeline != nullptr) {
        const std::int32_t length = static_cast<std::int32_t>(timeline->getCurrentClipLength());   // vptr+0x34
        if (length <= m_clipWrapOffset && length != 0) {
            m_clipWrapOffset = m_clipWrapOffset % length;
        }
        timeline->jumpTo(static_cast<std::int32_t>(timeline->getCurrentClipStart()) + m_clipWrapOffset);   // vptr+0x2c, +0x0c
    }
    m_clipWrapOffset = 0;  // +0xcc
}

// 0x367d4c AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator() (D1)
// The original writes the applicator vptr, frees the weight buffer (this+0x40, the std::vector storage) and runs the
// AnimApplicator destructor. Here the vector and the base are destroyed implicitly, in the same order. The base's
// reference-node release is partial in its own row (0x364838).
AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator() {}

// 0x367d94 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(unsigned int, unsigned int)
// Two asserts: the weight count equals the blender weight count (line 225), the animator id is below the child count (line 226).
// gAssertLevel 2 aborts, 1 prints. The time argument is unused.
void AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::ApplyValues(unsigned int animatorId,
                                                                            unsigned int timeMs) {
    (void)timeMs;
    if (m_blender->weights.size() != m_weights.size()) {
        ReportAssert("weights.size() == blender->Weights.size()", 225);
    }
    if (animatorId >= m_blender->children.size()) {
        ReportAssert("animatorId < blender->Animators.size()", 226);
    }
}

// 0x367ec8 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(unsigned int)
// Without a reference node the engine animateNode runs. Otherwise: the weight count assert (line 355), the delta is cleared, the
// weights are normalised, every child with a positive weight gets ApplyValues and its applicator animates (a missing one trips the
// assert "aa", line 380), the weighted child deltas add up, then every target gets the blended child values (applyBlendedValue of
// the track of child 0), and the time is stored.
void AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::AnimateNode(unsigned int time) {
    if (m_refNode == nullptr) {
        m_blender->glitch::collada::CSceneNodeAnimatorSynchronizedBlender::animateNode(nullptr, time);
        return;
    }
    if (m_blender->weights.size() != m_weights.size()) {
        ReportAssert("weights.size() == blender->Weights.size()", 355);
    }
    m_delta.Z = 0.0f;
    m_delta.X = 0.0f;
    m_delta.Y = 0.0f;
    m_blender->normalizeWeights();
    for (std::size_t i = 0; i < m_blender->children.size(); ++i) {
        const float weight = m_blender->weights[i];
        if (weight <= 0.0f) {
            continue;
        }
        ApplyValues(static_cast<unsigned int>(i), time);
        AnimApplicator* applicator = GetApplicator(m_blender->children[i]->owner);
        if (applicator == nullptr) {
            ReportAssert("aa", 380);
            continue;
        }
        applicator->AnimateNode(time);
        m_delta.X = m_delta.X + weight * applicator->m_delta.X;
        m_delta.Y = m_delta.Y + weight * applicator->m_delta.Y;
        m_delta.Z = m_delta.Z + weight * applicator->m_delta.Z;
    }
    for (std::size_t target = 0; target < m_blender->targets.size(); ++target) {
        if (m_blender->targets[target] != nullptr) {
            glitch::collada::IAnimationTrackEx* track = m_blender->children[0]->owner->getAnimationTrackEx(static_cast<std::int32_t>(target));
            track->applyBlendedValue(m_blender->outputs[target], m_blender->weights.data(), static_cast<int>(m_blender->weights.size()),
                                     m_blender->targets[target], m_blender->applicators[target]);
        }
    }
    m_time = time;   // +0x14, the last store of the original
}

// 0x36820c AnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
// The cross-fade countdown moves the weights of the previous and current child (a change marks the weights dirty and not
// normalised). When a callback is set and the current child timeline will pass its clip end within this step (step + current time
// + blend duration), the overshoot is recorded, the applicator animates, the time is stored and the animation callback runs;
// otherwise the applicator animates and the time is stored. The original returns the callback result; the override is void.
void AnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode* node, unsigned int timeMs) {
    (void)node;
    const unsigned int step = timeMs - m_lastTime;
    if (m_blendRemaining >= 0) {
        m_blendRemaining = static_cast<int>(static_cast<unsigned int>(m_blendRemaining) - step);
        if (m_blendRemaining <= 0) {
            if (weights[m_previousIndex] != 0.0f) {
                weightsDirty = true;
                weightsNormalized = false;
            }
            weights[m_previousIndex] = 0.0f;
            if (weights[m_currentIndex] != 1.0f) {
                weightsDirty = true;
                weightsNormalized = false;
            }
            weights[m_currentIndex] = 1.0f;
        } else {
            const float previousWeight = static_cast<float>(m_blendRemaining) * m_blendScale;
            if (previousWeight != weights[m_previousIndex]) {
                weightsDirty = true;
                weightsNormalized = false;
            }
            weights[m_previousIndex] = previousWeight;
            const float currentWeight = 1.0f - previousWeight;
            if (currentWeight != weights[m_currentIndex]) {
                weightsDirty = true;
                weightsNormalized = false;
            }
            weights[m_currentIndex] = currentWeight;
        }
    }
    glitch::scene::ITimelineController* timeline = nullptr;
    int reached = 0;
    if (m_animCallback != nullptr) {
        timeline = children[m_currentIndex]->owner->getTimelineCtrl();
        if (timeline != nullptr) {
            reached = static_cast<int>(step) + timeline->currentTimeMs + m_blendDuration;
        }
    }
    if (timeline != nullptr && reached >= static_cast<int>(timeline->getCurrentClipEnd())) {
        m_clipWrapOffset = reached - static_cast<int>(timeline->getCurrentClipEnd());
        m_applicator.SynchronizedBlenderApplicator::AnimateNode(timeMs);
        m_lastTime = timeMs;
        m_animCallback(timeline, m_animCallbackUser);
    } else {
        m_applicator.SynchronizedBlenderApplicator::AnimateNode(timeMs);
        m_lastTime = timeMs;
    }
}

// 0x3683bc AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta()
// With a reference node the current child timeline jumps to its clip start, the values are applied and the child applicator
// resets its delta at the last time. A child without applicator trips the assert (line 326).
void AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::CustomResetDelta() {
    if (m_refNode != nullptr) {
        glitch::collada::ISceneNodeAnimator* child = m_blender->children[m_blender->m_currentIndex]->owner;
        glitch::scene::ITimelineController* timeline = child->getTimelineCtrl();
        AnimApplicator* applicator = GetApplicator(child);
        if (applicator != nullptr) {
            if (timeline != nullptr) {
                timeline->jumpTo(static_cast<std::int32_t>(timeline->getCurrentClipStart()));
            }
            ApplyValues(static_cast<unsigned int>(m_blender->m_currentIndex), m_time);
            applicator->ResetDelta(m_time);
        } else {
            ReportAssert("aa", 326);
        }
    }
}

// 0x3684d8 AnimatorSynchronizedBlender::Blend(int)
// Asserts two children (line 89), makes the next child current (the previous one fades out) and resets the applicator. The
// remaining time is the stored duration, the scale 1 / that duration when positive, and the stored duration = max(argument, 0).
// The float the original returns is a register residue that the only caller discards.
void AnimatorSynchronizedBlender::Blend(int duration) {
    const unsigned int count = static_cast<unsigned int>(children.size());
    if (count != 2) {
        ReportAssert("numAnimators == 2", 89);
    }
    m_previousIndex = m_currentIndex;  // +0xb8
    // ARM unsigned/signed divide by zero yields 0, so an empty list keeps index 0.
    m_currentIndex = count != 0 ? (m_currentIndex + 1) % static_cast<int>(count) : 0;   // +0xb4
    m_applicator.CustomResetDelta();
    m_blendRemaining = m_blendDuration;  // +0xc0
    if (m_blendDuration > 0) {
        m_blendScale = 1.0f / static_cast<float>(m_blendDuration);  // +0xc4
    }
    m_blendDuration = duration < 0 ? 0 : duration;  // +0xbc
}

// 0x3685cc AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SetRefNode(glitch::scene::ISceneNode*)
// A missing blender trips the assert (line 271). The base takes the node, every child applicator gets it (a child without one makes
// this applicator drop its node again); unk_4c becomes the index of the target equal to the node when its track type is 1.
void AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SetRefNode(glitch::scene::ISceneNode* node) {
    if (m_blender == nullptr) {
        ReportAssert("blender", 271);
    }
    AnimApplicator::SetRefNode(node);
    for (std::size_t i = 0; i != m_blender->children.size(); ++i) {
        AnimApplicator* applicator = GetApplicator(m_blender->children[i]->owner);
        if (applicator != nullptr) {
            applicator->SetRefNode(node);
        } else {
            AnimApplicator::SetRefNode(nullptr);
        }
    }
    unk_4c = -1;
    for (std::size_t i = 0; i != m_blender->targets.size(); ++i) {
        if (m_blender->targets[i] == static_cast<void*>(node)) {
            if (m_blender->getAnimationTrack(static_cast<std::int32_t>(i))->type == 1) {
                unk_4c = static_cast<std::int32_t>(i);
            }
        }
    }
}

// No symbol of its own: the original inlines this construction into the blender constructors 0x3688f0 and 0x3689cc.
// The owning blender is the ISceneNodeAnimator of AnimApplicator, as in the original (m_animator +0x04).
// The rest is complete: m_blender, an empty weight vector, unk_4c = -1.
AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::SynchronizedBlenderApplicator(
    AnimatorSynchronizedBlender* blender)
    : AnimApplicator(blender), m_blender(blender), m_weights(), unk_4c(-1) {}

// 0x3688f0 AnimatorSynchronizedBlender::AnimatorSynchronizedBlender()  (C1, complete-object constructor)
// partial: the engine base glitch::collada::CSceneNodeAnimatorSynchronizedBlender is default constructed (its own body
// is not forwarded here). The vptr writes (+0x00, +0x04, +0x24, +0x128) are compiler generated. Done: the own fields
// (+0xb4 .. +0xcc, +0xd0, +0xd4 zeroed) and the applicator (see its constructor).
AnimatorSynchronizedBlender::AnimatorSynchronizedBlender()
    : glitch::collada::CSceneNodeAnimatorSynchronizedBlender(),
      m_currentIndex(0),
      m_previousIndex(0),
      m_blendDuration(0),
      m_blendRemaining(0),
      m_blendScale(0.0f),
      m_lastTime(0),
      m_clipWrapOffset(0),
      m_animCallback(nullptr),
      m_animCallbackUser(nullptr),
      m_applicator(this) {}

// 0x3689cc AnimatorSynchronizedBlender::AnimatorSynchronizedBlender()  (C2, base-object constructor taking the VTT)
// skipped: compiler-generated base-object variant. Same body as C1 (0x3688f0), with the primary vptr taken from the VTT.

// 0x368ba4 AnimatorSynchronizedBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, ...>>*)
// The engine compile (buffer unchanged), then the applicator weights are sized to the blender weights, all 0.0f.
void AnimatorSynchronizedBlender::compile(glitch::core::svector<std::uint8_t>* buffer) {
    glitch::collada::CSceneNodeAnimatorSynchronizedBlender::compile(buffer);
    m_applicator.m_weights.resize(m_applicator.m_blender->weights.size(), 0.0f);
}

// 0x368be4 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()  (D2, base-object destructor taking the VTT)
// skipped: compiler-generated base-object variant. Same body as the complete-object destructor D1 (0x368cd0), with the
// vptr writes taken from the VTT. Its engine base step is partial in D1.

// 0x368c70 AnimatorSynchronizedBlender::SynchronizedBlenderApplicator::~SynchronizedBlenderApplicator()  (D0)
// skipped: compiler-generated deleting destructor. It calls D1 (0x367d4c) and then CustomFree(this). Delete on the
// virtual destructor runs the same sequence.

// 0x368cd0 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()  (D1, complete-object destructor)
// partial: the original frees the weight buffer through the applicator, runs the AnimApplicator destructor, then the
// engine base destructor glitch::collada::CSceneNodeAnimatorSynchronizedBlender::~ (not declared). Here the applicator,
// its weight vector and the reference-counted sub-object are destroyed implicitly; the engine base step is missing.
AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender() {
    // partial: the engine base destructor goes here, last (see above).
}

// 0x368d70 AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()  (D0, deleting destructor)
// skipped: compiler-generated deleting destructor. It calls D1 (0x368cd0) and then CustomFree(this), the same shape as
// the other deleting destructors in this category.
