// Batch g1-game-world-LaserTypeProjectile-a4dda1-0: the LaserTypeProjectile class (a Projectile drawn as a beam between
// two bone nodes of its visual). Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Where the pseudocode
// types a word differently from the code the original uses (Update's countdown and lifetime, the "NAN" stores), the
// assembly decides and the function comment says so. Offsets in comments are the original 32-bit ones. The Projectile
// base is in g1-game-world-Projectile-6685f5-0.cpp.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LaserTypeProjectile.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/POProjectile.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kLaserSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\LaserTypeProjectile.cpp";

// The original ASSERT(expression). Level 2 stops the process (the original writes to address 0); level 1 prints the
// message to stderr (__sF + 0xa8) and carries on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kLaserSource, line);
    }
}

// Arrays::ProjectileTable row (72 bytes in the original), read through the host element type
// (pydata-accessors/element_table.hpp), never through byte arithmetic.
const Structs::Projectile& ProjectileRow(int tableIndex) {
    return reinterpret_cast<const Structs::Projectile*>(Arrays::ProjectileTable::members)[tableIndex];
}

// Arrays::ProjectileDict row (12 bytes in the original, Structs::ColladaFile here). +0x08 is the dae name.
const char* ProjectileDaeName(int dictIndex) {
    return reinterpret_cast<const Structs::ColladaFile*>(Arrays::ProjectileDict::members)[dictIndex].Name;
}

// Integer subtraction as the ARM code does it (RSB / SUB, wrapping). Used for the countdown (+0x3e0) and the lifetime
// (+0x3b4), which both count down by the frame time.
int WrapSub(int a, int b) {
    return static_cast<int>(static_cast<std::uint32_t>(a) - static_cast<std::uint32_t>(b));
}

}  // namespace

// 0x3e3e24 LaserTypeProjectile::GetSpeed() const
// The pseudocode returns the word at +0x3ac as an int. That word is the bit pattern of m_speed, so the float result is
// m_speed.
float LaserTypeProjectile::GetSpeed() const {
    return m_speed;
}

// 0x3e3e2c LaserTypeProjectile::OnCollision(GameObject*, Point2D<float> const&)
// The enemy test on the owner calls ObjectBase::GetHandle with the receiver m_owner (+0x380), the assembly's R1 (LDR R1, [R4,#0x380]). SetInfo always leaves m_owner null, and GetHandle reads
// this+0x2c, so the original dereferences null and crashes when a character without the table +0x10 flag is hit (the laser rows set that flag). This port does not crash: with no owner character
// the hit is taken, which is the path the original takes when the owner has no character.
// The hit object is stored in m_target (+0x384), not in m_hitObject as in Projectile::OnCollision.
bool LaserTypeProjectile::OnCollision(GameObject* other, const Point2D<float>& position) {
    if (m_dead || m_expiring) {  // +0x3d0, +0x3d1
        return false;
    }
    if (other == nullptr || m_owner == other) {  // +0x380
        return false;
    }

    const Structs::Projectile& row = ProjectileRow(m_projectileId);  // +0x374
    ObjectHandle otherHandle = other->GetHandle();
    Character* otherCharacter = otherHandle.operator Character*();
    if (otherCharacter == nullptr) {
        // Not a character: only a laser with no target takes the hit. The effect is table +0x14 at the hit point's
        // x and y, with the object's target z.
        if (m_target != nullptr) {
            return false;
        }
        m_target = other;  // +0x384
        const Point3D<float> targetPosition = other->GetTargetPosition();
        Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(
            row.ImpactFX, Point3D<float>{position.X, position.Y, targetPosition.Z}, nullptr, nullptr);
        m_expiring = true;  // +0x3d1
        return true;
    }

    // A character hit. Table +0x04 makes a homing laser hit only its target.
    if (row.Dedicated && m_target != other) {
        return false;
    }
    // Table +0x10 set: any character is hit. Clear: the character must be an enemy of the owner. The owner is m_owner,
    // which is null here (see the comment above the function).
    if (!row.FriendlyFire) {
        Character* ownerCharacter = nullptr;
        if (m_owner != nullptr) {
            ObjectHandle ownerHandle = m_owner->GetHandle();
            ownerCharacter = ownerHandle.operator Character*();
        }
        if (ownerCharacter != nullptr && !ownerCharacter->AI_IsEnemy(other)) {
            return false;
        }
    }

    m_target = other;  // +0x384
    Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(row.ImpactFX, other->m_position, nullptr, nullptr);  // +0x160 of the hit
    m_expiring = true;  // +0x3d1
    return true;
}

