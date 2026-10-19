// Batch g1-game-world-TriggerTrap-4c3d15-0: the TriggerTrap getters (IsUpdatable .. getUDTypeName, GetScript .. GetSound),
// the Lua Remove callback, createBindings, InitPost, Activate, Create, GetDataId and the destructor.
// A TriggerTrap is a ZoneEx that hurts the characters inside it. Its data row (Arrays::TriggerTraps, stride 28) gives
// Damage, HurtChance, Script, Sound and Visual. Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so,
// checked against the assembly where the pseudocode drops an argument (InitPost, Activate, _Remove, Create). Offsets in
// comments are the original 32-bit ones. Partial functions name the blocked part in their comment; the ledger notes
// repeat the reason.
//

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "pydata-accessors/name_table.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/Zone.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "pydata-accessors/w7_arrays27.hpp"   // Arrays::TriggerTraps::members and size
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::GameObjectDict::members
#include "pydata-accessors/w7_structs_5.hpp"  // Structs::TriggerTrap (data row), Structs::ColladaFile (dict record)

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kTriggerTrapSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\TriggerTrap.cpp";

// GO id of TriggerTrap objects. Create accepts only an object whose ObjectBase m_goId (+0xf4) is this value.
constexpr int kTriggerTrapGoId = 15;

// The original ASSERT(expression). Level 2 stops the process (the original stores to address 0); level 1 prints the
// message and carries on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kTriggerTrapSource, line);
    }
}

// Arrays::TriggerTraps row (stride 28 in the original). The host elements are Structs::TriggerTrap, reached through a
// typed pointer, never through byte arithmetic. Field names come from w7_structs_5.hpp; the comments give the
// original offset and the meaning the listing gives it.
const Structs::TriggerTrap& TrapRow(int dataIndex) {
    return reinterpret_cast<const Structs::TriggerTrap*>(Arrays::TriggerTraps::members)[dataIndex];
}

}  // namespace

// 0x39cadc TriggerTrap::IsUpdatable() const
bool TriggerTrap::IsUpdatable() const {
    return true;
}

// 0x39cae4 TriggerTrap::IsAnimated() const
bool TriggerTrap::IsAnimated() const {
    return true;
}

// 0x39caec TriggerTrap::IsInteractive(GameObject*) const
bool TriggerTrap::IsInteractive(GameObject* /*by*/) const {
    return false;
}

// 0x39caf4 TriggerTrap::IsZonable() const
bool TriggerTrap::IsZonable() const {
    return true;
}

// 0x39cafc TriggerTrap::IsObstacle() const
bool TriggerTrap::IsObstacle() const {
    return true;
}

// 0x39cb04 TriggerTrap::GetObstacleRadius() const
// The listing returns the bit pattern 0x43160000, which is 150.0f.
float TriggerTrap::GetObstacleRadius() const {
    return 150.0f;
}

// 0x39cb10 TriggerTrap::GetObstacleStrength() const
// The listing returns the bit pattern 0x41200000, which is 10.0f.
float TriggerTrap::GetObstacleStrength() const {
    return 10.0f;
}

// 0x39cb1c TriggerTrap::getUDTypeName() const
const char* TriggerTrap::getUDTypeName() const {
    return "TriggerTrap";
}

// 0x39dbc0 TriggerTrap::GetScript() const
// "" when m_dataIndex (+0x3c0) is -1, else the row's Script (row +0x10, pydata m_w4).
const char* TriggerTrap::GetScript() const {
    if (m_dataIndex == -1) {
        return "";
    }
    return TrapRow(m_dataIndex).Script;
}

// 0x39dc08 TriggerTrap::GetVisual() const
// The row's Visual (row +0x18, m_w6) when m_dataIndex is not -1, else m_dataIndex (-1).
int TriggerTrap::GetVisual() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Visual;
    }
    return m_dataIndex;
}

// 0x39dc40 TriggerTrap::GetDamagerId() const
// m_damagerIndex (+0x3fc) when it is not -1. Else -1 without a data row, else the row's Damage (row +0x04, m_w1).
int TriggerTrap::GetDamagerId() const {
    if (m_damagerIndex != -1) {
        return m_damagerIndex;
    }
    if (m_dataIndex == -1) {
        return m_damagerIndex;
    }
    return TrapRow(m_dataIndex).Damage;
}

