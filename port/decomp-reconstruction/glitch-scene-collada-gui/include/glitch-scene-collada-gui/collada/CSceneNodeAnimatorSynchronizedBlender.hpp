// glitch::collada::CSceneNodeAnimatorSynchronizedBlender: the animator that blends several synchronized animators (each a
// CSceneNodeAnimatorSynchronizedSet or another synchronized blender) in step over a common timeline. The game's
// AnimatorSynchronizedBlender derives from it. Canonical header of the engine unification wave (u1-scene). It replaces
// synchronized_blender.hpp (two helpers, no members), the recon_22 stand-in (no members), the recon/slice_00 stubs and the
// address-named templates of the scene tree for the class.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x661b74 (C1) / 0x661c78 (C2); destructor 0x66186c (D1), 0x661a08
// (D2); tools/decomp_vtable.py glitch::collada::CSceneNodeAnimatorSynchronizedBlender, 336 bytes, virtual base IReferenceCounted at
// +0xb4):
//   Derives from collada::ISceneNodeAnimator (0x24 bytes before the interface) and from
//   IColladaSceneNodeSynchronizedAnimatorInterface (the sub-object at +0x24: the vptr, then the owner pointer at +0x28, which the
//   constructor sets to `this`). It does not derive from CSceneNodeAnimatorBlender; it implements the same slots itself:
//   +0x08 / +0x0c destructors, +0x10 animateNode (0x6610d8), +0x48 getLength (0x660ef0), +0x4c computeAnimationValues (0x6612bc), +0x50
//   applyAnimationValues (0x661408), +0x54 getAnimationTrack (0x660db0), +0x58 getAnimationTrackEx (0x660dd4), +0x68 setTarget
//   (0x660df8), +0x6c getBindURI (0x660e60), +0x70 getTargetCount (0x660e84), +0x74 getTargetSize (0x660ea8), +0x78 getTargetsSize
//   (0x660ecc), +0x7c getAnimationValue (0x662290), +0x88 compile (0x6623d4), then the interface slots (0x367870 .. 0x367b44, fillInput*
//   0x661120 .. 0x661200, apply / computeSynchronizedAnimationValues 0x660f8c, 0x660fec, hasReachedEnd 0x6610f8).
//   Members (the std::vectors are 12 bytes each): +0x2c a byte cleared by compile, +0x30 vector<child interface*> (the interface's owner
//   is the child animator; the destructor drops it), +0x3c vector<float> weights, +0x48 vector<uint8> default value buffer, +0x54
//   vector<void*> outputs, +0x60 vector<void*> targets, +0x6c vector<CApplicatorInfo*> applicators, +0x78 the timeline controller the
//   blender created in compile (it holds one use of it), +0x7c vector<vector<SynchronizationData>> (one per child), +0x88
//   vector<int> and +0x94 vector<float> (sized to the children by compile), +0xa0 vector<int> per-child input times, +0xac the time of
//   the last update, +0xb0 the reached-end byte, +0xb1 the weights-dirty byte (1 from the constructor), +0xb2 the weights-normalised
//   byte, +0xb4 the virtual base.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector (STLPORT-DECISION.md section 6)

#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"

namespace glitch::collada {

class CSceneNodeAnimatorSynchronizedBlender : public ISceneNodeAnimator, public IColladaSceneNodeSynchronizedAnimatorInterface {
public:
    // The element of the per-child synchronization tables; the ordering predicate compares the first word.
    struct SynchronizationData {
        std::int32_t key = 0;  // +0x00
    };

    // 0x661b74 (C1) and 0x661c78 (C2): the bases, then the members are zero and the dirty byte is set.
    CSceneNodeAnimatorSynchronizedBlender();
    // vptr+0x08 / +0x0c: 0x66186c (D1), 0x661a08 (D2); D0 0x6619ec is skipped. Drops the children and the blender's use of the timeline.
    ~CSceneNodeAnimatorSynchronizedBlender() override;

