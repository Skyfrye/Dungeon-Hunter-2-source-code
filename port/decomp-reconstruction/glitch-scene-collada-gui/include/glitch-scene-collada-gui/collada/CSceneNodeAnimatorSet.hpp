// glitch::collada::CSceneNodeAnimatorSet: the animator that plays one animation of a CAnimationSet on a scene (one animated
// target per channel of the set). The game's AnimatorSet derives from it. Canonical header of the engine unification wave
// (u1-scene). It replaces the CSceneNodeAnimatorSet in collada_scene_accessors.hpp (a set pointer at +0x24 and one index at +0x50,
// no base class) and the recon_22 stand-ins (getBindURI, getAnimationData, getAnimationVisualSceneID, the destructor) and the
// address-named template in generated_stubs.hpp (getIdentityValue).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x660c20 (C1) / 0x660ce4 (C2) over a set and 0x662c90 (C2, empty);
// tools/decomp_vtable.py glitch::collada::CSceneNodeAnimatorSet, 204 bytes, virtual base IReferenceCounted at +0x58):
//   Derives from collada::ISceneNodeAnimator (0x24 bytes before its virtual base). Overridden slots: +0x00 / +0x04 are the
//   base's, +0x08 / +0x0c the destructors (D1 0x65fa08, D2 0x65fb2c; D0 0x65fb10 skipped), +0x10 animateNode (0x65f270: a tail call
//   to applyAnimationValues), +0x4c computeAnimationValues (0x65f5dc), +0x50 applyAnimationValues (0x65f418), +0x54
//   getAnimationTrack (0x65f124), +0x58 getAnimationTrackEx (0x65f140), +0x68 setTarget (0x65f208), +0x6c getBindURI (0x65f15c),
//   +0x70 getTargetCount (0x65f17c), +0x74 getTargetSize (0x65f188), +0x78 getTargetsSize (0x65f1ac), +0x7c getAnimationValue
//   (0x65f7b4); it adds +0x88 setCurrentAnimation (0x65f8c8) and +0x8c getIdentityValue (0x65f288, empty).
//   Members: +0x24 the animation set (a counted reference), +0x28 vector<void*> targets (one per animated channel), +0x34
//   vector<CApplicatorInfo*> applicators (owned clones), +0x40 vector<int> key-search hints, +0x4c the binding offset of the
//   current animation (the set's animated-track count times its index), +0x50 the current animation, +0x54 the animation block
//   (CAnimationBlock, released through collada::intrusive_ptr_release), +0x58 the virtual base.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"

namespace glitch::collada {

class CSceneNodeAnimatorSet : public ISceneNodeAnimator {
public:
    // 0x662c90 (C2, the VTT form): no set; the members are zero.
    CSceneNodeAnimatorSet();
    // 0x660c20 (C1) and 0x660ce4 (C2): takes a use of the set, then init.
    explicit CSceneNodeAnimatorSet(const boost::intrusive_ptr<CAnimationSet>& set);
    // vptr+0x08 / +0x0c: 0x65fa08 (D1), 0x65fb2c (D2); D0 0x65fb10 is skipped. Deletes the applicators.
    ~CSceneNodeAnimatorSet() override;

    void animateNode(scene::ISceneNode* node, std::uint32_t timeMs) override;           // +0x10, 0x65f270
    void computeAnimationValues(std::uint32_t timeMs) override;                         // +0x4c, 0x65f5dc
    void applyAnimationValues(std::uint32_t timeMs) override;                           // +0x50, 0x65f418
    const SChannel* getAnimationTrack(std::int32_t index) override;                     // +0x54, 0x65f124
    IAnimationTrackEx* getAnimationTrackEx(std::int32_t index) override;                // +0x58, 0x65f140
    void setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) override;  // +0x68, 0x65f208
    using ISceneNodeAnimator::setTarget;
    const char* getBindURI(std::int32_t index) override;                                // +0x6c, 0x65f15c
    std::int32_t getTargetCount() override;                                             // +0x70, 0x65f17c
    std::int32_t getTargetSize(std::int32_t index) override;                            // +0x74, 0x65f188
    std::int32_t getTargetsSize() override;                                             // +0x78, 0x65f1ac
    void getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) override;  // +0x7c, 0x65f7b4

    // vptr+0x88, 0x65f8c8: selects animation `index` of the set (the length, the binding offset, the timeline controller's clip table
    // or range and the events track).
    virtual void setCurrentAnimation(std::int32_t index);
    // vptr+0x8c, 0x65f288: empty.
    virtual void getIdentityValue(std::int32_t index, void* out);

    // 0x660af4: takes a use of the set, sizes the target / applicator / hint vectors to the set's animated tracks, creates the
    // timeline controller and selects animation 0.
    void init(const boost::intrusive_ptr<CAnimationSet>& set);
    // 0x65f0fc, 0x65f104, 0x65f10c, 0x65f114, 0x65f11c: forwarders to the set.
    std::uint32_t getAnimationLength(std::int32_t index);
    std::uint32_t getAnimationStart(std::int32_t index);
    std::uint32_t getAnimationEnd(std::int32_t index);
    std::int32_t getCurrentAnimation() const;
    std::uint32_t getAnimationCount() const;
    // 0x65f8ac: the name of the first visual scene of the database of animation `index`.
    const char* getAnimationVisualSceneID(std::int32_t index) const;
    // 0x65f364: the output array of the animation block for the time `time`. PARTIAL: see CSceneNodeAnimator::getAnimationData.
    const SAnimationOutput* getAnimationData(std::int32_t time);

    boost::intrusive_ptr<CAnimationSet> animationSet;                 // +0x24
    std::vector<void*> targets;                                       // +0x28 one target object per animated channel
    std::vector<animation_track::CApplicatorInfo*> applicators;       // +0x34 owned clones, one per animated channel
    std::vector<std::int32_t> keyIndices;                             // +0x40 key-search hints, one per animated channel
    std::int32_t trackOffset = 0;                                     // +0x4c animatedTrackCount * currentAnimation
    std::int32_t currentAnimation = 0;                                // +0x50
    CAnimationBlock* animationBlock = nullptr;                        // +0x54
};

}  // namespace glitch::collada
