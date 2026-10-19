// Batch g1-game-world-Projectile-6685f5-0: the Projectile class (flight, impacts and spawn setup).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Where the pseudocode drops a register
// argument (Update, OnExpire, OnCollision, HandleImpactFX), the value comes from the assembly. Offsets in
// comments are the original 32-bit ones.

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/POProjectile.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kProjectileSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Projectiles\\Projectile.cpp";

// The original ASSERT(expression). Level 2 stops the process (the original writes to address 0); level 1
// prints the message and carries on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kProjectileSource, line);
    }
}

// Arrays::ProjectileTable row. The original rows are 72 bytes; the host elements are Structs::Projectile,
// reached through a typed pointer (pydata-accessors/element_table.hpp), never through byte arithmetic.
const Structs::Projectile& ProjectileRow(int tableIndex) {
    return reinterpret_cast<const Structs::Projectile*>(Arrays::ProjectileTable::members)[tableIndex];
}

// Arrays::ProjectileDict row (12 bytes in the original, Structs::ColladaFile here). +0x08 is the dae name.
const char* ProjectileDaeName(int dictIndex) {
    return reinterpret_cast<const Structs::ColladaFile*>(Arrays::ProjectileDict::members)[dictIndex].Name;
}

// The table columns one impact plays. -1 means the column is empty.
struct ImpactColumns {
    int fx;     // effect set id, played through VisualFXManager::PlayAnimFXSet
    int sound;  // 3D sound id, played through VoxSoundManager::Play3D
};

// Column choice of Projectile::HandleImpactFX(ImpactType, Point3D) (asm 0x3e4db0). A missing sound column (+0x30)
// falls back to the character columns (+0x14 effect, +0x18 sound) for both; a missing effect column (+0x2c)
// falls back to +0x14 only.
ImpactColumns SelectImpactColumns(const Structs::Projectile& row, Projectile::ImpactType impact) {
    switch (impact) {
        case Projectile::IMPACT_NONE:
            return ImpactColumns{-1, -1};
        case Projectile::IMPACT_EXPIRE:
            return ImpactColumns{row.ExpireFX, row.ExpireSFX};  // +0x08 effect, +0x0c sound
        case Projectile::IMPACT_GROUND:
        case Projectile::IMPACT_OBJECT: {
            ImpactColumns columns{row.ObjectImpactFX, row.ObjectImpactSFX};  // +0x2c effect, +0x30 sound
            if (columns.sound == -1) {
                columns = ImpactColumns{row.ImpactFX, row.ImpactSFX};  // +0x14 effect, +0x18 sound
            } else if (columns.fx == -1) {
                columns.fx = row.ImpactFX;  // +0x14
            }
            return columns;
        }
        default:  // IMPACT_CHARACTER and any other value
            return ImpactColumns{row.ImpactFX, row.ImpactSFX};  // +0x14 effect, +0x18 sound
    }
}

// The original's LABEL_8 in Update: the projectile is dead, no longer expiring, and goes back to its pool.
void DespawnProjectile(Projectile& projectile) {
    projectile.m_dead = true;                              // +0x3d0
    projectile.m_expiring = false;                         // +0x3d1
    projectile.m_manager->DeSpawn(&projectile, false);     // ProjectileManager::DeSpawn(this, false)
}

}  // namespace

// 0x3e3df4 Projectile::IsDead() const
bool Projectile::IsDead() const {
    return m_dead;
}

// 0x3e3dfc Projectile::IsValidatingFloorPosition() const
int Projectile::IsValidatingFloorPosition() const {
    return 2;
}

// 0x3e3e04 Projectile::IsZonable() const
bool Projectile::IsZonable() const {
    return false;
}

// 0x3e3e0c Projectile::IsUpdatable() const
bool Projectile::IsUpdatable() const {
    return true;
}

// 0x3e3e14 Projectile::IsAnimated() const
bool Projectile::IsAnimated() const {
    return true;
}

// 0x3e3e1c Projectile::IsInteractive(GameObject*) const
bool Projectile::IsInteractive(GameObject* /*other*/) const {
    return false;
}

// 0x3e4da8 Projectile::GetSpeed() const
// Returns the current speed (+0x3ac), decayed in Update.
float Projectile::GetSpeed() const {
    return m_speed;
}

