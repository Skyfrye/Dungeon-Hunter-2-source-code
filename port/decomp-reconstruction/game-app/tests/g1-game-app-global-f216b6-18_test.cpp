// Test for batch g1-game-app-global-f216b6-18. Checks the fields the reconstructed factories set, and that GetPosition
// returns zero. The factories covered are the script commands (Script_SetCameraClip, Script_PlayCamera, Script_SetCamera,
// Script_CONSOLE, Script_ExitCutSceneMode, Script_EnterCutSceneMode, Script_ExecScript, Script_PlayActorAnim), the
// conditions (Condition_IsEventInState, Condition_IsPlayerAtLevel, Condition_IsLevelInState) and the objectives
// (Objective_GatherLoot, ObjectiveTemplate_KillCharacter over Objective_SavedQty, Objective_MoveInZone) and Condition_IsQuestInState.
// The redo pass (r2a-game-app-global-f216b6-6) adds Condition_IsPlayerInLevel, Condition_IsQuestStateHigher and
// Condition_IsQuestStateLower, and the non-"All" path of Script_CharacterState_Callback. The "All" path walks a live
// ObjectManager and is not covered. Exit status 0 means every check passed.
//
// The batch source is linked into this test (check_tu.sh --test), so every vtable, implicit constructor and destructor
// it references must be defined here. The test-only stubs below stand in for the methods that other categories define.
// Each class's key function (its first out-of-line virtual) is one of them, so this test emits that class's vtable, and
// every out-of-line virtual the vtable names is defined too. The stubs do nothing and return zero or false. The objects
// are leaked, not deleted.
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/lc_api.hpp"
#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/condition_objective_factory.hpp"
#include "dh2/global/get_position.hpp"
#include "dh2/global/script_character_callback.hpp"

#include "dh2/Condition.hpp"
#include "dh2/Condition_IsEventInState.hpp"
#include "dh2/Condition_IsLevelInState.hpp"
#include "dh2/Condition_IsPlayerAtLevel.hpp"
#include "dh2/Condition_IsPlayerInLevel.hpp"
#include "dh2/Condition_IsQuestInState.hpp"
#include "dh2/Condition_IsQuestStateHigher.hpp"
#include "dh2/Condition_IsQuestStateLower.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveTemplate_KillCharacter.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/Objective_GatherLoot.hpp"
#include "dh2/Objective_MoveInZone.hpp"
#include "dh2/Objective_Qty.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/Script_CONSOLE.hpp"
#include "dh2/Script_EnterCutSceneMode.hpp"
#include "dh2/Script_ExecScript.hpp"
#include "dh2/Script_ExitCutSceneMode.hpp"
#include "dh2/Script_PlayActorAnim.hpp"
#include "dh2/Script_PlayCamera.hpp"
#include "dh2/Script_SetCamera.hpp"
#include "dh2/Script_SetCameraClip.hpp"

// ---- Test-only link stubs -------------------------------------------------------------------------------------------

ScriptCmdImpl::~ScriptCmdImpl() {}
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

void Script_SetCameraClip::Execute(bool, int) {}
bool Script_SetCameraClip::IsBlocking() const { return false; }
void Script_PlayCamera::Execute(bool, int) {}
bool Script_PlayCamera::IsBlocking() const { return false; }
void Script_SetCamera::Execute(bool, int) {}
bool Script_SetCamera::IsBlocking() const { return false; }
void Script_CONSOLE::Execute(bool, int) {}
bool Script_CONSOLE::IsBlocking() const { return false; }
void Script_ExitCutSceneMode::Execute(bool, int) {}
bool Script_ExitCutSceneMode::IsBlocking() const { return false; }
void Script_EnterCutSceneMode::Execute(bool, int) {}
bool Script_EnterCutSceneMode::IsBlocking() const { return false; }
void Script_ExecScript::Execute(bool, int) {}
bool Script_ExecScript::IsBlocking() const { return false; }
void Script_PlayActorAnim::Init() {}
void Script_PlayActorAnim::Execute(bool, int) {}
bool Script_PlayActorAnim::IsBlocking() const { return false; }

ObjectHandle::ObjectHandle() {}