// 0x39dc90 TriggerTrap::GetHurtChance() const
// m_damagerIndex (+0x3fc) when it is not -1. Else -1 without a data row, else the row's HurtChance (row +0x08, m_w2).
int TriggerTrap::GetHurtChance() const {
    if (m_damagerIndex != -1) {
        return m_damagerIndex;
    }
    if (m_dataIndex == -1) {
        return m_damagerIndex;
    }
    return TrapRow(m_dataIndex).HurtChance;
}

// 0x39dce0 TriggerTrap::GetSound() const
// The row's Sound (row +0x14, m_w5) when m_dataIndex is not -1, else m_dataIndex (-1).
int TriggerTrap::GetSound() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Sound;
    }
    return m_dataIndex;
}

// 0x39dd18 TriggerTrap::_Remove(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The Lua Remove callback, bound as a function and as a method. It sets m_removing (+0x400). With a visual, it plays the
// "remove" clip, and a nonzero result leaves the trap in place: __Callback hides and deletes it when the animation ends.
// Otherwise the trap is hidden (SetVisible(false), vtable +0x40) and deleted (ObjectBase::Delete). The original returns the
// clip result or the Delete result as an int, but the binder takes a void callback, so the value is dropped here.
void TriggerTrap::_Remove(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/, void* user) {
    TriggerTrap* trap = static_cast<TriggerTrap*>(user);
    trap->m_removing = true;                       // +0x400
    VisualObject* visual = trap->m_visualObject;   // +0x2d8
    // AnimController (VisualObject +0x38), vtable +0x20: PlayClip("remove", loop false, unused 0, animation 0).
    if (visual != nullptr && visual->m_animController->PlayClip("remove", false, 0, 0)) {
        return;
    }
    trap->SetVisible(false);  // vtable +0x40, with r1 = 0
    trap->Delete();           // ObjectBase::Delete
}

// 0x39de6c TriggerTrap::GetDataId() const
// The first index in Arrays::TriggerTraps::m_memberNames (scanned up to Arrays::TriggerTraps::size) whose name equals the data string m_data (+0x3a8, its data pointer is the word the listing reads at +0x3bc), or -1.
int TriggerTrap::GetDataId() const {
    return pydata::FindMemberName(Arrays::TriggerTraps::m_memberNames, static_cast<int>(Arrays::TriggerTraps::size), m_data.c_str());
}

// 0x39dee0 TriggerTrap::InitPost()
// In the original order: the spawn probability gate, the data id, the m_dae name, Zone::InitPost, the MeetCondition branch with the spawn clip and the idle clip, the sound load
// (VoxSoundManager::LoadSound(GetSound()) when the manager exists), the script load, and the hidden branch.
void TriggerTrap::InitPost() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {  // +0x274
        m_dataIndex = GetDataId();                             // +0x3c0, the vtable slot 0xd8 call
        if (m_dataIndex != -1) {
            const int visual = GetVisual();                    // vtable slot 0xe0
            if (visual != -1) {
                // The GameObjectDict record at index `visual` is a 12-byte file record. Its name buffer (record +0x08,
                // Structs::ColladaFile::m_w2) becomes m_dae (GameObject +0x290, a 24-byte std::string).
                const Structs::ColladaFile& dict =
                    reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[visual];
                m_dae = dict.Name;
            }
        }
        Zone::InitPost();
        if (GameObject::MeetCondition()) {
            if (m_visualObject != nullptr) {                                     // +0x2d8
                AnimController* anim = m_visualObject->m_animController;         // VisualObject +0x38
                anim->SetCallbacks(&TriggerTrap::__Callback, this,
                                   &TriggerTrap::__EventCallback, this);
                // "spawn" with loop false, unused 0, animation 0. The original passes the previous return value (0) as unused.
                if (!anim->PlayClip("spawn", false, 0, 0)) {
                    m_idle = true;  // +0x401
                    // "idle" with loop true: the listing keeps r2 = 1 from the store above, so the clip loops.
                    anim->PlayClip("idle", true, 0, 0);
                }
            }
            if (VoxSoundManager::s_instance != nullptr) {
                VoxSoundManager::s_instance->LoadSound(GetSound());
            }
            LoadExternalScript(GetScript(), "data/scripts/objects/");
        } else {
            SetVisible(false);  // vtable +0x40, with r1 = 0 (the MeetCondition result)
        }
    }
}