// 0x3e3fcc LaserTypeProjectile::Update()
// The countdown (+0x3e0) runs in ms while it is positive. The expiring branch calls m_onFinish once when the countdown is
// negative and reloads the countdown from table +0x38 as an int32 (LDR in the assembly; the pseudocode types it float).
// Each "NAN" in the pseudocode is the store of 0xffffffff, so m_lifetimeMs becomes -1 (MOV R3, #0xFFFFFFFF in the assembly).
// The floor and room queries are Singleton<PFWorld>::s_inst.GetFloorHeightAt and GetRoomAt, with m_pfObject's CanPathOn.
void LaserTypeProjectile::Update() {
    if (unk_3e0 > 0) {
        unk_3e0 = WrapSub(unk_3e0, Singleton<Application>::s_inst.GetDt());
    }

    if (m_expiring) {  // +0x3d1
        if (m_onFinish != nullptr && unk_3e0 < 0) {  // +0x3bc
            m_onFinish(this, m_userData);            // +0x3c0
            unk_3e0 = ProjectileRow(m_projectileId).TimeBetweenHit;  // table +0x38, int32
        }
        if (ProjectileRow(m_projectileId).DisappearOnHit || m_lifetimeMs <= 0) {  // table +0x05; +0x3b4
            m_dead = true;        // +0x3d0
            m_expiring = false;   // +0x3d1
            m_manager->DeSpawn(this, true);  // +0x378
            m_visualObject->SetVisible(false);  // +0x2d8
        } else {
            m_expiring = false;
        }
        return;
    }

    if (m_target != nullptr && m_target->IsDead()) {  // +0x384, IsDead
        m_target = nullptr;
    }
    if (m_dead) {  // +0x3d0
        return;
    }

    const Structs::Projectile& row = ProjectileRow(m_projectileId);
    if (row.TargetLock && m_target != nullptr) {  // table +0x35: home on the target
        SetDestination(m_target->GetTargetPosition());
    } else {
        // The destination is 1000 units along the direction from the current position to the destination, normalized.
        const Point3D<float> position = GetTargetPosition();
        Point3D<float> direction{m_destination.X - position.X, m_destination.Y - position.Y,
                                 m_destination.Z - position.Z};  // +0x1a8..+0x1b0
        direction.normalize();
        SetDestination(Point3D<float>{direction.X * 1000.0f + position.X, direction.Y * 1000.0f + position.Y,
                                      direction.Z * 1000.0f + position.Z});
    }

    // The bone nodes follow the owner's target (_bone_origin) and this projectile's target (_bone_target). The original
    // calls the virtual setPosition(vector3d) (vptr +0xa4) through each node; the xyz overload makes the same call.
    const Point3D<float> ownerPosition = m_laserOwner->GetTargetPosition();  // +0x3dc
    m_boneOrigin->setPosition(ownerPosition.X, ownerPosition.Y, ownerPosition.Z);  // +0x3d4
    const Point3D<float> selfPosition = GetTargetPosition();
    m_boneTarget->setPosition(selfPosition.X, selfPosition.Y, selfPosition.Z);  // +0x3d8

    GameObject::Update();

    // Speed falls by table +0x44 per second: speed += decel * dt / -1000.
    const float elapsedMs = static_cast<float>(static_cast<unsigned int>(Singleton<Application>::s_inst.GetDt()));
    m_speed = m_speed + (m_deceleration * elapsedMs) / -1000.0f;  // +0x3ac, +0x3b0
    m_lifetimeMs = WrapSub(m_lifetimeMs, Singleton<Application>::s_inst.GetDt());  // +0x3b4

    if (m_lifetimeMs <= 0 || m_speed <= 0.0f) {
        OnExpire(IMPACT_EXPIRE);
        m_lifetimeMs = -1;  // 0xffffffff, the "NAN" store
        return;
    }
    if (m_rangeSquared >= 0.0f) {  // +0x3a8, -1 when the table row has no range
        const Point3D<float> position = GetTargetPosition();
        const float dx = position.X - m_startPosition.X;  // +0x388
        const float dy = position.Y - m_startPosition.Y;  // +0x38c
        const float dz = position.Z - m_startPosition.Z;  // +0x390
        if (m_rangeSquared <= (dx * dx + dy * dy) + dz * dz) {
            OnExpire(IMPACT_EXPIRE);
            m_lifetimeMs = -1;
            return;
        }
    }

    // Floor test at the object position (GameObject +0x160). A floor the path cannot cross, or a wall floor (type bit
    // 0x02000000), expires the laser on the ground. Without a projectile node it expires at once. With one it expires only
    // when the launch height (+0x3a0) is at or below the floor height.
    float floorHeight = 0.0f;
    PFFloor* floor = nullptr;
    if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(GameObject::m_position, &floorHeight, nullptr, nullptr, &floor,
                                                    true) &&
        floor != nullptr) {
        if (m_pfObject.CanPathOn(floor) || (floor->m_typeMask & 0x02000000u) != 0) {  // GameObject +0x1c8
            if (m_projectileNode == nullptr) {  // +0x3a4
                return;
            }
            if (!(m_launchHeight <= floorHeight)) {  // +0x3a0
                return;
            }
        }
        OnExpire(IMPACT_GROUND);
        m_lifetimeMs = -1;
        return;
    }

    // No floor: the room at the position decides. No room expires with impact 0. A room whose flag bit 0 is set expires
    // with the ground impact. PFRoom +0x24 is m_flags in dh2/PFRoom.hpp.
    PFRoom* room = Singleton<PFWorld>::s_inst.GetRoomAt(GameObject::m_position);
    if (room == nullptr) {
        OnExpire(IMPACT_NONE);
        m_lifetimeMs = -1;
        return;
    }
    if ((room->m_flags & 1u) != 0) {
        OnExpire(IMPACT_GROUND);
        m_lifetimeMs = -1;
    }
}

