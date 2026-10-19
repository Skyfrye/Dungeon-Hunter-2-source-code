// Bodies of glitch::collada::CSceneNodeAnimatorSynchronizedBlender (canonical class:
// collada/CSceneNodeAnimatorSynchronizedBlender.hpp). This file replaces src/synchronized_blender.cpp, the recon_22 stubs, the
// recon/slice_00 stubs and the address-named templates of the scene tree for the class.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedBlender.hpp"

#include <algorithm>
#include <cstring>

#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"

namespace glitch::collada {

namespace {

// The animator of a child interface (the interface's owner pointer).
inline ISceneNodeAnimator* animatorOf(IColladaSceneNodeSynchronizedAnimatorInterface* child) {
    return child->owner;
}

}  // namespace

// 0x661b74 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderC1Ev and 0x661c78 (C2)
// The interface's owner pointer (+0x28) is `this`; the weights-dirty byte is set; everything else is zero.
CSceneNodeAnimatorSynchronizedBlender::CSceneNodeAnimatorSynchronizedBlender() {
    owner = this;
}

// 0x66186c _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlenderD1Ev, 0x661a08 (D2); D0 0x6619ec is skipped.
// Drops every child animator (one use each) and the blender's use of its timeline controller (the original deletes the controller
// through its destructor slot while the animator base still holds a use; here the two uses are dropped in turn).
CSceneNodeAnimatorSynchronizedBlender::~CSceneNodeAnimatorSynchronizedBlender() {
    for (IColladaSceneNodeSynchronizedAnimatorInterface* child : children) {
        animatorOf(child)->drop();
    }
    if (syncTimeline != nullptr) {
        syncTimeline->drop();
    }
}

// 0x6610d8 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender11animateNodeEPNS_5scene10ISceneNodeEj
// Tail-calls applyAnimationValues (vptr+0x50).
void CSceneNodeAnimatorSynchronizedBlender::animateNode(scene::ISceneNode*, std::uint32_t timeMs) {
    applyAnimationValues(timeMs);
}

// 0x660ef0 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender9getLengthEv
// The weighted sum of the children's lengths (truncated).
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getLength() const {
    if (children.empty()) {
        return 0;
    }
    float sum = 0.0f;
    for (std::size_t i = 0; i < children.size(); ++i) {
        sum = sum + static_cast<float>(animatorOf(children[i])->getLength()) * weights[i];
    }
    return static_cast<std::uint32_t>(static_cast<std::int32_t>(sum));
}

// 0x660db0 / 0x660dd4 / 0x660e60 / 0x660e84 / 0x660ea8 / 0x660ecc: forwarders to the first child's animator.
const SChannel* CSceneNodeAnimatorSynchronizedBlender::getAnimationTrack(std::int32_t index) {
    return animatorOf(children[0])->getAnimationTrack(index);
}
IAnimationTrackEx* CSceneNodeAnimatorSynchronizedBlender::getAnimationTrackEx(std::int32_t index) {
    return animatorOf(children[0])->getAnimationTrackEx(index);
}
const char* CSceneNodeAnimatorSynchronizedBlender::getBindURI(std::int32_t index) {
    return animatorOf(children[0])->getBindURI(index);
}
std::int32_t CSceneNodeAnimatorSynchronizedBlender::getTargetCount() {
    return animatorOf(children[0])->getTargetCount();
}
std::int32_t CSceneNodeAnimatorSynchronizedBlender::getTargetSize(std::int32_t index) {
    return animatorOf(children[0])->getTargetSize(index);
}
std::int32_t CSceneNodeAnimatorSynchronizedBlender::getTargetsSize() {
    return animatorOf(children[0])->getTargetsSize();
}

// 0x660df8 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
// Stores the target, releases the old applicator (destructor slot) and takes a clone of the new one.
void CSceneNodeAnimatorSynchronizedBlender::setTarget(std::int32_t index, void* target,
                                                      const animation_track::CApplicatorInfo* applicator) {
    targets[index] = target;
    if (applicators[index] != nullptr) {
        delete applicators[index];
        applicators[index] = nullptr;
    }
    if (applicator != nullptr) {
        applicators[index] = applicator->clone();
    }
}

// 0x662290 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender17getAnimationValueEiiPv
// Reads the value of track `trackIndex` from every child at its input time into one block each and blends them into `out` with the
// first child's track.
void CSceneNodeAnimatorSynchronizedBlender::getAnimationValue(std::int32_t trackIndex, std::int32_t /*time*/, void* out) {
    ISceneNodeAnimator* primary = animatorOf(children[0]);
    IAnimationTrackEx* track = primary->getAnimationTrackEx(trackIndex);
    const std::size_t childCount = children.size();
    const std::uint32_t valueSize = track->getValueSize();
    core::svector<std::uint8_t> buffer(childCount * valueSize, 0);
    core::svector<void*> values(childCount, nullptr);
    std::size_t offset = 0;
    for (std::size_t i = 0; i < childCount; ++i) {
        values[i] = buffer.data() + offset;
        offset += valueSize;
        animatorOf(children[i])->getAnimationValue(trackIndex, inputTimes[i], values[i]);
    }
    track->getBlendedValue(buffer.data(), weights.data(), static_cast<int>(weights.size()), out);
}

// 0x6623d4 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender7compileEPSt6vectorIhNS_4core10SAllocatorIhLNS_6memory13E_MEMORY_HINTE0EEEE
// As CSceneNodeAnimatorBlender::compile over the children's animators (the first child writes into its block, every other child gets
// the matching channel bound to its slot), then clears the byte at +0x2c, forces the bind, creates the blender's timeline controller
// and installs it, sizes the per-child tables, takes the children off their own timelines and resets the timeline range.
void CSceneNodeAnimatorSynchronizedBlender::compile(core::svector<std::uint8_t>* buffer) {
    const std::size_t childCount = children.size();
    const std::int32_t targetsSize = getTargetsSize();
    const std::int32_t targetCount = getTargetCount();
    if (buffer == nullptr) {
        buffer = &valueBuffer;
        valueBuffer.resize(childCount * static_cast<std::size_t>(targetsSize), 0);
    }
    weights.resize(childCount, 0.0f);
    std::fill(weights.begin(), weights.end(), 0.0f);
    normalizeWeights();
    inputTimes.resize(childCount, 0);
    outputs.resize(static_cast<std::size_t>(targetCount), nullptr);
    ISceneNodeAnimator* primary = animatorOf(children[0]);
    std::fill(buffer->begin(), buffer->end(), static_cast<std::uint8_t>(0));
    std::size_t offset = 0;
    for (std::int32_t t = 0; t < targetCount; ++t) {
        const std::int32_t stride = getTargetSize(t);
        outputs[t] = buffer->data() + offset;
        primary->setTarget(t, outputs[t], nullptr);
        const SChannel* channel = primary->getAnimationTrack(t);
        std::uint8_t* slot = static_cast<std::uint8_t*>(outputs[t]) + stride;
        for (std::size_t k = 1; k < childCount; ++k) {
            animatorOf(children[k])->setCompatibleTarget(*channel, slot);
            slot += stride;
        }
        offset += childCount * static_cast<std::size_t>(stride);
    }
    targets.resize(static_cast<std::size_t>(targetCount), nullptr);
    applicators.resize(static_cast<std::size_t>(targetCount), nullptr);
    needsCompile = false;
    if (!children.empty()) {
        forceBind();
    }
    syncTimeline = new CTimelineController();
    setTimelineCtrl(syncTimeline);  // vptr+0x3c: the animator takes a use; the blender keeps the construction use
    synchronizationData.resize(childCount);
    unk_88.resize(childCount, 0);
    unk_94.resize(childCount, 0.0f);
    for (IColladaSceneNodeSynchronizedAnimatorInterface* child : children) {
        animatorOf(child)->setTimelineCtrl(nullptr);  // vptr+0x3c
    }
    lastTime = 0;
    syncTimeline->setRange(0, 0, true);  // vptr+0x50
}

// 0x6612bc _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender22computeAnimationValuesEj
// Verified against the disassembly 0x6612bc: normalizeWeights when the dirty byte (+0xb1) is set, then the weighted sum of the
// children's lengths, then the sync timeline at +0x78 gets setRange(0, total, false) through its slot +0x50, then
// ISceneNodeAnimator::updateTime, lastTime (+0xac), getLength (slot +0x48), getSynchronizationPercentage (slot +0xc4), the
//   percentage + (elapsed - lastTime, clamped at 0) / length   expression, applySynchronizedAnimationValues (slot +0xb8),
// and reachedEnd (+0xb0) = the first child's hasReachedEnd (slot +0x24).
// Deviation, named: the sync timeline pointer is null-tested. The listing loads +0x78 straight into r12 and does
// LDR PC,[R12,#0x50] with no test, so the original faults on a blender whose timeline was never installed; the port cannot
// reproduce the fault. After compile() the timeline always exists, so the two behave the same on every real path.
void CSceneNodeAnimatorSynchronizedBlender::computeAnimationValues(std::uint32_t timeMs) {
    if (weightsDirty) {
        normalizeWeights();
        weightsDirty = false;
    }
    std::int32_t total = 0;
    for (std::size_t i = 0; i < children.size(); ++i) {
        const float weighted = static_cast<float>(animatorOf(children[i])->getLength()) * weights[i];
        total += static_cast<std::int32_t>(weighted);
    }
    if (syncTimeline != nullptr) {
        syncTimeline->setRange(0, total, false);  // vptr+0x50
    }
    ISceneNodeAnimator::updateTime(timeMs);
    const std::int32_t step = static_cast<std::int32_t>(timeMs) - lastTime;
    lastTime = static_cast<std::int32_t>(timeMs);
    const std::int32_t length = static_cast<std::int32_t>(getLength());
    const float percentage = getSynchronizationPercentage();
    applySynchronizedAnimationValues(percentage + static_cast<float>(step & ~(step >> 31)) / static_cast<float>(length));  // vptr+0xb8
    reachedEnd = children[0]->hasReachedEnd();
}

// 0x661408 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender20applyAnimationValuesEj
// As computeAnimationValues, then applies the blended values of every target with a target object through the first child's track
// (track slot +0x18) with the target's applicator.
void CSceneNodeAnimatorSynchronizedBlender::applyAnimationValues(std::uint32_t timeMs) {
    CSceneNodeAnimatorSynchronizedBlender::computeAnimationValues(timeMs);
    for (std::size_t i = 0; i < targets.size(); ++i) {
        if (targets[i] != nullptr) {
            IAnimationTrackEx* track = animatorOf(children[0])->getAnimationTrackEx(static_cast<std::int32_t>(i));
            track->applyBlendedValue(outputs[i], weights.data(), static_cast<int>(weights.size()), targets[i], applicators[i]);
        }
    }
}

// 0x367870 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender14getNumSegmentsEv
// The first child's.
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getNumSegments() const {
    return children[0]->getNumSegments();
}

// 0x367898 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEij
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(std::int32_t animation, std::uint32_t segment) const {
    return children[animation]->getSynchronizationLength(segment);
}

// 0x3678c4 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender24getSynchronizationLengthEj
// The weighted sum over the children (truncated).
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationLength(std::uint32_t segment) const {
    if (children.empty()) {
        return 0;
    }
    float sum = 0.0f;
    for (std::size_t i = 0; i < children.size(); ++i) {
        sum = sum + static_cast<float>(getSynchronizationLength(static_cast<std::int32_t>(i), segment)) * weights[i];
    }
    return static_cast<std::uint32_t>(static_cast<std::int32_t>(sum));
}

// 0x367948 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEij
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(std::int32_t animation, std::uint32_t segment) const {
    return children[animation]->getSynchronizationTimestamp(segment);
}

// 0x367974 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender27getSynchronizationTimestampEj
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationTimestamp(std::uint32_t segment) const {
    if (children.empty()) {
        return 0;
    }
    float sum = 0.0f;
    for (std::size_t i = 0; i < children.size(); ++i) {
        sum = sum + static_cast<float>(getSynchronizationTimestamp(static_cast<std::int32_t>(i), segment)) * weights[i];
    }
    return static_cast<std::uint32_t>(static_cast<std::int32_t>(sum));
}

// 0x3679f8 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender22getSynchronizationSegmentEii
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(std::int32_t animation, std::int32_t time) const {
    return children[animation]->getSynchronizationSegment(time);
}

// 0x367a24 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender22getSynchronizationSegmentEi
// The last segment whose (weighted) timestamp is not after `time`; the last segment when none is.
std::uint32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationSegment(std::int32_t time) const {
    std::uint32_t result = getNumSegments() - 1;
    for (std::uint32_t i = 0; i < getNumSegments(); ++i) {
        if (static_cast<std::int32_t>(getSynchronizationTimestamp(i)) <= time) {
            result = i;
        }
    }
    return result;
}

// 0x6610f8 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender13hasReachedEndEv
// The first child's.
bool CSceneNodeAnimatorSynchronizedBlender::hasReachedEnd() const {
    return children[0]->hasReachedEnd();
}

// 0x661120 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender18fillInputTimeStartEv
void CSceneNodeAnimatorSynchronizedBlender::fillInputTimeStart() {
    for (std::size_t i = 0; i < children.size(); ++i) {
        children[i]->fillInputTimeStart();
        inputTimes[i] = 0;
    }
}

// 0x661184 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender16fillInputTimeEndEv
void CSceneNodeAnimatorSynchronizedBlender::fillInputTimeEnd() {
    for (std::size_t i = 0; i < children.size(); ++i) {
        children[i]->fillInputTimeEnd();
        inputTimes[i] = static_cast<std::int32_t>(animatorOf(children[i])->getLength());
    }
}

// 0x661200 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender35fillInputSynchronizationElapsedTimeEv
void CSceneNodeAnimatorSynchronizedBlender::fillInputSynchronizationElapsedTime() {
    for (std::size_t i = 0; i < children.size(); ++i) {
        children[i]->fillInputSynchronizationElapsedTime();
        const std::int32_t elapsed = children[i]->getSynchronizationElapsedTime();
        const std::int32_t length = static_cast<std::int32_t>(animatorOf(children[i])->getLength());
        inputTimes[i] = length != 0 ? elapsed % length : 0;
    }
}

// 0x660f8c _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender32applySynchronizedAnimationValuesEf
// Normalises the weights and makes every child compute its synchronized values (child slot +0x38, as the original does).
void CSceneNodeAnimatorSynchronizedBlender::applySynchronizedAnimationValues(float elapsed) {
    normalizeWeights();
    for (IColladaSceneNodeSynchronizedAnimatorInterface* child : children) {
        child->computeSynchronizedAnimationValues(elapsed);
    }
}

// 0x660fec _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender34computeSynchronizedAnimationValuesEf
// As above, then blends the children's values of every target with a target object into it (first child's track, slot +0x10).
void CSceneNodeAnimatorSynchronizedBlender::computeSynchronizedAnimationValues(float elapsed) {
    normalizeWeights();
    for (IColladaSceneNodeSynchronizedAnimatorInterface* child : children) {
        child->computeSynchronizedAnimationValues(elapsed);
    }
    for (std::size_t i = 0; i < targets.size(); ++i) {
        if (targets[i] != nullptr) {
            IAnimationTrackEx* track = animatorOf(children[0])->getAnimationTrackEx(static_cast<std::int32_t>(i));
            track->getBlendedValue(outputs[i], weights.data(), static_cast<int>(weights.size()), targets[i]);
        }
    }
}

// 0x367b34 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender29getSynchronizationElapsedTimeEv
// Returns 0.
std::int32_t CSceneNodeAnimatorSynchronizedBlender::getSynchronizationElapsedTime() const {
    return 0;
}

// 0x367b44 _ZNK6glitch7collada37CSceneNodeAnimatorSynchronizedBlender29getSynchronizationPercentageEv
// The first child's.
float CSceneNodeAnimatorSynchronizedBlender::getSynchronizationPercentage() const {
    return children[0]->getSynchronizationPercentage();
}

// 0x367a88 _ZN6glitch7collada37CSceneNodeAnimatorSynchronizedBlender16normalizeWeightsEv
// Once (until the flag is cleared): the weights are divided by their sum; a zero sum with at least one weight sets weights[0] to 1.0.
void CSceneNodeAnimatorSynchronizedBlender::normalizeWeights() {
    if (weightsNormalized) {
        return;
    }
    const std::size_t count = weights.size();
    if (count != 0) {
        float sum = 0.0f;
        for (std::size_t i = 0; i != count; ++i) {
            sum = sum + weights[i];
        }
        if (sum != 0.0f) {
            for (std::size_t i = 0; i != count; ++i) {
                weights[i] = weights[i] / sum;
            }
        } else {
            weights[0] = 1.0f;
        }
    }
    weightsNormalized = true;
}

// 0x660f6c _ZN6glitch7collada13ordering_funcERKNS0_37CSceneNodeAnimatorSynchronizedBlender19SynchronizationDataES4_
bool CSceneNodeAnimatorSynchronizedBlender::orderingFunc(const SynchronizationData& a, const SynchronizationData& b) {
    return a.key < b.key;
}

}  // namespace glitch::collada
