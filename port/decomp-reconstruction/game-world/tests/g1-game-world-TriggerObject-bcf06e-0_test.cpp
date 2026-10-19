// Test for batch g1-game-world-TriggerObject-bcf06e-0.
//
// The TriggerObject vtable refers to every virtual of its bases (GameObject, Zone, ZoneEx, Trigger, ObjectBase), and the
// bodies call Trigger, ScriptManager, LuaScript, PODecor and Arguments functions. None of those is linked here. Each one is
// defined as an empty stub under its mangled name (asm label), so that the link resolves. The functions the tests reach are
// real stubs that record their calls: Trigger::Update, Trigger::CanActivate, Trigger::InterpretIncomingNetStruct,
// Trigger::Serialize, Trigger::DeclareProperties, ConditionList::Eval and its destructor, PlayerManager::GetLocalPlayer,
// PropertyMap::AddProperty<std::string>, ApplicationGetInstance, and the static ScriptManager object.
//
// Objects are zero-filled storage. The constructor is run on it with placement new, and the destructor is run explicitly.
// The VisualObject and PhysicalObject paths are kept out (m_visualObject stays null), since their animations are not linked.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/TriggerObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"

// ---- globals the bodies read ----
int gAssertLevel = 0;
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// ---- recorded calls and results ----
namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_canActivate = 0;
int g_triggerUpdateCalls = 0;
int g_interpretCalls = 0;
bool g_lastForce = false;
int g_serializeCalls = 0;
const void* g_lastStream = nullptr;
int g_declarePropsCalls = 0;
int g_evalResult = 1;
int g_conditionListDtorCalls = 0;
int g_getLocalPlayerCalls = 0;
std::string g_propNames;

// Application and PlayerInfo are zero-filled storage; ApplicationGetInstance returns it.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(PlayerInfo) unsigned char g_playerStorage[sizeof(PlayerInfo)];
PlayerInfo* g_localPlayer = reinterpret_cast<PlayerInfo*>(g_playerStorage);

// Two addresses whose objects the tested paths READ: TestInteractiveCond reads the local player's Character and the
// Character's PlayerSavegame (m_savegame, +0x14e8, and its m_questSynced byte, +0x14). Both are therefore full objects:
// zero-filled storage sized for the real class, with only the member the condition tests written. g_fakeStream is an
// address-only stand-in for the IStreamBase of Serialize.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];
Character* g_character = reinterpret_cast<Character*>(g_characterStorage);
alignas(PlayerSavegame) unsigned char g_savegameStorage[sizeof(PlayerSavegame)];
PlayerSavegame* g_savegame = reinterpret_cast<PlayerSavegame*>(g_savegameStorage);
unsigned char g_fakeConditionStorage[sizeof(ConditionList)];
unsigned char g_fakeStream = 0;

// TriggerObject storage: constructed with placement new in Fresh(), destroyed with an explicit destructor call.
alignas(TriggerObject) unsigned char g_objStorage[sizeof(TriggerObject)];

TriggerObject* Fresh() {
    std::memset(g_objStorage, 0, sizeof(g_objStorage));
    return new (g_objStorage) TriggerObject();
}

}  // namespace

// ---- typed stubs for the functions the tests reach ----

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

bool Trigger::CanActivate() const {
    return g_canActivate != 0;
}

void Trigger::Update() {
    ++g_triggerUpdateCalls;
}

void Trigger::InterpretIncomingNetStruct(bool force) {
    ++g_interpretCalls;
    g_lastForce = force;
}

void Trigger::Serialize(IStreamBase* stream) {
    ++g_serializeCalls;
    g_lastStream = stream;
}

void Trigger::DeclareProperties() {
    ++g_declarePropsCalls;
}

bool ConditionList::Eval() {
    return g_evalResult != 0;
}

ConditionList::~ConditionList() {
    ++g_conditionListDtorCalls;
}

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    ++g_getLocalPlayerCalls;
    return g_localPlayer;
}

template <>
void PropertyMap::AddProperty<std::string>(const char* name, std::string& member) {
    (void)member;
    g_propNames += name;
    g_propNames += ';';
}

ScriptManager ScriptManager::s_inst;
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}

