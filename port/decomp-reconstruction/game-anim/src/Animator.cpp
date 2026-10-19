// Batch g1-game-anim-Animator-52d554-0: the Animator class (game-anim). Declarations come from dh2/Animator.hpp.
//
// Animator derives from the canonical engine base glitch::collada::CSceneNodeAnimator (dh2/Animator.hpp).
// The base's bodies are not forwarded yet: the calls into the base, and the virtual getTimelineCtrl
// (vtable +0x44) that comes from it, are still missing, and the functions that make one are marked partial below.
//
// Compiler-generated variants are not written here: 0x366418 (deleting dtor), 0x366434 (base-object dtor
// with VTT) and 0x366518 (base-object ctor with VTT). Their bodies are the D1 and C1 rows.

#include "dh2/Animator.hpp"

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

namespace animator_detail {

// 0x366224: the original multiplies the float by 1000.0f in single precision (__aeabi_fmul, constant
// 0x447a0000) and truncates toward zero (__aeabi_f2iz).
int SecondsToMs(float seconds) {
    return static_cast<int>(seconds * 1000.0f);
}

// 0x366224 arithmetic on the two values read from the timeline:
//   stepMs      = SecondsToMs(timeline.lastStep)           (timeline +0x1c)
//   remainingMs = SecondsToMs(timeline.currentSec) - timeline.currentTimeMs   (timeline +0x2c, +0x04)
// The result is stepMs - remainingMs when 0 <= remainingMs < stepMs, and 0 otherwise.
int ClipTimeLeftMs(int stepMs, int remainingMs) {
    bool inside = remainingMs < stepMs;
    if (remainingMs < 0) {
        inside = false;
    }
    return inside ? stepMs - remainingMs : 0;
}

}  // namespace animator_detail

// 0x36621c _ZNK8Animator7getTypeEv
glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE Animator::getType() const {
    return static_cast<glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE>(11);
}

// 0x366224 _ZN8Animator17_HandleAnimEndingEPN6glitch5scene19ITimelineControllerE
// With a timeline the time left in the clip step (animator_detail::ClipTimeLeftMs of the timeline step in ms and the distance of
// its position to the current time) is stored in m_applicator.unk_10 (+0x68). The callback flag is set on every path.
void Animator::_HandleAnimEnding(glitch::scene::ITimelineController* timeline) {
    if (timeline != nullptr) {
        const glitch::collada::CTimelineController* controller = static_cast<const glitch::collada::CTimelineController*>(timeline);
        const int stepMs = animator_detail::SecondsToMs(controller->lastStep);                              // +0x1c
        const int remainingMs = animator_detail::SecondsToMs(controller->currentSec) - timeline->currentTimeMs;   // +0x2c, +0x04
        m_applicator.unk_10 = animator_detail::ClipTimeLeftMs(stepMs, remainingMs);
    }
    m_applicator.m_callbackPending = true;  // +0x88
}

// 0x366294 _ZN8Animator7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
// The original swaps its two register arguments and tail-calls _HandleAnimEnding with userData as the
// Animator, so the user data written by SetCallbacks (the Animator itself) comes in as userData.
void Animator::_CBAnim(glitch::scene::ITimelineController* timeline, void* userData) {
    static_cast<Animator*>(userData)->_HandleAnimEnding(timeline);
}

// 0x3662c8 _ZN8Animator11animateNodeEPN6glitch5scene10ISceneNodeEj
// The base animateNode, then the applicator (non-virtual AnimApplicator::AnimateNode) and its pending callback check against the
// timeline of the animator (vtable +0x44). The original returns the result of CheckCallback; the override is void.
void Animator::animateNode(glitch::scene::ISceneNode* node, unsigned int time) {
    glitch::collada::CSceneNodeAnimator::animateNode(node, time);
    m_applicator.AnimApplicator::AnimateNode(time);
    m_applicator.CheckCallback(getTimelineCtrl());
}

// 0x366308 _ZN8Animator8onUnbindEPN6glitch5scene10ISceneNodeE
// The applicator forgets its reference node, then the base onUnbind (a tail call in the original).
void Animator::onUnbind(glitch::scene::ISceneNode* node) {
    m_applicator.AnimApplicator::SetRefNode(nullptr);
    glitch::collada::ISceneNodeAnimator::onUnbind(node);
}

// 0x366330 _ZN8Animator12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
// The event pair goes into the animator (+0x1c, +0x20) and the events manager of its track (+0x08, +0x0c); the timeline calls
// _CBAnim with this; the applicator gets the animation callback pair.
void Animator::SetCallbacks(AnimCallback animCallback, void* animUserData,
                            EventCallback eventCallback, void* eventUserData) {
    this->eventCallback = eventCallback;      // +0x1c
    this->eventUserData = eventUserData;      // +0x20
    if (eventsTrack) {                        // +0x18
        eventsTrack->callbackUserData = eventUserData;   // +0x0c
        eventsTrack->callback = eventCallback;           // +0x08
    }
    glitch::scene::ITimelineController* timeline = getTimelineCtrl();
    if (timeline != nullptr) {
        timeline->callbackData = this;        // +0x0c
        timeline->callback = &Animator::_CBAnim;   // +0x08
    }
    m_applicator.AnimApplicator::SetCallback(animCallback, animUserData);
}

// 0x3663b0 _ZN8AnimatorD1Ev
// partial: the original writes the three vptrs, runs the AnimApplicator destructor (the member destructor
// here, done implicitly) and then the base glitch::collada::CSceneNodeAnimator::~CSceneNodeAnimator (D2),
// which needs the base and is missing.
Animator::~Animator() {}

// 0x366490 _ZN8AnimatorC1ERKN6glitch7collada16CColladaDatabaseERNS1_22SLibraryAnimationClipsE
// partial: the base constructor CSceneNodeAnimator(database, clips) is now called (the base is inherited). The
// IReferenceCounted of the original is the base's virtual base, so the +0x94 count is not written here.
// m_applicator takes this as its owner, as in the original.
Animator::Animator(const glitch::collada::CColladaDatabase& database,
                   glitch::collada::SLibraryAnimationClips& clips)
    : glitch::collada::CSceneNodeAnimator(database, clips), m_applicator(this) {}