// 0x39e198 TriggerTrap::Activate()
// With a visual, the trap is marked activated and its "activate" clip plays. Without one, the victims are cleared. With a data row (m_dataIndex >= 0) the trap's sound plays in 3D at its position.
void TriggerTrap::Activate() {
    if (m_visualObject != nullptr) {  // +0x2d8
        m_activated = true;           // +0x3c4
        // AnimController (VisualObject +0x38), vtable +0x20: PlayClip("activate", loop false, unused 0, animation 0).
        m_visualObject->m_animController->PlayClip("activate", false, 0, 0);
    } else if (!m_victims.empty()) {  // node count +0x3f0
        m_victims.clear();            // the tree at +0x3e0 is erased and its header reset
    }
    if (m_dataIndex >= 0) {
        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
        VoxSoundManager::s_instance->Play3D(GetSound(), at, false, 1, -1.0f, -1.0f);
    }
}

// 0x39e298 TriggerTrap::Create(GameObject*, int, int)
// Spawns a TriggerTrap object owned by owner, with trapIndex into Arrays::TriggerTraps and damagerIndex into
// Arrays::GameObjectDamager; m_data is set to the row name (Arrays::TriggerTraps::m_memberNames[trapIndex]). Steps: the owner assert (level 2 aborts, level 1 prints the message at line 229 and returns null), the spawn of a
// "TriggerTrap_%04u" object through the ObjectManager instance, the GO id check (15), m_owner (+0x3f8), m_dataIndex
// (+0x3c0), m_damagerIndex (+0x3fc), the position copy (+0x160..+0x168), InitPost, InitFinal and AddInitialObject on the
// owner's room (+0x2f4) when it is set.
GameObject* TriggerTrap::Create(GameObject* owner, int trapIndex, int damagerIndex) {
    if (owner == nullptr) {
        ReportAssert("owner", 229);
        return nullptr;
    }
    static unsigned int counter = 0;  // TriggerTrap::Create(...)::counter, a 32-bit word in the original
    char name[20];
    std::snprintf(name, sizeof name, "TriggerTrap_%04u", ++counter);
    // dword_99F764 is the ObjectManager instance (Application +0x38 in the listing), Spawn returns the handle by value.
    ObjectHandle handle = dword_99F764->Spawn("TriggerTrap", name, true, true);
    ObjectBase* object = handle.GetObject(false);
    if (object == nullptr || static_cast<int>(object->m_goId) != kTriggerTrapGoId) {  // ObjectBase +0xf4
        return nullptr;
    }
    TriggerTrap* trap = static_cast<TriggerTrap*>(object);
    trap->m_owner = owner;          // +0x3f8
    trap->m_dataIndex = trapIndex;  // +0x3c0
    trap->m_data = Arrays::TriggerTraps::m_memberNames.names[trapIndex];   // +0x3a8, the 24-byte std::string
    trap->m_damagerIndex = damagerIndex;   // +0x3fc
    trap->m_position = owner->m_position;  // +0x160..+0x168, copied word by word in the original
    trap->InitPost();                      // vtable +0x1c
    trap->InitFinal();                     // vtable +0x58
    if (owner->m_roomZone != nullptr) {    // +0x2f4
        owner->m_roomZone->AddInitialObject(trap);
    }
    return trap;
}

// 0x39e480 TriggerTrap::~TriggerTrap()
// The D1 body. The vptr writes, the clears of m_newVictims (+0x3c8) and m_victims (+0x3e0), the release of the m_data
// buffer (+0x3a8) and the ZoneEx base destructor are the compiler's, from the member and base destructors.
TriggerTrap::~TriggerTrap() {
}

// 0x39dd98 TriggerTrap::createBindings(sfc::script::lua::Binder&)
// Calls GameObject::createBindings first, then binds GetOwner, GetDamager and Remove, each as a function with this as the
// user pointer and then as a method, in that order.
void TriggerTrap::createBindings(sfc::script::lua::Binder& binder) {
    GameObject::createBindings(binder);
    binder.bindFunction("GetOwner", &TriggerTrap::_GetOwner, this);
    binder.bindMethod("GetOwner", &TriggerTrap::_GetOwner);
    binder.bindFunction("GetDamager", &TriggerTrap::_GetDamager, this);
    binder.bindMethod("GetDamager", &TriggerTrap::_GetDamager);
    binder.bindFunction("Remove", &TriggerTrap::_Remove, this);
    binder.bindMethod("Remove", &TriggerTrap::_Remove);
}
