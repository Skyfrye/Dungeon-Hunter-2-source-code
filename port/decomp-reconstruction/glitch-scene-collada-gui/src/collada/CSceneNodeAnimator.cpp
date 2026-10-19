#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Bodies of glitch::collada::CSceneNodeAnimator (canonical class: collada/CSceneNodeAnimator.hpp). This file replaces
//   src/scene_node_animator.cpp (four accessors over a vector of target records without a base class) and
//   src/tb_scene-collada-gui-glitch_collada_CSceneNodeAnimator-0.cpp (setTarget, computeAnimationValues, applyAnimationValues,
//   all written as no-ops because the base class and the target record were not mapped).
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimator.hpp"

#include <algorithm>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/tb/glitch_collada_material_creation.hpp"

namespace glitch::collada {

// 0x65dbd8 _ZN6glitch7collada18CSceneNodeAnimatorC1ERKNS0_16CColladaDatabaseERNS0_21SLibraryAnimationClipsE and 0x65dda0 (C2)
// Copies the database handle (a use on the record), reads the streaming flag and the start / end of the animation from the
// database's table holder, creates the timeline controller over the clip library (clip 0 when the library has clips, the whole
// range otherwise) and installs it.
CSceneNodeAnimator::CSceneNodeAnimator(const CColladaDatabase& source, SLibraryAnimationClips& clipLibrary) {
    copyDatabase(database, source);       // +0x28 / +0x2c
    const SDatabaseTables& tables = *source.record->data->tables;
    clips = &clipLibrary;                 // +0x40
    animationFlag = tables.animationFlag != 0;  // +0x34

    boost::intrusive_ptr<CTimelineController> controller(new CTimelineController());
    if (clipLibrary.count != 0) {
        controller->clipTable = clips;    // controller +0x34
        if (clips != nullptr && clips->count != 0) {
            controller->setClip(0);
        } else {
            controller->rangeStartMs = 0;  // +0x10
            controller->rangeEndMs = 1;    // +0x14
        }
    } else {
        controller->setRange(tables.animationRange.start, tables.animationRange.end, true);  // vptr+0x50
    }
    startTime = tables.animationRange.start;    // +0x38
    endTime = tables.animationRange.end;        // +0x3c
    length = static_cast<std::uint32_t>(endTime - startTime);  // +0x14
    setTimelineCtrl(controller.get());    // takes a use; the handle drops the construction use
}

// 0x65dab0 _ZN6glitch7collada18CSceneNodeAnimatorD1Ev, 0x65db58 (D2); D0 0x65db3c is skipped.
// Verified against the decompilation: the vtable words, removeAnimationTracks (0x65d628), the animation block at +0x54
// released when non-null (collada::intrusive_ptr_release), the target vector's allocation freed with GlitchFree (+0x44),
// the database at +0x28 destroyed, then the ISceneNodeAnimator base. The port's members do the same and in the same order:
// removeAnimationTracks runs here, animationBlock is only ever set by getAnimationData (which releases the block it
// replaces) and is null in the current port, the std::vector<STarget> frees its own allocation, and the ~CColladaDatabase
// member drops the record. No deviation on this body.
CSceneNodeAnimator::~CSceneNodeAnimator() {
    removeAnimationTracks();
    dropDatabase(database);
}

// 0x65df4c _ZNK6glitch7collada18CSceneNodeAnimator19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Verified against the disassembly 0x65df4c. Every write goes through the port's IAttributes slots, all of which exist
// (glitch-core-io/io/iattributes.hpp): addFloat +0x64 with flag 0 for "BlendOutWeight" (the float at +0x30), then flag 1
// for "Start" (+0x38), "End" (+0x3c) and "Length" (+0x14), each after __aeabi_i2f and a divide by 0x447a0000 = 1000.0f;
// addEnum +0xf4 for "Interpolation Type" with the value at +0x0c and the table getStringsInternal returns (this is the only
// call site of 0x667c38, now reconstructed); addString +0x7c with the bound node's getUID (the node at +0x10, its slot
// +0x54) for "Binded to"; addString +0x7c with the database record's fileName (record +0x20) for "Source", written as null
// when there is no record. The trailing argument of the last two is 1 and of addFloat/addEnum 0, as the listing sets r3.
void CSceneNodeAnimator::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    (void)options;
    attributes->addFloat("BlendOutWeight", unk_30, false);                          // +0x64, flag 0
    attributes->addFloat("Start", static_cast<float>(startTime) / 1000.0f, true);   // +0x64, flag 1
    attributes->addFloat("End", static_cast<float>(endTime) / 1000.0f, true);
    attributes->addFloat("Length", static_cast<float>(length) / 1000.0f, true);
    attributes->addEnum("Interpolation Type", static_cast<int>(interpolationType), getStringsInternal(), false);  // +0xf4
    attributes->addString("Binded to", boundNode != nullptr ? boundNode->getUID() : nullptr, true);               // +0x7c
    attributes->addString("Source", database.record != nullptr ? database.record->fileName : nullptr, true);
}

