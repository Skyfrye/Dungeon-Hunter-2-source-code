// Bodies of glitch::scene::CSceneNodeAnimatorRotation (canonical class: scene/CSceneNodeAnimatorRotation.hpp). This file
// replaces the stand-in members of src/scene_simple_accessors.cpp, the recon_33 serialization functions and the comment
// block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorRotation.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// 0x6cd804 _ZN6glitch5scene26CSceneNodeAnimatorRotationC1EjRKNS_4core10quaternionE
// 0x6cd8f8 _ZN6glitch5scene26CSceneNodeAnimatorRotationC2EjRKNS_4core10quaternionE
CSceneNodeAnimatorRotation::CSceneNodeAnimatorRotation(std::uint32_t time, const core::quaternion& rotationIn)
    : rotation(rotationIn), lastTime(time) {}

// 0x6cd740 _ZN6glitch5scene26CSceneNodeAnimatorRotationD1Ev
// 0x6cd7b8 _ZN6glitch5scene26CSceneNodeAnimatorRotationD2Ev
// 0x6cd79c _ZN6glitch5scene26CSceneNodeAnimatorRotationD0Ev
CSceneNodeAnimatorRotation::~CSceneNodeAnimatorRotation() = default;

// 0x6cd678 _ZNK6glitch5scene26CSceneNodeAnimatorRotation19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorRotation::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addQuaternion("Rotation", rotation, false);  // vptr+0x220
}

// 0x6cd6c8 _ZN6glitch5scene26CSceneNodeAnimatorRotation21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorRotation::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    rotation = attributes->getQuaternion("Rotation");  // vptr+0x22c
}

// 0x6cd594 _ZN6glitch5scene26CSceneNodeAnimatorRotation11animateNodeEPNS0_10ISceneNodeEj
void CSceneNodeAnimatorRotation::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    if (node == nullptr) {
        return;
    }
    const std::uint32_t elapsed = timeMs - lastTime;
    if (elapsed == 0) {
        return;
    }
    core::quaternion current = node->getRotation();  // vptr+0x98
    const float scale = static_cast<float>(elapsed) / 10.0f;
    current.X = scale * rotation.X + current.X;
    current.Y = scale * rotation.Y + current.Y;
    current.Z = scale * rotation.Z + current.Z;
    current.W = scale * rotation.W + current.W;
    node->setRotation(current);  // vptr+0x9c
    lastTime = timeMs;
}

// 0x6cd8cc _ZN6glitch5scene26CSceneNodeAnimatorRotation11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorRotation::createClone() {
    return new CSceneNodeAnimatorRotation(lastTime, rotation);  // operator new(0x28)
}

// 0x6cd58c _ZNK6glitch5scene26CSceneNodeAnimatorRotation7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorRotation::getType() const {
    return ESNAT_ROTATION;
}

}  // namespace glitch::scene