// 0x3e4db0 Projectile::HandleImpactFX(Projectile::ImpactType, Point3D<float> const&)
// The columns of the impact (SelectImpactColumns): the effect set plays with VisualFXManager::PlayAnimFXSet(id, position, nullptr, nullptr), then the sound in 3D at the position
// (VoxSoundManager::s_instance->Play3D(id, position, false, 1, -1, -1)). A column of -1 plays nothing. IMPACT_NONE returns before the table is read. The original's int return is not
// part of the void declaration.
void Projectile::HandleImpactFX(ImpactType impact, const Point3D<float>& position) {
    if (impact == IMPACT_NONE) {
        return;  // case 0 returns before the table is read
    }
    const ImpactColumns columns = SelectImpactColumns(ProjectileRow(m_projectileId), impact);
    if (columns.fx != -1) {
        Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(columns.fx, position, nullptr, nullptr);
    }
    if (columns.sound != -1) {
        const glitch::core::vector3d<float> at{position.X, position.Y, position.Z};
        VoxSoundManager::s_instance->Play3D(columns.sound, at, false, 1, -1.0f, -1.0f);
    }
}

// 0x3e4eec Projectile::HandleImpactFX(GameObject*, Point2D<float> const&)
// A hit on a character plays the character impact at the object's target position. Any other object plays
// the object impact at the hit point's x and y with the object's target z.
void Projectile::HandleImpactFX(GameObject* hit, const Point2D<float>& position) {
    if (hit == nullptr) {
        ReportAssert("go", 338);
        // The original dereferences the null object right after the assert, so it always ends in a crash.
        std::abort();
    }
    if (hit->IsCharacter()) {
        HandleImpactFX(IMPACT_CHARACTER, hit->GetTargetPosition());
        return;
    }
    const Point3D<float> target = hit->GetTargetPosition();
    HandleImpactFX(IMPACT_OBJECT, Point3D<float>{position.X, position.Y, target.Z});
}

// 0x3e4fe4 Projectile::SetManager(ProjectileManager*)
void Projectile::SetManager(ProjectileManager* manager) {
    if (manager == nullptr) {
        ReportAssert("mgr", 68);
    }
    m_manager = manager;  // +0x378
}

// 0x3e5078 Projectile::OnExpire(Projectile::ImpactType)
// Verified against the listing (0x3e5078). A table row that asks for it (+0x34) snaps the projectile to the floor under its stored position (+0x394): the floor of the PFObject (+0x10) answers when it has one, else the room of the PFObject
// (+0x0c), else the world (PFWorld::GetFloorHeightAt). The position is set (SetPosition, with the found height; the height starts at 0 and stays 0 when no floor answers) in every case.
// Then the hit object is cleared (+0x3cc), the projectile is marked expiring (+0x3d1) and the impact effect plays at the target position.
void Projectile::OnExpire(ImpactType impact) {
    if (ProjectileRow(m_projectileId).StayOnFloor) {  // table +0x34: snap to the floor on expiry
        PFFloor* floor = m_pfObject.m_floor;     // PFObject +0x10 (GameObject +0x1d8)
        PFRoom* room = m_pfObject.m_room;        // PFObject +0x0c (GameObject +0x1d4)
        float height = 0.0f;
        Point3D<float> normal{0.0f, 0.0f, 0.0f};
        if (floor != nullptr) {
            floor->GetFloorHeightAt(m_position, &height, &normal);
        } else if (room != nullptr) {
            room->GetFloorHeightAt(m_position, &height, &normal, &floor, false);
        } else {
            Singleton<PFWorld>::s_inst.GetFloorHeightAt(m_position, &height, &normal, &room, &floor, false);
        }
        SetPosition(Point3D<float>{m_position.X, m_position.Y, height}, true);
    }
    m_hitObject = nullptr;  // +0x3cc
    m_expiring = true;      // +0x3d1
    HandleImpactFX(impact, GetTargetPosition());
}

