// Test for batch g1-game-world-TriggerPlate-c8616d-0.
//
// Covers the logic that runs without the engine: the constructor's defaults, IsAnimated and IsUpdatable, the six row
// readers (Arrays::TriggerPlates rows at the host element stride, with the -1 result without a row), the contact count
// by trigger type (set size, players, objects, the specific-object test with an empty set, and the default), the
// empty-set and -1 paths of IsObjectActivating, and DeclareProperties (the Trigger base first, then the five names with
// their defaults).
//
// Not covered: Update and InitPost (they need the ZoneEx and GameObject machinery, the sound and event calls that are not
// declared yet, and the data-row name lookup that is not made), and the object test on a non-empty set (it resolves
// ObjectHandle through ObjectManager).
//
// Link stubs: the TriggerPlate constructor and destructor, the vtable and the virtual overrides of the base chain are
// defined in the linked source, so the link needs their symbols. The virtual and base-class symbols are aliases of
// one empty function (assembly), as in the RoomZone test. The Trigger base object is not built (its constructor is a
// counting stub), so the TriggerPlate object lives in zero-filled storage. Calls on it are not made through the
// base. The element rows of Arrays::TriggerPlates are zero-filled storage read as Structs::TriggerPlate.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <set>
#include <string>
#include <vector>

#include "dh2/TriggerPlate.hpp"

#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/ZoneEx.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Call records written by the stubs.
int g_triggerCtorCalls = 0;
int g_triggerDtorCalls = 0;
int g_numPlayers = 0;
int g_numObjects = 0;
std::vector<std::string> g_callLog;

}  // namespace

int gAssertLevel = 0;
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::uint8_t* Arrays::TriggerPlates::members = nullptr;
std::uint32_t Arrays::TriggerPlates::size = 0;

// Non-virtual members the test calls or links. Defined here, so this TU emits no vtable for them.
int ZoneEx::GetNumPlayers() const { return g_numPlayers; }
int ZoneEx::GetNumObjects() const { return g_numObjects; }
int PlayerManager::GetNumPlayers() { return g_numPlayers; }
Application& ApplicationGetInstance() { std::abort(); }
Level* Application::GetCurrentLevel() const { return nullptr; }
void GameObject::RequireOnlineUpdate() {}
int GameObject::CheckSpawnProbability() { return 100; }
ObjectHandle ObjectBase::GetHandle() { std::abort(); }
ObjectBase* ObjectHandle::GetObject(bool) { std::abort(); }

ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
ScriptManager ScriptManager::s_inst;
void ScriptManager::StartScript(int, int, bool) {}
int ScriptManager::GetIDFromName(const char*, bool) const { return -1; }

// PropertyMap::AddProperty: the explicit specializations record the name and the default of each property.
template <>
void PropertyMap::AddProperty<int>(const char* name, int& member, int defaultValue) {
    (void)member;
    g_callLog.push_back(std::string(name) + "=" + std::to_string(defaultValue));
}
template <>
void PropertyMap::AddProperty<std::string>(const char* name, std::string& member) {
    (void)member;
    g_callLog.push_back(name);
}

// Stub bodies for the aliases below.
extern "C" void generic_virtual_stub() {}
extern "C" void trigger_ctor_stub() { ++g_triggerCtorCalls; }
extern "C" void trigger_dtor_stub() { ++g_triggerDtorCalls; }
extern "C" void trigger_declare_stub() { g_callLog.push_back("Trigger::DeclareProperties"); }