// 0x65d540 _ZN6glitch7collada18CSceneNodeAnimator21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Empty in the original.
void CSceneNodeAnimator::deserializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) {}

// 0x65d528 _ZN6glitch7collada18CSceneNodeAnimator11animateNodeEPNS_5scene10ISceneNodeEj
// Tail-calls applyAnimationValues (vptr+0x50).
void CSceneNodeAnimator::animateNode(scene::ISceneNode*, std::uint32_t timeMs) {
    applyAnimationValues(timeMs);
}

// 0x65d6b4 _ZN6glitch7collada18CSceneNodeAnimator10updateTimeEj
// Steps the clock only when the animator has targets (or the +0x50 word is set).
void CSceneNodeAnimator::updateTime(std::uint32_t timeMs) {
    if (!targets.empty() || unk_50 != 0) {
        ISceneNodeAnimator::updateTime(timeMs);
    }
}

// 0x65d544 _ZN6glitch7collada18CSceneNodeAnimator11createCloneEv
// Returns null.
scene::ISceneNodeAnimator* CSceneNodeAnimator::createClone() {
    return nullptr;
}

// 0x65d3f8 _ZN6glitch7collada18CSceneNodeAnimator17getAnimationTrackEi
// The channel array of the target's animation.
const SChannel* CSceneNodeAnimator::getAnimationTrack(std::int32_t index) {
    return targets[index].animation->channels;
}

// 0x65d3e8 _ZN6glitch7collada18CSceneNodeAnimator19getAnimationTrackExEi
IAnimationTrackEx* CSceneNodeAnimator::getAnimationTrackEx(std::int32_t index) {
    return targets[index].animation->trackEx;
}

// 0x65d408 _ZN6glitch7collada18CSceneNodeAnimator9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
// Stores the target, releases the old applicator (destructor slot vptr+0x04) and takes a clone (vptr+0x08) of the new one.
void CSceneNodeAnimator::setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) {
    STarget& record = targets[index];
    record.target = target;
    if (record.applicator != nullptr) {
        delete record.applicator;
        record.applicator = nullptr;
    }
    if (applicator != nullptr) {
        record.applicator = applicator->clone();
    }
}

// 0x65d480 _ZN6glitch7collada18CSceneNodeAnimator10getBindURIEi
// The name of the target's channel.
const char* CSceneNodeAnimator::getBindURI(std::int32_t index) {
    return targets[index].animation->channels->name;
}

// 0x65d494 _ZN6glitch7collada18CSceneNodeAnimator14getTargetCountEv
std::int32_t CSceneNodeAnimator::getTargetCount() {
    return static_cast<std::int32_t>(targets.size());
}