sfc::script::lua::Arguments::Arguments() {}
sfc::script::lua::Arguments::~Arguments() {}
void sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData* value) {
    (void)value;
}

// ---- empty stubs by mangled name: the vtable and unreached bodies ----
#define ASM_STUB(id, sym) \
    extern "C" void id() asm(sym); \
    extern "C" void id() {}

ASM_STUB(stub_01, "_ZN10GameObject10SetVisibleEb")
ASM_STUB(stub_02, "_ZN10GameObject14createBindingsERN3sfc6script3lua6BinderE")
ASM_STUB(stub_03, "_ZN10GameObject15SetRelativeAABBERK4aabbIfEb")
ASM_STUB(stub_04, "_ZN10GameObject17SetPhysicalObjectEP14PhysicalObjectb")
ASM_STUB(stub_05, "_ZN10GameObject21CheckSpawnProbabilityEv")
ASM_STUB(stub_06, "_ZN10GameObject7EnabledEv")
ASM_STUB(stub_07, "_ZN10GameObject8DisabledEv")
ASM_STUB(stub_08, "_ZN10GameObject9InitFinalEv")
ASM_STUB(stub_09, "_ZN10ObjectBase11setUpdatingEb")
ASM_STUB(stub_10, "_ZN12VisualObject4SyncEv")
ASM_STUB(stub_11, "_ZN7PODecorC1EP13PhysicalWorldP10GameObjectb")
ASM_STUB(stub_12, "_ZN7Trigger25PopulateOutgoingNetStructEb")
ASM_STUB(stub_13, "_ZN7Trigger11DeserializeEP11IStreamBase")
ASM_STUB(stub_14, "_ZN7Trigger8ActivateEv")
ASM_STUB(stub_15, "_ZN7Trigger8InitPostEv")
ASM_STUB(stub_16, "_ZN7TriggerC2EN10ObjectBase6GO_IDSEbb")
ASM_STUB(stub_17, "_ZN7TriggerD2Ev")
ASM_STUB(stub_18, "_ZN9LuaScript4CallEPKcRKN3sfc6script3lua9ArgumentsE")
ASM_STUB(stub_19, "_ZNK10GameObject10GetFXScaleEv")
ASM_STUB(stub_20, "_ZNK10GameObject10GetOpacityEv")
ASM_STUB(stub_21, "_ZNK10GameObject10IsObstacleEv")
ASM_STUB(stub_22, "_ZNK10GameObject12IsGameObjectEv")
ASM_STUB(stub_23, "_ZNK10GameObject13getUDTypeNameEv")
ASM_STUB(stub_24, "_ZNK10GameObject13MeetConditionEv")
ASM_STUB(stub_25, "_ZNK10GameObject14GetFocusObjectEv")
ASM_STUB(stub_26, "_ZNK10GameObject14IsUpdatingPathEv")
ASM_STUB(stub_27, "_ZNK10GameObject15GetFXScaleValueEv")
ASM_STUB(stub_28, "_ZNK10GameObject15IsInteractiveExEPS_")
ASM_STUB(stub_29, "_ZNK10GameObject16GetRotationSpeedEv")
ASM_STUB(stub_30, "_ZNK10GameObject17GetObstacleRadiusEv")
ASM_STUB(stub_31, "_ZNK10GameObject19GetObstacleStrengthEv")
ASM_STUB(stub_32, "_ZNK10GameObject19IsAvoidingObstaclesEv")
ASM_STUB(stub_33, "_ZNK10GameObject20GetInteractionRadiusEv")
ASM_STUB(stub_34, "_ZNK10GameObject24IsValidatingCameraLimitsEv")
ASM_STUB(stub_35, "_ZNK10GameObject25IsValidatingFloorPositionEv")
ASM_STUB(stub_36, "_ZNK10GameObject28IsUpdatingPositionFromVisualEv")
ASM_STUB(stub_37, "_ZNK10GameObject28IsUpdatingRotationFromVisualEv")
ASM_STUB(stub_38, "_ZNK10GameObject28IsUpdatingVisualWithRotationEv")
ASM_STUB(stub_39, "_ZNK10GameObject29IsUpdatingPositionFromPhysicsEv")
ASM_STUB(stub_40, "_ZNK10GameObject29IsUpdatingRotationFromPhysicsEv")
ASM_STUB(stub_41, "_ZNK10GameObject4DrawEv")
ASM_STUB(stub_42, "_ZNK10GameObject5IsHitEv")
ASM_STUB(stub_43, "_ZNK10GameObject6IsDeadEv")
ASM_STUB(stub_44, "_ZNK10GameObject8GetSpeedEv")
ASM_STUB(stub_45, "_ZNK10ObjectBase11IsCharacterEv")
ASM_STUB(stub_46, "_ZNK10ObjectBase8IsPlayerEv")
ASM_STUB(stub_47, "_ZNK11Application15GetCurrentLevelEv")
ASM_STUB(stub_48, "_ZNK13ScriptManager13GetIDFromNameEPKcb")
ASM_STUB(stub_49, "_ZNK7Trigger17IsRemotelyUpdatedEv")
ASM_STUB(stub_50, "_ZN13ScriptManager11StartScriptEiib")
ASM_STUB(stub_51, "_ZN4Zone11OnCollisionEP10GameObject")
ASM_STUB(stub_52, "_ZN4Zone19OnCollisionPersistsEP10GameObject")
ASM_STUB(stub_53, "_ZN6ZoneEx15OnCollisionEndsEP10GameObject")
ASM_STUB(stub_54, "_ZN6ZoneEx17OnCollisionBeginsEP10GameObject")
ASM_STUB(stub_55, "_ZN6Arrays19GetMemberIDByStringINS_14TriggerObjectsEEEiPKc")