Condition::Condition() {}
Condition::~Condition() {}
void Condition::Compile() {}
std::size_t Condition::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }

Condition_IsEventInState::~Condition_IsEventInState() {}
bool Condition_IsEventInState::Eval() { return false; }
std::size_t Condition_IsEventInState::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }
Condition_IsPlayerAtLevel::~Condition_IsPlayerAtLevel() {}
bool Condition_IsPlayerAtLevel::Eval() { return false; }
std::size_t Condition_IsPlayerAtLevel::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }
Condition_IsLevelInState::~Condition_IsLevelInState() {}
bool Condition_IsLevelInState::Eval() { return false; }
std::size_t Condition_IsLevelInState::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }
Condition_IsQuestInStateGeneric::~Condition_IsQuestInStateGeneric() {}
bool Condition_IsQuestInStateGeneric::Eval() { return false; }
std::size_t Condition_IsQuestInStateGeneric::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }
Condition_IsQuestInState::~Condition_IsQuestInState() {}
Condition_IsQuestStateHigher::~Condition_IsQuestStateHigher() {}
Condition_IsQuestStateLower::~Condition_IsQuestStateLower() {}
Condition_IsPlayerInLevel::~Condition_IsPlayerInLevel() {}
bool Condition_IsPlayerInLevel::Eval() { return false; }
std::size_t Condition_IsPlayerInLevel::DBG_TraceDetailedConditionInformation(__sFILE*) { return 0; }

// The callback's lookup path (Script_CharacterState_Callback, non-"All" name). The stubs record what the callback passes.
// The name compare is exact, which is enough for the names the test uses.
static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
int g_lookupCalls = 0;
const char* g_lookupName = nullptr;
int g_lookupFlags = 0;
bool g_lookupActive = true;
const char* g_lookupType = nullptr;
int g_callbackCalls = 0;
ObjectBase* g_callbackObject = nullptr;
ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool active, char const* type) {
    ++g_lookupCalls;
    g_lookupName = name;
    g_lookupFlags = flags;
    g_lookupActive = active;
    g_lookupType = type;
    return ObjectHandle();
}
ObjectBase* ObjectHandle::GetObject(bool) { return nullptr; }
int LC_API_STRCASECMP(const char* a, const char* b) { return std::strcmp(a, b); }

Objective::Objective() {}
Objective::~Objective() {}
void Objective::Compile() {}
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective::InstallObjectiveMarker(int, int) {}
void Objective::RemoveObjectiveMarker() {}
std::string Objective::GetDesc() const { return std::string(); }
void Objective::_loadData(IStreamBase*) {}
void Objective::_saveData(IStreamBase*) {}
void Objective::_resetData() {}

Objective_EventReceiver::~Objective_EventReceiver() {}
int Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective_EventReceiver::Register() {}
void Objective_EventReceiver::Unregister() {}
bool Objective_EventReceiver::onEvent(const IEvent*, const EventManager*) { return false; }

Objective_Qty::~Objective_Qty() {}

Objective_SavedQty::~Objective_SavedQty() {}
void Objective_SavedQty::_loadData(IStreamBase*) {}
void Objective_SavedQty::_saveData(IStreamBase*) {}
void Objective_SavedQty::_resetData() {}

Objective_GatherLoot::~Objective_GatherLoot() {}
void Objective_GatherLoot::Compile() {}
int Objective_GatherLoot::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective_GatherLoot::Register() {}
void Objective_GatherLoot::Unregister() {}
void Objective_GatherLoot::GetPositions(Vector3DFList&) const {}
bool Objective_GatherLoot::handleEvent(const IEvent*, const EventManager*) { return false; }

Objective_MoveInZone::~Objective_MoveInZone() {}
void Objective_MoveInZone::Compile() {}
int Objective_MoveInZone::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective_MoveInZone::GetPositions(Vector3DFList&) const {}
bool Objective_MoveInZone::handleEvent(const IEvent*, const EventManager*) { return false; }