// 0x3e51b0 Projectile::Update()
// Verified against the listing (0x3e51b0). An expiring projectile first runs its finish callback (m_onFinish, result 0 without one). With no hit object it goes back to its pool (dead, no longer expiring, ProjectileManager::DeSpawn); with
// a hit object a result of 0 plays the impact effect (HandleImpactFX(hit, position)) and goes back to the pool, and a result of 1 revives it (not dead, not expiring). A target that died is dropped (+0x384).
// A dead projectile does nothing more. Otherwise the stored position (+0x394) takes GetTargetPosition(), the destination is the target's position for a homing row (table +0x35), or 1000 units along the
// normalised XY direction (destination - position) from the position, then GameObject::Update, the speed decays by deceleration * dt / 1000, and the lifetime (+0x3b4) loses dt. The projectile expires
// (OnExpire(EXPIRE)) when the lifetime or speed is used up or the squared distance from the start (+0x388) reaches the range. Otherwise the floor under the object (PFWorld::GetFloorHeightAt) decides: a floor
// the object can path on, or a wall floor (type bit 0x02000000), keeps it flying unless a projectile node exists and its launch height (+0x3a0) is above the floor (OnExpire(GROUND)); any other floor expires it
// on the ground; with no floor the room (PFWorld::GetRoomAt) keeps it flying unless the room's flag word (+0x24) has bit 0, and with no room at all it expires with IMPACT_NONE.
// The original's int return is not part of the void declaration.
void Projectile::Update() {
    if (m_expiring) {
        const int finishResult = m_onFinish != nullptr ? m_onFinish(this, m_userData) : 0;
        if (m_hitObject == nullptr) {
            DespawnProjectile(*this);
            return;
        }
        if (finishResult == 0) {
            HandleImpactFX(m_hitObject, m_impactPosition);
            DespawnProjectile(*this);
            return;
        }
        if (finishResult == 1) {
            m_dead = false;      // +0x3d0
            m_expiring = false;  // +0x3d1
        }
    }

    if (m_target != nullptr && m_target->IsDead()) {  // target +0x34 IsDead()
        m_target = nullptr;                           // +0x384
    }
    if (m_dead) {
        return;
    }

    const Point3D<float> targetPosition = GetTargetPosition();
    m_position = targetPosition;  // +0x394..+0x3a0 copy of GetTargetPosition()

    const Structs::Projectile& row = ProjectileRow(m_projectileId);
    if (row.TargetLock && m_target != nullptr) {  // table +0x35: home on the target
        SetDestination(m_target->GetTargetPosition());
    } else {
        // The destination is 1000 units along the XY direction (destination - position); a zero direction gives NaN as in the original.
        const Point3D<float> current = GetTargetPosition();
        Point3D<float> direction{m_destination.X - current.X, m_destination.Y - current.Y, 0.0f};
        direction.normalize();
        direction.X = direction.X * 1000.0f;
        direction.Y = direction.Y * 1000.0f;
        direction.Z = direction.Z * 1000.0f;
        const Point3D<float> base = GetTargetPosition();
        SetDestination(Point3D<float>{direction.X + base.X, direction.Y + base.Y, direction.Z + base.Z});
    }

    GameObject::Update();

    const int dt = ApplicationGetInstance().GetDt();
    m_speed = m_speed + (m_deceleration * static_cast<float>(static_cast<unsigned int>(dt))) / -1000.0f;
    m_lifetimeMs = static_cast<int>(static_cast<unsigned int>(m_lifetimeMs) - static_cast<unsigned int>(ApplicationGetInstance().GetDt()));

    if (m_lifetimeMs <= 0 || m_speed <= 0.0f) {
        OnExpire(IMPACT_EXPIRE);
        return;
    }
    if (m_rangeSquared >= 0.0f) {
        const Point3D<float>& position = GetTargetPosition();
        const float dx = position.X - m_startPosition.X;
        const float dy = position.Y - m_startPosition.Y;
        const float dz = position.Z - m_startPosition.Z;
        const float distanceSquared = (dx * dx + dy * dy) + dz * dz;
        if (m_rangeSquared <= distanceSquared) {
            OnExpire(IMPACT_EXPIRE);
            return;
        }
    }

    float floorHeight = 0.0f;
    PFFloor* floor = nullptr;
    if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(GameObject::m_position, &floorHeight, nullptr, nullptr, &floor, true) && floor != nullptr) {
        if (m_pfObject.CanPathOn(floor) || (floor->m_typeMask & 0x02000000u) != 0) {
            if (m_projectileNode == nullptr) {
                return;
            }
            if (!(m_launchHeight <= floorHeight)) {
                return;
            }
        }
        OnExpire(IMPACT_GROUND);
    } else {
        PFRoom* room = Singleton<PFWorld>::s_inst.GetRoomAt(GameObject::m_position);
        if (room != nullptr) {
            if ((room->m_flags & 1u) == 0) {
                return;
            }
            OnExpire(IMPACT_GROUND);
        } else {
            OnExpire(IMPACT_NONE);
        }
    }
}