asm(".globl _ZN7TriggerC2EN10ObjectBase6GO_IDSEbb\n\t"
    ".set _ZN7TriggerC2EN10ObjectBase6GO_IDSEbb, trigger_ctor_stub\n\t"
    ".globl _ZN7TriggerD2Ev\n\t"
    ".set _ZN7TriggerD2Ev, trigger_dtor_stub\n\t"
    ".globl _ZN7Trigger17DeclarePropertiesEv\n\t"
    ".set _ZN7Trigger17DeclarePropertiesEv, trigger_declare_stub\n\t"
    ".globl _ZNK10GameObject10GetFXScaleEv\n\t"
    ".set _ZNK10GameObject10GetFXScaleEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject10GetOpacityEv\n\t"
    ".set _ZNK10GameObject10GetOpacityEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject10IsObstacleEv\n\t"
    ".set _ZNK10GameObject10IsObstacleEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject12IsGameObjectEv\n\t"
    ".set _ZNK10GameObject12IsGameObjectEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject13IsInteractiveEPS_\n\t"
    ".set _ZNK10GameObject13IsInteractiveEPS_, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject13getUDTypeNameEv\n\t"
    ".set _ZNK10GameObject13getUDTypeNameEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject14GetFocusObjectEv\n\t"
    ".set _ZNK10GameObject14GetFocusObjectEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject14IsUpdatingPathEv\n\t"
    ".set _ZNK10GameObject14IsUpdatingPathEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject15GetFXScaleValueEv\n\t"
    ".set _ZNK10GameObject15GetFXScaleValueEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject15IsInteractiveExEPS_\n\t"
    ".set _ZNK10GameObject15IsInteractiveExEPS_, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject16GetRotationSpeedEv\n\t"
    ".set _ZNK10GameObject16GetRotationSpeedEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject17GetObstacleRadiusEv\n\t"
    ".set _ZNK10GameObject17GetObstacleRadiusEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject18GetInteractionTypeEPS_\n\t"
    ".set _ZNK10GameObject18GetInteractionTypeEPS_, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject19GetObstacleStrengthEv\n\t"
    ".set _ZNK10GameObject19GetObstacleStrengthEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject19IsAvoidingObstaclesEv\n\t"
    ".set _ZNK10GameObject19IsAvoidingObstaclesEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject20GetInteractionRadiusEv\n\t"
    ".set _ZNK10GameObject20GetInteractionRadiusEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject24IsValidatingCameraLimitsEv\n\t"
    ".set _ZNK10GameObject24IsValidatingCameraLimitsEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject25IsValidatingFloorPositionEv\n\t"
    ".set _ZNK10GameObject25IsValidatingFloorPositionEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject28IsUpdatingPositionFromVisualEv\n\t"
    ".set _ZNK10GameObject28IsUpdatingPositionFromVisualEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject28IsUpdatingRotationFromVisualEv\n\t"
    ".set _ZNK10GameObject28IsUpdatingRotationFromVisualEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject28IsUpdatingVisualWithRotationEv\n\t"
    ".set _ZNK10GameObject28IsUpdatingVisualWithRotationEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject29IsUpdatingPositionFromPhysicsEv\n\t"
    ".set _ZNK10GameObject29IsUpdatingPositionFromPhysicsEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject29IsUpdatingRotationFromPhysicsEv\n\t"
    ".set _ZNK10GameObject29IsUpdatingRotationFromPhysicsEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject4DrawEv\n\t"
    ".set _ZNK10GameObject4DrawEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject5IsHitEv\n\t"
    ".set _ZNK10GameObject5IsHitEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject6IsDeadEv\n\t"
    ".set _ZNK10GameObject6IsDeadEv, generic_virtual_stub\n\t"
    ".globl _ZNK10GameObject8GetSpeedEv\n\t"
    ".set _ZNK10GameObject8GetSpeedEv, generic_virtual_stub\n\t"
    ".globl _ZNK10ObjectBase11IsCharacterEv\n\t"
    ".set _ZNK10ObjectBase11IsCharacterEv, generic_virtual_stub\n\t"
    ".globl _ZNK10ObjectBase8IsPlayerEv\n\t"
    ".set _ZNK10ObjectBase8IsPlayerEv, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject10SetVisibleEb\n\t"
    ".set _ZN10GameObject10SetVisibleEb, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject14createBindingsERN3sfc6script3lua6BinderE\n\t"
    ".set _ZN10GameObject14createBindingsERN3sfc6script3lua6BinderE, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject15SetRelativeAABBERK4aabbIfEb\n\t"
    ".set _ZN10GameObject15SetRelativeAABBERK4aabbIfEb, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject7EnabledEv\n\t"
    ".set _ZN10GameObject7EnabledEv, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject8DisabledEv\n\t"
    ".set _ZN10GameObject8DisabledEv, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject8InteractEPS_\n\t"
    ".set _ZN10GameObject8InteractEPS_, generic_virtual_stub\n\t"
    ".globl _ZN10GameObject9InitFinalEv\n\t"
    ".set _ZN10GameObject9InitFinalEv, generic_virtual_stub\n\t"
    ".globl _ZN10ObjectBase11setUpdatingEb\n\t"
    ".set _ZN10ObjectBase11setUpdatingEb, generic_virtual_stub\n\t"
    ".globl _ZN4Zone11OnCollisionEP10GameObject\n\t"
    ".set _ZN4Zone11OnCollisionEP10GameObject, generic_virtual_stub\n\t"
    ".globl _ZN4Zone19OnCollisionPersistsEP10GameObject\n\t"
    ".set _ZN4Zone19OnCollisionPersistsEP10GameObject, generic_virtual_stub\n\t"
    ".globl _ZN6ZoneEx15OnCollisionEndsEP10GameObject\n\t"
    ".set _ZN6ZoneEx15OnCollisionEndsEP10GameObject, generic_virtual_stub\n\t"
    ".globl _ZN6ZoneEx17OnCollisionBeginsEP10GameObject\n\t"
    ".set _ZN6ZoneEx17OnCollisionBeginsEP10GameObject, generic_virtual_stub\n\t"
    ".globl _ZN6ZoneEx6UpdateEv\n\t"
    ".set _ZN6ZoneEx6UpdateEv, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger11DeserializeEP11IStreamBase\n\t"
    ".set _ZN7Trigger11DeserializeEP11IStreamBase, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger11UpdateTimerEv\n\t"
    ".set _ZN7Trigger11UpdateTimerEv, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger25PopulateOutgoingNetStructEb\n\t"
    ".set _ZN7Trigger25PopulateOutgoingNetStructEb, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger26InterpretIncomingNetStructEb\n\t"
    ".set _ZN7Trigger26InterpretIncomingNetStructEb, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger8ActivateEv\n\t"
    ".set _ZN7Trigger8ActivateEv, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger8InitPostEv\n\t"
    ".set _ZN7Trigger8InitPostEv, generic_virtual_stub\n\t"
    ".globl _ZN7Trigger9SerializeEP11IStreamBase\n\t"
    ".set _ZN7Trigger9SerializeEP11IStreamBase, generic_virtual_stub\n\t"
    ".globl _ZNK7Trigger11CanActivateEv\n\t"
    ".set _ZNK7Trigger11CanActivateEv, generic_virtual_stub\n\t"
    ".globl _ZNK7Trigger17IsRemotelyUpdatedEv\n\t"
    ".set _ZNK7Trigger17IsRemotelyUpdatedEv, generic_virtual_stub\n\t"
    ".globl _ZNK7Trigger9IsZonableEv\n\t"
    ".set _ZNK7Trigger9IsZonableEv, generic_virtual_stub\n\t"
    ".globl _ZThn56_N7Trigger11DeserializeEP11IStreamBase\n\t"
    ".set _ZThn56_N7Trigger11DeserializeEP11IStreamBase, generic_virtual_stub\n\t"
    ".globl _ZThn56_N7Trigger9SerializeEP11IStreamBase\n\t"
    ".set _ZThn56_N7Trigger9SerializeEP11IStreamBase, generic_virtual_stub\n");

