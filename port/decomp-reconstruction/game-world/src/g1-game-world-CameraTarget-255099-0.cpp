// Batch g1-game-world-CameraTarget-255099-0: CameraTarget (game-world).
// Layout and declarations: dh2/CameraTarget.hpp. Member offsets are kept as comments; the layout was
// checked against every constructor and method body of this batch.
//
// The two camera-node accesses are the named ISceneNode virtuals: getAbsolutePosition (vtable slot +0xa0) in
// HandleDamping and setPosition (vtable slot +0xa4) in HandleTransition and Update. The seams that used to stand in
// for them (a neutral origin and a no-op write) are gone.

#include "dh2/CameraTarget.hpp"

#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/Vec3f_Origin.hpp"            // Vec3f_Origin (0x99f854)
#include "dh2/global/ctrl_camera.hpp"             // Application& ApplicationGetInstance()
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// 0x4115d8 CameraTarget::HandleGhostCam(Point3D<float>&)
bool CameraTarget::HandleGhostCam(Point3D<float>& position) {
    position.X += m_ghostOffset.X;  // +0x38
    position.Y += m_ghostOffset.Y;  // +0x3c
    position.Z += m_ghostOffset.Z;  // +0x40
    return true;
}

// 0x41161c CameraTarget::EnableDamping(bool)
void CameraTarget::EnableDamping(bool enable) {
    m_dampingEnabled = enable;         // +0x25
    m_dampingVelocity = Vec3f_Origin;  // +0x2c, +0x30, +0x34
}

// 0x411654 CameraTarget::SetDampingRatio(float)
void CameraTarget::SetDampingRatio(float ratio) {
    m_dampingRatio = ratio;  // +0x28
}

// 0x41165c CameraTarget::HandleDamping(Point3D<float>&)
// The node's absolute position (getAbsolutePosition, vtable slot +0xa0) is read twice, once before the velocity is
// stored and once after, and the damped position advances by velocity * dt (dt in seconds: the frame time in ms
// times 0.001f). The velocity and position arithmetic is complete.
bool CameraTarget::HandleDamping(Point3D<float>& position) {
    if (!m_dampingEnabled) {  // +0x25
        return false;
    }
    if (!m_node) {  // +0x04
        return false;
    }
    // Distance from the damped position to the node, scaled by the ratio, becomes the new velocity.
    const float targetX = m_dampingVelocity.X + position.X;
    const float targetY = m_dampingVelocity.Y + position.Y;
    const float targetZ = m_dampingVelocity.Z + position.Z;
    const glitch::core::vector3d<float> nodeBefore = m_node->getAbsolutePosition();   // vtable slot +0xa0
    m_dampingVelocity.X = (targetX - nodeBefore.X) * m_dampingRatio;
    m_dampingVelocity.Y = (targetY - nodeBefore.Y) * m_dampingRatio;
    m_dampingVelocity.Z = (targetZ - nodeBefore.Z) * m_dampingRatio;
    // The original reads the node position a second time, after the velocity is stored, and advances it by
    // velocity * dt (dt in seconds: the frame time in ms times 0.001f).
    const glitch::core::vector3d<float> nodeAfter = m_node->getAbsolutePosition();    // vtable slot +0xa0
    const float dtSeconds = static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt())) * 0.001f;
    position.X = dtSeconds * m_dampingVelocity.X + nodeAfter.X;
    position.Y = dtSeconds * m_dampingVelocity.Y + nodeAfter.Y;
    position.Z = dtSeconds * m_dampingVelocity.Z + nodeAfter.Z;
    return true;
}

// 0x4117bc CameraTarget::HandleOffset(Point3D<float>&)
bool CameraTarget::HandleOffset(Point3D<float>& position) {
    if (!m_offsetEnabled) {  // +0x24
        return false;
    }
    Point3D<float> offset{0.0f, 0.0f, 0.0f};
    CameraBase::GetCenterOffset(offset, position.Z);
    position.X += offset.X;
    position.Y += offset.Y;
    position.Z += offset.Z;
    return true;
}

