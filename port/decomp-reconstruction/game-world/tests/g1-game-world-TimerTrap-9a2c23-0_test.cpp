// Test for batch g1-game-world-TimerTrap-9a2c23-0.
//
// Covered, on a zero-filled TimerTrap that is never constructed (as in the GameObject and ObjectHandle tests): the row
// accessors (GetScript, GetVisual, GetDamagerId, GetHurtChance, GetSound, GetDelay) with and without a data row and with
// a damager index set; GetDataId (partial, -1); SpecificUpdate's countdown while the timer runs, the activated expiry that
// holds the timer at 0 and transfers victims, and the no-row path; and Create's null-owner and wrong-GO-id paths.
//
// Not covered: SpecificUpdate's expiry on an inactive trap, which calls GetDelay and Activate through the vtable, and
// Create's success path, which calls InitPost and InitFinal through the vtable. A zero-filled object has no vtable to
// dispatch through. The constructor and destructors are not called: they run the TriggerTrap base constructor and destructor.
//
// Link stubs defined here, because the batch source references them and their owners are not linked in this test. The
// TimerTrap vtable is emitted by the batch source (its key function is ~TimerTrap), so every slot must link:
//   GameObject, ObjectBase, Zone, ZoneEx     overrides and inherited slots: no-op bodies that return zero
//   TriggerTrap                              slots and non-virtual methods: no-op bodies, Activate and TransferVictims
//                                            count their calls. The constructor and destructor are asm-label stubs, because a
//                                            C++ body would run the ZoneEx and GameObject base chain.
//   Application::GetDt                       returns g_frameDt
//   Singleton<Application>::s_inst           zero-filled storage under the mangled name
//   ObjectManager::Spawn, ObjectHandle       records the call; GetObject returns g_nextObject
//   RoomZone::AddInitialObject               returns true
//   Arrays::TimerTraps::members              the test's row table
//   dword_99F764, gAssertLevel               the ObjectManager pointer (pointed at zero-filled storage) and 0 (no assert output)

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TimerTrap.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/Zone.hpp"
#include "dh2/ZoneEx.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// ---- link-level state and definitions ----

int gAssertLevel = 0;
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::uint8_t* Arrays::TimerTraps::members = nullptr;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_frameDt = 0;
int g_activateCalls = 0;
int g_transferCalls = 0;
int g_spawnCalls = 0;
char g_lastSpawnType[32] = {};
char g_lastSpawnName[32] = {};
bool g_lastSpawnActive = false;
bool g_lastSpawnSilent = false;
ObjectBase* g_nextObject = nullptr;

alignas(TimerTrap) unsigned char g_trapStorage[sizeof(TimerTrap)];
alignas(GameObject) unsigned char g_ownerStorage[sizeof(GameObject)];
alignas(GameObject) unsigned char g_objectStorage[sizeof(GameObject)];
alignas(ObjectManager) unsigned char g_managerStorage[sizeof(ObjectManager)];
alignas(Structs::TimerTrap) unsigned char g_rows[4 * sizeof(Structs::TimerTrap)];

TimerTrap* Trap() {
    return reinterpret_cast<TimerTrap*>(g_trapStorage);
}

GameObject* Owner() {
    return reinterpret_cast<GameObject*>(g_ownerStorage);
}

void ResetState() {
    std::memset(g_trapStorage, 0, sizeof g_trapStorage);
    std::memset(g_ownerStorage, 0, sizeof g_ownerStorage);
    std::memset(g_objectStorage, 0, sizeof g_objectStorage);
    std::memset(g_managerStorage, 0, sizeof g_managerStorage);
    std::memset(g_rows, 0, sizeof g_rows);
    g_frameDt = 0;
    g_activateCalls = 0;
    g_transferCalls = 0;
    g_spawnCalls = 0;
    g_lastSpawnType[0] = '\0';
    g_lastSpawnName[0] = '\0';
    g_lastSpawnActive = false;
    g_lastSpawnSilent = false;
    g_nextObject = nullptr;
    gAssertLevel = 0;
    dword_99F764 = reinterpret_cast<ObjectManager*>(g_managerStorage);
    Arrays::TimerTraps::members = nullptr;
}

// Row 0 is the data row the tests use. Row fields are the Structs::TimerTrap words (w1 damager, w2 delay, w3 hurt chance,
// w5 script, w6 sound, w7 visual). The rows are zero-filled and never constructed.
void FillRows() {
    auto* rows = reinterpret_cast<Structs::TimerTrap*>(g_rows);
    rows[0].Damage = 7;
    rows[0].Delay = 500;
    rows[0].HurtChance = 30;
    rows[0].Script = const_cast<char*>("spike_script");
    rows[0].Sound = 9;
    rows[0].Visual = 11;
    Arrays::TimerTraps::members = g_rows;
}

bool Same(const char* a, const char* b) {
    return std::strcmp(a, b) == 0;
}