namespace {

// Row storage: three host Structs::TriggerPlate elements in zero-filled storage (the loader's table, read in place).
alignas(8) std::uint8_t g_rowStorage[3 * sizeof(Structs::TriggerPlate)];

Structs::TriggerPlate* Row(int index) {
    return reinterpret_cast<Structs::TriggerPlate*>(g_rowStorage + index * sizeof(Structs::TriggerPlate));
}

void SetRow(int index, int w1, bool w2, int w3, int w4, int w5, int w6, int w7) {
    Structs::TriggerPlate* row = Row(index);
    row->Behavior = w1;
    row->IsActive = w2;
    row->SoundOff = w3;
    row->SoundOn = w4;
    row->SpecificObject = w5;
    row->TriggerType = w6;
    row->Visual = w7;
}

void TestConstructorDefaults(TriggerPlate* plate) {
    CHECK(g_triggerCtorCalls == 1);
    CHECK(plate->m_dataIndex == -1);
    CHECK(plate->m_numberOfObjects == 1);
    CHECK(plate->m_triggerType == -1);
    CHECK(plate->m_scriptOnId == -1);
    CHECK(plate->m_scriptOffId == -1);
    CHECK(plate->m_lastNumContacts == 0);
    CHECK(plate->m_activated == false);
    CHECK(plate->m_data.empty());
    CHECK(plate->m_scriptOn.empty());
    CHECK(plate->m_scriptOff.empty());
    CHECK(plate->IsAnimated() == true);
    CHECK(plate->IsUpdatable() == true);
}

void TestRowReaders(TriggerPlate* plate) {
    // Row 1 holds behaviour 4, enabled false, sound off 11, sound on 12, specific object 7, trigger type 3, visual 21.
    plate->m_dataIndex = 1;
    CHECK(plate->GetBehavior() == 4);
    CHECK(plate->GetSoundOff() == 11);
    CHECK(plate->GetSoundOn() == 12);
    CHECK(plate->GetSpecificObject() == 7);
    CHECK(plate->GetTriggerType() == 3);
    CHECK(plate->GetVisual() == 21);

    // Row 0 holds the other values, so the index selects the row.
    plate->m_dataIndex = 0;
    CHECK(plate->GetBehavior() == 10);
    CHECK(plate->GetSoundOff() == 30);
    CHECK(plate->GetSoundOn() == 40);
    CHECK(plate->GetSpecificObject() == 50);
    CHECK(plate->GetTriggerType() == 60);
    CHECK(plate->GetVisual() == 70);

    // Without a row every reader gives -1.
    plate->m_dataIndex = -1;
    CHECK(plate->GetBehavior() == -1);
    CHECK(plate->GetSoundOff() == -1);
    CHECK(plate->GetSoundOn() == -1);
    CHECK(plate->GetSpecificObject() == -1);
    CHECK(plate->GetTriggerType() == -1);
    CHECK(plate->GetVisual() == -1);
}

void TestContactCount(TriggerPlate* plate) {
    // The Trigger base is not built, so the ZoneEx set is constructed here in place, as the ZoneEx constructor would
    // build it. Every count below reads the set (types 0 and 4), so it must exist first.
    new (&plate->m_objectsInside) std::set<GameObject*>();
    CHECK(plate->m_objectsInside.empty());

    plate->m_dataIndex = 1;  // row 1: trigger type 3, specific object 7
    g_numObjects = 5;
    g_numPlayers = 2;
    CHECK(plate->GetNumValidContactsActivating() == 5);  // type 3: the objects that are not characters

    SetRow(1, 4, false, 11, 12, 7, 1, 21);  // type 1: the players inside
    CHECK(plate->GetNumValidContactsActivating() == 2);
    SetRow(1, 4, false, 11, 12, 7, 2, 21);  // type 2: the players inside
    CHECK(plate->GetNumValidContactsActivating() == 2);

    // Type 4 asks IsObjectActivating(7) on the empty set: no object is activating.
    SetRow(1, 4, false, 11, 12, 7, 4, 21);
    CHECK(plate->GetNumValidContactsActivating() == 0);

    // Any other type counts nothing.
    SetRow(1, 4, false, 11, 12, 7, 5, 21);
    CHECK(plate->GetNumValidContactsActivating() == 0);

    // No row: the type is -1, which the switch does not name.
    plate->m_dataIndex = -1;
    CHECK(plate->GetNumValidContactsActivating() == 0);
    CHECK(plate->IsObjectActivating(-1) == false);

    // Type 0 counts the set.
    CHECK(plate->IsObjectActivating(-1) == false);  // returns before walking the set
    plate->m_dataIndex = 1;
    SetRow(1, 4, false, 11, 12, 7, 0, 21);
    CHECK(plate->GetNumValidContactsActivating() == 0);
    plate->m_objectsInside.insert(reinterpret_cast<GameObject*>(static_cast<std::uintptr_t>(0x1000)));
    plate->m_objectsInside.insert(reinterpret_cast<GameObject*>(static_cast<std::uintptr_t>(0x2000)));
    CHECK(plate->GetNumValidContactsActivating() == 2);
    plate->m_objectsInside.clear();
}

void TestDeclareProperties(TriggerPlate* plate) {
    g_callLog.clear();
    plate->DeclareProperties();
    const std::vector<std::string> expected = {
        "Trigger::DeclareProperties",
        "data",
        "number_of_objects=1",
        "script_on",
        "script_off",
        "trigger_type=0",
    };
    CHECK(g_callLog == expected);
    g_callLog.clear();
}

void TestDestructor(TriggerPlate* plate) {
    plate->~TriggerPlate();
    CHECK(g_triggerDtorCalls == 1);
}

}  // namespace

int main() {
    std::memset(g_rowStorage, 0, sizeof g_rowStorage);
    SetRow(0, 10, true, 30, 40, 50, 60, 70);
    SetRow(1, 4, false, 11, 12, 7, 3, 21);
    Arrays::TriggerPlates::members = g_rowStorage;
    Arrays::TriggerPlates::size = 3;

    alignas(TriggerPlate) unsigned char plateStorage[sizeof(TriggerPlate)];
    std::memset(plateStorage, 0, sizeof plateStorage);
    g_triggerCtorCalls = 0;
    g_triggerDtorCalls = 0;
    TriggerPlate* plate = new (plateStorage) TriggerPlate(static_cast<ObjectBase::GO_IDS>(6));

    TestConstructorDefaults(plate);
    TestRowReaders(plate);
    TestContactCount(plate);
    TestDeclareProperties(plate);
    TestDestructor(plate);

    if (g_failures == 0) {
        std::printf("TriggerPlate tests passed\n");
    } else {
        std::printf("TriggerPlate tests: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
