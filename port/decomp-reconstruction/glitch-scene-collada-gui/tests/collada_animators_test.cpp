// Tests for the canonical collada animator family (u1-scene): CAnimationSet, CDynamicAnimationSet, CSceneNodeAnimator,
// CSceneNodeAnimatorSet, CSceneNodeAnimatorBlender, CSceneNodeAnimatorSynchronizedSet and CSceneNodeAnimatorSynchronizedBlender,
// over a hand-built database. The animation data (the streaming manager's blocks) is not reconstructed, so the value paths that need
// it are checked for the guard only; the structure (targets, bindings, ranges, segments, weights, forwarding) is checked in full.
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorBlender.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedBlender.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedSet.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A concrete track: three floats, the value operations record nothing.
class TestTrack : public CAnimationTrackEx {
public:
    std::uint32_t getValueSize() const override { return 12; }
    void getIdentityValue(void* out) const override { std::memset(out, 0, 12); }
    int getBlendedValue(void*, float*, int, void*) const override { return 0; }
    int getAddedValue(void*, float*, int, void*) const override { return 0; }
    int getKeyBasedValue(const SAnimationAccessor&, int, int, float, void*) const override { return 0; }
    int getKeyBasedValue(const SAnimationAccessor&, int, int, int, float, void*) const override { return 0; }
    int getKeyBasedValue(const SAnimationAccessor&, int, void*) const override { return 0; }
    int getKeyBasedValue(const SAnimationAccessor&, int, int, void*) const override { return 0; }
    int applyValue(void*, void*, animation_track::CApplicatorInfo*) const override { return 0; }
};

// A database over a hand-built holder: the record and the file data are the two levels the lookups reach.
struct Fixture {
    SDatabaseTables tables;
    SColladaFileData data;
    CResFile file;
    CColladaDatabase db;

    Fixture() {
        data.tables = &tables;
        file.data = &data;
        file.refCount = 1;
        db.record = &file;
        tables.animationRange.start = 100;
        tables.animationRange.end = 1100;
    }
};

// One animation over one channel and one track.
struct AnimationFixture {
    SChannel channel;
    TestTrack track;
    SAnimation animation;

    AnimationFixture(const char* name, std::uint32_t type) {
        channel.name = name;
        channel.type = type;
        animation.name = name;
        animation.channels = &channel;
        animation.channelCount = 1;
        animation.trackEx = &track;
    }
};

void testAnimator() {
    Fixture f;
    SLibraryAnimationClips noClips;
    AnimationFixture pos("pos", 1);
    {
        CSceneNodeAnimator animator(f.db, noClips);
        CHECK(f.file.refCount == 2);                       // the animator copied the database handle
        CHECK(animator.getLength() == 1000);               // end - start
        CHECK(animator.startTime == 100 && animator.endTime == 1100);
        CHECK(animator.getTimelineCtrl() != nullptr);
        CHECK(animator.getTimelineCtrl()->rangeStartMs == 100 && animator.getTimelineCtrl()->rangeEndMs == 1100);
        CHECK(!animator.animationFlag);
        CHECK(animator.createClone() == nullptr);

        CHECK(animator.getTargetCount() == 0);
        animator.addAnimationTrack(&pos.animation);
        CHECK(animator.getTargetCount() == 1);
        CHECK(std::strcmp(animator.getBindURI(0), "pos") == 0);
        CHECK(animator.getAnimationTrack(0) == &pos.channel);
        CHECK(animator.getAnimationTrackEx(0) == &pos.track);
        CHECK(animator.getTargetSize(0) == 12);
        CHECK(animator.getTargetsSize() == 12);

        animation_track::CMaterialApplicatorInfo info;
        info.parameterId = 7;
        float target[3] = {};
        animator.setTarget(0, target, &info);
        CHECK(animator.targets[0].target == target);
        CHECK(animator.targets[0].applicator != nullptr && animator.targets[0].applicator != &info);
        CHECK(animator.targets[0].applicator->parameterId == 7);  // a clone
        animator.setTarget(0, target, nullptr);                   // releases the clone
        CHECK(animator.targets[0].applicator == nullptr);

        // Without animation data nothing is read or written.
        animator.animateNode(nullptr, 40);
        CHECK(target[0] == 0.0f);

        // The animator-by-name setters bind the first target with the name.
        CHECK(animator.setTarget("pos", target) == 1);
        CHECK(animator.setTarget("nope", target) == 0);

        animator.removeAnimationTrack(&pos.animation);
        CHECK(animator.getTargetCount() == 0);
        animator.addAnimationTrack(&pos.animation);
        animator.removeAnimationTracks();
        CHECK(animator.getTargetCount() == 1);  // the records stay, the applicators go
    }
    CHECK(f.file.refCount == 1);  // the destructor dropped the handle

    // With a clip library the controller selects clip 0.
    SAnimationClip clips[2];
    clips[0].name = "idle";
    clips[0].start = 0;
    clips[0].end = 500;
    clips[1].name = "run";
    clips[1].start = 500;
    clips[1].end = 900;
    SLibraryAnimationClips library;
    library.count = 2;
    library.clips = clips;
    CSceneNodeAnimator withClips(f.db, library);
    CHECK(withClips.getTimelineCtrl()->getClipCount() == 2);
    CHECK(withClips.getTimelineCtrl()->getCurrentClipIndex() == 0);
}

