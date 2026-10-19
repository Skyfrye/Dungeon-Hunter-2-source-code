// Test for batch g1-game-world-TriggerTrap-4c3d15-0.
//
// The TriggerTrap object is zero-filled storage and is never constructed. Only fields are read or written, and every call
// is qualified (non-virtual), as in the other game-world tests. The Arrays::TriggerTraps rows are zero-filled host records
// with their fields set. Activate is checked on a real std::set placed over m_victims.
//
// The TriggerTrap vtable is emitted in the translation unit, so the inherited virtuals it names (GameObject, ObjectBase,
// Zone, ZoneEx) and the other TriggerTrap methods are stubs here. The engine calls the bodies make (Spawn, GetObject,
// AddInitialObject, Binder) are stubs too.
//
// Not covered: InitPost, _Remove and createBindings work through virtual calls on the object (GetDataId, SetVisible,
// AnimController), so they need a constructed object and are not run here.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <set>

#include "dh2/AnimController.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/Zone.hpp"
#include "dh2/ZoneEx.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// What the stubbed ObjectManager::Spawn and ObjectHandle::GetObject hand back to Create.
ObjectBase* g_spawned = nullptr;
int g_objectManagerDummy = 0;

}  // namespace

// ---- engine symbols the object file references ----
int gAssertLevel = 0;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

namespace Arrays {
std::uint8_t* TriggerTraps::members = nullptr;
std::uint32_t TriggerTraps::size = 0;
std::uint8_t* GameObjectDict::members = nullptr;
std::uint32_t GameObjectDict::size = 0;
}  // namespace Arrays

// ---- inherited and sibling virtuals the TriggerTrap vtable names: no-op stubs ----
int GameObject::CheckSpawnProbability() { return 0; }
void GameObject::Deserialize(IStreamBase*) {}
void GameObject::Disabled() {}
void GameObject::Draw() const {}
void GameObject::Enabled() {}
Point3D<float> GameObject::GetFXScale() const { return Point3D<float>(); }
int GameObject::GetFXScaleValue() const { return -1; }
GameObject* GameObject::GetFocusObject() const { return nullptr; }
float GameObject::GetInteractionRadius() const { return 0.0f; }
int GameObject::GetInteractionType(GameObject*) const { return -1; }
float GameObject::GetOpacity() const { return 1.0f; }
float GameObject::GetRotationSpeed() const { return -1.0f; }
float GameObject::GetSpeed() const { return 4.0f; }
void GameObject::InitFinal() {}
void GameObject::Interact(GameObject*) {}
bool GameObject::IsAvoidingObstacles() const { return false; }
bool GameObject::IsDead() const { return false; }
bool GameObject::IsGameObject() const { return true; }
bool GameObject::IsHit() const { return false; }
bool GameObject::IsInteractiveEx(GameObject*) const { return false; }
bool GameObject::IsUpdatingPath() const { return false; }
bool GameObject::IsUpdatingPositionFromPhysics() const { return false; }
bool GameObject::IsUpdatingPositionFromVisual() const { return false; }
bool GameObject::IsUpdatingRotationFromPhysics() const { return false; }
bool GameObject::IsUpdatingRotationFromVisual() const { return false; }
bool GameObject::IsUpdatingVisualWithRotation() const { return false; }
bool GameObject::IsValidatingCameraLimits() const { return false; }
int GameObject::IsValidatingFloorPosition() const { return 0; }
void GameObject::LoadExternalScript(const char*, const char*) {}
bool GameObject::MeetCondition() const { return false; }
void GameObject::Serialize(IStreamBase*) {}
void GameObject::SetRelativeAABB(const aabb<float>&, bool) {}
void GameObject::SetVisible(bool) {}
void GameObject::createBindings(sfc::script::lua::Binder&) {}

void ObjectBase::Delete() {}
bool ObjectBase::IsCharacter() const { return false; }
bool ObjectBase::IsPlayer() const { return false; }
bool ObjectBase::IsRemotelyUpdated() const { return false; }
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::InterpretIncomingNetStruct(bool) {}
void ObjectBase::setUpdating(bool) {}

ObjectHandle::ObjectHandle() {}
ObjectBase* ObjectHandle::GetObject(bool) { return g_spawned; }
ObjectHandle ObjectManager::Spawn(char const*, char const*, bool, bool) { return ObjectHandle(); }
bool RoomZone::AddInitialObject(GameObject*) { return false; }

// The GameObject defaults that the secondary vtables of TriggerTrap name (TriggerTrap overrides the same slots).
float GameObject::GetObstacleRadius() const { return 0.0f; }
float GameObject::GetObstacleStrength() const { return 0.0f; }
bool GameObject::IsAnimated() const { return false; }
bool GameObject::IsInteractive(GameObject*) const { return false; }
bool GameObject::IsObstacle() const { return false; }
bool GameObject::IsUpdatable() const { return false; }
bool GameObject::IsZonable() const { return false; }
const char* GameObject::getUDTypeName() const { return "GameObject"; }
void GameObject::Update() {}
GameObject::~GameObject() {}

