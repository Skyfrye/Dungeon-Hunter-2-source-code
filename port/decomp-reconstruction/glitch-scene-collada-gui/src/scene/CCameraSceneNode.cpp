// Bodies of glitch::scene::ICameraSceneNode and glitch::scene::CCameraSceneNode (canonical classes: scene/ICameraSceneNode.hpp,
// scene/CCameraSceneNode.hpp). This file replaces src/tb_scene-collada-gui-glitch_scene_CCameraSceneNode-0.cpp,
// src/tb_scene-collada-gui-glitch_scene_ICameraSceneNode-0.cpp, the camera accessors of src/scene_nodes.cpp, the constructor
// that sat in src/e2-glitch-scene-collada-gui-pack0-397dcd-0.cpp and the stub bodies of recon/slice_05.cpp.
//
// A virtual call at "vptr+0x158" in the pseudocode is recalculateProjectionMatrix() (the decomp_vtable.py listing prints that
// slot 0x0c higher, at +0x164).
#include <cmath>
#include <cstdint>
#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/core_matrix_builders.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// The ICameraSceneNode constructor takes the rotation as three angles; the original builds the quaternion with
// quaternion::set(x, y, z) (0x35c9d8) before the ISceneNode constructor call.
core::quaternion rotationFromAngles(const core::vector3d<float>& angles) {
    core::quaternion rotation;
    rotation.set(angles.X, angles.Y, angles.Z);
    return rotation;
}

// Reinterprets a 32-bit word as the float it encodes (the original stores the raw bits).
float floatFromBits(std::uint32_t bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// The aspect ratio the camera takes from its scene manager: the current render target of the manager's driver (the last entry of the
// driver's target stack, +0xc8), width (+0x0c) over height (+0x10); 4:3 (0x3FAAAAAB) without a manager or a driver.
float renderTargetAspectRatio(const CSceneManager* manager) {
    if (manager != nullptr && manager->driver != nullptr) {
        const video::IRenderTarget* target = manager->driver->m_renderTargets.back().get();
        return static_cast<float>(target->m_width) / static_cast<float>(target->m_height);
    }
    return floatFromBits(0x3FAAAAABu);
}

}  // namespace

// 0x582b18 _ZN6glitch5scene16ICameraSceneNodeC2EiRKNS_4core8vector3dIfEES6_S6_ (C1, the complete object, is a second listing)
ICameraSceneNode::ICameraSceneNode(int nodeId, const core::vector3d<float>& nodePosition,
                                   const core::vector3d<float>& nodeRotation, const core::vector3d<float>& nodeScale)
    : ISceneNode(nodeId, nodePosition, rotationFromAngles(nodeRotation), nodeScale), orthogonal(false) {}

// 0x35c3c4 _ZN6glitch5scene16ICameraSceneNodeD1Ev (skipped; D0 0x35dba8 likewise)
ICameraSceneNode::~ICameraSceneNode() = default;

// 0x35beb0 _ZNK6glitch5scene16ICameraSceneNode13getTargetNodeEv and 0x35beb8 (non-const)
ISceneNode* ICameraSceneNode::getTargetNode() const {
    return nullptr;
}
ISceneNode* ICameraSceneNode::getTargetNode() {
    return nullptr;
}

// 0x35bec0 _ZNK6glitch5scene16ICameraSceneNode12isOrthogonalEv
bool ICameraSceneNode::isOrthogonal() const {
    return orthogonal;
}

// 0x583878 _ZN6glitch5scene16CCameraSceneNodeC2EiRKNS_4core8vector3dIfEES6_b (base object)
// 0x583734 _ZN6glitch5scene16CCameraSceneNodeC1EiRKNS_4core8vector3dIfEES6_b (complete object)
// The ICameraSceneNode base gets (id, position, rotation (0, 0, 0), scale (1, 1, 1)). The members are then written as the
// pseudocode writes them: target (+0x138), up vector (0, 1, 0) (+0x144), fov 0x3FA0D97C (+0x154), aspect 0x3FAAAAAB (+0x158),
// near 1.0 (+0x15c), far 2048.0 (+0x160), far-to-infinity (+0x164) and input receiver true (+0x165). The frustum (+0x168) takes its
// own constructor. The body then calls recalculateProjectionMatrix() and setAutomaticCulling(0). The complete-object variant also
// stores the virtual base's vptr and count 1, which the C++ virtual base does itself.
CCameraSceneNode::CCameraSceneNode(int nodeId, const core::vector3d<float>& nodePosition,
                                   const core::vector3d<float>& targetPosition, bool farToInfinityValue)
    : ICameraSceneNode(nodeId, nodePosition, core::vector3d<float>{0.0f, 0.0f, 0.0f},
                       core::vector3d<float>{1.0f, 1.0f, 1.0f}),
      target(targetPosition),
      upVector{0.0f, 1.0f, 0.0f},
      fov(floatFromBits(0x3FA0D97Cu)),
      aspectRatio(floatFromBits(0x3FAAAAABu)),
      nearValue(1.0f),
      farValue(2048.0f),
      farToInfinity(farToInfinityValue),
      inputReceiverEnabled(true) {
    recalculateProjectionMatrix();
    setAutomaticCulling(0);
}