void testAnimationSetAndSetAnimator() {
    Fixture f;
    AnimationFixture pos("pos", 1);
    f.tables.animations = {&pos.animation};
    f.tables.animationFlag = 0;

    boost::intrusive_ptr<CAnimationSet> set(new CAnimationSet());
    CHECK(set->addAnimationLibrary(f.db) == 0);
    CHECK(set->addAnimationLibrary(f.db) == 1);
    CHECK(set->getAnimationCount() == 2);
    CHECK(f.file.refCount == 3);  // two handles in the set

    // addAnimation: a new channel is appended, the same channel is found again, an animation without a track is rejected.
    CHECK(set->addAnimation(&pos.animation) == 0);
    CHECK(set->addAnimation(&pos.animation) == 0);
    AnimationFixture rot("rot", 5);
    CHECK(set->addAnimation(&rot.animation) == 1);
    SAnimation noTrack = rot.animation;
    SChannel other = rot.channel;
    other.name = "scale";
    other.type = 15;  // a channel type with no track class
    noTrack.channels = &other;
    noTrack.trackEx = nullptr;
    CHECK(set->addAnimation(&noTrack) == -1);
    CHECK(set->getChannel(1) == &rot.channel);
    CHECK(set->getAnimationTrack(0) == &pos.channel);
    CHECK(set->getAnimationTrackEx(1) == CColladaDatabase::getAnimationTrackEx(&rot.animation));  // the track class of the channel type
    CHECK(set->remAnimation(&pos.animation) == 0);

    // compile: the animations of the databases are collected and the channels no database drives are pruned.
    set->channels.clear();
    set->tracks.clear();
    set->compile();
    CHECK(set->getAnimatedTrackCount() == 1);  // "pos" is the only animation of the database
    CHECK(set->bindings.size() == 2);          // one per (database, channel)
    CHECK(set->getBinding(0)->kind == 2 && set->getBinding(0)->animation == &pos.animation);
    CHECK(set->getAnimationStart(0) == 100 && set->getAnimationEnd(1) == 1100 && set->getAnimationLength(1) == 1000);
    CHECK(set->getAnimationLength(2) == 0);  // out of range

    // The animator over the set.
    {
        CSceneNodeAnimatorSet animator(set);
        CHECK(animator.animationSet.get() == set.get());
        CHECK(animator.getTargetCount() == 1);
        CHECK(animator.targets.size() == 1 && animator.applicators.size() == 1 && animator.keyIndices.size() == 1);
        CHECK(animator.getCurrentAnimation() == 0);
        CHECK(animator.getLength() == 1000);
        CHECK(animator.getAnimationCount() == 2);
        CHECK(std::strcmp(animator.getBindURI(0), "pos") == 0);
        CHECK(animator.getAnimationTrack(0) == &pos.channel);
        CHECK(animator.getAnimationTrackEx(0) == CColladaDatabase::getAnimationTrackEx(&pos.animation));
        CHECK(animator.getTargetSize(0) == 12 && animator.getTargetsSize() == 12);
        CHECK(animator.getTimelineCtrl() != nullptr && animator.getTimelineCtrl()->rangeEndMs == 1100);

        animator.setCurrentAnimation(1);
        CHECK(animator.getCurrentAnimation() == 1);
        CHECK(animator.trackOffset == 1);  // animatedTrackCount * index
        CHECK(animator.getAnimationLength(1) == 1000);

        animation_track::CMaterialApplicatorInfo info;
        info.parameterId = 3;
        float target[3] = {};
        animator.setTarget(0, target, &info);
        CHECK(animator.targets[0] == target);
        CHECK(animator.applicators[0] != nullptr && animator.applicators[0]->parameterId == 3);
        animator.animateNode(nullptr, 10);  // no animation data: the default value path only (none here)
    }

    // The dynamic set.
    {
        boost::intrusive_ptr<CDynamicAnimationSet> dynamic(new CDynamicAnimationSet());
        CHECK(dynamic->dirty);
        CHECK(dynamic->addAnimation(&pos.animation) == 0);
        CHECK(dynamic->addAnimation(&pos.animation) == 0);
        CHECK(dynamic->addAnimation(&rot.animation) == 1);
        CHECK(dynamic->getChannel(1)->name == rot.channel.name);
        dynamic->dirty = false;
        dynamic->addAnimationLibrary(f.db);
        CHECK(dynamic->dirty);
        CHECK(dynamic->getDatabaseIndex(f.db) == 0);
        dynamic->clearTracks();
        CHECK(dynamic->ownedChannels.empty() && dynamic->tracks.empty() && dynamic->animatedTrackCount == 0);
        dynamic->clearSet();
        CHECK(dynamic->databases.empty());
    }
    set = nullptr;
    CHECK(f.file.refCount == 1);  // every handle was dropped
}