// 0x3e55b4 Projectile::OnCollision(GameObject*, Point2D<float> const&)
// Returns true when the hit was consumed (the projectile is now expiring).
bool Projectile::OnCollision(GameObject* other, const Point2D<float>& position) {
    if (m_dead || m_expiring) {
        return false;
    }
    if (other == nullptr || m_owner == other) {
        return false;
    }

    ObjectHandle otherHandle = other->GetHandle();
    Character* otherCharacter = otherHandle.operator Character*();
    if (otherCharacter == nullptr) {
        // Not a character: only a projectile without a homing target hits it.
        if (m_target != nullptr) {
            return false;
        }
    } else {
        const Structs::Projectile& row = ProjectileRow(m_projectileId);
        if (row.Dedicated && m_target != other) {  // table +0x04: a homing shot hits its target only
            return false;
        }
        if (!row.FriendlyFire) {  // table +0x10: a character hit must be an enemy of the owner
            ObjectHandle ownerHandle = m_owner->GetHandle();
            Character* ownerCharacter = ownerHandle.operator Character*();
            if (ownerCharacter != nullptr && !ownerCharacter->AI_IsEnemy(other)) {
                return false;
            }
        }
    }

    m_hitObject = other;                                   // +0x3cc
    m_impactPosition = Point2D<float>{position.X, position.Y};  // +0x3c4

    if (m_onHit != nullptr) {
        const int result = m_onHit(this, m_userData);
        if (result == 2) {
            // Finish callback and impact effect, and the projectile keeps flying.
            if (m_onFinish != nullptr) {
                m_onFinish(this, m_userData);
            }
            HandleImpactFX(m_hitObject, m_impactPosition);
            return false;
        }
        if (result == 3) {
            OnExpire(IMPACT_EXPIRE);
        } else if (result == 1) {
            return false;
        }
    }
    m_expiring = true;  // +0x3d1
    return true;
}

// 0x3e57cc Projectile::SetInfo(int, GameObject*, GameObject*, Callback, Callback, void*, float)
// SetInfo(.., false) through the virtual slot +0xc8, then the owner's look vector is rotated by angleDegrees * 0.017453292 (Point3D::rotateXY) and the destination is 1000 units along it from the owner's
// target position; the visual's rotation is synchronised. The original returns the visual (or its int result); the void declaration drops that.
void Projectile::SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                         Callback onFinish, void* userData, float angleDegrees) {
    SetInfo(projectileId, owner, target, onHit, onFinish, userData, false);  // virtual slot +0xc8

    Point3D<float> aim{0.0f, 0.0f, 0.0f};
    m_owner->GetLookAtVec(aim);
    aim.rotateXY(angleDegrees * 0.017453292f);

    const Point3D<float> base = m_owner->GetTargetPosition();
    SetDestination(Point3D<float>{aim.X * 1000.0f + base.X, aim.Y * 1000.0f + base.Y, aim.Z * 1000.0f + base.Z});
    if (m_visualObject != nullptr) {  // +0x2d8
        m_visualObject->SyncRotation();
    }
}

