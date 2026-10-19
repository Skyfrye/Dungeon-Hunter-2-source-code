#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Bodies of glitch::collada::CSceneNodeAnimatorSet (canonical class: collada/CSceneNodeAnimatorSet.hpp). This file replaces
//   src/tb_scene-collada-gui-glitch_collada_CSceneNodeAnimatorSet-0.cpp (written against the stand-in in collada_scene_accessors.hpp),
//   the CSceneNodeAnimatorSet accessors of src/collada_scene_accessors.cpp and the recon_22 stubs of the class.
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"

#include <cstring>

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"

namespace glitch::collada {

// 0x662c90 _ZN6glitch7collada21CSceneNodeAnimatorSetC2Ev
CSceneNodeAnimatorSet::CSceneNodeAnimatorSet() = default;

// 0x660c20 _ZN6glitch7collada21CSceneNodeAnimatorSetC1ERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE and 0x660ce4 (C2)
CSceneNodeAnimatorSet::CSceneNodeAnimatorSet(const boost::intrusive_ptr<CAnimationSet>& set) : animationSet(set) {
    init(set);
}

// 0x65fa08 _ZN6glitch7collada21CSceneNodeAnimatorSetD1Ev, 0x65fb2c (D2); D0 0x65fb10 is skipped.
// Deletes the applicators; the animation block (never set, see getAnimationData), the vectors and the set are released by the
// members.
CSceneNodeAnimatorSet::~CSceneNodeAnimatorSet() {
    for (animation_track::CApplicatorInfo*& applicator : applicators) {
        if (applicator != nullptr) {
            delete applicator;
            applicator = nullptr;
        }
    }
}

// 0x660af4 _ZN6glitch7collada21CSceneNodeAnimatorSet4initERKN5boost13intrusive_ptrINS0_13CAnimationSetEEE
void CSceneNodeAnimatorSet::init(const boost::intrusive_ptr<CAnimationSet>& set) {
    animationSet = set;
    const std::size_t count = animationSet->getAnimatedTrackCount();
    targets.resize(count, nullptr);
    for (std::size_t i = 0; i < count; ++i) {
        targets[i] = nullptr;
    }
    applicators.resize(count, nullptr);
    keyIndices.resize(count, 0);
    boost::intrusive_ptr<CTimelineController> controller(new CTimelineController());
    setTimelineCtrl(controller.get());  // vptr+0x3c
    setCurrentAnimation(0);             // vptr+0x88
}

// 0x65f270 _ZN6glitch7collada21CSceneNodeAnimatorSet11animateNodeEPNS_5scene10ISceneNodeEj
// Tail-calls applyAnimationValues (vptr+0x50).
void CSceneNodeAnimatorSet::animateNode(scene::ISceneNode*, std::uint32_t timeMs) {
    applyAnimationValues(timeMs);
}

// 0x65f0fc / 0x65f104 / 0x65f10c / 0x65f114 / 0x65f11c
std::uint32_t CSceneNodeAnimatorSet::getAnimationLength(std::int32_t index) {
    return animationSet->getAnimationLength(static_cast<unsigned>(index));
}
std::uint32_t CSceneNodeAnimatorSet::getAnimationStart(std::int32_t index) {
    return animationSet->getAnimationStart(static_cast<unsigned>(index));
}
std::uint32_t CSceneNodeAnimatorSet::getAnimationEnd(std::int32_t index) {
    return animationSet->getAnimationEnd(static_cast<unsigned>(index));
}
std::int32_t CSceneNodeAnimatorSet::getCurrentAnimation() const {
    return currentAnimation;
}
std::uint32_t CSceneNodeAnimatorSet::getAnimationCount() const {
    return animationSet->getAnimationCount();
}

// 0x65f124 _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationTrackEi
// The set's getAnimationTrack (vptr+0x20).
const SChannel* CSceneNodeAnimatorSet::getAnimationTrack(std::int32_t index) {
    return animationSet->getAnimationTrack(index);
}

// 0x65f140 _ZN6glitch7collada21CSceneNodeAnimatorSet19getAnimationTrackExEi
// The set's getAnimationTrackEx (vptr+0x24).
IAnimationTrackEx* CSceneNodeAnimatorSet::getAnimationTrackEx(std::int32_t index) {
    return const_cast<CAnimationTrackEx*>(animationSet->getAnimationTrackEx(index));
}

// 0x65f208 _ZN6glitch7collada21CSceneNodeAnimatorSet9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
// Stores the target, releases the old applicator (destructor slot) and takes a clone of the new one.
void CSceneNodeAnimatorSet::setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) {
    targets[index] = target;
    if (applicators[index] != nullptr) {
        delete applicators[index];
        applicators[index] = nullptr;
    }
    if (applicator != nullptr) {
        applicators[index] = applicator->clone();
    }
}

