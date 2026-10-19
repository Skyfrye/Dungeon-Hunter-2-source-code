// glitch::scene::CSceneNodeAnimatorFlyCircle: moves its node on a circle around a centre. Canonical header of the scene
// owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the recon_33 serialization free functions and
// the recon slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cbd78 C1 / 0x6cbee0 C2, createClone 0x6cbe98 allocates 0x50 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c center    +0x18 direction (the circle's axis; init normalizes it)
//   +0x24 vecU      +0x30 vecV (the two in-plane axes init derives from the direction)
//   +0x3c radius    +0x40 speed (radians per millisecond)    +0x44 startTime
//   +0x48 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x4c (the constructor stores 1)
// The vtable overrides serialize (+0x00), deserialize (+0x04), animateNode (+0x10), createClone (+0x18) and getType (+0x24, 0).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class CSceneNodeAnimatorFlyCircle : public ISceneNodeAnimator {
public:
    // 0x6cbd78 (C1) and 0x6cbee0 (C2): copies centre and direction, stores radius, speed and start time, then init().
    CSceneNodeAnimatorFlyCircle(std::uint32_t startTime, const core::vector3d<float>& center, float radius, float speed,
                                const core::vector3d<float>& direction);
    // 0x6cb800 (D1), 0x6cc004 (D0): only the base destructor runs (D2 shares the D1 body).
    ~CSceneNodeAnimatorFlyCircle() override;

    // vptr+0x00, 0x6cb738: Center, Radius, Speed and Direction.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6cba9c: reads them back, resets the start time to 0, replaces a zero direction by (0, 1, 0), else
    // normalizes it, and calls init().
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x10, 0x6cbc50: sets the node's position to center + radius * (cos(t) * vecU + sin(t) * vecV) with
    // t = (timeMs - startTime) * speed.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cbe98: a new animator built from the same arguments.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cb730: 0 (ESNAT_FLY_CIRCLE).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    // 0x6cb864: normalizes the direction, then derives vecV (the direction crossed with (0, 50, 0) when its y is 0, else with
    // (50, 0, 0)) and vecU (the direction crossed with vecV), both normalized.
    void init();

    core::vector3d<float> center;     // +0x0c
    core::vector3d<float> direction;  // +0x18
    core::vector3d<float> vecU;       // +0x24
    core::vector3d<float> vecV;       // +0x30
    float radius = 0.0f;              // +0x3c
    float speed = 0.0f;               // +0x40
    std::uint32_t startTime = 0;      // +0x44
};

}  // namespace glitch::scene