void TestAccessors() {
    ResetState();
    FillRows();
    TimerTrap* t = Trap();

    // A data row with no damager index set: the row's words.
    t->m_dataIndex = 0;
    t->m_damagerIndex = -1;
    EXPECT(Same(t->TimerTrap::GetScript(), "spike_script"));
    EXPECT(t->TimerTrap::GetVisual() == 11);
    EXPECT(t->TimerTrap::GetDamagerId() == 7);
    EXPECT(t->TimerTrap::GetHurtChance() == 30);
    EXPECT(t->TimerTrap::GetSound() == 9);
    EXPECT(t->TimerTrap::GetDelay() == 500);

    // A damager index set by Create: GetHurtChance returns it, GetDamagerId still reads the row.
    t->m_damagerIndex = 42;
    EXPECT(t->TimerTrap::GetHurtChance() == 42);
    EXPECT(t->TimerTrap::GetDamagerId() == 7);

    // No data row: the script is empty, the indices are -1 and the delay is 0. GetHurtChance returns m_damagerIndex.
    t->m_dataIndex = -1;
    t->m_damagerIndex = -1;
    EXPECT(Same(t->TimerTrap::GetScript(), ""));
    EXPECT(t->TimerTrap::GetVisual() == -1);
    EXPECT(t->TimerTrap::GetDamagerId() == -1);
    EXPECT(t->TimerTrap::GetHurtChance() == -1);
    EXPECT(t->TimerTrap::GetSound() == -1);
    EXPECT(t->TimerTrap::GetDelay() == 0);
    t->m_damagerIndex = 42;
    EXPECT(t->TimerTrap::GetHurtChance() == 42);

    // GetDataId is partial and returns -1.
    t->m_dataIndex = 0;
    EXPECT(t->TimerTrap::GetDataId() == -1);
}

void TestSpecificUpdate() {
    // The timer runs down by the frame time and the trap is not active: nothing else happens.
    ResetState();
    FillRows();
    g_frameDt = 16;
    TimerTrap* t = Trap();
    t->m_dataIndex = 0;
    t->m_timer = 100;
    t->m_activated = false;
    t->TimerTrap::SpecificUpdate();
    EXPECT(t->m_timer == 84);
    EXPECT(g_transferCalls == 0);
    EXPECT(g_activateCalls == 0);

    // The timer runs down while the trap is active: victims are transferred each frame.
    ResetState();
    FillRows();
    g_frameDt = 16;
    t = Trap();
    t->m_dataIndex = 0;
    t->m_timer = 100;
    t->m_activated = true;
    t->TimerTrap::SpecificUpdate();
    EXPECT(t->m_timer == 84);
    EXPECT(g_transferCalls == 1);

    // The timer runs out while the trap is active: the timer is held at 0 and victims are transferred.
    ResetState();
    FillRows();
    g_frameDt = 16;
    t = Trap();
    t->m_dataIndex = 0;
    t->m_timer = 10;
    t->m_activated = true;
    t->TimerTrap::SpecificUpdate();
    EXPECT(t->m_timer == 0);
    EXPECT(g_transferCalls == 1);
    EXPECT(g_activateCalls == 0);

    // No data row: the timer is not counted, and an active trap still transfers victims.
    ResetState();
    FillRows();
    g_frameDt = 16;
    t = Trap();
    t->m_dataIndex = -1;
    t->m_timer = 50;
    t->m_activated = true;
    t->TimerTrap::SpecificUpdate();
    EXPECT(t->m_timer == 50);
    EXPECT(g_transferCalls == 1);

    // No data row and not active: nothing happens.
    ResetState();
    FillRows();
    g_frameDt = 16;
    t = Trap();
    t->m_dataIndex = -1;
    t->m_timer = 50;
    t->m_activated = false;
    t->TimerTrap::SpecificUpdate();
    EXPECT(t->m_timer == 50);
    EXPECT(g_transferCalls == 0);
}

void TestCreate() {
    ResetState();
    FillRows();

    // A null owner fails the assert (level 0 prints nothing) and returns null without spawning.
    EXPECT(TimerTrap::Create(nullptr, 0, 0) == nullptr);
    EXPECT(g_spawnCalls == 0);

    // The spawned object has the wrong GO id: the create returns null after the spawn.
    GameObject* object = reinterpret_cast<GameObject*>(g_objectStorage);
    object->m_goId = ObjectBase::GO_DOOR;
    g_nextObject = object;
    EXPECT(TimerTrap::Create(Owner(), 1, 3) == nullptr);
    EXPECT(g_spawnCalls == 1);
    EXPECT(Same(g_lastSpawnType, "TimerTrap"));
    EXPECT(Same(g_lastSpawnName, "TimerTrap_0001"));
    EXPECT(g_lastSpawnActive);
    EXPECT(g_lastSpawnSilent);

    // The spawn produces no object: the create returns null, and the name counter still advances.
    g_nextObject = nullptr;
    EXPECT(TimerTrap::Create(Owner(), 1, 3) == nullptr);
    EXPECT(g_spawnCalls == 2);
    EXPECT(Same(g_lastSpawnName, "TimerTrap_0002"));
}

}  // namespace

// ---- link stubs: the TimerTrap vtable, the base classes it reaches, and the engine calls of the batch source ----

int Application::GetDt() {
    return g_frameDt;
}

