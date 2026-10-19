// glitch::collada::CSceneNodeAnimatorBlender: the animator that blends the output of several child animators over the targets of
// the first one. The game's AnimatorBlender derives from it. Canonical header of the engine unification wave (u1-scene). It
// replaces tb/scene_node_animator_blender.hpp (a class with the six vectors but only part of the virtual slots).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x366f7c (C2) / the C1 form of the same body; destructor 0x65e958
// (D1), 0x65ea78 (D2); tools/decomp_vtable.py glitch::collada::CSceneNodeAnimatorBlender, 200 bytes, virtual base IReferenceCounted
// at +0x70):
//   Derives from collada::ISceneNodeAnimator (0x24 bytes before its virtual base). Overridden slots: +0x08 / +0x0c destructors,
//   +0x10 animateNode (0x65e5c8: a tail call to applyAnimationValues), +0x48 getLength (0x65e32c: the first child's), +0x4c
//   computeAnimationValues (0x65e48c), +0x50 applyAnimationValues (0x65e350), +0x54 getAnimationTrack (0x65e204), +0x58
//   getAnimationTrackEx (0x65e224), +0x68 setTarget (0x65e244), +0x6c getBindURI (0x65e2ac), +0x70 getTargetCount (0x65e2cc), +0x74
//   getTargetSize (0x65e2ec), +0x78 getTargetsSize (0x65e30c), +0x7c getAnimationValue (0x65e34c, empty); it adds +0x88 compile
//   (0x65ed98). The accessors forward to the first child (its slots +0x48, +0x54, +0x58, +0x6c, +0x70, +0x74, +0x78).
//   Members (the std::vectors are 12 bytes each): +0x24 a byte cleared by compile (the blender needs a compile while it is set),
//   +0x28 vector<ISceneNodeAnimator*> children (a use each, dropped by the destructor; the applicators are not released by it), +0x34 vector<float> weights,
//   +0x40 vector<uint8> the default value buffer, +0x4c vector<void*> outputs (one block per target, a slot per child), +0x58
//   vector<void*> targets, +0x64 vector<CApplicatorInfo*> applicators (owned clones), +0x70 the virtual base.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector (STLPORT-DECISION.md section 6)

#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"

namespace glitch::collada {

class CSceneNodeAnimatorBlender : public ISceneNodeAnimator {
public:
    // 0x366f7c (C2) and C1: the base, then the members are zero.
    CSceneNodeAnimatorBlender();
    // vptr+0x08 / +0x0c: 0x65e958 (D1), 0x65ea78 (D2); D0 0x65ea5c is skipped. Drops the children.
    ~CSceneNodeAnimatorBlender() override;

    void animateNode(scene::ISceneNode* node, std::uint32_t timeMs) override;           // +0x10, 0x65e5c8
    std::uint32_t getLength() const override;                                           // +0x48, 0x65e32c
    void computeAnimationValues(std::uint32_t timeMs) override;                         // +0x4c, 0x65e48c
    void applyAnimationValues(std::uint32_t timeMs) override;                           // +0x50, 0x65e350
    const SChannel* getAnimationTrack(std::int32_t index) override;                     // +0x54, 0x65e204
    IAnimationTrackEx* getAnimationTrackEx(std::int32_t index) override;                // +0x58, 0x65e224
    void setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) override;  // +0x68, 0x65e244
    using ISceneNodeAnimator::setTarget;
    const char* getBindURI(std::int32_t index) override;                                // +0x6c, 0x65e2ac
    std::int32_t getTargetCount() override;                                             // +0x70, 0x65e2cc
    std::int32_t getTargetSize(std::int32_t index) override;                            // +0x74, 0x65e2ec
    std::int32_t getTargetsSize() override;                                             // +0x78, 0x65e30c
    void getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) override;  // +0x7c, 0x65e34c (empty)

    // vptr+0x88, 0x65ed98: sizes the output blocks (one slot per child and target, in `buffer` or the default value buffer when it is
    // null), binds the first child to the outputs and the other children to the matching channels, and forces the bind.
    virtual void compile(core::svector<std::uint8_t>* buffer);

    // 0x366594: divides the weights by their sum (a zero sum with at least one weight sets weights[0] to 1.0).
    void normalizeWeights();

    bool needsCompile = false;                                  // +0x24 (cleared by compile; never written by the constructor)
    core::svector<ISceneNodeAnimator*> animators;                 // +0x28 the children (a use each, dropped by the destructor); index 0 is the primary child for track lookups
    core::svector<float> weights;                                 // +0x34 one blend weight per child
    core::svector<std::uint8_t> valueBuffer;                      // +0x40 default output buffer for compile
    core::svector<void*> outputs;                                 // +0x4c one block of child values per target
    core::svector<void*> targets;                                 // +0x58 one target per target of the first child
    core::svector<animation_track::CApplicatorInfo*> applicators; // +0x64 owned clones
};

}  // namespace glitch::collada
