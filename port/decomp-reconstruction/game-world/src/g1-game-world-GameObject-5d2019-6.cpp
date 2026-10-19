#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#include <dlfcn.h>
#endif
// Batch g1-game-world-GameObject-5d2019-6 (GameObject, part 7 of 8).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layout and declarations: dh2/GameObject.hpp.
// Offsets in comments are the original 32-bit ones.
//
// PFWORLD SINGLETON. Singleton<PFWorld>::s_inst (ELF 0x9a26d8) is declared in dh2/Singleton.hpp and called directly, as
// game-anim does (TranslateScreenToWorld). The PFWorld calls DropPath, FindPath, MovePath, AvoidObstacles,
// ValidateDirection and InitObstacle are emitted where the listings make them.
//
// APPLICATION. The listings' Singleton<Application>::s_inst is reached through ApplicationGetInstance()
// (dh2/global/ctrl_camera.hpp), the same accessor the other batches use.
//
// Fully reconstructed: GetLookAtVec, LookTowards, SetHeadingDirection, LookAt (both), UpdateTargetPosition, SetPosition,
// ForceUpdatePosition, SetVisualObject (both), SetCameraAnchorObject, SetPhysicalObject, Stop, PathTo, UpdatePFObject,
// UpdatePath, DisableCollisions, EnableCollisions.
// GetCameraAnchorPosition and UpdateSubObjects are reconstructed as well.

#include <cmath>
#include <cstdint>
#include <cstring>
#include <list>
#include <string>

#include <Box2D.h>

#include "dh2/AnchorBase.hpp"
#include "dh2/AnchorForward.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraTarget.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"