// 0x3e58cc Projectile::SetInfo(int, GameObject*, GameObject*, Callback, Callback, void*, bool)
// Asserts the table index (line 78) and the owner (line 79), then copies the row: the id (+0x374), the flag at table +0x1d (+0x37c), the target, the callbacks, the owner and the user data; the projectile is
// neither dead nor expiring. The start is the owner's target position, or the absolute position of the owner visual's "projectile_node" when it has one (the launch height is that Z); the squared range comes
// from table +0x20 (-1 when negative); speed, deceleration and lifetime from table +0x40, +0x44 and +0x3c. The visual is the ProjectileDict model of table +0x28 (none when negative). The physics body is a
// PhysicalObject on the application's physical world with the POProjectile vtable: not static, circle, sensor and bullet, group 0, category 0x20, mask 0x51f, owned by the projectile. Then position,
// rotation (the owner's), and the destination: the target's position, or 1000 units along the aim vector (the owner's look vector, or with useProjectileNode and a node the normalised XY direction from
// the owner's target position to the node). With a visual, clip 0 plays in a loop, the visual is synchronised and a lifetime of -666 becomes the clip length; the PFObject flies and swims.
// The original's int return is not part of the void declaration.
void Projectile::SetInfo(int projectileId, GameObject* owner, GameObject* target, Callback onHit,
                         Callback onFinish, void* userData, bool useProjectileNode) {
    if (projectileId < 0 || static_cast<std::uint32_t>(projectileId) >= Arrays::ProjectileTable::size) {
        ReportAssert("projectileId >= 0 && projectileId < (int)Arrays::ProjectileTable::size", 78);
    }
    if (owner == nullptr) {
        ReportAssert("owner", 79);
    }

    const Structs::Projectile& row = ProjectileRow(projectileId);
    m_projectileId = projectileId;             // +0x374
    unk_37c = row.IsMagic;                     // +0x37c table +0x1d
    m_target = target;                         // +0x384
    m_onHit = onHit;                           // +0x3b8
    m_onFinish = onFinish;                     // +0x3bc
    m_owner = owner;                           // +0x380
    m_dead = false;                            // +0x3d0
    m_userData = userData;                     // +0x3c0
    m_expiring = false;                        // +0x3d1

    Point3D<float> aim{0.0f, 0.0f, 0.0f};
    owner->GetLookAtVec(aim);

    const Point3D<float> ownerPosition = owner->GetTargetPosition();
    m_startPosition = ownerPosition;                     // +0x388 owner's target position
    m_launchHeight = ownerPosition.Z;                    // +0x3a0
    m_projectileNode = nullptr;                          // +0x3a4
    m_rangeSquared = row.MaxDistance >= 0.0f ? row.MaxDistance * row.MaxDistance : -1.0f;  // +0x3a8 table +0x20, squared

    VisualObject* ownerVisual = owner->m_visualObject;   // +0x2d8 of the owner
    if (ownerVisual != nullptr) {
        glitch::scene::ISceneNode* node = ownerVisual->GetSpecificNode("projectile_node");
        m_projectileNode = node;                         // +0x3a4
        if (node != nullptr) {
            const glitch::core::vector3d<float> absolute = node->getAbsolutePosition();
            m_startPosition = Point3D<float>{absolute.X, absolute.Y, absolute.Z};
            m_launchHeight = absolute.Z;
        }
    }

    m_speed = row.Velocity;         // +0x3ac table +0x40
    m_deceleration = row.VelocityDamping;  // +0x3b0 table +0x44
    m_lifetimeMs = row.Timer;    // +0x3b4 table +0x3c

    if (row.Model < 0) {  // table +0x28: visual dict index
        SetVisualObject(nullptr);
    } else {
        SetVisualObject(ProjectileDaeName(row.Model), nullptr, false);
    }

    POProjectile* body = new POProjectile(ApplicationGetInstance().m_physicalWorld, this, false, true, true, true, 0, 0x20, 0x51f, 0);
    SetPhysicalObject(body, false);

    SetPosition(m_startPosition, true);
    SetRotation(owner->m_rotation);  // owner +0x16c

    if (m_target != nullptr) {
        SetDestination(m_target->GetTargetPosition());
    } else {
        Point3D<float> direction = aim;
        if (m_projectileNode != nullptr && useProjectileNode) {
            const glitch::core::vector3d<float> nodePosition = m_projectileNode->getAbsolutePosition();
            const Point3D<float> ownerTarget = owner->GetTargetPosition();
            direction = Point3D<float>{nodePosition.X - ownerTarget.X, nodePosition.Y - ownerTarget.Y, 0.0f};
            direction.normalize();
        }
        const Point3D<float> base = owner->GetTargetPosition();
        SetDestination(Point3D<float>{direction.X * 1000.0f + base.X, direction.Y * 1000.0f + base.Y,
                                      direction.Z * 1000.0f + base.Z});
    }

    if (m_visualObject != nullptr) {  // +0x2d8
        AnimController* animator = m_visualObject->m_animController;  // VisualObject +0x38
        animator->PlayClip(0u, true, 0, 0u);                          // vtable +0x1c (clip 0, loop, animation 0)
        m_visualObject->Sync();
        if (m_lifetimeMs == -666) {
            m_lifetimeMs = animator->GetClipDuration(0u);  // vtable +0x18: the animation length
        }
    }
    m_pfObject.SetFlying(true);
    m_pfObject.SetSwimming(true);
}

// 0x3e5d9c (D1) and 0x3e5e00 (D2): the same body. The vptr writes and the ~GameObject call are emitted by the compiler.
Projectile::~Projectile() {
}

// 0x3e5e40 (C1) and 0x3e5edc (C2): the same body. GameObject(id) is the base constructor, the vptr writes are the compiler's.
// The original zeroes only the members listed here; the others (the table columns and the callbacks) are set by SetInfo.
Projectile::Projectile(GO_IDS id) : GameObject(id) {
    m_impactPosition = Point2D<float>{0.0f, 0.0f};  // +0x3c4, +0x3c8
    m_projectileId = -1;                             // +0x374
    m_expiring = false;                              // +0x3d1
    unk_85 = 1;                                      // ObjectBase +0x85: the updating flag
    m_manager = nullptr;                             // +0x378
    m_owner = nullptr;                               // +0x380
    m_target = nullptr;                              // +0x384
    m_startPosition = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x388..+0x393
    m_position = Point3D<float>{0.0f, 0.0f, 0.0f};       // +0x394..+0x39f
    m_projectileNode = nullptr;                      // +0x3a4
    m_onHit = nullptr;                               // +0x3b8
    m_hitObject = nullptr;                           // +0x3cc
    m_dead = false;                                  // +0x3d0
}