// 0x582254 _ZN6glitch5scene16CCameraSceneNodeD1Ev (skipped; D0 0x35c318 likewise)
CCameraSceneNode::~CCameraSceneNode() = default;

// 0x582160 _ZNK6glitch5scene16CCameraSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The ISceneNode attributes, then Target, UpVector, Fovy, Aspect, ZNear and ZFar.
void CCameraSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->addVector3d("Target", target, false);
    attributes->addVector3d("UpVector", upVector, false);
    attributes->addFloat("Fovy", fov, false);
    attributes->addFloat("Aspect", aspectRatio, false);
    attributes->addFloat("ZNear", nearValue, false);
    attributes->addFloat("ZFar", farValue, false);
}

// 0x582948 _ZN6glitch5scene16CCameraSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The ISceneNode attributes, then Target, UpVector, Fovy, ZNear and ZFar; the aspect ratio is not read: it comes from the
// current render target of the scene manager's driver (width over height; 4:3, 0x3FAAAAAB, without a driver).
// Ends with recalculateProjectionMatrix() and recalculateViewArea().
void CCameraSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    target = attributes->getVector3d("Target");
    upVector = attributes->getVector3d("UpVector");
    fov = attributes->getFloat("Fovy");
    aspectRatio = renderTargetAspectRatio(sceneManager);
    nearValue = attributes->getFloat("ZNear");
    farValue = attributes->getFloat("ZFar");
    recalculateProjectionMatrix();
    recalculateViewArea();
}