namespace {

// Float constants of the listings, named by their bit patterns (Hex-Rays prints them as integers).
float FloatFromBits(std::uint32_t bits) {
    float value;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

}  // namespace

// 0x3938f8 GameObject::Stop()
// The path is dropped (PFWorld::DropPath). The destination becomes the current position and the heading is cleared.
// While the physical object is driven by physics, the body is stopped and put to sleep. The listing writes the box2d body
// directly, which is b2Body::PutToSleep (vendor-box2d Source/Dynamics/b2Body.h: flags |= sleep, sleep time, linear and
// angular velocity, force and torque cleared).
void GameObject::Stop() {
    Singleton<PFWorld>::s_inst.DropPath(m_pfObject);
    m_destination = m_position;                 // +0x1a8 <- +0x160
    m_hasHeading = 0;                           // +0x1b5
    m_moving = 0;                               // +0x1b4
    m_heading = Vec3f_Origin;                   // +0x1b8 .. +0x1c0
    if (m_physicalObject != nullptr && IsUpdatingPositionFromPhysics()) {
        m_physicalObject->setLinearVelocity(0.0f, 0.0f);
        m_physicalObject->setAngularVelocity(0.0f);
        m_physicalObject->setPosition(m_position.X, m_position.Y);
        m_physicalObject->m_body->PutToSleep();
    }
}

// 0x3939f0 GameObject::PathTo(Point3D<float> const&)
// A static object does not path. A search to dest runs when the path is empty, or when its end (PFObject +0x40) is more
// than 200 world units from dest (squared distance over 40000). The search limit is m_maxPath (+0x26c), 30 when zero.
// The listing returns FindPath's result; this method is void in the header, so the result is dropped. PFWorld.hpp names
// FindPath's third parameter flags, while the listing passes the path limit there. The call is written as the listing
// has it; the name needs settling with the PFWorld owner.
void GameObject::PathTo(const Point3D<float>& dest) {
    if (m_static) {                             // ObjectBase +0x84: static objects do not path
        return;
    }
    bool search = m_pfObject.m_path.empty();    // PFObject +0x38
    if (!search) {
        const float dx = m_pfObject.m_pathEnd.X - dest.X;   // +0x208
        const float dy = m_pfObject.m_pathEnd.Y - dest.Y;   // +0x20c
        const float dz = m_pfObject.m_pathEnd.Z - dest.Z;   // +0x210
        search = (dx * dx + dy * dy) + dz * dz > 40000.0f;
    }
    if (search) {
        const std::uint32_t maxPath = m_maxPath != 0 ? m_maxPath : 30u;  // +0x26c
        Singleton<PFWorld>::s_inst.FindPath(m_pfObject, dest, maxPath);
    }
}

// 0x393ae4 GameObject::GetLookAtVec(Point3D<float>&) const
void GameObject::GetLookAtVec(Point3D<float>& out) const {
    const float yaw = m_rotation.Z;             // +0x174
    out.X = std::sin(yaw);
    out.Y = -std::cos(yaw);                     // the listing flips the sign bit of cosf's result
    out.Z = 0.0f;
}

// 0x393b1c GameObject::LookTowards(Point3D<float> const&)
// Sets the target yaw (+0x178) from the X and Y of the direction. The listing's constants are the float bit patterns
// 0x3fc90fdb (pi/2), 0x4096cbe4 (3pi/2), 0x40490fdb (pi) and 0xc0490fdb (-pi).
void GameObject::LookTowards(const Point3D<float>& direction) {
    const float x = direction.X;
    const float y = direction.Y;
    if (y == 0.0f) {
        if (x > 0.0f) {
            m_targetYaw = FloatFromBits(0x3fc90fdbu);
        } else if (x < 0.0f) {
            m_targetYaw = FloatFromBits(0x4096cbe4u);
        }
        return;
    }
    // atanf(x / -y): the listing flips the sign bit of y before the division.
    float yaw = std::atan(x / -y);
    if (y > 0.0f) {
        const float half = x > 0.0f ? FloatFromBits(0x40490fdbu) : FloatFromBits(0xc0490fdbu);
        yaw = half + yaw;
    }
    m_targetYaw = yaw;
}

// 0x393be8 GameObject::SetHeadingDirection(Point3D<float> const&, bool)
// The heading (+0x1b8) takes the X and Y of the direction with Z cleared. It counts as set (+0x1b5) when its squared length
// exceeds 0.0001, and is normalised when that length exceeds 1. With look set and a heading, the target yaw follows the
// caller's direction (not the normalised heading).
void GameObject::SetHeadingDirection(const Point3D<float>& direction, bool look) {
    const float x = direction.X;
    const float y = direction.Y;
    m_heading.X = x;                            // +0x1b8
    m_heading.Z = 0.0f;                         // +0x1c0
    m_heading.Y = y;                            // +0x1bc
    const float lengthSq = x * x + y * y;
    m_hasHeading = lengthSq > 0.0001f ? 1 : 0;  // +0x1b5
    if (lengthSq > 1.0f) {
        const float inverse = 1.0f / std::sqrt(lengthSq);
        m_heading.X *= inverse;
        m_heading.Y *= inverse;
        m_heading.Z *= inverse;
    }
    if (m_hasHeading != 0 && look) {
        LookTowards(direction);
    }
}

// 0x393cec GameObject::LookAt(Point3D<float> const&)
void GameObject::LookAt(const Point3D<float>& target) {
    Point3D<float> toTarget;
    toTarget.X = target.X - m_position.X;
    toTarget.Y = target.Y - m_position.Y;
    toTarget.Z = target.Z - m_position.Z;
    LookTowards(toTarget);
}

// 0x393d48 GameObject::LookAt(GameObject*)
void GameObject::LookAt(GameObject* target) {
    if (target != nullptr) {
        LookAt(target->GetTargetPosition());
    }
}

// 0x393d74 GameObject::UpdateTargetPosition()
void GameObject::UpdateTargetPosition() {
    if (m_targetNode != nullptr) {
        const glitch::core::vector3d<float> absolute = m_targetNode->getAbsolutePosition();
        m_targetNodePos.X = absolute.X;         // +0x184
        m_targetNodePos.Y = absolute.Y;         // +0x188
        m_targetNodePos.Z = absolute.Z;         // +0x18c
    }
}

// 0x393db4 GameObject::SetPosition(Point3D<float> const&, bool)
// A camera anchor moves by the same delta as the object. The physical object and the visual follow the new position, and
// the destination is set when asked.
void GameObject::SetPosition(const Point3D<float>& pos, bool setDestination) {
    if (m_cameraAnchor != nullptr) {
        m_cameraAnchor->m_position.X += pos.X - m_position.X;   // anchor +0x0c
        m_cameraAnchor->m_position.Y += pos.Y - m_position.Y;   // anchor +0x10
        m_cameraAnchor->m_position.Z += pos.Z - m_position.Z;   // anchor +0x14
    }
    m_position = pos;                           // +0x160 .. +0x168
    UpdateAbsoluteAABB();
    if (m_physicalObject != nullptr) {
        m_physicalObject->setPosition(m_position.X, m_position.Y);
    }
    if (m_visualObject != nullptr) {
        m_visualObject->SyncPosition();
    }
    if (setDestination) {
        SetDestination(pos);
    }
}

// 0x393e90 GameObject::ForceUpdatePosition()
void GameObject::ForceUpdatePosition() {
    if (m_visualObject != nullptr) {
        m_visualObject->ForceUpdatePosition();
    }
}

// 0x393ea0 GameObject::UpdatePFObject()
// An obstacle (vtable +0xb4) is registered with the path-finding world: PFWorld::InitObstacle adds it when the physical
// object is present, with the radius (+0xb8) and strength (+0xbc) virtuals. The path-finding radius (PFObject +0x1d0) is
// the physical object's radius, or half the larger side of the local AABB (+0x144..+0x158) when there is no physical
// object.
void GameObject::UpdatePFObject() {
    if (m_pfObject.m_owner == nullptr) {        // PFObject +0x00
        return;
    }
    if (IsObstacle()) {
        const bool add = m_physicalObject != nullptr;
        const float radius = GetObstacleRadius();
        const float strength = GetObstacleStrength();
        Singleton<PFWorld>::s_inst.InitObstacle(m_pfObject, add, radius, strength);
    }
    if (m_physicalObject != nullptr) {
        m_pfObject.m_radius = m_physicalObject->getRadius();
    } else {
        float extent = m_relAabb[3] - m_relAabb[0];         // +0x150 - +0x144
        const float extentY = m_relAabb[4] - m_relAabb[1];  // +0x154 - +0x148
        if (extent < extentY) {
            extent = extentY;
        }
        m_pfObject.m_radius = extent * 0.5f;
    }
}

// 0x3940c0 GameObject::UpdatePath()
// Moves the object along its path. The path-finding position (PFObject +0x18) follows m_position. While the object is
// updating its path (vtable +0x5c), a non-empty path is walked with PFWorld::MovePath and the destination is reset. At the
// destination, a moving object with an empty path stops. Otherwise the heading is set toward the destination and, when
// the object avoids obstacles (vtable +0x7c), PFWorld::AvoidObstacles steers it. A heading turns the moving flag on
// (PFObject +0x04 bit 1). When the object validates its direction (m_validateDirection, +0x1c4) and the
// DisableWallAvoidance debug switch is clear, PFWorld::ValidateDirection runs on the heading.
void GameObject::UpdatePath() {
    m_pfObject.m_pos = m_position;              // PFObject +0x18 <- +0x160
    if (!IsUpdatingPath()) {
        return;
    }
    if (!m_pfObject.m_path.empty()) {
        Singleton<PFWorld>::s_inst.MovePath(m_pfObject, m_destination);
        SetDestination(m_destination);
    }
    if (IsAtDestination()) {
        if (m_moving != 0 && m_pfObject.m_path.empty()) {
            Stop();
        }
    } else {
        m_moving = 1;
        const Point3D<float> toDestination{m_destination.X - m_position.X,
                                           m_destination.Y - m_position.Y,
                                           m_destination.Z - m_position.Z};
        SetHeadingDirection(toDestination, true);
        if (m_hasHeading == 0) {
            m_pfObject.m_flags &= ~2u;          // PFObject +0x04 bit 1 (moving)
            return;
        }
        if (IsAvoidingObstacles()) {
            Singleton<PFWorld>::s_inst.AvoidObstacles(m_pfObject, m_heading);
            SetHeadingDirection(m_heading, true);
        }
    }
    if (m_hasHeading == 0) {
        m_pfObject.m_flags &= ~2u;
        return;
    }
    m_pfObject.m_flags |= 2u;
    if (m_validateDirection != 0) {
        DebugSwitches::s_inst.load();
        if (!DebugSwitches::s_inst.GetSwitch("DisableWallAvoidance")) {
            Singleton<PFWorld>::s_inst.ValidateDirection(m_heading, m_pfObject);
            SetHeadingDirection(m_heading, true);
        }
    }
}

// 0x394338 GameObject::SetVisualObject(VisualObject*)
void GameObject::SetVisualObject(VisualObject* visual) {
    if (m_visualObject == visual) {
        return;
    }
    delete m_visualObject;                      // the listing calls the deleting destructor (vtable +0x04)
    m_visualObject = visual;
}

// 0x394378 GameObject::SetCameraAnchorObject(AnchorBase*)
void GameObject::SetCameraAnchorObject(AnchorBase* anchor) {
    if (m_cameraAnchor == anchor) {
        return;
    }
    delete m_cameraAnchor;                      // the listing calls the deleting destructor (vtable +0x04)
    m_cameraAnchor = anchor;
}

// 0x3943b8 GameObject::GetCameraAnchorPosition() const
// The address of the camera anchor's position (AnchorBase +0x0c) when an anchor is set, and of this object's own position (+0x160) otherwise. The anchor keeps its position as
// the three floats of a glitch vector (X, Y, Z at +0, +4, +8), the same layout as Point3D<float>, so the reference is taken over that member.
const Point3D<float>& GameObject::GetCameraAnchorPosition() const {
    if (m_cameraAnchor != nullptr) {
        return reinterpret_cast<const Point3D<float>&>(m_cameraAnchor->m_position);
    }
    return m_position;
}

// 0x3943cc GameObject::UpdateSubObjects()
// Updates the visual object (vtable +0x08) and the physical object (+0x20), then the positions. A physical body that is awake and more than 1.0 from the stored position on either axis moves
// the object to the body's position; with floor validation 1 the position goes through PFWorld::ValidatePosition and a failure puts the body back, otherwise the position is held. With
// a physical object that updates the position (vtable +0x64) the body is driven towards the destination: nothing when it is already there, a stop and a snap within 20 units, else a velocity of
// speed (GetSpeed) along the normalised direction; without it the body is stopped. A position that is not held is applied to the visual (ApplyPosition, waking the body); the visual position
// is synchronised and the body position set. The rotation comes from the visual (ApplyRotation) or from the awake body's angle, and the visual rotation and scaling are synchronised.
// Without floor validation (vtable +0x74 is 0) the position is restored from the path-finding object when the camera limits forbid the move (Level::CanMoveTowards), or checked by
// PFWorld::ValidatePosition (a failure sets the body position again), and the visual position is synchronised. Arriving at the destination copies the position to it. The absolute box is
// updated and the camera anchor updated (AnchorBase vtable +0x0c); a type 2 anchor in state 3 turns the level camera's damping on, and in state 1 or 4, while the damping is on and the camera
// node is within sqrt(3) of the anchor position, turns it off.
void GameObject::UpdateSubObjects() {
    if (m_visualObject != nullptr) {
        m_visualObject->Update();               // vtable +0x08
    }
    if (m_physicalObject != nullptr) {
        m_physicalObject->Update();             // vtable +0x20
    }
    const bool updatePositionFromVisual = IsUpdatingPositionFromVisual();     // vtable +0x60
    const bool updatePositionFromPhysics = IsUpdatingPositionFromPhysics();   // vtable +0x64
    const bool wasAtDestination = IsAtDestination();

    bool positionHeld = false;                  // the listing's v9
    if (PhysicalObject* physical = m_physicalObject) {
        b2Body* body = physical->m_body;
        // A sleeping body, or one within 1.0 of the stored position on both axes, is not moved.
        bool moved = false;
        Point2D<float> bodyPos{};
        if (!body->IsSleeping()) {
            bodyPos = physical->getPosition();
            moved = !(std::fabs(bodyPos.X - m_position.X) <= 1.0f && std::fabs(bodyPos.Y - m_position.Y) <= 1.0f);
        }
        if (moved) {
            m_position.X = bodyPos.X;
            m_position.Y = bodyPos.Y;
            if (IsValidatingFloorPosition() == 1) {
                positionHeld = Singleton<PFWorld>::s_inst.ValidatePosition(m_position, &m_pfObject);
                if (!positionHeld) {
                    physical->setPosition(m_position.X, m_position.Y);
                }
            } else {
                positionHeld = true;
            }
        }

        if (updatePositionFromPhysics) {
            Point3D<float> direction{m_destination.X - m_position.X, m_destination.Y - m_position.Y,
                                     m_destination.Z - m_position.Z};   // +0x1a8 - +0x160
            const float distanceSq = (direction.X * direction.X + direction.Y * direction.Y) + direction.Z * direction.Z;
            if (distanceSq > 0.0f) {
                const float speed = GetSpeed();                 // vtable +0xa8
                if (distanceSq <= 400.0f) {
                    physical->setLinearVelocity(0.0f, 0.0f);
                    physical->setPosition(m_position.X, m_position.Y);
                } else {
                    direction.normalize();
                    physical->setLinearVelocity(speed * direction.X, speed * direction.Y);
                }
            }
        } else {
            physical->setLinearVelocity(0.0f, 0.0f);
        }
    }

    if (updatePositionFromVisual && m_visualObject != nullptr && !positionHeld) {
        m_visualObject->ApplyPosition();
        if (m_physicalObject != nullptr) {
            m_physicalObject->m_body->WakeUp();  // b2Body::WakeUp: clears the sleep flag and sleep time
        }
    }
    if (m_visualObject != nullptr) {
        m_visualObject->SyncPosition();
    }
    if (m_physicalObject != nullptr) {
        m_physicalObject->setPosition(m_position.X, m_position.Y);
    }

    const bool rotationFromVisual = IsUpdatingRotationFromVisual();     // vtable +0x68
    const bool rotationFromPhysics = IsUpdatingRotationFromPhysics();   // vtable +0x6c
    if (rotationFromVisual && m_visualObject != nullptr) {
        m_visualObject->ApplyRotation();
    } else if (rotationFromPhysics && m_physicalObject != nullptr) {
        if (!m_physicalObject->m_body->IsSleeping()) {
            m_rotation.Z = m_physicalObject->getAngle();                // +0x174
        }
    }
    if (m_visualObject != nullptr) {
        if (IsUpdatingVisualWithRotation()) {                           // vtable +0x70
            m_visualObject->SyncRotation();
        }
        m_visualObject->SyncScaling();
    }

    if (IsValidatingFloorPosition() == 0) {     // vtable +0x74
        bool restore = false;                   // the listing's LABEL_54 path
        if (IsValidatingCameraLimits()) {       // vtable +0x78
            Level* level = ApplicationGetInstance().GetCurrentLevel();
            if (level != nullptr && !level->CanMoveTowards(m_position, m_heading)) {
                m_position = m_pfObject.m_pos;  // PFObject +0x18 (the position at the start of UpdatePath)
                restore = true;
            }
        }
        if (!restore && !Singleton<PFWorld>::s_inst.ValidatePosition(m_position, &m_pfObject)) {
            restore = true;
        }
        if (restore && m_physicalObject != nullptr) {
            m_physicalObject->setPosition(m_position.X, m_position.Y);
        }
        if (m_visualObject != nullptr) {
            m_visualObject->SyncPosition();
        }
    }

    if (wasAtDestination) {
        m_destination = m_position;             // +0x1a8 <- +0x160
    }
    UpdateAbsoluteAABB();
    if (m_cameraAnchor != nullptr) {
        m_cameraAnchor->Update();               // AnchorBase vtable +0x0c
        if (static_cast<int>(m_cameraAnchor->m_type) == 2) {
            const std::int32_t state = static_cast<AnchorForward*>(m_cameraAnchor)->unk_3c;
            CameraTarget* camera = ApplicationGetInstance().GetCurrentLevel()->m_camera;   // CameraLevel is a CameraTarget
            if (state == 3) {
                camera->EnableDamping(true);
            } else if ((state == 4 || state == 1) && camera->m_dampingEnabled) {
                const glitch::core::vector3d<float> nodePosition = camera->m_node->getAbsolutePosition();
                const float dx = m_cameraAnchor->m_position.X - nodePosition.X;
                const float dy = m_cameraAnchor->m_position.Y - nodePosition.Y;
                const float dz = m_cameraAnchor->m_position.Z - nodePosition.Z;
                if ((dx * dx + dy * dy) + dz * dz <= 3.0f) {
                    camera->EnableDamping(false);
                }
            }
        }
    }
}

// 0x3949b0 GameObject::DisableCollisions()
// The physical filter is disabled. An obstacle (vtable +0xb4) is removed from the path-finding world with
// PFWorld::InitObstacle(add = false), using its radius (+0xb8) and strength (+0xbc).
void GameObject::DisableCollisions() {
    if (m_physicalObject != nullptr) {
        m_physicalObject->disableFilter();
    }
    if (IsObstacle()) {                         // vtable +0xb4
        const float radius = GetObstacleRadius();      // vtable +0xb8
        const float strength = GetObstacleStrength();  // vtable +0xbc
        Singleton<PFWorld>::s_inst.InitObstacle(m_pfObject, false, radius, strength);
    }
}

// 0x394a3c GameObject::EnableCollisions()
// The physical filter is enabled. An obstacle (vtable +0xb4) is added back to the path-finding world with
// PFWorld::InitObstacle(add = true), using its radius (+0xb8) and strength (+0xbc). The listing reads the radius first
// (asm: radius in r3, strength on the stack, object at this+0x1c8, add in r2 = 1).
void GameObject::EnableCollisions() {
    if (m_physicalObject != nullptr) {
        m_physicalObject->enableFilter();
    }
    if (IsObstacle()) {                         // vtable +0xb4
        const float radius = GetObstacleRadius();      // vtable +0xb8
        const float strength = GetObstacleStrength();  // vtable +0xbc
        Singleton<PFWorld>::s_inst.InitObstacle(m_pfObject, true, radius, strength);
    }
}

// 0x394bf8 GameObject::SetPhysicalObject(PhysicalObject*, bool)
// With the debug switch MP_NoPhysics the new object is deleted and nothing changes. Otherwise the old object is deleted, the
// new one is stored (pinned when asked) and the path-finding object is refreshed.
void GameObject::SetPhysicalObject(PhysicalObject* physical, bool pin) {
    if (DebugSwitches::GetInstance()->GetSwitch("MP_NoPhysics")) {
        delete physical;
        return;
    }
    if (m_physicalObject == physical) {
        UpdatePFObject();
        return;
    }
    delete m_physicalObject;                    // the listing calls the deleting destructor (vtable +0x04)
    m_physicalObject = physical;
    if (physical != nullptr && pin) {
        physical->pin();
    }
    UpdatePFObject();
}

// 0x394d34 GameObject::SetVisualObject(char const*, char const*, bool)
// Stores the model (m_dae, +0x290) and its variant (m_xrefObject, +0x2a8) and rebuilds the visual object when the names
// change, or always when force is set. A null name clears both. The visual object is created only when the model name is
// not empty; when the model fails to load (no root node) the new object is deleted.
void GameObject::SetVisualObject(const char* dae, const char* xref, bool force) {
    if (!force && dae != nullptr && m_dae == dae && (xref == nullptr || m_xrefObject == xref)) {
        return;                                 // the names are unchanged
    }
    if (dae == nullptr) {
        m_dae.assign("");
        m_xrefObject.assign("");
        SetVisualObject(static_cast<VisualObject*>(nullptr));
        return;
    }
    m_dae.assign(dae);
    if (xref == nullptr) {
        m_xrefObject.assign("");
    } else {
        m_xrefObject.assign(xref);
    }
    if (m_dae.empty()) {                        // the listing's first and second string words are equal
        SetVisualObject(static_cast<VisualObject*>(nullptr));
        return;
    }
    VisualObject* visual = new VisualObject(this, m_dae, m_xrefObject);
    if (visual->m_node == nullptr) {            // +0x08 of the visual, the loaded model root
        delete visual;
        return;
    }
    SetVisualObject(visual);
    visual->m_node->m_object = this;            // RootSceneNode +0x204: the game object the root belongs to
}