void testBlender() {
    Fixture f;
    SLibraryAnimationClips noClips;
    AnimationFixture pos("pos", 1);
    auto* a = new CSceneNodeAnimator(f.db, noClips);
    auto* b = new CSceneNodeAnimator(f.db, noClips);
    a->addAnimationTrack(&pos.animation);
    b->addAnimationTrack(&pos.animation);

    CSceneNodeAnimatorBlender blender;
    blender.animators = {a, b};  // the blender owns the construction use of each child
    CHECK(blender.getTargetCount() == 1);
    CHECK(blender.getTargetsSize() == 12);
    CHECK(blender.getTargetSize(0) == 12);
    CHECK(std::strcmp(blender.getBindURI(0), "pos") == 0);
    CHECK(blender.getAnimationTrack(0) == &pos.channel);
    CHECK(blender.getAnimationTrackEx(0) == &pos.track);
    CHECK(blender.getLength() == 1000);

    blender.weights = {1.0f, 3.0f};
    blender.normalizeWeights();
    CHECK(blender.weights[0] == 0.25f && blender.weights[1] == 0.75f);
    blender.weights = {0.0f, 0.0f};
    blender.normalizeWeights();
    CHECK(blender.weights[0] == 1.0f && blender.weights[1] == 0.0f);

    blender.needsCompile = true;
    blender.compile(nullptr);
    CHECK(!blender.needsCompile);
    CHECK(blender.valueBuffer.size() == 2 * 12);        // children * targets size
    CHECK(blender.outputs.size() == 1 && blender.outputs[0] == blender.valueBuffer.data());
    CHECK(a->targets[0].target == blender.outputs[0]);  // the first child writes into the start of the block
    CHECK(blender.targets.size() == 1 && blender.applicators.size() == 1);
    CHECK(b->targets[0].target == blender.valueBuffer.data() + 12);  // the other child gets the matching channel's slot

    animation_track::CMaterialApplicatorInfo info;
    float target[3] = {};
    blender.setTarget(0, target, &info);
    CHECK(blender.targets[0] == target && blender.applicators[0] != nullptr);
    delete blender.applicators[0];  // the blender destructor does not release the applicators
    blender.applicators[0] = nullptr;
}