// 0x583534 _ZN6glitch5scene16CCameraSceneNode20onRegisterSceneNodeEv
// Recalculates the matrices, then, when this camera is the scene manager's active camera, registers it with the manager
// (vptr+0x24, registerNodeForRendering) with an empty material, no user data, pass 0, no position and the sort order
// 0x7FFFFFFF. Returns 1. The original dereferences the manager without a test; a camera that is not attached to a manager
// skips the registration here instead.
int CCameraSceneNode::onRegisterSceneNode() {
    recalculateMatrices();
    if (sceneManager != nullptr && sceneManager->activeCamera == this) {
        const boost::intrusive_ptr<video::CMaterial> noMaterial;
        sceneManager->registerNodeForRendering(this, noMaterial, nullptr, 0, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x5820e4 _ZN6glitch5scene16CCameraSceneNode6renderEPv
// With a driver on the scene manager (+0x14): setTransform (vptr+0x6c) with state 2 and the projection matrix, then with state 0 and
// the view matrix. The original dereferences the scene manager without a test; a camera that is not attached to one does nothing here.
void CCameraSceneNode::render(void* /*renderContext*/) {
    video::IVideoDriver* driver = sceneManager != nullptr ? sceneManager->driver : nullptr;
    if (driver != nullptr) {
        driver->setTransform(2, frustum.projectionMatrix);
        driver->setTransform(0, frustum.viewMatrix);
    }
}

// 0x582130 _ZNK6glitch5scene16CCameraSceneNode14getBoundingBoxEv
// Original returns this + 0x1d4, the box of the frustum member (frustum +0x6c).
const core::aabbox3d<float>& CCameraSceneNode::getBoundingBox() const {
    return frustum.box;
}

// 0x582290 _ZN6glitch5scene16CCameraSceneNode6removeEv
// When this camera is the scene manager's active camera, clears the active camera; then ISceneNode::remove.
void CCameraSceneNode::remove() {
    if (sceneManager != nullptr && sceneManager->activeCamera == this) {
        sceneManager->setActiveCamera(nullptr);
    }
    ISceneNode::remove();
}

// 0x581f34 _ZNK6glitch5scene16CCameraSceneNode7getTypeEv
E_SCENE_NODE_TYPE CCameraSceneNode::getType() const {
    return ESNT_CAMERA;
}

// 0x582aa0 _ZN6glitch5scene16CCameraSceneNode21onChangedSceneManagerEv
// Without a manager (or without its driver) the aspect ratio is 0x3FAAAAAB; with a driver it is the current render target's width
// over height. Then recalculateProjectionMatrix() (vptr+0x158) and recalculateViewArea().
void CCameraSceneNode::onChangedSceneManager() {
    aspectRatio = renderTargetAspectRatio(sceneManager);
    recalculateProjectionMatrix();
    recalculateViewArea();
}

// 0x5823ac _ZN6glitch5scene16CCameraSceneNode19setProjectionMatrixERKNS_4core8CMatrix4IfEEb
// Stores the flag byte at +0x134, copies the matrix into the frustum's projection matrix and calls setTransformState(2).
void CCameraSceneNode::setProjectionMatrix(const core::CMatrix4<float>& matrix, bool isOrthogonalValue) {
    orthogonal = isOrthogonalValue;
    frustum.projectionMatrix = matrix;
    frustum.setTransformState(2);
}

// 0x581f50 _ZNK6glitch5scene16CCameraSceneNode19getProjectionMatrixEv
const core::CMatrix4<float>& CCameraSceneNode::getProjectionMatrix() const {
    return frustum.projectionMatrix;
}

// 0x581f58 _ZNK6glitch5scene16CCameraSceneNode13getViewMatrixEv
const core::CMatrix4<float>& CCameraSceneNode::getViewMatrix() const {
    return frustum.viewMatrix;
}

// 0x581f68 _ZN6glitch5scene16CCameraSceneNode7onEventERKNS_6SEventE
// False when the input receiver byte is clear. Otherwise the animators are walked in order; the first enabled event receiver
// (vptr+0x1c) that handles the event (vptr+0x20) ends the walk with true.
bool CCameraSceneNode::onEvent(const glitch::SEvent& event) {
    if (!inputReceiverEnabled) {
        return false;
    }
    for (auto it = animators.begin(); it != animators.end(); ++it) {
        ISceneNodeAnimator* animator = *it;
        if (animator->isEventReceiverEnabled() && animator->onEvent(event)) {
            return true;
        }
    }
    return false;
}

// 0x581fe4 _ZN6glitch5scene16CCameraSceneNode9setTargetERKNS_4core8vector3dIfEE
void CCameraSceneNode::setTarget(const core::vector3d<float>& value) {
    target = value;
}

// 0x582000 _ZNK6glitch5scene16CCameraSceneNode9getTargetEv
const core::vector3d<float>& CCameraSceneNode::getTarget() const {
    return target;
}

// 0x582008 _ZN6glitch5scene16CCameraSceneNode11setUpVectorERKNS_4core8vector3dIfEE
void CCameraSceneNode::setUpVector(const core::vector3d<float>& value) {
    upVector = value;
}

// 0x582024 _ZNK6glitch5scene16CCameraSceneNode11getUpVectorEv
const core::vector3d<float>& CCameraSceneNode::getUpVector() const {
    return upVector;
}

// 0x58202c _ZNK6glitch5scene16CCameraSceneNode12getNearValueEv
float CCameraSceneNode::getNearValue() const {
    return nearValue;
}

// 0x582034 _ZNK6glitch5scene16CCameraSceneNode11getFarValueEv
float CCameraSceneNode::getFarValue() const {
    return farValue;
}

// 0x58203c _ZNK6glitch5scene16CCameraSceneNode14getAspectRatioEv
float CCameraSceneNode::getAspectRatio() const {
    return aspectRatio;
}

// 0x582044 _ZNK6glitch5scene16CCameraSceneNode6getFOVEv
float CCameraSceneNode::getFOV() const {
    return fov;
}

// 0x58204c _ZN6glitch5scene16CCameraSceneNode17getFarToInifinityEv
bool CCameraSceneNode::getFarToInifinity() {
    return farToInfinity;
}

// 0x582054 _ZN6glitch5scene16CCameraSceneNode12setNearValueEf
void CCameraSceneNode::setNearValue(float value) {
    nearValue = value;
    recalculateProjectionMatrix();
}

// 0x58206c _ZN6glitch5scene16CCameraSceneNode11setFarValueEf
void CCameraSceneNode::setFarValue(float value) {
    farValue = value;
    recalculateProjectionMatrix();
}

// 0x582084 _ZN6glitch5scene16CCameraSceneNode14setAspectRatioEf
void CCameraSceneNode::setAspectRatio(float value) {
    aspectRatio = value;
    recalculateProjectionMatrix();
}

// 0x58209c _ZN6glitch5scene16CCameraSceneNode6setFOVEf
void CCameraSceneNode::setFOV(float value) {
    fov = value;
    recalculateProjectionMatrix();
}

// 0x5820b4 _ZN6glitch5scene16CCameraSceneNode6setMAGEf
void CCameraSceneNode::setMAG(float value) {
    mag = value;
    recalculateProjectionMatrix();
}

// 0x5820cc _ZN6glitch5scene16CCameraSceneNode17setFarToInifinityEb
void CCameraSceneNode::setFarToInifinity(bool value) {
    farToInfinity = value;
    recalculateProjectionMatrix();
}

// 0x582138 _ZNK6glitch5scene16CCameraSceneNode14getViewFrustumEv
const SViewFrustum* CCameraSceneNode::getViewFrustum() const {
    return &frustum;
}

// 0x581f40 _ZN6glitch5scene16CCameraSceneNode23setInputReceiverEnabledEb
void CCameraSceneNode::setInputReceiverEnabled(bool enabled) {
    inputReceiverEnabled = enabled;
}

// 0x581f48 _ZNK6glitch5scene16CCameraSceneNode22isInputReceiverEnabledEv
bool CCameraSceneNode::isInputReceiverEnabled() const {
    return inputReceiverEnabled;
}

// 0x582904 _ZN6glitch5scene16CCameraSceneNode18recalculateViewAreaEv
// Stores the absolute position as the frustum apex and returns SViewFrustum::setFrom(view-projection matrix).
bool CCameraSceneNode::recalculateViewArea() {
    frustum.cameraPosition = getAbsolutePosition();
    return frustum.setFrom(frustum.viewProjectionMatrix);
}

// 0x583280 _ZN6glitch5scene16CCameraSceneNode19recalculateMatricesEv
// The view direction (target - absolute position) and the up vector are each normalised when their squared length is non-zero.
// When the two are parallel (|dot| within 1e-6 of 1) the up vector's x is moved by 0.5. The look-at matrix for (absolute position,
// target, up) becomes the view matrix, setTransformState(0) refreshes the dependent matrices, and recalculateViewArea() gives the result.
bool CCameraSceneNode::recalculateMatrices() {
    const core::vector3d<float> position = getAbsolutePosition();
    float dx = target.X - position.X;
    float dy = target.Y - position.Y;
    float dz = target.Z - position.Z;
    core::vector3d<float> up = upVector;
    const float directionLengthSquared = ((dx * dx) + (dy * dy)) + (dz * dz);
    if (directionLengthSquared != 0.0f) {
        const float scale = static_cast<float>(1.0 / std::sqrt(directionLengthSquared));
        dx = dx * scale;
        dy = dy * scale;
        dz = dz * scale;
    }
    const float upLengthSquared = ((up.X * up.X) + (up.Y * up.Y)) + (up.Z * up.Z);
    if (upLengthSquared != 0.0f) {
        const float scale = static_cast<float>(1.0 / std::sqrt(upLengthSquared));
        up.X = scale * up.X;
        up.Y = scale * up.Y;
        up.Z = scale * up.Z;
    }
    const float dot = ((dx * up.X) + (dy * up.Y)) + (dz * up.Z);
    const float absDot = std::fabs(dot);
    constexpr float kRoundingError = 1e-6f;
    if (absDot + kRoundingError >= 1.0f && absDot - kRoundingError <= 1.0f) {
        up.X = up.X + 0.5f;
    }
    frustum.viewMatrix = core::buildCameraLookAtMatrix<float>(position, target, up);
    frustum.setTransformState(0);
    return recalculateViewArea();
}

// 0x58364c _ZN6glitch5scene16CCameraSceneNode25recalculateProjectionMatrixEv
// Orthographic (isOrthogonal(), vptr+0x150): height 2 * mag, width height * aspect, near, far. Otherwise the perspective matrix
// from fov, aspect, near and, unless far-to-infinity is set, far. The matrix goes into the frustum and setTransformState(2) runs.
void CCameraSceneNode::recalculateProjectionMatrix() {
    if (isOrthogonal()) {
        const float height = mag + mag;
        frustum.projectionMatrix = core::buildProjectionMatrixOrtho<float>(height * aspectRatio, height, nearValue, farValue);
    } else if (farToInfinity) {
        frustum.projectionMatrix = core::buildProjectionMatrixPerspectiveFovInfinity<float>(fov, aspectRatio, nearValue);
    } else {
        frustum.projectionMatrix = core::buildProjectionMatrixPerspectiveFov<float>(fov, aspectRatio, nearValue, farValue);
    }
    frustum.setTransformState(2);
}

}  // namespace glitch::scene
