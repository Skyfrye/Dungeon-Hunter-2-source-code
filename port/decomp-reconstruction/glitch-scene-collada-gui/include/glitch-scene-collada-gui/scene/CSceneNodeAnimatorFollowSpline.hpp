// glitch::scene::CSceneNodeAnimatorFollowSpline: moves its node along a closed cubic Hermite spline through a list of
// points. Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the
// recon_33 serialization free functions and the recon slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cccc0 C1 / 0x6ccdd8 C2, createClone 0x6ccd98 allocates 0x2c bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c points: core::svector<vector3d<float>> (begin, end and capacity words at +0x0c, +0x10, +0x14; 12-byte elements)
//   +0x18 speed (points per second)    +0x1c tightness    +0x20 startTime
//   +0x24 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x28 (the constructor stores 1)
// The vtable overrides serialize (+0x00), deserialize (+0x04), animateNode (+0x10), createClone (+0x18) and getType (+0x24, 2).
// Attribute names of the points are one-character strings holding the character codes 1, 2, 3, ... (push_back of the
// counter), not decimal digits.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class CSceneNodeAnimatorFollowSpline : public ISceneNodeAnimator {
public:
    // 0x6cccc0 (C1) and 0x6ccdd8 (C2): copies the points, stores the speed, tightness and start time.
    CSceneNodeAnimatorFollowSpline(std::uint32_t startTime, const core::svector<core::vector3d<float>>& points, float speed,
                                   float tightness);
    // 0x6cc784 (D1), 0x6cc804 (D0): frees the point list, then the base destructor (D2 shares the D1 body).
    ~CSceneNodeAnimatorFollowSpline() override;

    // vptr+0x00, 0x6ccef8: Speed, Tightness, then one vector3d per point (one extra zero point when the options carry
    // flag 2).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6cd0cc: reads Speed and Tightness, replaces the points by the numbered attributes found, and with
    // flag 2 in the options drops up to two trailing zero points (while more than two remain).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x10, 0x6cc830: nothing without points; the single point when there is one; else the Hermite curve through the
    // four neighbouring points (indices wrap) at the fractional part of (timeMs - startTime) * speed * 0.001.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6ccd98: a new animator built from the same arguments.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cc754: 2 (ESNAT_FOLLOW_SPLINE).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    core::svector<core::vector3d<float>> points;  // +0x0c
    float speed = 0.0f;                         // +0x18
    float tightness = 0.0f;                     // +0x1c
    std::uint32_t startTime = 0;                // +0x20
};

}  // namespace glitch::scene