namespace {

void TestPredicatesAndInteraction() {
    TriggerObject* o = Fresh();
    EXPECT(o->IsUpdatable());
    EXPECT(o->IsZonable());
    EXPECT(o->IsAnimated());
    EXPECT(o->GetInteractionType(nullptr) == -1);  // m_dataIndex is -1 after construction

    g_canActivate = 0;
    o->m_unlocked = true;
    EXPECT(!o->IsInteractive(nullptr));
    g_canActivate = 1;
    EXPECT(o->IsInteractive(nullptr));
    o->m_unlocked = false;
    EXPECT(!o->IsInteractive(nullptr));
    g_canActivate = 0;
}

void TestInterpretIncomingNetStruct() {
    TriggerObject* o = Fresh();
    const int before = g_interpretCalls;
    o->m_unlocked = true;
    o->InterpretIncomingNetStruct(false);
    EXPECT(g_interpretCalls == before + 1);
    EXPECT(!g_lastForce);
    EXPECT(o->m_unlocked);  // a non-forced read keeps the unlock state
    o->InterpretIncomingNetStruct(true);
    EXPECT(g_interpretCalls == before + 2);
    EXPECT(g_lastForce);
    EXPECT(!o->m_unlocked);  // a forced read clears it
}

void TestSerializeForwards() {
    TriggerObject* o = Fresh();
    const int before = g_serializeCalls;
    o->Serialize(reinterpret_cast<IStreamBase*>(&g_fakeStream));
    EXPECT(g_serializeCalls == before + 1);
    EXPECT(g_lastStream == static_cast<const void*>(&g_fakeStream));
}

void TestInteractiveCondNoCharacter() {
    TriggerObject* o = Fresh();
    g_localPlayer->unk_660 = nullptr;  // no character: the gate passes
    o->m_unlockConditions = nullptr;
    o->m_unlocked = false;
    o->m_idleSoundMuted = 1;
    o->TestInteractiveCond();
    EXPECT(o->m_unlocked);
    EXPECT(o->m_idleSoundMuted == 0);

    // A failing unlock ConditionList keeps the object locked.
    o->m_unlocked = true;
    o->m_unlockConditions = reinterpret_cast<ConditionList*>(g_fakeConditionStorage);
    g_evalResult = 0;
    o->TestInteractiveCond();
    EXPECT(!o->m_unlocked);
    g_evalResult = 1;
    o->TestInteractiveCond();
    EXPECT(o->m_unlocked);
    o->m_unlockConditions = nullptr;  // the storage is not a real ConditionList: never destroy it
}

void TestInteractiveCondWithCharacter() {
    TriggerObject* o = Fresh();
    // With a local character the object is locked unless that character has a savegame whose quest-sync byte (+0x14) is
    // set: the listing (0x3993bc) tests `!character || (character->m_savegame && character->m_savegame->m_questSynced)`
    // before it looks at the unlock ConditionList. The savegame gate is therefore the state under test here.
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    std::memset(g_savegameStorage, 0, sizeof g_savegameStorage);
    g_localPlayer->unk_660 = g_character;

    // No savegame yet: the gate is closed, so an unlocked object is locked again.
    g_character->m_savegame = nullptr;
    o->m_unlocked = true;
    o->m_unlockConditions = nullptr;
    o->TestInteractiveCond();
    EXPECT(!o->m_unlocked);

    // A savegame that is not quest-synced: the gate is still closed.
    g_character->m_savegame = g_savegame;
    g_savegame->m_questSynced = false;
    o->m_unlocked = true;
    o->TestInteractiveCond();
    EXPECT(!o->m_unlocked);

    // A quest-synced savegame opens the gate; with no unlock conditions the object unlocks and the idle sound is muted.
    g_savegame->m_questSynced = true;
    o->m_unlocked = false;
    o->m_idleSoundMuted = 1;
    o->TestInteractiveCond();
    EXPECT(o->m_unlocked);
    EXPECT(o->m_idleSoundMuted == 0);

    g_localPlayer->unk_660 = nullptr;
}

void TestUpdate() {
    TriggerObject* o = Fresh();
    g_localPlayer->unk_660 = nullptr;

    // Unlocked, delayed timer already counting, able to activate: the idle sound mute is cleared.
    o->m_unlocked = true;
    o->m_timer = 5;
    o->m_idleSoundMuted = 1;
    g_canActivate = 1;
    int before = g_triggerUpdateCalls;
    o->Update();
    EXPECT(g_triggerUpdateCalls == before + 1);
    EXPECT(o->m_idleSoundMuted == 0);

    // Unlocked with no timer: the mute is left as it is.
    o->m_unlocked = true;
    o->m_timer = 0;
    o->m_idleSoundMuted = 1;
    o->Update();
    EXPECT(o->m_idleSoundMuted == 1);

    // Locked: Update re-tests the condition, which unlocks with no character and no conditions.
    o->m_unlocked = false;
    o->m_unlockConditions = nullptr;
    g_evalResult = 1;
    o->Update();
    EXPECT(o->m_unlocked);
    g_canActivate = 0;
}

void TestDeclareProperties() {
    TriggerObject* o = Fresh();
    g_propNames.clear();
    const int before = g_declarePropsCalls;
    o->DeclareProperties();
    EXPECT(g_declarePropsCalls == before + 1);
    EXPECT(g_propNames == "data;script;scriptOff;unlock_cond;");
}

void TestConstructorDefaults() {
    TriggerObject* o = Fresh();
    EXPECT(o->m_dataIndex == -1);
    EXPECT(o->m_scriptId == -1);
    EXPECT(o->m_static == false);
    EXPECT(o->unk_85 == 1);
    EXPECT(o->unk_28 == 1);
    EXPECT(o->m_unlocked == false);
    EXPECT(o->m_unlockConditions == nullptr);
    EXPECT(o->m_data.empty());
    EXPECT(o->m_unlockCond.empty());
}

void TestDestructorReleasesConditions() {
    TriggerObject* o = Fresh();
    o->m_unlockConditions = static_cast<ConditionList*>(std::malloc(sizeof(ConditionList)));
    g_conditionListDtorCalls = 0;
    o->~TriggerObject();
    EXPECT(g_conditionListDtorCalls == 1);

    // With no ConditionList the destructor destroys nothing extra.
    o = Fresh();
    g_conditionListDtorCalls = 0;
    o->~TriggerObject();
    EXPECT(g_conditionListDtorCalls == 0);
}

}  // namespace

int main() {
    TestPredicatesAndInteraction();
    TestInterpretIncomingNetStruct();
    TestSerializeForwards();
    TestInteractiveCondNoCharacter();
    TestInteractiveCondWithCharacter();
    TestUpdate();
    TestDeclareProperties();
    TestConstructorDefaults();
    TestDestructorReleasesConditions();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("TriggerObject tests passed\n");
    return 0;
}