// 0x65f15c _ZN6glitch7collada21CSceneNodeAnimatorSet10getBindURIEi
// The name of the channel (the set's getChannel, vptr+0x14, then +0x04).
const char* CSceneNodeAnimatorSet::getBindURI(std::int32_t index) {
    return animationSet->getChannel(static_cast<unsigned>(index))->name;
}

// 0x65f17c _ZN6glitch7collada21CSceneNodeAnimatorSet14getTargetCountEv
std::int32_t CSceneNodeAnimatorSet::getTargetCount() {
    return static_cast<std::int32_t>(animationSet->getAnimatedTrackCount());
}

// 0x65f188 _ZN6glitch7collada21CSceneNodeAnimatorSet13getTargetSizeEi
std::int32_t CSceneNodeAnimatorSet::getTargetSize(std::int32_t index) {
    return static_cast<std::int32_t>(animationSet->tracks[index]->getValueSize());
}

// 0x65f1ac _ZN6glitch7collada21CSceneNodeAnimatorSet14getTargetsSizeEv
std::int32_t CSceneNodeAnimatorSet::getTargetsSize() {
    std::int32_t total = 0;
    const std::uint32_t count = animationSet->getAnimatedTrackCount();
    for (std::uint32_t i = 0; i < count; ++i) {
        total += static_cast<std::int32_t>(animationSet->tracks[i]->getValueSize());
    }
    return total;
}

// 0x65f8ac _ZNK6glitch7collada21CSceneNodeAnimatorSet25getAnimationVisualSceneIDEi
const char* CSceneNodeAnimatorSet::getAnimationVisualSceneID(std::int32_t index) const {
    const CColladaDatabase* database = animationSet->getDatabase(index);
    return visualSceneAt(database->tables(), 0)->name;
}

// 0x65f364 _ZN6glitch7collada21CSceneNodeAnimatorSet16getAnimationDataEi
// As CSceneNodeAnimator::getAnimationData (0x65d768), with the key built from the database of the current animation (the animation set's
// getDatabase at +0x50).
const SAnimationOutput* CSceneNodeAnimatorSet::getAnimationData(std::int32_t time) {
    scene::ITimelineController* controller = getTimelineCtrl();
    SAnimationBlockSearchKey key(*animationSet->getDatabase(currentAnimation), controller != nullptr ? controller->getCurrentClipIndex() : 0, time);
    if (CAnimationStreamingManager::Instance != nullptr) {  // the original dereferences it unconditionally
        CAnimationStreamingManager::Instance->getAnimationBlock(key, animationBlock);
    }
    dropDatabase(key.database);
    return animationBlock != nullptr ? animationBlock->dataHolder->buffer : nullptr;
}

namespace {

// The time the set samples at: the timeline controller's current time, or the time modulo the length (the original divides
// unsigned; a zero length is guarded here).
std::int32_t sampleTime(scene::ITimelineController* controller, std::uint32_t length, std::uint32_t timeMs) {
    if (controller != nullptr) {
        return controller->currentTimeMs;
    }
    return static_cast<std::int32_t>(length != 0 ? timeMs % length : 0);
}

}  // namespace

// 0x65f5dc _ZN6glitch7collada21CSceneNodeAnimatorSet22computeAnimationValuesEj
// Verified against the decompilation 0x65f5dc. For every enabled track with a target: the binding's default value is copied into the
// target, and an animated binding (kind 2) is read through the accessor at the sample time. Deviation, named: an animated binding is skipped
// when there is no animation data (the original hands the null data to the accessor).
void CSceneNodeAnimatorSet::computeAnimationValues(std::uint32_t timeMs) {
    if (animationSet->animatedTrackCount == 0 && !eventsTrack) {
        return;
    }
    ISceneNodeAnimator::updateTime(timeMs);
    const std::int32_t time = sampleTime(getTimelineCtrl(), length, timeMs);
    const bool interpolate = interpolationType != 1;
    const bool streamed = animationSet->getDatabase(currentAnimation)->tables().animationFlag != 0;
    const SAnimationOutput* data = getAnimationData(time);
    SAnimationKeyCache cache;
    cache.enabled = streamed ? 1 : 0;
    const std::uint32_t count = animationSet->animatedTrackCount;
    for (std::uint32_t i = 0; i < count; ++i) {
        if (!isTrackEnabled(static_cast<std::int32_t>(i))) {
            continue;
        }
        void* target = targets[i];
        if (target == nullptr) {
            continue;
        }
        const CAnimationSet::SBinding& binding = animationSet->bindings[static_cast<std::size_t>(trackOffset) + i];
        if (binding.defaultValue != nullptr) {
            std::memcpy(target, binding.defaultValue, animationSet->tracks[i]->getValueSize());
        }
        if (binding.kind == 2 && data != nullptr) {
            SAnimationAccessor accessor(binding.animation, data, &cache);
            std::int32_t& hint = streamed ? keyIndices[0] : keyIndices[i];
            accessor.getValue(time, target, hint, interpolate);
        }
    }
}