// 0x411830 CameraTarget::HandleTransition()
// The countdown (+0x20) is reduced by the frame time; when the result is negative or was exactly the frame time,
// the node snaps to the target's anchor, otherwise it is set to the blend from +0x10. Both writes are the node's
// setPosition (vtable slot +0xa4).
bool CameraTarget::HandleTransition() {
    if (m_transitionRemainingMs < 0 || !m_node || !m_target) {  // +0x20, +0x04, +0x0c
        return false;
    }
    const std::int32_t dt = ApplicationGetInstance().GetDt();
    const std::int32_t remaining = m_transitionRemainingMs - dt;
    const bool spent = m_transitionRemainingMs == dt;
    m_transitionRemainingMs = remaining;                          // +0x20
    if (remaining < 0 || spent) {
        // Transition over: the node sits on the target's anchor.
        const Point3D<float>& anchor = m_target->GetCameraAnchorPosition();
        m_node->setPosition(glitch::core::vector3d<float>{anchor.X, anchor.Y, anchor.Z});   // vtable slot +0xa4
        return true;
    }
    // t runs from 0 at the start to 1 when the countdown is spent.
    const Point3D<float>& anchor = m_target->GetCameraAnchorPosition();
    const float t = (1.0 - (static_cast<double>(remaining) / static_cast<double>(m_transitionTotalMs)));
    Point3D<float> blended;
    blended.X = m_transitionFrom.X + t * (anchor.X - m_transitionFrom.X);  // +0x10
    blended.Y = m_transitionFrom.Y + t * (anchor.Y - m_transitionFrom.Y);  // +0x14
    blended.Z = m_transitionFrom.Z + t * (anchor.Z - m_transitionFrom.Z);  // +0x18
    m_node->setPosition(glitch::core::vector3d<float>{blended.X, blended.Y, blended.Z});  // vtable slot +0xa4
    return true;
}

// 0x4119c4 CameraTarget::SetTarget(GameObject*, int)
void CameraTarget::SetTarget(GameObject* target, int transitionMs) {
    if (!target) {
        return;
    }
    if (transitionMs <= 0) {
        m_transitionFrom = Vec3f_Origin;  // +0x10, +0x14, +0x18
        m_transitionTotalMs = 0;          // +0x1c
        m_transitionRemainingMs = 0;      // +0x20
    } else {
        // The blend starts from the old target's anchor, or from the origin when there is no old target.
        const Point3D<float>& from = m_target ? m_target->GetCameraAnchorPosition() : Vec3f_Origin;
        m_transitionFrom = from;
        m_transitionTotalMs = transitionMs;
        m_transitionRemainingMs = transitionMs;
    }
    m_target = target;                                  // +0x0c
    m_ghostOffset = Point3D<float>{0.0f, 0.0f, 0.0f};   // +0x38, +0x3c, +0x40
}

// 0x411a74 CameraTarget::GetTargetPosition()
const Point3D<float>& CameraTarget::GetTargetPosition() {
    return m_target->GetCameraAnchorPosition();
}

// 0x411a7c CameraTarget::Update()
// The offset, ghost and damping chain runs, then the node takes the resulting position through its setPosition slot
// (+0xa4), and the base Update always runs (both when the chain ran and when it did not).
void CameraTarget::Update() {
    if (m_node && m_target) {
        if (HandleTransition()) {
            // A running transition ends the update here, and CameraBase::Update is not called (the original
            // returns the HandleTransition result).
            return;
        }
        Point3D<float> position = GetTargetPosition();
        HandleOffset(position);
        HandleGhostCam(position);
        HandleDamping(position);
        m_node->setPosition(glitch::core::vector3d<float>{position.X, position.Y, position.Z});  // vtable slot +0xa4
    }
    CameraBase::Update();
}

// 0x411b38 CameraTarget::SetTarget(char const*, int)
void CameraTarget::SetTarget(const char* objectName, int transitionMs) {
    ObjectHandle handle = dword_99F764->GetObjectByName(objectName, -1, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        GameObject* object = static_cast<GameObject*>(handle);  // ObjectHandle::operator GameObject*
        SetTarget(object, transitionMs);
    }
}

// 0x411bbc CameraTarget::~CameraTarget() (D1). The vptr reset and the CameraBase destructor are implicit.
// 0x411c0c has the same body and is covered by this definition.
CameraTarget::~CameraTarget() {}

// 0x411bf0 CameraTarget::~CameraTarget() (D0) is compiler-generated: `delete` runs the destructor above and
// then CustomFree. No separate body is written, so the row is skipped.

// 0x411c0c CameraTarget::~CameraTarget() (D1 duplicate of 0x411bbc). Same body, covered by the definition above.

// 0x411c40 CameraTarget::CameraTarget()
// 0x411cdc CameraTarget::CameraTarget() has the same stores in a different order, so one definition covers both.
CameraTarget::CameraTarget() : CameraBase() {
    m_target = nullptr;                                 // +0x0c
    m_transitionFrom = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x10, +0x14, +0x18
    m_transitionTotalMs = 0;                            // +0x1c
    m_transitionRemainingMs = 0;                        // +0x20
    m_offsetEnabled = false;                            // +0x24
    m_dampingEnabled = true;                            // +0x25
    m_dampingRatio = 0.7f;                              // +0x28 (bit pattern 0x3f333333)
    m_dampingVelocity = Vec3f_Origin;                   // +0x2c, +0x30, +0x34
    m_ghostOffset = Point3D<float>{0.0f, 0.0f, 0.0f};   // +0x38, +0x3c, +0x40
}