// ObjectiveTemplate_KillCharacter is a template, so its stubs are templated and then explicitly instantiated for the one
// instantiation the batch uses.
template <typename TStruct, typename TEvent, typename TTest, typename TBase>
ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::~ObjectiveTemplate_KillCharacter() {}
template <typename TStruct, typename TEvent, typename TTest, typename TBase>
void ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::Compile() {}
template <typename TStruct, typename TEvent, typename TTest, typename TBase>
int ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::DBG_TraceDetailedObjectiveInformation(
    __sFILE*) const {
    return 0;
}
template <typename TStruct, typename TEvent, typename TTest, typename TBase>
void ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::GetPositions(Vector3DFList&) const {}
template <typename TStruct, typename TEvent, typename TTest, typename TBase>
bool ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::handleEvent(const IEvent*, const EventManager*) {
    return false;
}
template class ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate,
                                               Objective_SavedQty>;

namespace {

using KillCharacterQty = ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate,
                                                         TestCharTemplate, Objective_SavedQty>;

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// Script command factories: the command is a new instance of its own class with unk_04 cleared, m_cmdId = -1 and
// m_args null. Returns the command as its own class, or nullptr.
template <class T>
T* CheckScriptCmd(const char* name) {
    T* cmd = dynamic_cast<T*>(GetNewScriptCmdImplInstance<T>());
    Check(cmd != nullptr, name, "returns a command of its own class");
    if (cmd == nullptr) {
        return nullptr;
    }
    Check(!cmd->unk_04, name, "unk_04 is cleared");
    Check(cmd->m_cmdId == -1, name, "m_cmdId is -1");
    Check(cmd->m_args == nullptr, name, "m_args is null");
    return cmd;
}

void CheckScriptFactories() {
    CheckScriptCmd<Script_SetCameraClip>("Script_SetCameraClip");
    CheckScriptCmd<Script_PlayCamera>("Script_PlayCamera");
    CheckScriptCmd<Script_SetCamera>("Script_SetCamera");
    CheckScriptCmd<Script_CONSOLE>("Script_CONSOLE");
    CheckScriptCmd<Script_ExitCutSceneMode>("Script_ExitCutSceneMode");
    CheckScriptCmd<Script_EnterCutSceneMode>("Script_EnterCutSceneMode");
    CheckScriptCmd<Script_PlayActorAnim>("Script_PlayActorAnim");

    Script_ExecScript* exec = CheckScriptCmd<Script_ExecScript>("Script_ExecScript");
    if (exec != nullptr) {
        Check(exec->unk_10 == 0, "Script_ExecScript", "unk_10 is zero");
    }
}

// Condition factories: the condition is a new instance of its own class with m_stub null.
template <class T>
void CheckCondition(const char* name) {
    T* cond = dynamic_cast<T*>(GetConditionImplInstance<T>());
    Check(cond != nullptr, name, "returns a condition of its own class");
    if (cond != nullptr) {
        Check(cond->m_stub == nullptr, name, "m_stub is zero");
    }
}

void CheckConditionFactories() {
    CheckCondition<Condition_IsEventInState>("Condition_IsEventInState");
    CheckCondition<Condition_IsPlayerAtLevel>("Condition_IsPlayerAtLevel");
    CheckCondition<Condition_IsLevelInState>("Condition_IsLevelInState");
    CheckCondition<Condition_IsQuestInState>("Condition_IsQuestInState");

    Condition_IsQuestInState* quest = dynamic_cast<Condition_IsQuestInState*>(GetConditionImplInstance<Condition_IsQuestInState>());
    if (quest != nullptr) {
        Check(quest->m_comparator == Condition_IsQuestInStateGeneric::COMPARE_EQUAL, "Condition_IsQuestInState",
              "m_comparator is COMPARE_EQUAL");
    }

    Condition_IsPlayerInLevel* inLevel =
        dynamic_cast<Condition_IsPlayerInLevel*>(GetConditionImplInstance<Condition_IsPlayerInLevel>());
    Check(inLevel != nullptr, "Condition_IsPlayerInLevel", "returns a condition of its own class");
    if (inLevel != nullptr) {
        Check(inLevel->m_stub == nullptr, "Condition_IsPlayerInLevel", "m_stub is zeroed");
    }

    Condition_IsQuestStateHigher* higher =
        dynamic_cast<Condition_IsQuestStateHigher*>(GetConditionImplInstance<Condition_IsQuestStateHigher>());
    Check(higher != nullptr, "Condition_IsQuestStateHigher", "returns a condition of its own class");
    if (higher != nullptr) {
        Check(higher->m_comparator == Condition_IsQuestInStateGeneric::COMPARE_HIGHER, "Condition_IsQuestStateHigher",
              "m_comparator is COMPARE_HIGHER");
    }

    Condition_IsQuestStateLower* lower =
        dynamic_cast<Condition_IsQuestStateLower*>(GetConditionImplInstance<Condition_IsQuestStateLower>());
    Check(lower != nullptr, "Condition_IsQuestStateLower", "returns a condition of its own class");
    if (lower != nullptr) {
        Check(lower->m_comparator == Condition_IsQuestInStateGeneric::COMPARE_LOWER, "Condition_IsQuestStateLower",
              "m_comparator is COMPARE_LOWER");
    }
}

void RecordCallback(ObjectBase* object) {
    ++g_callbackCalls;
    g_callbackObject = object;
}

// Script_CharacterState_Callback with a name other than "All": one lookup with the arguments passed through (flags as
// given, active false, no type), and one callback with the object the lookup handle returns (null in the stub).
void CheckStateCallback() {
    Script_CharacterState_Callback("Hero", 3, RecordCallback);
    Check(g_lookupCalls == 1, "Script_CharacterState_Callback", "one lookup for a named target");
    Check(g_lookupName != nullptr && std::strcmp(g_lookupName, "Hero") == 0, "Script_CharacterState_Callback",
          "lookup name is the callback's name");
    Check(g_lookupFlags == 3, "Script_CharacterState_Callback", "lookup flags are the callback's int argument");
    Check(!g_lookupActive, "Script_CharacterState_Callback", "lookup active flag is false");
    Check(g_lookupType == nullptr, "Script_CharacterState_Callback", "lookup type is null");
    Check(g_callbackCalls == 1, "Script_CharacterState_Callback", "callback runs once");
    Check(g_callbackObject == nullptr, "Script_CharacterState_Callback", "callback receives the handle's object");
}

void CheckObjectiveFactories() {
    Objective_GatherLoot* gather = dynamic_cast<Objective_GatherLoot*>(GetObjectiveImplInstance<Objective_GatherLoot>());
    Check(gather != nullptr, "Objective_GatherLoot", "returns an objective of its own class");
    if (gather != nullptr) {
        Check(gather->m_currentQty == 0, "Objective_GatherLoot", "m_currentQty is zero");
    }

    KillCharacterQty* kill = dynamic_cast<KillCharacterQty*>(GetObjectiveImplInstance<KillCharacterQty>());
    Check(kill != nullptr, "ObjectiveTemplate_KillCharacter", "returns an objective of its own class");
    if (kill != nullptr) {
        Check(kill->m_currentQty == 0, "ObjectiveTemplate_KillCharacter", "m_currentQty is zero");
        Check(kill->m_questRow == nullptr, "ObjectiveTemplate_KillCharacter", "m_questRow is null");
        Check(kill->m_requiredQty == 0, "ObjectiveTemplate_KillCharacter", "m_requiredQty is zero");
    }

    Objective_MoveInZone* move = dynamic_cast<Objective_MoveInZone*>(GetObjectiveImplInstance<Objective_MoveInZone>());
    Check(move != nullptr, "Objective_MoveInZone", "returns an objective of its own class");
    if (move != nullptr) {
        Check(move->m_object == nullptr, "Objective_MoveInZone", "m_object is null");
    }
}

void CheckGetPosition() {
    Vector3D p = GetPosition();
    Check(p.X == 0.0f, "GetPosition", "X is zero");
    Check(p.Y == 0.0f, "GetPosition", "Y is zero");
    Check(p.Z == 0.0f, "GetPosition", "Z is zero");
}

}  // namespace

int main() {
    CheckScriptFactories();
    CheckConditionFactories();
    CheckStateCallback();
    CheckObjectiveFactories();
    CheckGetPosition();

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-18: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