// 0x65f418 _ZN6glitch7collada21CSceneNodeAnimatorSet20applyAnimationValuesEj
// Verified against the decompilation 0x65f418. As computeAnimationValues, but the default value is applied through the track's
// applyValue(value, target, applicator) (vptr+0x70) and an animated binding through the accessor's applyValue with the track's applicator.
void CSceneNodeAnimatorSet::applyAnimationValues(std::uint32_t timeMs) {
    if (animationSet->animatedTrackCount == 0 && !eventsTrack) {
        return;
    }
    ISceneNodeAnimator::updateTime(timeMs);
    const std::int32_t time = sampleTime(getTimelineCtrl(), length, timeMs);
    const bool interpolate = interpolationType != 1;
    const bool streamed = animationSet->getDatabase(currentAnimation)->tables().animationFlag != 0;
    const SAnimationOutput* data = getAnimationData(time);
    SAnimationKeyCache cache;
    cache.enabled = streamed ? 1 : 0;
    const std::uint32_t count = animationSet->animatedTrackCount;
    for (std::uint32_t i = 0; i < count; ++i) {
        if (!isTrackEnabled(static_cast<std::int32_t>(i))) {
            continue;
        }
        void* target = targets[i];
        if (target == nullptr) {
            continue;
        }
        const CAnimationSet::SBinding& binding = animationSet->bindings[static_cast<std::size_t>(trackOffset) + i];
        if (binding.defaultValue != nullptr) {
            animationSet->tracks[i]->applyValue(const_cast<void*>(binding.defaultValue), target, applicators[i]);
        }
        if (binding.kind == 2 && data != nullptr) {
            SAnimationAccessor accessor(binding.animation, data, &cache);
            accessor.applyValue(time, target, applicators[i], keyIndices[i], interpolate);
        }
    }
}

// 0x65f7b4 _ZN6glitch7collada21CSceneNodeAnimatorSet17getAnimationValueEiiPv
// Verified against the decompilation 0x65f7b4. Copies the binding's default value and reads the animated value at `time` with the key cache off
// (the data is fetched only for an animated binding; a missing block gives no animated value here, where the original passes null data on).
void CSceneNodeAnimatorSet::getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) {
    const bool interpolate = interpolationType != 1;
    const bool streamed = animationSet->getDatabase(currentAnimation)->tables().animationFlag != 0;
    const CAnimationSet::SBinding& binding = animationSet->bindings[static_cast<std::size_t>(trackOffset + trackIndex)];
    if (binding.defaultValue != nullptr) {
        std::memcpy(out, binding.defaultValue, animationSet->tracks[trackIndex]->getValueSize());
    }
    if (binding.kind == 2) {
        const SAnimationOutput* data = getAnimationData(time);
        if (data == nullptr) {
            return;
        }
        SAnimationKeyCache cache;
        cache.enabled = 0;
        SAnimationAccessor accessor(binding.animation, data, &cache);
        std::int32_t& hint = streamed ? keyIndices[0] : keyIndices[trackIndex];
        accessor.getValue(time, out, hint, interpolate);
    } else {
    }
}

// 0x65f8c8 _ZN6glitch7collada21CSceneNodeAnimatorSet19setCurrentAnimationEi
// Takes the length and the binding offset of the animation, points the timeline controller at the clip library of its database
// (clip 0), or at the plain range of the animation when the library has no clips, and installs the database's events track.
void CSceneNodeAnimatorSet::setCurrentAnimation(std::int32_t index) {
    length = animationSet->getAnimationLength(static_cast<unsigned>(index));
    currentAnimation = index;
    trackOffset = static_cast<std::int32_t>(animationSet->animatedTrackCount) * index;
    CColladaDatabase* database = animationSet->getDatabase(index);
    const SLibraryAnimationClips* library = database->getAnimationClipLibrary();
    scene::ITimelineController* controller = getTimelineCtrl();
    if (controller == nullptr) {
        return;
    }
    auto* timeline = static_cast<CTimelineController*>(controller);
    if (library->count != 0) {
        timeline->clipTable = library;
        timeline->setClip(0);
    } else {
        timeline->rangeStartMs = 0;
        timeline->clipTable = nullptr;
        timeline->rangeEndMs = 1;
        timeline->setRange(static_cast<std::int32_t>(getAnimationStart(index)),
                           static_cast<std::int32_t>(getAnimationEnd(index)), true);
    }
    setEventsTrack(animationSet->getDatabase(index)->tables().eventKeyTable);
}

// 0x65f288 _ZN6glitch7collada21CSceneNodeAnimatorSet16getIdentityValueEiPv
// Empty in the original.
void CSceneNodeAnimatorSet::getIdentityValue(std::int32_t, void*) {}

}  // namespace glitch::collada