// 0x65d4a8 _ZN6glitch7collada18CSceneNodeAnimator13getTargetSizeEi
// The value size of the target's track (getAnimationTrackEx, vptr+0x58; then the track's getValueSize, vptr+0x08).
std::int32_t CSceneNodeAnimator::getTargetSize(std::int32_t index) {
    return static_cast<std::int32_t>(getAnimationTrackEx(index)->getValueSize());
}

// 0x65d4c8 _ZN6glitch7collada18CSceneNodeAnimator14getTargetsSizeEv
std::int32_t CSceneNodeAnimator::getTargetsSize() {
    std::int32_t total = 0;
    const std::int32_t count = static_cast<std::int32_t>(targets.size());
    for (std::int32_t i = 0; i < count; ++i) {
        total += static_cast<std::int32_t>(getAnimationTrackEx(i)->getValueSize());
    }
    return total;
}

// 0x65e0d8 _ZN6glitch7collada18CSceneNodeAnimator17addAnimationTrackEPNS0_10SAnimationE
// Appends a target record for the animation (no target, no applicator).
void CSceneNodeAnimator::addAnimationTrack(SAnimation* animation) {
    STarget record;
    record.animation = animation;
    targets.push_back(record);
}

// 0x65d54c _ZN6glitch7collada18CSceneNodeAnimator20removeAnimationTrackEPNS0_10SAnimationE
// Removes the first record of the animation, releasing its applicator.
void CSceneNodeAnimator::removeAnimationTrack(SAnimation* animation) {
    for (std::size_t i = 0; i < targets.size(); ++i) {
        if (targets[i].animation == animation) {
            if (targets[i].applicator != nullptr) {
                delete targets[i].applicator;
                targets[i].applicator = nullptr;
            }
            targets.erase(targets.begin() + static_cast<std::ptrdiff_t>(i));
            return;
        }
    }
}

// 0x65d628 _ZN6glitch7collada18CSceneNodeAnimator21removeAnimationTracksEv
// Releases the applicator of every record (the records stay).
void CSceneNodeAnimator::removeAnimationTracks() {
    for (STarget& record : targets) {
        if (record.applicator != nullptr) {
            delete record.applicator;
            record.applicator = nullptr;
        }
    }
}

// 0x65d768 _ZN6glitch7collada18CSceneNodeAnimator16getAnimationDataEi
// Verified against the decompilation 0x65d768: the timeline controller (vptr+0x44) is asked for its current clip (its vptr+0x38), an
// SAnimationBlockSearchKey is built from the database at +0x28 with that clip and the time (0x65d6d8), CAnimationStreamingManager::
// getAnimationBlock (0x60c59c) is called on the singleton with the block slot at +0x54, and the result is `block ? block->dataHolder->buffer
// : null`. One deviation: the manager is null-tested, where the original dereferences it.
const SAnimationOutput* CSceneNodeAnimator::getAnimationData(std::int32_t time) {
    scene::ITimelineController* controller = getTimelineCtrl();
    SAnimationBlockSearchKey key(database, controller != nullptr ? controller->getCurrentClipIndex() : 0, time);
    if (CAnimationStreamingManager::Instance != nullptr) {  // the original dereferences it unconditionally
        CAnimationStreamingManager::Instance->getAnimationBlock(key, animationBlock);
    }
    dropDatabase(key.database);
    return animationBlock != nullptr ? animationBlock->dataHolder->buffer : nullptr;
}

namespace {

// The time the animators sample at: the controller's current time, or the animation start plus the time modulo the length
// (the original divides unsigned; a zero length is guarded here).
std::int32_t sampleTime(scene::ITimelineController* controller, std::int32_t startTime, std::uint32_t length,
                        std::uint32_t timeMs) {
    if (controller != nullptr) {
        return controller->currentTimeMs;
    }
    return startTime + static_cast<std::int32_t>(length != 0 ? timeMs % length : 0);
}

}  // namespace