void GameObject::DeclareProperties() {}
void GameObject::InitPost() {}
ObjectBase::~ObjectBase() {}
void ObjectBase::DeclareProperties() {}
void ObjectBase::Deserialize(IStreamBase*) {}
void ObjectBase::Disabled() {}
void ObjectBase::Enabled() {}
void ObjectBase::InitPost() {}
bool ObjectBase::IsDead() const { return false; }
bool ObjectBase::IsGameObject() const { return false; }
bool ObjectBase::IsUpdatable() const { return false; }
void ObjectBase::Serialize(IStreamBase*) {}
void ObjectBase::SetVisible(bool) {}
ObjectSearcher::TargetList::~TargetList() {}
ObjectSearcher::IObjectList::~IObjectList() {}
// DELIBERATE vtable stubs, not real cursor walks. The BackupObjectList::Get below also replaces the library's real
// accessor for the whole executable (tests link with -Wl,--allow-multiple-definition and the first definition wins);
// the checks never walk a BackupObjectList, so nothing dereferences the null today. A later check that walks one
// through TargetList::Search or SearchRect would receive null from Get and fault in the candidate test.
ObjectSearcher::BackupObjectList::~BackupObjectList() {}
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() { return true; }
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() { return 0; }
GameObject* ObjectSearcher::BackupObjectList::Get() { return nullptr; }
Character* ObjectSearcher::BackupObjectList::GetChar() { return nullptr; }
ConditionData::~ConditionData() {}
PFObject::~PFObject() {}

// The UserData and ISerializable bases of ObjectBase. ISerializable's key function is Serialize, so defining it here
// emits its vtable in this unit.
sfc::script::lua::UserData::~UserData() {}
const char* sfc::script::lua::UserData::getUDTypeName() const { return "UserData"; }
void sfc::script::lua::UserData::createBindings(sfc::script::lua::Binder&) {}
void ISerializable::Serialize(IStreamBase*) {}
void ISerializable::Deserialize(IStreamBase*) {}

void Zone::InitPost() {}
void Zone::DeclareProperties() {}
void Zone::OnCollision(GameObject*) {}
void Zone::OnCollisionBegins(GameObject*) {}
void Zone::OnCollisionEnds(GameObject*) {}
void Zone::OnCollisionPersists(GameObject*) {}
Zone::~Zone() {}
void ZoneEx::OnCollisionBegins(GameObject*) {}
void ZoneEx::OnCollisionEnds(GameObject*) {}
void ZoneEx::Update() {}
ZoneEx::~ZoneEx() {}