void testSynchronizedSetAndBlender() {
    Fixture f;
    AnimationFixture pos("pos", 1);
    f.tables.animations = {&pos.animation};
    // Events: "land" at 200 ms and "jump" at 700 ms (int32 millisecond keys).
    int keys[2] = {200, 700};
    const char* landNames[1] = {"land"};
    const char* jumpNames[1] = {"jump"};
    SEventEntry entries[2] = {{1, landNames}, {1, jumpNames}};
    SEventKeyTable events{};
    events.keyKind = 4;
    events.keyCount = 2;
    events.keys = keys;
    events.entryCount = 2;
    events.entries = entries;
    f.tables.eventKeyTable = &events;

    boost::intrusive_ptr<CAnimationSet> set(new CAnimationSet());
    set->addAnimationLibrary(f.db);
    set->compile();

    // Two segments, named in the order jump, land: jump at 700, land at 200, over an animation of 1000 ms.
    auto* syncA = new CSceneNodeAnimatorSynchronizedSet(set, {"jump", "land"});
    CHECK(syncA->getNumSegments() == 2);
    CHECK(syncA->segmentCount == 2);
    CHECK(syncA->getSynchronizationTimestamp(0u) == 700);
    CHECK(syncA->getSynchronizationTimestamp(1u) == 200);
    CHECK(syncA->getSynchronizationLength(0u) == 500);  // 700 -> 200 wrapping the 1000 ms animation
    CHECK(syncA->getSynchronizationLength(1u) == 500);  // 200 -> 700
    CHECK(syncA->getSynchronizationLength(3, 1u) == 500);  // the animation argument is ignored
    CHECK(syncA->getSynchronizationSegment(300) == 1);  // the last segment whose timestamp is not after 300
    CHECK(syncA->getSynchronizationSegment(100) == 1);  // none: the last segment
    CHECK(syncA->getSynchronizationSegment(900) == 1);  // every segment is not after 900: the loop keeps the last
    CHECK(syncA->owner == syncA);

    // Stepping: 0.6 of the animation, then past the end.
    syncA->computeSynchronizedAnimationValues(0.6f);
    CHECK(syncA->getSynchronizationElapsedTime() == 600 && !syncA->hasReachedEnd());
    CHECK(syncA->getSynchronizationPercentage() == 0.6f);
    syncA->computeSynchronizedAnimationValues(0.5f);  // 600 -> 500 wraps: the step 500 - 600 + 600 mod 1000 = 500 < 1000
    CHECK(!syncA->hasReachedEnd());

    auto* syncB = new CSceneNodeAnimatorSynchronizedSet(set, {"jump", "land"});

    // The synchronized blender over the two sets.
    CSceneNodeAnimatorSynchronizedBlender blender;
    CHECK(blender.owner == &blender);
    blender.children = {static_cast<IColladaSceneNodeSynchronizedAnimatorInterface*>(syncA),
                        static_cast<IColladaSceneNodeSynchronizedAnimatorInterface*>(syncB)};
    blender.weights = {0.5f, 0.5f};
    CHECK(blender.getLength() == 1000);
    CHECK(blender.getNumSegments() == 2);
    CHECK(blender.getSynchronizationLength(0u) == 500);
    CHECK(blender.getSynchronizationTimestamp(0u) == 700);
    CHECK(blender.getSynchronizationTimestamp(1, 1u) == 200);
    CHECK(blender.getSynchronizationSegment(1, 300) == 1);
    CHECK(blender.getTargetCount() == 1);
    CHECK(std::strcmp(blender.getBindURI(0), "pos") == 0);
    blender.inputTimes.assign(2, 7);  // compile sizes the per-child input times; set them here
    blender.fillInputTimeEnd();
    CHECK(blender.inputTimes.size() == 2 && blender.inputTimes[0] == 1000);
    blender.fillInputTimeStart();
    CHECK(blender.inputTimes[0] == 0 && blender.inputTimes[1] == 0);

    blender.weights = {1.0f, 3.0f};
    blender.normalizeWeights();
    CHECK(blender.weights[0] == 0.25f && blender.weightsNormalized);
    blender.weights = {2.0f, 2.0f};
    blender.normalizeWeights();  // already normalised: no change
    CHECK(blender.weights[0] == 2.0f);

    blender.compile(nullptr);
    CHECK(!blender.needsCompile);
    CHECK(blender.syncTimeline != nullptr && blender.getTimelineCtrl() == blender.syncTimeline);
    CHECK(blender.inputTimes.size() == 2 && blender.synchronizationData.size() == 2);
    CHECK(syncB->targets[0] == blender.valueBuffer.data() + 12);
    // The blender's destructor drops both children (one use each) and its use of the timeline.
}

}  // namespace

int main() {
    testAnimator();
    testAnimationSetAndSetAnimator();
    testBlender();
    testSynchronizedSetAndBlender();
    std::printf("%s\n", failures ? "collada_animators: FAILED" : "collada_animators: ok");
    return failures != 0;
}