// 0x65d80c _ZN6glitch7collada18CSceneNodeAnimator22computeAnimationValuesEj
// Verified against the listing: the guard (targets or +0x50), ISceneNodeAnimator::updateTime, the sample time (the
// controller's current time, else start + time % length), getAnimationData, the cache byte from the streaming flag at +0x34,
// then per target `if (target) SAnimationAccessor::getValue(time, target, keyIndex, interpolate)` with targets[0].keyIndex
// as the shared hint when the flag is set and interpolate = (interpolationType != 1).
// Deviation, named: the early return when getAnimationData is null; the original passes the null data on. The animated
// values are those of the block the streaming manager hands out (CAnimationStreamingManager::getAnimationBlock).
void CSceneNodeAnimator::computeAnimationValues(std::uint32_t timeMs) {
    if (targets.empty() && unk_50 == 0) {
        return;
    }
    ISceneNodeAnimator::updateTime(timeMs);
    const std::int32_t time = sampleTime(getTimelineCtrl(), startTime, length, timeMs);
    const bool interpolate = interpolationType != 1;
    const SAnimationOutput* data = getAnimationData(time);
    if (data == nullptr) {
        return;  // host guard: the original would read through the missing block data
    }
    SAnimationKeyCache cache;
    cache.enabled = animationFlag ? 1 : 0;
    for (STarget& record : targets) {
        if (record.target != nullptr) {
            SAnimationAccessor accessor(record.animation, data, &cache);
            std::int32_t& hint = animationFlag ? targets[0].keyIndex : record.keyIndex;
            accessor.getValue(time, record.target, hint, interpolate);
        }
    }
}

// 0x65d91c _ZN6glitch7collada18CSceneNodeAnimator20applyAnimationValuesEj
// As computeAnimationValues (verified against its listing too), with SAnimationAccessor::applyValue and the record's
// applicator instead of getValue, plus the same named null-data deviation.
void CSceneNodeAnimator::applyAnimationValues(std::uint32_t timeMs) {
    if (targets.empty() && unk_50 == 0) {
        return;
    }
    ISceneNodeAnimator::updateTime(timeMs);
    const std::int32_t time = sampleTime(getTimelineCtrl(), startTime, length, timeMs);
    const bool interpolate = interpolationType != 1;
    const SAnimationOutput* data = getAnimationData(time);
    if (data == nullptr) {
        return;  // host guard: the original would read through the missing block data
    }
    SAnimationKeyCache cache;
    cache.enabled = animationFlag ? 1 : 0;
    for (std::size_t i = 0; i < targets.size(); ++i) {
        STarget& record = targets[i];
        if (record.target != nullptr) {
            SAnimationAccessor accessor(record.animation, data, &cache);
            std::int32_t& hint = animationFlag ? targets[0].keyIndex : record.keyIndex;
            accessor.applyValue(time, record.target, record.applicator, hint, interpolate);
        }
    }
}

// 0x65da38 _ZN6glitch7collada18CSceneNodeAnimator17getAnimationValueEiiPv
// Verified against the listing: target record `targets + 16 * trackIndex`, a zeroed key-cache byte (no caching), then
// SAnimationAccessor::getValue(time, out, the record's keyIndex, interpolationType != 1). No default value is copied here
// (the old note confused this with CSceneNodeAnimatorSet::getAnimationValue). Deviation, named: the early return when
// getAnimationData is null.
void CSceneNodeAnimator::getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) {
    STarget& record = targets[trackIndex];
    const SAnimationOutput* data = getAnimationData(time);
    if (data == nullptr) {
        return;  // host guard: the original would read through the missing block data
    }
    SAnimationKeyCache cache;
    cache.enabled = 0;
    SAnimationAccessor accessor(record.animation, data, &cache);
    accessor.getValue(time, out, record.keyIndex, interpolationType != 1);
}

}  // namespace glitch::collada
