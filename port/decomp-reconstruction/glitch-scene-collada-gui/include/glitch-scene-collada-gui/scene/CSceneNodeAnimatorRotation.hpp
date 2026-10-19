// glitch::scene::CSceneNodeAnimatorRotation: rotates its node by a quaternion increment per tenth of a millisecond.
// Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the
// recon_33 serialization free functions and the recon slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cd804 C1 / 0x6cd8f8 C2, createClone 0x6cd8cc allocates 0x28 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c rotation: the quaternion increment (x, y, z, w at +0x0c .. +0x18)
//   +0x1c the time of the last animateNode that changed the node (the constructor's first argument)
//   +0x20 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x24 (the constructor stores 1)
// The vtable overrides serialize (+0x00), deserialize (+0x04), animateNode (+0x10), createClone (+0x18) and getType (+0x24, 3).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class CSceneNodeAnimatorRotation : public ISceneNodeAnimator {
public:
    // 0x6cd804 (C1) and 0x6cd8f8 (C2): copies the quaternion to +0x0c and stores `time` at +0x1c.
    CSceneNodeAnimatorRotation(std::uint32_t time, const core::quaternion& rotation);
    // 0x6cd740 (D1), 0x6cd7b8 (D2), 0x6cd79c (D0): only the base destructor runs.
    ~CSceneNodeAnimatorRotation() override;

    // vptr+0x00, 0x6cd678: addQuaternion("Rotation", rotation, false).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6cd6c8: rotation = getQuaternion("Rotation").
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x10, 0x6cd594: with a node, when the time moved since the last change: the node's rotation plus
    // rotation * (elapsed / 10), componentwise, is set on the node and the time is remembered.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cd8cc: a new animator with the same time and rotation.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cd58c: 3 (ESNAT_ROTATION).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    core::quaternion rotation;       // +0x0c
    std::uint32_t lastTime = 0;      // +0x1c
};

}  // namespace glitch::scene