// 0x3e449c LaserTypeProjectile::SetInfo(int, GameObject*, GameObject*, Callback, Callback, void*, float)
// The angle is not used. The original asserts that this overload is not supported (ASSERT line 178), then calls the
// bool overload through the vtable (+0xc8) with the flag clear.
void LaserTypeProjectile::SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                                  Callback onFinish, void* userData, float angleDegrees) {
    ReportAssert("!\"This version of SetInfo() is not supported by the laser projectile\"", 178);
    (void)angleDegrees;
    SetInfo(projectileId, owner, target, onHit, onFinish, userData, false);
}

// 0x3e4570 LaserTypeProjectile::SetInfo(int, GameObject*, GameObject*, Callback, Callback, void*, bool)
// Asserts the table index (line 63) and the owner (line 64); the owner is kept in m_laserOwner (+0x3dc) and m_owner (+0x380) is cleared. The start is the owner's target position or the absolute position
// of the owner visual's "projectile_node"; the squared range, speed, deceleration, countdown (-1) and lifetime come from the table row. The visual is the ProjectileDict model of table +0x28 (none when
// negative) with its "_bone_origin" and "_bone_target" nodes. A laser without a physics body gets a PhysicalObject on the application's physical world with the POProjectile vtable (not static, circle, sensor and
// bullet, group 0, category 0x20, mask 0x51f). The bone nodes are placed at the start, the visual is shown, unparented and plays clip 0 in a loop, and the destination is the target's position or 1000 units
// along the aim vector. The onHit argument is not stored: the laser never writes +0x3b8, and its OnCollision never calls a hit callback. The original's int return is not part of the void declaration.
void LaserTypeProjectile::SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                                  Callback onFinish, void* userData, bool useProjectileNode) {
    (void)onHit;
    if (projectileId < 0 || projectileId >= static_cast<int>(Arrays::ProjectileTable::size)) {
        ReportAssert("projectileId >= 0 && projectileId < (int)Arrays::ProjectileTable::size", 63);
    }
    if (owner == nullptr) {
        ReportAssert("owner", 64);
    }

    m_projectileId = projectileId;  // +0x374
    m_target = target;              // +0x384
    m_onFinish = onFinish;          // +0x3bc
    m_userData = userData;          // +0x3c0
    m_expiring = false;             // +0x3d1
    m_laserOwner = owner;           // +0x3dc
    m_owner = nullptr;              // +0x380: the owner is kept in m_laserOwner
    m_dead = false;                 // +0x3d0

    const Structs::Projectile& row = ProjectileRow(projectileId);

    Point3D<float> aim{0.0f, 0.0f, 0.0f};
    owner->GetLookAtVec(aim);

    const Point3D<float> ownerPosition = m_laserOwner->GetTargetPosition();
    m_startPosition = ownerPosition;      // +0x388..+0x390
    m_launchHeight = ownerPosition.Z;     // +0x3a0
    m_rangeSquared = row.MaxDistance >= 0.0f ? row.MaxDistance * row.MaxDistance : -1.0f;  // +0x3a8, table +0x20 squared

    m_projectileNode = nullptr;  // +0x3a4
    VisualObject* ownerVisual = owner->m_visualObject;  // owner +0x2d8
    if (ownerVisual != nullptr) {
        m_projectileNode = ownerVisual->GetSpecificNode("projectile_node");
        if (m_projectileNode != nullptr) {
            const glitch::core::vector3d<float> absolute = m_projectileNode->getAbsolutePosition();
            m_startPosition = Point3D<float>{absolute.X, absolute.Y, absolute.Z};
            m_launchHeight = absolute.Z;
        }
    }

    m_speed = row.Velocity;         // +0x3ac, table +0x40
    m_deceleration = row.VelocityDamping;  // +0x3b0, table +0x44
    unk_3e0 = -1;                // +0x3e0 countdown
    m_lifetimeMs = row.Timer;    // +0x3b4, table +0x3c

    if (row.Model < 0) {  // table +0x28: visual dict index, negative for none
        SetVisualObject(nullptr);
    } else {
        SetVisualObject(ProjectileDaeName(row.Model), nullptr, false);
        VisualObject* visual = m_visualObject;  // +0x2d8
        if (visual != nullptr) {
            m_boneOrigin = visual->GetSpecificNode("_bone_origin");  // +0x3d4
            m_boneTarget = visual->GetSpecificNode("_bone_target");  // +0x3d8
        } else {
            m_boneOrigin = nullptr;
            m_boneTarget = nullptr;
        }
    }

    if (m_physicalObject == nullptr) {  // +0x2dc
        POProjectile* body = new POProjectile(ApplicationGetInstance().m_physicalWorld, this, false, true, true, true, 0, 0x20, 0x51f, 0);
        SetPhysicalObject(body, false);
    }

    SetPosition(Point3D<float>{0.0f, 0.0f, 0.0f}, true);
    m_boneOrigin->setPosition(m_startPosition.X, m_startPosition.Y, m_launchHeight);  // +0x3d4
    m_boneTarget->setPosition(m_startPosition.X, m_startPosition.Y, m_launchHeight);  // +0x3d8

    VisualObject* visual = m_visualObject;  // +0x2d8
    if (visual != nullptr) {
        visual->SetVisible(true);
        visual->SetParent(nullptr);
        // Animation clip 0, looping: AnimController vptr +0x1c (PlayClip).
        visual->m_animController->PlayClip(0u, true, 0, 0u);  // +0x38 of the visual (0u picks the clip-index overload)
        if (visual->m_node != nullptr) {  // +0x08 of the visual
            visual->SetPosition(Point3D<float>{0.0f, 0.0f, 0.0f});
            // vptr +0x14 of the root node is onAnimate in the ISceneNode slot numbering (K 0x14, sym +0x20).
            visual->m_node->onAnimate(0);
        }
    }

    SetPosition(m_startPosition, true);

    if (m_target != nullptr) {
        SetDestination(m_target->GetTargetPosition());
    } else {
        Point3D<float> direction = aim;
        if (m_projectileNode != nullptr && useProjectileNode) {
            // Direction from the projectile node to the start. The start is the node's own position, so this is zero
            // and the normalized direction is NaN (the original does the same).
            const glitch::core::vector3d<float> nodePosition = m_projectileNode->getAbsolutePosition();
            direction = Point3D<float>{nodePosition.X - m_startPosition.X, nodePosition.Y - m_startPosition.Y,
                                       nodePosition.Z - m_startPosition.Z};
            direction.normalize();
        }
        SetDestination(Point3D<float>{direction.X * 1000.0f + m_startPosition.X,
                                      direction.Y * 1000.0f + m_startPosition.Y,
                                      direction.Z * 1000.0f + m_startPosition.Z});
    }

    m_pfObject.SetFlying(true);    // GameObject +0x1c8
    m_pfObject.SetSwimming(true);  // GameObject +0x1c8
}

// 0x3e4ac8 LaserTypeProjectile::~LaserTypeProjectile() [D1]
// Empty body: the compiler writes the three vtable pointers and calls ~Projectile. 0x3e4b2c [D2] has the same body.
LaserTypeProjectile::~LaserTypeProjectile() {}

// 0x3e4b2c LaserTypeProjectile::~LaserTypeProjectile() [D2]
// The same body as D1 (0x3e4ac8); the one C++ destructor serves both.

// 0x3e4b6c LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS) [C1]
// The base is the Projectile constructor with the same id (r1 is passed through in the assembly). The laser sets its own
// members: the owner, both bone nodes null, and the countdown -1. 0x3e4bc8 [C2] has the same body.
LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS id) : Projectile(id) {
    m_laserOwner = nullptr;  // +0x3dc
    m_boneOrigin = nullptr;  // +0x3d4
    m_boneTarget = nullptr;  // +0x3d8
    unk_3e0 = -1;            // +0x3e0
}

// 0x3e4bc8 LaserTypeProjectile::LaserTypeProjectile(ObjectBase::GO_IDS) [C2]
// The same body as C1 (0x3e4b6c); the one C++ constructor serves both.