void TriggerTrap::DeclareProperties() {}
void TriggerTrap::SpecificUpdate() {}
void TriggerTrap::Update() {}
void TriggerTrap::_GetDamager(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void TriggerTrap::_GetOwner(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*) {}
void TriggerTrap::__Callback(glitch::scene::ITimelineController*, void*) {}
void TriggerTrap::__EventCallback(const glitch::collada::STriggeredEvent&, void*) {}

void sfc::script::lua::Binder::bindFunction(const char*,
                                            void (*)(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*),
                                            void*) {}
void sfc::script::lua::Binder::bindMethod(const char*,
                                          void (*)(const sfc::script::lua::Arguments&, sfc::script::lua::ReturnValues&, void*)) {}

int main() {
    // One TriggerTrap, never constructed. Its fields are the only state the tested bodies touch.
    alignas(TriggerTrap) unsigned char trapStorage[sizeof(TriggerTrap)] = {};
    TriggerTrap* trap = reinterpret_cast<TriggerTrap*>(trapStorage);

    // Three Arrays::TriggerTraps rows at the host element size: row 0 has a script, a visual and a sound; row 1 has none.
    alignas(Structs::TriggerTrap) unsigned char rowStorage[3 * sizeof(Structs::TriggerTrap)] = {};
    Structs::TriggerTrap* rows = reinterpret_cast<Structs::TriggerTrap*>(rowStorage);
    static char kScriptA[] = "a.lua";
    static char kScriptB[] = "b.lua";
    rows[0].Damage = 7;          // Damage
    rows[0].HurtChance = 40;         // HurtChance
    rows[0].Script = kScriptA;   // Script
    rows[0].Sound = 3;          // Sound
    rows[0].Visual = 5;          // Visual
    rows[1].Damage = 9;
    rows[1].HurtChance = 60;
    rows[1].Script = kScriptB;
    rows[1].Sound = -1;
    rows[1].Visual = -1;
    Arrays::TriggerTraps::members = rowStorage;
    Arrays::TriggerTraps::size = 2;

    // Constant getters.
    EXPECT(trap->TriggerTrap::IsUpdatable());
    EXPECT(trap->TriggerTrap::IsAnimated());
    EXPECT(!trap->TriggerTrap::IsInteractive(nullptr));
    EXPECT(trap->TriggerTrap::IsZonable());
    EXPECT(trap->TriggerTrap::IsObstacle());
    EXPECT(trap->TriggerTrap::GetObstacleRadius() == 150.0f);
    EXPECT(trap->TriggerTrap::GetObstacleStrength() == 10.0f);
    EXPECT(std::strcmp(trap->TriggerTrap::getUDTypeName(), "TriggerTrap") == 0);

    // No data row and no damager: every row getter gives its no-row result.
    trap->m_dataIndex = -1;
    trap->m_damagerIndex = -1;
    EXPECT(std::strcmp(trap->TriggerTrap::GetScript(), "") == 0);
    EXPECT(trap->TriggerTrap::GetVisual() == -1);
    EXPECT(trap->TriggerTrap::GetDamagerId() == -1);
    EXPECT(trap->TriggerTrap::GetHurtChance() == -1);
    EXPECT(trap->TriggerTrap::GetSound() == -1);

    // Row 0 with no damager set: the row decides every getter.
    trap->m_dataIndex = 0;
    trap->m_damagerIndex = -1;
    EXPECT(std::strcmp(trap->TriggerTrap::GetScript(), "a.lua") == 0);
    EXPECT(trap->TriggerTrap::GetVisual() == 5);
    EXPECT(trap->TriggerTrap::GetDamagerId() == 7);
    EXPECT(trap->TriggerTrap::GetHurtChance() == 40);
    EXPECT(trap->TriggerTrap::GetSound() == 3);

    // Row 1: no visual and no sound (-1 from the row).
    trap->m_dataIndex = 1;
    EXPECT(std::strcmp(trap->TriggerTrap::GetScript(), "b.lua") == 0);
    EXPECT(trap->TriggerTrap::GetVisual() == -1);
    EXPECT(trap->TriggerTrap::GetDamagerId() == 9);
    EXPECT(trap->TriggerTrap::GetHurtChance() == 60);
    EXPECT(trap->TriggerTrap::GetSound() == -1);

    // A damager index set by Create wins over the row for both damage and hurt chance. The other getters still read the row.
    trap->m_dataIndex = 0;
    trap->m_damagerIndex = 12;
    EXPECT(trap->TriggerTrap::GetDamagerId() == 12);
    EXPECT(trap->TriggerTrap::GetHurtChance() == 12);
    EXPECT(trap->TriggerTrap::GetSound() == 3);
    EXPECT(std::strcmp(trap->TriggerTrap::GetScript(), "a.lua") == 0);

    // A damager index without a data row: the damager is returned, and the no-row results still hold for the rest.
    trap->m_dataIndex = -1;
    trap->m_damagerIndex = 12;
    EXPECT(trap->TriggerTrap::GetDamagerId() == 12);
    EXPECT(trap->TriggerTrap::GetHurtChance() == 12);
    EXPECT(trap->TriggerTrap::GetVisual() == -1);
    EXPECT(trap->TriggerTrap::GetSound() == -1);
    EXPECT(std::strcmp(trap->TriggerTrap::GetScript(), "") == 0);

    // Activate without a visual clears the victims and leaves m_activated clear. The set is built over the zero storage.
    using VictimSet = std::set<GameObject*>;
    new (&trap->m_victims) VictimSet();
    trap->m_visualObject = nullptr;
    trap->m_dataIndex = -1;
    trap->m_activated = false;
    trap->m_victims.insert(reinterpret_cast<GameObject*>(0x10));
    trap->m_victims.insert(reinterpret_cast<GameObject*>(0x20));
    EXPECT(trap->m_victims.size() == 2);
    trap->TriggerTrap::Activate();
    EXPECT(trap->m_victims.empty());
    EXPECT(!trap->m_activated);
    trap->m_victims.~VictimSet();

    // Create rejects a null owner before any spawn.
    dword_99F764 = reinterpret_cast<ObjectManager*>(&g_objectManagerDummy);
    g_spawned = nullptr;
    EXPECT(TriggerTrap::Create(nullptr, 0, 0) == nullptr);

    // Create rejects a spawned object whose GO id is not TriggerTrap's 15. The zero storage has GO id 0.
    alignas(TriggerTrap) unsigned char spawnedStorage[sizeof(TriggerTrap)] = {};
    g_spawned = reinterpret_cast<ObjectBase*>(spawnedStorage);
    GameObject* owner = reinterpret_cast<GameObject*>(trapStorage);
    EXPECT(TriggerTrap::Create(owner, 0, 0) == nullptr);
    g_spawned = nullptr;

    if (g_failures != 0) {
        std::printf("TriggerTrap test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("TriggerTrap test: all checks passed\n");
    return 0;
}
