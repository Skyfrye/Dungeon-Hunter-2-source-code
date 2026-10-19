// glitch::collada::CSceneNodeAnimator: the animator that drives a list of animation targets (one scene-node property per
// animation track) over the clips of a COLLADA file. The game's Animator derives from it. Canonical header of the engine
// unification wave (u1-scene). It replaces the CSceneNodeAnimator in scene_node_animator.hpp (a vector of 24-byte target records
// with the track words and no base).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x65dbd8 (C1) / 0x65dda0 (C2); tools/decomp_vtable.py
// glitch::collada::CSceneNodeAnimator, 208 bytes, virtual base IReferenceCounted at +0x58):
//   CSceneNodeAnimator derives from collada::ISceneNodeAnimator (collada/ISceneNodeAnimator.hpp, 0x24 bytes before the virtual
//   base) and implements the pure slots: +0x10 animateNode (0x65d528: calls vptr+0x50 computeAnimationValues? no: vptr+0x50 is
//   applyAnimationValues, the call is `applyAnimationValues(time)`), +0x14 updateTime (0x65d6b4), +0x18 createClone (0x65d544:
//   returns null), +0x00 / +0x04 serialize / deserialize (0x65df4c, 0x65d540), +0x4c computeAnimationValues (0x65d80c), +0x50
//   applyAnimationValues (0x65d91c), +0x54 getAnimationTrack (0x65d3f8), +0x58 getAnimationTrackEx (0x65d3e8), +0x68 setTarget
//   (0x65d408), +0x6c getBindURI (0x65d480), +0x70 getTargetCount (0x65d494), +0x74 getTargetSize (0x65d4a8), +0x78
//   getTargetsSize (0x65d4c8), +0x7c getAnimationValue (0x65da38), and adds +0x88 addAnimationTrack (0x65e0d8), +0x8c
//   removeAnimationTrack (0x65d54c), +0x90 removeAnimationTracks (0x65d628).
//   Members (the ISceneNodeAnimator part ends at +0x24):
//     +0x24 a string pointer (the constructor stores an empty-string constant), +0x28 CColladaDatabase (record, factory; the record
//     gets a use when its count is not zero), +0x30 a float (1.0f), +0x34 a byte (the database flag at holder +0x14),
//     +0x38 / +0x3c the start and end times of the whole animation (holder +0x1c / +0x20; length = end - start),
//     +0x40 the SLibraryAnimationClips the timeline controller reads, +0x44 the target vector (begin, end, cap: 16-byte records),
//     +0x50 a word (not written by the constructor), +0x54 the current animation block (CAnimationStreamingManager), +0x58 the
//     virtual base.
//   A target record (16 bytes): +0x00 the SAnimation, +0x04 the target (the object the value is written to), +0x08 the applicator
//   (cloned by setTarget through CApplicatorInfo::clone, released through its destructor), +0x0c a word.
//   The constructor creates a CTimelineController (operator new(0x48)) over the clip library: with clips it selects clip 0 (an empty
//   table gives the range 0 .. 1), without clips it sets the range of the whole animation.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"

namespace glitch::collada {

class CSceneNodeAnimator : public ISceneNodeAnimator {
public:
    // One animated target (16 bytes in the original).
    struct STarget {
        const SAnimation* animation = nullptr;                         // +0x00
        void* target = nullptr;                                        // +0x04
        animation_track::CApplicatorInfo* applicator = nullptr;        // +0x08 owned (cloned by setTarget)
        std::int32_t keyIndex = 0;                                     // +0x0c the key-search hint (the accessor's keyIndex argument)
    };

    // 0x65dbd8 (C1) and 0x65dda0 (C2). PARTIAL: see the source.
    CSceneNodeAnimator(const CColladaDatabase& database, SLibraryAnimationClips& clips);
    // vptr+0x08 / +0x0c: 0x65dab0 (D1), 0x65db58 (D2), 0x65db3c (D0, skipped). Reconstructed: removeAnimationTracks, the
    // animation block at +0x54 when set, the target vector's allocation, the database and the base, in that order. The
    // members here do the same.
    ~CSceneNodeAnimator() override;

    // 0x65df4c: writes BlendOutWeight (+0x30), Start (+0x38), End (+0x3c) and Length (+0x14) in seconds, the interpolation
    // type as an enum over getStringsInternal, the bound node's uid and the record's file name. Reconstructed.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;  // 0x65df4c
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;      // 0x65d540
    void animateNode(scene::ISceneNode* node, std::uint32_t timeMs) override;            // +0x10, 0x65d528
    void updateTime(std::uint32_t timeMs) override;                                      // +0x14, 0x65d6b4
    scene::ISceneNodeAnimator* createClone() override;                                   // +0x18, 0x65d544 (null)
    void computeAnimationValues(std::uint32_t timeMs) override;                          // +0x4c, 0x65d80c
    void applyAnimationValues(std::uint32_t timeMs) override;                            // +0x50, 0x65d91c
    const SChannel* getAnimationTrack(std::int32_t index) override;                      // +0x54, 0x65d3f8
    IAnimationTrackEx* getAnimationTrackEx(std::int32_t index) override;                 // +0x58, 0x65d3e8
    void setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) override;  // +0x68, 0x65d408
    using ISceneNodeAnimator::setTarget;
    const char* getBindURI(std::int32_t index) override;                                 // +0x6c, 0x65d480
    std::int32_t getTargetCount() override;                                              // +0x70, 0x65d494
    std::int32_t getTargetSize(std::int32_t index) override;                             // +0x74, 0x65d4a8
    std::int32_t getTargetsSize() override;                                              // +0x78, 0x65d4c8
    void getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) override;  // +0x7c, 0x65da38

    // vptr+0x88 .. +0x90.
    virtual void addAnimationTrack(SAnimation* animation);                               // 0x65e0d8
    virtual void removeAnimationTrack(SAnimation* animation);                            // 0x65d54c
    virtual void removeAnimationTracks();                                                // 0x65d628

    // 0x65d768: the output array of the animation block for the time `time` (found through the streaming manager). PARTIAL.
    const SAnimationOutput* getAnimationData(std::int32_t time);

    const char* uid = "";                         // +0x24 (the constructor stores an empty-string constant)
    CColladaDatabase database;                    // +0x28
    float unk_30 = 1.0f;                          // +0x30 (the constructor writes 1.0f)
    bool animationFlag = false;                   // +0x34 (the database's flag at holder +0x14)
    std::int32_t startTime = 0;                   // +0x38 (holder +0x1c)
    std::int32_t endTime = 0;                     // +0x3c (holder +0x20)
    SLibraryAnimationClips* clips = nullptr;      // +0x40
    std::vector<STarget> targets;                 // +0x44
    std::uint32_t unk_50 = 0;                     // +0x50 not written by the constructor
    CAnimationBlock* animationBlock = nullptr;    // +0x54 (released through collada::intrusive_ptr_release)
};

}  // namespace glitch::collada
