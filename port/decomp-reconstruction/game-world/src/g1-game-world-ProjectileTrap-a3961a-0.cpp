// Batch g1-game-world-ProjectileTrap-a3961a-0: the ProjectileTrap class (a TimerTrap that fires a projectile from its
// data row each time its timer runs out while it is active) and the hit callback given to ProjectileManager::Spawn.
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the assembly where the pseudocode
// drops an argument (Activate, SpecificUpdate, _HandleProjectile, Create). Offsets in comments are the original 32-bit
// ones. Partial functions name the blocked part in their comment; the ledger notes repeat the reason.
//

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "pydata-accessors/name_table.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/ProjectileTrap.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kProjectileTrapSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\ProjectileTrap.cpp";

// GO id of ProjectileTrap objects. Create accepts only an object whose ObjectBase m_goId (+0xf4) is this value.
constexpr int kProjectileTrapGoId = 17;

// The original ASSERT(expression). Level 2 stops the process (the original stores to address 0); level 1 prints the
// message and carries on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kProjectileTrapSource, line);
    }
}

// Arrays::ProjectileTraps row (stride 40 in the original). The host elements are Structs::ProjectileTrap, reached
// through a typed pointer, never through byte arithmetic. The pydata fields are placeholders (m_wN); the names in the
// comments are the meanings the original's loads give them (Structs::ProjectileTrap in w7_structs_5.hpp).
const Structs::ProjectileTrap& TrapRow(int dataIndex) {
    return reinterpret_cast<const Structs::ProjectileTrap*>(Arrays::ProjectileTraps::members)[dataIndex];
}

}  // namespace

// 0x39cb2c ProjectileTrap::GetScript() const
const char* ProjectileTrap::GetScript() const {
    if (m_dataIndex == -1) {
        return "";
    }
    return TrapRow(m_dataIndex).Script;  // row +0x1c, Script
}

// 0x39cb74 ProjectileTrap::GetVisual() const
int ProjectileTrap::GetVisual() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Visual;  // row +0x24, Visual
    }
    return m_dataIndex;
}

// 0x39cbac ProjectileTrap::GetDamagerId() const
int ProjectileTrap::GetDamagerId() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Damage;  // row +0x04, Damage
    }
    return m_dataIndex;
}

// 0x39cbe4 ProjectileTrap::GetHurtChance() const
// A damager index set by Create wins over the row. Without a data row the result is m_damagerIndex (-1 when unset).
int ProjectileTrap::GetHurtChance() const {
    if (m_damagerIndex != -1) {  // +0x3fc
        return m_damagerIndex;
    }
    if (m_dataIndex == -1) {  // +0x3c0
        return m_damagerIndex;
    }
    return TrapRow(m_dataIndex).HurtChance;  // row +0x0c, HurtChance
}

// 0x39cc34 ProjectileTrap::GetSound() const
int ProjectileTrap::GetSound() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Sound;  // row +0x20, Sound
    }
    return m_dataIndex;
}

// 0x39cc6c ProjectileTrap::GetDelay() const
int ProjectileTrap::GetDelay() const {
    if (m_dataIndex == -1) {
        return 0;
    }
    return TrapRow(m_dataIndex).Delay;  // row +0x08, Delay (ms)
}

// 0x39cca8 ProjectileTrap::_HandleProjectile(Projectile*, void*)
// The hit callback given to ProjectileManager::Spawn. The projectile's m_hitObject is the object it hit. When that
// object resolves to a Character, the owner trap rolls the attack and applies it. The user pointer is not read.
int ProjectileTrap::_HandleProjectile(Projectile* p, void* /*user*/) {
    if (p == nullptr) {
        ReportAssert("p", 233);
        std::abort();  // the original reads p +0x3cc with p null and faults
    }
    GameObject* hitObject = p->m_hitObject;  // +0x3cc
    if (hitObject == nullptr) {
        return 1;
    }
    ObjectHandle hit = hitObject->GetHandle();  // ObjectBase::GetHandle into a stack handle
    Character* victim = hit;                    // ObjectHandle::operator Character*
    if (victim == nullptr) {
        return 1;
    }
    // The owner is the trap that spawned p (SpecificUpdate passes the trap as the owner), so it is read as a
    // ProjectileTrap. The original calls the owner's vtable slots 0xe4 (GetDamagerId) and 0xe8 (GetHurtChance) in that
    // order, before the attack.
    ProjectileTrap* trap = static_cast<ProjectileTrap*>(p->m_owner);  // +0x380
    const int damagerId = trap->GetDamagerId();                        // vtable +0xe4
    const int hurtChance = trap->GetHurtChance();                      // vtable +0xe8
    Character::AttackResult result{};
    Character::F_GOAttack(result, trap, victim, damagerId, hurtChance);
    Character::F_ApplyResult(result, trap, victim, false);
    return 0;
}