// The Singleton<Application>::s_inst symbol. Zero-filled, never constructed.
alignas(16) unsigned char g_applicationStorage[sizeof(Application)] __asm__("_ZN9SingletonI11ApplicationE6s_instE");

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectBase* ObjectHandle::GetObject(bool) {
    return g_nextObject;
}

ObjectHandle ObjectManager::Spawn(char const* type, char const* name, bool active, bool silent) {
    ++g_spawnCalls;
    std::snprintf(g_lastSpawnType, sizeof g_lastSpawnType, "%s", type);
    std::snprintf(g_lastSpawnName, sizeof g_lastSpawnName, "%s", name);
    g_lastSpawnActive = active;
    g_lastSpawnSilent = silent;
    return ObjectHandle();
}

bool RoomZone::AddInitialObject(GameObject*) {
    return true;
}

// GameObject: the overrides and inherited slots of the TimerTrap vtable.
void GameObject::Serialize(IStreamBase*) {}
void GameObject::Deserialize(IStreamBase*) {}
bool GameObject::IsGameObject() const { return true; }
void GameObject::Draw() const {}
bool GameObject::IsDead() const { return false; }
void GameObject::SetVisible(bool) {}
void GameObject::Enabled() {}
void GameObject::Disabled() {}
void GameObject::InitFinal() {}
bool GameObject::IsUpdatingPath() const { return false; }
bool GameObject::IsUpdatingPositionFromVisual() const { return false; }
bool GameObject::IsUpdatingPositionFromPhysics() const { return false; }
bool GameObject::IsUpdatingRotationFromVisual() const { return false; }
bool GameObject::IsUpdatingRotationFromPhysics() const { return false; }
bool GameObject::IsUpdatingVisualWithRotation() const { return false; }
int GameObject::IsValidatingFloorPosition() const { return 0; }
bool GameObject::IsValidatingCameraLimits() const { return false; }
bool GameObject::IsAvoidingObstacles() const { return false; }
bool GameObject::IsHit() const { return false; }
bool GameObject::IsInteractiveEx(GameObject*) const { return false; }
int GameObject::GetInteractionType(GameObject*) const { return -1; }
float GameObject::GetInteractionRadius() const { return 0.0f; }
void GameObject::Interact(GameObject*) {}
void GameObject::SetRelativeAABB(const aabb<float>&, bool) {}
Point3D<float> GameObject::GetFXScale() const { return Point3D<float>(); }
int GameObject::GetFXScaleValue() const { return -1; }
float GameObject::GetSpeed() const { return 0.0f; }
float GameObject::GetRotationSpeed() const { return -1.0f; }
GameObject* GameObject::GetFocusObject() const { return nullptr; }
float GameObject::GetOpacity() const { return 1.0f; }

// ObjectBase: the slots that GameObject does not override and the TimerTrap vtable reaches.
void ObjectBase::setUpdating(bool) {}
void ObjectBase::PopulateOutgoingNetStruct(bool) {}
void ObjectBase::InterpretIncomingNetStruct(bool) {}
bool ObjectBase::IsCharacter() const { return false; }
bool ObjectBase::IsPlayer() const { return false; }
bool ObjectBase::IsRemotelyUpdated() const { return false; }

// Zone and ZoneEx.
void Zone::OnCollision(GameObject*) {}
void Zone::OnCollisionPersists(GameObject*) {}
void ZoneEx::OnCollisionBegins(GameObject*) {}
void ZoneEx::OnCollisionEnds(GameObject*) {}

// TriggerTrap. The constructor and destructor are asm-label stubs: a C++ body would run the ZoneEx and GameObject
// base chain, and the test never calls them.
extern "C" void TriggerTrapCtorStub() asm("_ZN11TriggerTrapC2EN10ObjectBase6GO_IDSE");
extern "C" void TriggerTrapCtorStub() {
    std::abort();
}
extern "C" void TriggerTrapDtorStub() asm("_ZN11TriggerTrapD2Ev");
extern "C" void TriggerTrapDtorStub() {
}

const char* TriggerTrap::getUDTypeName() const { return "TriggerTrap"; }
void TriggerTrap::createBindings(sfc::script::lua::Binder&) {}
void TriggerTrap::DeclareProperties() {}
void TriggerTrap::InitPost() {}
void TriggerTrap::Update() {}
bool TriggerTrap::IsUpdatable() const { return true; }
bool TriggerTrap::IsAnimated() const { return true; }
bool TriggerTrap::IsInteractive(GameObject*) const { return false; }
bool TriggerTrap::IsObstacle() const { return true; }
float TriggerTrap::GetObstacleRadius() const { return 150.0f; }
float TriggerTrap::GetObstacleStrength() const { return 10.0f; }
bool TriggerTrap::IsZonable() const { return true; }
void TriggerTrap::Activate() { ++g_activateCalls; }
void TriggerTrap::TransferVictims() { ++g_transferCalls; }

// ---- entry point ----

int main() {
    TestAccessors();
    TestSpecificUpdate();
    TestCreate();
    if (g_failures != 0) {
        std::printf("TimerTrap test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("TimerTrap test: all checks passed\n");
    return 0;
}
