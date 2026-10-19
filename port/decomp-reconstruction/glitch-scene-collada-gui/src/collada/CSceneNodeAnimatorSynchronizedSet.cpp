// Bodies of glitch::collada::CSceneNodeAnimatorSynchronizedSet (canonical class: collada/CSceneNodeAnimatorSynchronizedSet.hpp).
// This file replaces the accessors of src/collada_misc.cpp, the recon_22 / recon_00 stubs and the address-named templates of
// track_defaults.hpp / generated_stubs.hpp for the class.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedSet.hpp"

#include <cmath>

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"

namespace glitch::collada {

// 0x662d10 _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetC1ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEERKSt6vectorISsNS_4core10SAllocatorISsLNS_6memory13E_MEMORY_HINTE0EEEE
// and 0x662df0 (C2)
// Verified against the decompilation 0x662d10: the CSceneNodeAnimatorSet base is constructed, +0x60 / +0x64 / +0x68 are
// zeroed (the segments vector), the vtable words are stored, segmentCount at +0x6c is
// -1431655765 * ((end - begin) >> 3) = (end - begin) / 24 = the number of names (computed from the vector argument, in
// the dump: `*(a1 + 108) = -1431655765 * ((a3[1] - *a3) >> 3)`), then the names vector at +0x70 is copy-constructed, +0x80
// (reachedEnd) is 0, +0x7c (elapsedTime) is 0, owner (+0x5c, read as `this + 23` words) is set to `this`, and init(set)
// runs last. The port's declaration order is segments (+0x60), segmentCount (+0x6c), names (+0x70), elapsedTime (+0x7c),
// reachedEnd (+0x80), so the two initialisers run in the original's order and only the owner store is in the body.
CSceneNodeAnimatorSynchronizedSet::CSceneNodeAnimatorSynchronizedSet(const boost::intrusive_ptr<CAnimationSet>& set,
                                                                     const core::svector<std::string>& eventNames)
    : segmentCount(static_cast<std::uint32_t>(eventNames.size())), names(eventNames) {
    owner = this;  // interface +0x04
    init(set);
}

// 0x662b60 _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSetD1Ev, 0x662c10 (D2); D0 0x662bf4 is skipped.
CSceneNodeAnimatorSynchronizedSet::~CSceneNodeAnimatorSynchronizedSet() = default;

// 0x663324 _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet19setCurrentAnimationEi
// The base selection, then one segment per name: the timestamp is the time of the event in the animation's events track
// (CEventsManager::getEventTimeFromEventName, vptr+0x14) and the length the time to the next segment, wrapping around the animation
// length (getLength, vptr+0x48).
void CSceneNodeAnimatorSynchronizedSet::setCurrentAnimation(std::int32_t index) {
    CSceneNodeAnimatorSet::setCurrentAnimation(index);
    CEventsManager* events = eventsTrack.get();
    const std::int32_t animationLength = static_cast<std::int32_t>(getLength());
    segments.assign(segmentCount, SSyncSegment());
    for (std::uint32_t i = 0; i < segmentCount; ++i) {
        // The original calls the events manager unconditionally; a set without an events track gets timestamp 0 here.
        segments[i].timestamp = events != nullptr ? events->getEventTimeFromEventName(names[i].c_str()) : 0;
        segments[i].length = 0;
        segments[i].name = names[i];
    }
    for (std::uint32_t i = 0; i < segmentCount; ++i) {
        const std::int32_t next = segments[(i + 1) % segmentCount].timestamp;
        segments[i].length = animationLength != 0 ? (next - segments[i].timestamp + animationLength) % animationLength : 0;
    }
}

// 0x368db4 _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet14getNumSegmentsEv
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getNumSegments() const {
    return segmentCount;
}

// 0x368dc4 _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEj
// Unchecked index, as in the original.
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(std::uint32_t segment) const {
    return static_cast<std::uint32_t>(segments[segment].length);
}

// 0x368ddc _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet24getSynchronizationLengthEij
// The animation argument is ignored (a tail call to the one-argument form).
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationLength(std::int32_t, std::uint32_t segment) const {
    return getSynchronizationLength(segment);
}

// 0x368dfc _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEj
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(std::uint32_t segment) const {
    return static_cast<std::uint32_t>(segments[segment].timestamp);
}

// 0x368e10 _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet27getSynchronizationTimestampEij
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationTimestamp(std::int32_t, std::uint32_t segment) const {
    return getSynchronizationTimestamp(segment);
}

// 0x368e30 _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet22getSynchronizationSegmentEi
// The last segment whose timestamp is not after `time`; the last segment when none is (the count minus one wraps for an empty set).
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(std::int32_t time) const {
    std::uint32_t result = segmentCount - 1;
    for (std::uint32_t i = 0; i < segmentCount; ++i) {
        if (static_cast<std::int32_t>(getSynchronizationTimestamp(i)) <= time) {
            result = i;
        }
    }
    return result;
}

// 0x368e8c _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet22getSynchronizationSegmentEii
std::uint32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationSegment(std::int32_t, std::int32_t time) const {
    return getSynchronizationSegment(time);
}

// 0x368eac _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet13hasReachedEndEv
bool CSceneNodeAnimatorSynchronizedSet::hasReachedEnd() const {
    return reachedEnd;
}

// 0x662750 / 0x66275c / 0x662768: empty in the original.
void CSceneNodeAnimatorSynchronizedSet::fillInputTimeStart() {}
void CSceneNodeAnimatorSynchronizedSet::fillInputTimeEnd() {}
void CSceneNodeAnimatorSynchronizedSet::fillInputSynchronizationElapsedTime() {}

// 0x662794 _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet34computeSynchronizedAnimationValuesEf
// Moves the elapsed time to `elapsed` (a fraction of the animation length) and computes the values there; the end is reached when the
// step crosses the length.
void CSceneNodeAnimatorSynchronizedSet::computeSynchronizedAnimationValues(float elapsed) {
    reachedEnd = false;
    const std::int32_t animationLength = static_cast<std::int32_t>(getLength());
    const float previous = elapsedTime;
    const float wrapped = std::fmod(previous, static_cast<float>(animationLength));
    if (static_cast<float>(static_cast<std::int32_t>(static_cast<float>(animationLength) * elapsed) - static_cast<std::int32_t>(previous)) +
            wrapped >=
        static_cast<float>(animationLength)) {
        reachedEnd = true;
    }
    elapsedTime = static_cast<float>(animationLength) * elapsed;
    CSceneNodeAnimatorSet::computeAnimationValues(static_cast<std::uint32_t>(elapsedTime));
}

// 0x662884 _ZN6glitch7collada33CSceneNodeAnimatorSynchronizedSet32applySynchronizedAnimationValuesEf
// As above, but the new elapsed time is truncated to whole milliseconds.
void CSceneNodeAnimatorSynchronizedSet::applySynchronizedAnimationValues(float elapsed) {
    reachedEnd = false;
    const std::int32_t animationLength = static_cast<std::int32_t>(getLength());
    const std::int32_t target = static_cast<std::int32_t>(static_cast<float>(animationLength) * elapsed);
    const float previous = elapsedTime;
    const float wrapped = std::fmod(previous, static_cast<float>(animationLength));
    if (static_cast<float>(target - static_cast<std::int32_t>(previous)) + wrapped >= static_cast<float>(animationLength)) {
        reachedEnd = true;
    }
    elapsedTime = static_cast<float>(target);
    CSceneNodeAnimatorSet::applyAnimationValues(static_cast<std::uint32_t>(elapsedTime));
}

// 0x368ebc _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet29getSynchronizationElapsedTimeEv
// The elapsed time truncated to an integer.
std::int32_t CSceneNodeAnimatorSynchronizedSet::getSynchronizationElapsedTime() const {
    return static_cast<std::int32_t>(elapsedTime);
}

// 0x368ed4 _ZNK6glitch7collada33CSceneNodeAnimatorSynchronizedSet29getSynchronizationPercentageEv
float CSceneNodeAnimatorSynchronizedSet::getSynchronizationPercentage() const {
    return elapsedTime / static_cast<float>(getLength());
}

}  // namespace glitch::collada