    void animateNode(scene::ISceneNode* node, std::uint32_t timeMs) override;           // +0x10, 0x6610d8
    std::uint32_t getLength() const override;                                           // +0x48, 0x660ef0
    void computeAnimationValues(std::uint32_t timeMs) override;                         // +0x4c, 0x6612bc
    void applyAnimationValues(std::uint32_t timeMs) override;                           // +0x50, 0x661408
    const SChannel* getAnimationTrack(std::int32_t index) override;                     // +0x54, 0x660db0
    IAnimationTrackEx* getAnimationTrackEx(std::int32_t index) override;                // +0x58, 0x660dd4
    void setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) override;  // +0x68, 0x660df8
    using ISceneNodeAnimator::setTarget;
    const char* getBindURI(std::int32_t index) override;                                // +0x6c, 0x660e60
    std::int32_t getTargetCount() override;                                             // +0x70, 0x660e84
    std::int32_t getTargetSize(std::int32_t index) override;                            // +0x74, 0x660ea8
    std::int32_t getTargetsSize() override;                                             // +0x78, 0x660ecc
    void getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) override;  // +0x7c, 0x662290

    // vptr+0x88, 0x6623d4: as CSceneNodeAnimatorBlender::compile over the children's animators, then creates the blender's timeline.
    virtual void compile(core::svector<std::uint8_t>* buffer);

    // The interface.
    std::uint32_t getNumSegments() const override;                                              // 0x367870
    std::uint32_t getSynchronizationLength(std::uint32_t segment) const override;               // 0x3678c4
    std::uint32_t getSynchronizationLength(std::int32_t animation, std::uint32_t segment) const override;   // 0x367898
    std::uint32_t getSynchronizationTimestamp(std::uint32_t segment) const override;            // 0x367974
    std::uint32_t getSynchronizationTimestamp(std::int32_t animation, std::uint32_t segment) const override;  // 0x367948
    std::uint32_t getSynchronizationSegment(std::int32_t time) const override;                  // 0x367a24
    std::uint32_t getSynchronizationSegment(std::int32_t animation, std::int32_t time) const override;  // 0x3679f8
    bool hasReachedEnd() const override;                                                        // 0x6610f8
    void fillInputTimeStart() override;                                                         // 0x661120
    void fillInputTimeEnd() override;                                                           // 0x661184
    void fillInputSynchronizationElapsedTime() override;                                        // 0x661200
    void applySynchronizedAnimationValues(float elapsed) override;                              // 0x660f8c
    void computeSynchronizedAnimationValues(float elapsed) override;                            // 0x660fec
    std::int32_t getSynchronizationElapsedTime() const override;                                // 0x367b34 (returns 0)
    float getSynchronizationPercentage() const override;                                        // 0x367b44

    // 0x367a88: divides the weights by their sum once (a zero sum sets weights[0] to 1.0).
    void normalizeWeights();
    // 0x660f6c glitch::collada::ordering_func: the order of two synchronization records by their first word.
    static bool orderingFunc(const SynchronizationData& a, const SynchronizationData& b);

    bool needsCompile = false;                                  // +0x2c (cleared by compile)
    core::svector<IColladaSceneNodeSynchronizedAnimatorInterface*> children;  // +0x30 (the child animator is the interface's owner)
    core::svector<float> weights;                                 // +0x3c
    core::svector<std::uint8_t> valueBuffer;                      // +0x48
    core::svector<void*> outputs;                                 // +0x54
    core::svector<void*> targets;                                 // +0x60
    core::svector<animation_track::CApplicatorInfo*> applicators; // +0x6c owned clones
    CTimelineController* syncTimeline = nullptr;                // +0x78
    core::svector<core::svector<SynchronizationData>> synchronizationData;  // +0x7c
    core::svector<std::int32_t> unk_88;                           // +0x88 sized to the children by compile; role not mapped
    core::svector<float> unk_94;                                  // +0x94 sized to the children by compile; role not mapped
    core::svector<std::int32_t> inputTimes;                       // +0xa0 per-child input time (fillInput*)
    std::int32_t lastTime = 0;                                  // +0xac the time of the last update
    bool reachedEnd = false;                                    // +0xb0
    bool weightsDirty = true;                                   // +0xb1
    bool weightsNormalized = false;                             // +0xb2
};

}  // namespace glitch::collada
