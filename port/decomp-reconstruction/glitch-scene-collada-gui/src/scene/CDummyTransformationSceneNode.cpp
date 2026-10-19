// Bodies of glitch::scene::IDummyTransformationSceneNode and CDummyTransformationSceneNode (canonical classes:
// scene/CDummyTransformationSceneNode.hpp). This file replaces the stand-in bodies in src/scene_simple_accessors.cpp and the free
// functions of src/recon/slice_25.cpp.
#include "glitch-scene-collada-gui/scene/CDummyTransformationSceneNode.hpp"

namespace glitch::scene {

// 0x6bb6f0 _ZN6glitch5scene29IDummyTransformationSceneNodeC2Ei
IDummyTransformationSceneNode::IDummyTransformationSceneNode(int nodeId)
    : ISceneNode(nodeId, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {}

// 0x6bb568 _ZN6glitch5scene29IDummyTransformationSceneNodeD1Ev (D0 0x6bb8cc: skipped)
IDummyTransformationSceneNode::~IDummyTransformationSceneNode() = default;

// 0x6bb940 _ZN6glitch5scene29CDummyTransformationSceneNodeC2Ei (base object)
// 0x6bb77c _ZN6glitch5scene29CDummyTransformationSceneNodeC1Ei (complete object)
CDummyTransformationSceneNode::CDummyTransformationSceneNode(int nodeId) : IDummyTransformationSceneNode(nodeId) {
    setAutomaticCulling(0);
}

// 0x6bb5d4 _ZN6glitch5scene29CDummyTransformationSceneNodeD1Ev (D0 0x6bb9e0: skipped)
CDummyTransformationSceneNode::~CDummyTransformationSceneNode() = default;

// 0x6bb528 _ZN6glitch5scene29CDummyTransformationSceneNode6renderEPv
void CDummyTransformationSceneNode::render(void* /*renderContext*/) {}

// 0x6bb52c _ZNK6glitch5scene29CDummyTransformationSceneNode7getTypeEv
E_SCENE_NODE_TYPE CDummyTransformationSceneNode::getType() const {
    return ESNT_DUMMY_TRANSFORMATION;
}

// 0x6bb538 _ZNK6glitch5scene29CDummyTransformationSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CDummyTransformationSceneNode::getBoundingBox() const {
    return boundingBox;
}

// 0x6bb540 _ZN6glitch5scene29CDummyTransformationSceneNode31getRelativeTransformationMatrixEv
core::CMatrix4<float>& CDummyTransformationSceneNode::getRelativeTransformationMatrix() {
    return matrix;
}

// 0x6bb65c _ZN6glitch5scene29CDummyTransformationSceneNode31setRelativeTransformationMatrixERKNS_4core8CMatrix4IfEE
void CDummyTransformationSceneNode::setRelativeTransformationMatrix(const core::CMatrix4<float>& source) {
    matrix = source;
    setPosition(core::vector3d<float>{source.M[12], source.M[13], source.M[14]});
    core::quaternion rotationOfMatrix;
    rotationOfMatrix = source;
    setRotation(rotationOfMatrix);
    setScale(source.getScale());
}

// 0x6bb858 _ZN6glitch5scene29CDummyTransformationSceneNode5cloneEv
ISceneNode* CDummyTransformationSceneNode::clone() {
    auto* copy = new CDummyTransformationSceneNode(id);
    copy->cloneMembers(this);
    copy->matrix = matrix;
    copy->boundingBox = boundingBox;
    return copy;
}

}  // namespace glitch::scene
