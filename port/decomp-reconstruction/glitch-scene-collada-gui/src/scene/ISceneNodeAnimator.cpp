// Bodies of glitch::scene::ISceneNodeAnimator and glitch::scene::ITimeController / ITimelineController (canonical classes:
// scene/ISceneNodeAnimator.hpp, scene/ITimelineController.hpp). This file replaces the animator and timeline bodies of
// src/scene_nodes.cpp and src/tb_scene-collada-gui-glitch_scene_ISceneNodeAnimator-0.cpp. The three timeline-forwarding bodies
// (setAnimationClip x2, getAnimationClipIndex) were skipped in the ledger because the timeline vtable was not declared.
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"

namespace glitch::scene {

// 0x599938 _ZN6glitch5scene18ISceneNodeAnimatorD2Ev (base object, takes the VTT)
// 0x5998b0 _ZN6glitch5scene18ISceneNodeAnimatorD1Ev (complete object)
// 0x59991c _ZN6glitch5scene18ISceneNodeAnimatorD0Ev (deleting; skipped)
// Drops the timeline controller (the intrusive pointer member does it) and runs the empty IObject destructor.
ISceneNodeAnimator::~ISceneNodeAnimator() = default;

// 0x599798 _ZN6glitch5scene18ISceneNodeAnimator10updateTimeEj
void ISceneNodeAnimator::updateTime(std::uint32_t /*timeMs*/) {}

// 0x59979c _ZNK6glitch5scene18ISceneNodeAnimator22isEventReceiverEnabledEv
bool ISceneNodeAnimator::isEventReceiverEnabled() const {
    return false;
}

// 0x5997ac _ZN6glitch5scene18ISceneNodeAnimator7onEventERKNS_6SEventE
bool ISceneNodeAnimator::onEvent(const glitch::SEvent& /*event*/) {
    return false;
}

// 0x5997b4 _ZNK6glitch5scene18ISceneNodeAnimator7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE ISceneNodeAnimator::getType() const {
    return ESNAT_UNKNOWN;  // 10
}

// 0x5997bc _ZN6glitch5scene18ISceneNodeAnimator6onBindEPNS0_10ISceneNodeE
void ISceneNodeAnimator::onBind(ISceneNode* /*node*/) {}

// 0x5997c0 _ZN6glitch5scene18ISceneNodeAnimator8onUnbindEPNS0_10ISceneNodeE
void ISceneNodeAnimator::onUnbind(ISceneNode* /*node*/) {}

// 0x5997c4 _ZN6glitch5scene18ISceneNodeAnimator16setAnimationClipEi
// Forwards to the timeline controller's setClip(int) (vptr+0x10). The pointer is dereferenced without a test, as in the original.
float ISceneNodeAnimator::setAnimationClip(std::int32_t clipIndex) {
    return timelineCtrl->setClip(clipIndex);
}

// 0x5997e0 _ZN6glitch5scene18ISceneNodeAnimator16setAnimationClipEPKc
std::int32_t ISceneNodeAnimator::setAnimationClip(const char* clipName) {
    return timelineCtrl->setClip(clipName);
}

// 0x5997fc _ZN6glitch5scene18ISceneNodeAnimator21getAnimationClipIndexEPKc
std::int32_t ISceneNodeAnimator::getAnimationClipIndex(const char* clipName) {
    return timelineCtrl->getClipIndex(clipName);
}

// 0x599818 _ZN6glitch5scene18ISceneNodeAnimator15setTimelineCtrlEPNS0_19ITimelineControllerE
// Drops the old controller and takes a use on the new one.
void ISceneNodeAnimator::setTimelineCtrl(ITimelineController* controller) {
    timelineCtrl = controller;
}

// 0x599868 _ZNK6glitch5scene18ISceneNodeAnimator15getTimelineCtrlEv
ITimelineController* ISceneNodeAnimator::getTimelineCtrl() const {
    return timelineCtrl.get();
}

// 0x599870 _ZN6glitch5scene18ISceneNodeAnimator15getTimelineCtrlEv
ITimelineController* ISceneNodeAnimator::getTimelineCtrl() {
    return timelineCtrl.get();
}

// 0x599878 _ZNK6glitch5scene18ISceneNodeAnimator9getLengthEv
std::uint32_t ISceneNodeAnimator::getLength() const {
    return 0;
}

// 0x599880 _ZN6glitch5scene18ISceneNodeAnimator22computeAnimationValuesEj
void ISceneNodeAnimator::computeAnimationValues(std::uint32_t /*timeMs*/) {}

// 0x599884 _ZN6glitch5scene18ISceneNodeAnimator20applyAnimationValuesEj
void ISceneNodeAnimator::applyAnimationValues(std::uint32_t /*timeMs*/) {}

// ITimeController / ITimelineController ---------------------------------------------------------------------------------

// 0x666be4 _ZN6glitch5scene15ITimeController6updateEi (empty body; the original returns r0 unchanged, so 0 here)
std::int32_t ITimeController::update(std::int32_t /*timeMs*/) {
    return 0;
}

// 0x666be8 _ZN6glitch5scene15ITimeControllerD1Ev (empty; D0 0x667020 skipped)
ITimeController::~ITimeController() = default;

// 0x666da4 _ZN6glitch5scene19ITimelineControllerD1Ev (empty; D0 0x667044 skipped)
ITimelineController::~ITimelineController() = default;

// 0x666bfc _ZN6glitch5scene19ITimelineController6jumpToEi
// Stores the time at +0x04. The original returns `this` in r0 (no meaningful value); the collada controller overrides this
// slot and returns the new time in seconds, so the base returns 0.
float ITimelineController::jumpTo(std::int32_t timeMs) {
    currentTimeMs = timeMs;
    return 0.0f;
}

// 0x666c04 _ZNK6glitch5scene19ITimelineController7getLoopEv
bool ITimelineController::getLoop() const {
    return false;
}

// 0x666c0c _ZN6glitch5scene19ITimelineController8setScaleEf
void ITimelineController::setScale(float /*scale*/) {}

// 0x666c10 _ZNK6glitch5scene19ITimelineController8getScaleEv
float ITimelineController::getScale() const {
    return 1.0f;
}

}  // namespace glitch::scene