// 0x39cdc4 ProjectileTrap::SpecificUpdate()
// The timer counts down by the frame time, and at zero an active trap that is not already activated plays its 3D sound (with a data row), reloads the timer and fires its projectile, while an
// activated trap transfers its victims.
void ProjectileTrap::SpecificUpdate() {
    if (!m_active) {  // +0x40c
        return;
    }
    if (m_dataIndex >= 0) {
        m_timer -= Singleton<Application>::s_inst.GetDt();  // +0x404, frame time in ms
        if (m_timer <= 0) {
            if (m_activated) {  // +0x3c4
                m_timer = 0;
                TransferVictims();
                return;
            }
            if (m_dataIndex >= 0) {
                const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
                VoxSoundManager::s_instance->Play3D(GetSound(), at, false, 1, -1.0f, -1.0f);
            }
            m_timer = GetDelay();  // vtable +0xf8
            Singleton<ProjectileManager>::s_inst.Spawn(m_projectileId, this, nullptr, nullptr,
                                                       &ProjectileTrap::_HandleProjectile, nullptr, true);
            return;  // the original re-reads m_activated here, which is clear on this path
        }
    }
    if (m_activated) {
        TransferVictims();
    }
}

// 0x39cf18 ProjectileTrap::Create(GameObject*, int, int)
// Spawns a ProjectileTrap object, owned by owner, with trapIndex into Arrays::ProjectileTraps and damagerIndex.
// The data name (Arrays::ProjectileTraps::m_memberNames[trapIndex]) is copied into m_data (+0x3a8).
GameObject* ProjectileTrap::Create(GameObject* owner, int trapIndex, int damagerIndex) {
    if (owner == nullptr) {
        ReportAssert("owner", 130);
        return nullptr;
    }
    static unsigned int counter = 0;  // ProjectileTrap::Create(...)::counter, a 32-bit word in the original
    char name[20];
    std::snprintf(name, sizeof name, "ProjectileTrap_%04u", ++counter);
    ObjectHandle handle = dword_99F764->Spawn("ProjectileTrap", name, true, true);
    ObjectBase* object = handle.GetObject(false);
    if (object == nullptr || static_cast<int>(object->m_goId) != kProjectileTrapGoId) {  // ObjectBase +0xf4
        return nullptr;
    }
    ProjectileTrap* trap = static_cast<ProjectileTrap*>(object);
    trap->m_owner = owner;          // +0x3f8
    trap->m_dataIndex = trapIndex;  // +0x3c0
    trap->m_data = Arrays::ProjectileTraps::m_memberNames.names[trapIndex];   // +0x3a8, a 24-byte std::string
    trap->m_damagerIndex = damagerIndex;   // +0x3fc
    trap->m_position = owner->m_position;  // +0x160..+0x168, copied word by word in the original
    trap->InitPost();                      // vtable +0x1c
    trap->InitFinal();                     // vtable +0x58
    if (owner->m_roomZone != nullptr) {    // +0x2f4
        owner->m_roomZone->AddInitialObject(trap);
    }
    return trap;
}

// 0x39d0f8 ProjectileTrap::GetDataId() const
// The first index in Arrays::ProjectileTraps::m_memberNames (scanned up to Arrays::ProjectileTraps::size) whose name equals m_data, or -1.
int ProjectileTrap::GetDataId() const {
    return pydata::FindMemberName(Arrays::ProjectileTraps::m_memberNames, static_cast<int>(Arrays::ProjectileTraps::size), m_data.c_str());
}

// 0x39d16c ProjectileTrap::InitPost()
void ProjectileTrap::InitPost() {
    TimerTrap::InitPost();
    if (m_dataIndex >= 0) {
        const Structs::ProjectileTrap& row = TrapRow(m_dataIndex);
        m_projectileId = row.Projectile;  // row +0x14, Projectile (the table row id that SpecificUpdate spawns)
        m_active = row.IsActive;        // row +0x10, IsActive
    }
}

// 0x39d1d0 ProjectileTrap::DeclareProperties()
// Thunk: forwards to TimerTrap::DeclareProperties (0x39d9a4), which forwards on to TriggerTrap::DeclareProperties.
void ProjectileTrap::DeclareProperties() {
    TimerTrap::DeclareProperties();
}

// 0x39d1dc (D1) and 0x39d240 (D2): the same body. The vptr writes and the TimerTrap base destructor are the compiler's.
ProjectileTrap::~ProjectileTrap() {
}

// 0x39d280 (C1) and 0x39d2c0 (C2): the same body. TimerTrap(id) is the base constructor, the id is passed on unchanged
// (r1 in the listing). The vptr writes are the compiler's. The original does not write m_projectileId or m_active.
ProjectileTrap::ProjectileTrap(ObjectBase::GO_IDS id) : TimerTrap(id) {
}

// 0x39d430 ProjectileTrap::Activate()
// With a visual, the trap is marked activated and its animation plays. Without one, the victims are cleared. With a data row (m_dataIndex >= 0) the trap's sound plays in 3D at its position.
void ProjectileTrap::Activate() {
    if (m_visualObject != nullptr) {  // +0x2d8
        m_activated = true;           // +0x3c4
        // AnimController (VisualObject +0x38), vtable +0x1c: PlayClip(clip 0, loop true, unused 0, animation 0). The
        // listing sets r1 = 0, r2 = 1 (loop), r3 = 0 and the stack word 0.
        m_visualObject->m_animController->PlayClip(0u, true, 0, 0u);
    } else if (!m_victims.empty()) {  // node count +0x3f0
        m_victims.clear();            // the tree at +0x3e0 is erased and its header reset
    }
    if (m_dataIndex >= 0) {
        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
        VoxSoundManager::s_instance->Play3D(GetSound(), at, false, 1, -1.0f, -1.0f);
    }
}
