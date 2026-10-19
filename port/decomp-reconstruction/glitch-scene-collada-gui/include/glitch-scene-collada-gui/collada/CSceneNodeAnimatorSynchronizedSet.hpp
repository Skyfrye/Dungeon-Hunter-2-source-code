// glitch::collada::CSceneNodeAnimatorSynchronizedSet: a CSceneNodeAnimatorSet whose animation is cut into named segments (event
// times of the clip) so that several animators can be played in step. The game's AnimatorSynchronizedSet derives from it. Canonical
// header of the engine unification wave (u1-scene). It replaces the CSceneNodeAnimatorSynchronizedSet in collada_misc.hpp (the
// members without the two base classes), the recon_22 stand-in (members and constructors not mapped), the address-named templates
// of track_defaults.hpp and generated_stubs.hpp (getSynchronization* overloads, fillInput*) and recon/slice_00.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x662d10 (C1) / 0x662df0 (C2); tools/decomp_vtable.py
// glitch::collada::CSceneNodeAnimatorSynchronizedSet, 340 bytes, virtual base IReferenceCounted at +0x84):
//   Derives from CSceneNodeAnimatorSet (0x58 bytes before its virtual base) and from IColladaSceneNodeSynchronizedAnimatorInterface
//   (collada/ISceneNodeAnimator.hpp: the secondary table at vtable +0xe4, offset-to-top 0x58). Overridden slots: the destructors
//   (D1 0x662b60, D2 0x662c10; D0 0x662bf4 skipped), +0x88 setCurrentAnimation (0x663324); the interface slots are
//   getNumSegments (0x368db4) .. getSynchronizationPercentage (0x368ed4); fillInput* (0x662750, 0x66275c, 0x662768) are empty.
//   Members: +0x58 the interface (vptr, then the owner pointer at +0x5c), +0x60 vector<SSyncSegment> segments (32-byte elements),
//   +0x6c the segment count (the number of names), +0x70 vector<std::string> names of the events, +0x7c the elapsed time (float),
//   +0x80 the reached-end byte, +0x84 the virtual base.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector (STLPORT-DECISION.md section 6)

#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"

namespace glitch::collada {

class CSceneNodeAnimatorSynchronizedSet : public CSceneNodeAnimatorSet, public IColladaSceneNodeSynchronizedAnimatorInterface {
public:
    // 0x662d10 (C1) and 0x662df0 (C2): the set base, the member defaults, the names, then init (which selects animation 0 through the
    // overridden setCurrentAnimation).
    CSceneNodeAnimatorSynchronizedSet(const boost::intrusive_ptr<CAnimationSet>& set, const core::svector<std::string>& names);
    // vptr+0x08 / +0x0c: 0x662b60 (D1), 0x662c10 (D2); D0 0x662bf4 is skipped.
    ~CSceneNodeAnimatorSynchronizedSet() override;

    // vptr+0x88, 0x663324: the base selection, then one segment per name (the time of the event in the animation's events track) with
    // the length up to the next segment.
    void setCurrentAnimation(std::int32_t index) override;

    // The interface (the thunks of the secondary table forward to these).
    std::uint32_t getNumSegments() const override;                                              // 0x368db4
    std::uint32_t getSynchronizationLength(std::uint32_t segment) const override;               // 0x368dc4
    std::uint32_t getSynchronizationLength(std::int32_t animation, std::uint32_t segment) const override;  // 0x368ddc
    std::uint32_t getSynchronizationTimestamp(std::uint32_t segment) const override;            // 0x368dfc
    std::uint32_t getSynchronizationTimestamp(std::int32_t animation, std::uint32_t segment) const override;  // 0x368e10
    std::uint32_t getSynchronizationSegment(std::int32_t time) const override;                  // 0x368e30
    std::uint32_t getSynchronizationSegment(std::int32_t animation, std::int32_t time) const override;  // 0x368e8c
    bool hasReachedEnd() const override;                                                        // 0x368eac
    void fillInputTimeStart() override;                                                         // 0x662750 (empty)
    void fillInputTimeEnd() override;                                                           // 0x66275c (empty)
    void fillInputSynchronizationElapsedTime() override;                                        // 0x662768 (empty)
    void applySynchronizedAnimationValues(float elapsed) override;                              // 0x662884
    void computeSynchronizedAnimationValues(float elapsed) override;                            // 0x662794
    std::int32_t getSynchronizationElapsedTime() const override;                                // 0x368ebc
    float getSynchronizationPercentage() const override;                                        // 0x368ed4

    core::svector<SSyncSegment> segments;     // +0x60
    std::uint32_t segmentCount = 0;         // +0x6c the number of names
    core::svector<std::string> names;         // +0x70 the names of the events the segments start at
    float elapsedTime = 0.0f;               // +0x7c
    bool reachedEnd = false;                // +0x80
};

}  // namespace glitch::collada
