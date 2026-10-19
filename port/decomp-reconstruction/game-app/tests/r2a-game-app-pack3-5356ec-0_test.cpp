// Test for batch r2a-game-app-pack3-5356ec-0. Checks the script commands whose bodies are in g1-game-app-pack8, pack9, pack10
// and pack11: the camera blocking and clip calls, the level camera's transition counter, the tutorial and dialog queues of
// MenuMessageManager, the spawn lookups, the save calls and the named-actor stop. Exit status 0 means every check passed.
//
// The batch sources call into engine and game code that is not linked here. Those calls are stubbed below. Each stub
// records what it was given, or returns a value the test sets. Records are real: the Structs:: records come from
// pydata-accessors/src/script_cmd_records.cpp, which this test is linked with. Level, CameraLevel, Application, PlayerInfo,
// Character and the controller are raw storage. The code under test only reads and writes their data members at the header
// offsets, and never calls a virtual on them.
//
// Build and run from the repository root (the sources are listed relative to port/decomp-reconstruction):
//   bash tools/trackb/check_tu.sh --test port/decomp-reconstruction/game-app/tests/r2a-game-app-pack3-5356ec-0_test.cpp
//     port/decomp-reconstruction/game-app/src/g1-game-app-pack8-a39f92-0.cpp
//     port/decomp-reconstruction/game-app/src/g1-game-app-pack9-857bfe-0.cpp
//     port/decomp-reconstruction/game-app/src/g1-game-app-pack10-ec557a-0.cpp
//     port/decomp-reconstruction/game-app/src/g1-game-app-pack11-61230f-0.cpp
//     port/decomp-reconstruction/pydata-accessors/src/script_cmd_records.cpp

#include <cctype>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <deque>
#include <string>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/Container.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/Door.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Script_PlayCamera.hpp"
#include "dh2/Script_SaveGame.hpp"
#include "dh2/Script_SetCameraTarget.hpp"
#include "dh2/Script_SkipAllCharMenuTutorialMessages.hpp"
#include "dh2/Script_SkipCharMenuTutorialMessage.hpp"
#include "dh2/Script_SpawnCharacter.hpp"
#include "dh2/Script_SpawnContainer.hpp"
#include "dh2/Script_StartDialog.hpp"
#include "dh2/Script_StartDialogID.hpp"
#include "dh2/Script_StopActor.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/app_helpers.hpp"
#include "dh2/global/script_character_callback.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// The Structs:: records free their name buffers in their destructors, so a name given to a record must be a heap copy.
void SetName(char*& field, const char* text) {
    std::free(field);
    const std::size_t size = std::strlen(text) + 1;
    field = static_cast<char*>(std::malloc(size));
    std::memcpy(field, text, size);
}

// Recorded state of the stubs.
int g_switchReads = 0;
int g_lookupCalls = 0;
std::string g_lookupName;
int g_lookupFlags = -1;
bool g_lookupActive = true;
const char* g_lookupType = reinterpret_cast<const char*>(1);
bool g_objectFound = false;
Character* g_characterForHandle = nullptr;
Container* g_containerForHandle = nullptr;
GameObject* g_gameObjectForHandle = nullptr;
Level* g_currentLevel = nullptr;
int g_enterLocationValue = 7;
int g_getConstantCalls = 0;

int g_playAnimCalls = 0;
int g_playAnimClip = 0;
int g_playAnimController = -1;
bool g_playAnimPreserve = true;

int g_levelBlockCalls = 0;
bool g_levelBlockArg = true;
int g_quickSaveCalls = 0;
bool g_quickSaveArg = true;
int g_charBlockCalls = 0;
bool g_charBlockArg = true;
int g_charSaveCalls = 0;

int g_spawnStateCalls = 0;
bool g_spawnDelayed = true;
bool g_spawnFlag = true;
int g_containerSpawnCalls = 0;

int g_cmdStopCalls = 0;
int g_unk009AtStop = -1;

int g_enqueueCalls = 0;
bool g_enqueueFlag = false;
int g_enqueueQueue = -1;
int g_flushCalls = 0;
int g_dialogCtorCalls = 0;
int g_dialogArgs[4] = {-1, -1, -1, -1};
int g_dialogListCalls = 0;
int g_dialogListId = -1;
int g_dialogListCount = 0;
int g_dialogInvokeCalls = 0;
std::string g_dialogInvokeName;
int g_dialogInvokeQueue = -1;

int g_charInvokeCalls = 0;
std::string g_charInvokeName;
int g_charInvokeQueue = -1;

// Raw storage behind the fake objects.
alignas(16) unsigned char g_applicationStorage[sizeof(Application)];
alignas(16) unsigned char g_camAnimSetStorage[2 * sizeof(Structs::CamAnimSet)];
alignas(16) unsigned char g_levelStorage[sizeof(Level)];
alignas(16) unsigned char g_cameraStorage[sizeof(CameraLevel)];
alignas(16) unsigned char g_levelConfigStorage[sizeof(LevelConfig)];
alignas(16) unsigned char g_pyDataStorage[sizeof(PyDataConstants)];
alignas(16) unsigned char g_debugStorage[sizeof(DebugSwitches)];
alignas(16) unsigned char g_menuManagerStorage[sizeof(MenuManager)];
alignas(16) unsigned char g_objectManagerStorage[sizeof(ObjectManager)];
alignas(16) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];
alignas(16) unsigned char g_playerStorage[sizeof(PlayerInfo)];
alignas(16) unsigned char g_characterStorage[sizeof(Character)];
alignas(16) unsigned char g_containerStorage[sizeof(Container)];
alignas(16) unsigned char g_controllerStorage[sizeof(v2Controller)];
alignas(16) unsigned char g_objectStorage[sizeof(ObjectBase)];

Level* LevelObject() { return reinterpret_cast<Level*>(g_levelStorage); }
CameraLevel* CameraObject() { return reinterpret_cast<CameraLevel*>(g_cameraStorage); }
PlayerInfo* PlayerObject() { return reinterpret_cast<PlayerInfo*>(g_playerStorage); }
Character* CharacterObject() { return reinterpret_cast<Character*>(g_characterStorage); }
Container* ContainerObject() { return reinterpret_cast<Container*>(g_containerStorage); }
v2Controller* ControllerObject() { return reinterpret_cast<v2Controller*>(g_controllerStorage); }

void ResetCounters() {
    g_switchReads = 0;
    g_lookupCalls = 0;
    g_lookupName.clear();
    g_lookupFlags = -1;
    g_lookupActive = true;
    g_lookupType = reinterpret_cast<const char*>(1);
    g_playAnimCalls = 0;
    g_levelBlockCalls = 0;
    g_quickSaveCalls = 0;
    g_charBlockCalls = 0;
    g_charSaveCalls = 0;
    g_spawnStateCalls = 0;
    g_containerSpawnCalls = 0;
    g_cmdStopCalls = 0;
    g_unk009AtStop = -1;
    g_enqueueCalls = 0;
    g_flushCalls = 0;
    g_dialogCtorCalls = 0;
    g_dialogListCalls = 0;
    g_dialogInvokeCalls = 0;
    g_charInvokeCalls = 0;
}

}  // namespace

// ---- Explicit specializations and statics of the message managers ----------------------------------------------------

template <>
MenuMessageManager<DialogMsg, 1>::~MenuMessageManager() {}

template <>
void MenuMessageManager<DialogMsg, 1>::EnqueueMessage(const DialogMsg& message, int queue, bool flag) {
    ++g_enqueueCalls;
    g_enqueueQueue = queue;
    g_enqueueFlag = flag;
    m_queues[queue].push_back(message);
}

template <>
void MenuMessageManager<DialogMsg, 1>::FlushEnqueuedMessages(int queue) {
    ++g_flushCalls;
    m_queues[queue].clear();
}

template <>
void MenuMessageManager<DialogMsg, 1>::Invoke(const char* functionName, int queue) const {
    ++g_dialogInvokeCalls;
    g_dialogInvokeName = functionName;
    g_dialogInvokeQueue = queue;
}

template <>
MenuMessageManager<CharMenuTutorialMsg, 1>::~MenuMessageManager() {}

template <>
void MenuMessageManager<CharMenuTutorialMsg, 1>::Invoke(const char* functionName, int queue) const {
    ++g_charInvokeCalls;
    g_charInvokeName = functionName;
    g_charInvokeQueue = queue;
}

// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static MenuMessageManager<DialogMsg, 1> g_testInstance_1{};
template <>
MenuMessageManager<DialogMsg, 1>& MenuMessageManager<DialogMsg, 1>::s_inst = g_testInstance_1;
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static MenuMessageManager<CharMenuTutorialMsg, 1> g_testInstance_2{};
template <>
MenuMessageManager<CharMenuTutorialMsg, 1>& MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst = g_testInstance_2;

// ---- Message classes ------------------------------------------------------------------------------------------------

CharMenuTutorialMsg::CharMenuTutorialMsg(int stringId, const std::string& frame, const std::string& menu)
    : m_stringId(stringId), m_frame(frame), m_menu(menu) {}

CharMenuTutorialMsg::CharMenuTutorialMsg(const CharMenuTutorialMsg& other)
    : m_stringId(other.m_stringId), m_frame(other.m_frame), m_menu(other.m_menu) {}

const char* CharMenuTutorialMsg::s_SkipFuncName = nullptr;

DialogMsg::DialogMsg(int titleId, int textId, int style, int actorIndex) : m_style(style) {
    ++g_dialogCtorCalls;
    g_dialogArgs[0] = titleId;
    g_dialogArgs[1] = textId;
    g_dialogArgs[2] = style;
    g_dialogArgs[3] = actorIndex;
}

DialogMsg::DialogMsg(const DialogMsg& other)
    : std::string(other), m_text(other.m_text), m_style(other.m_style), m_actorName(other.m_actorName) {}

DialogMsg::~DialogMsg() {}

const char* DialogMsg::s_StartFuncName[] = {"StartDialog", nullptr};

bool GetDialogMsgListById(int dialogId, std::vector<DialogMsg>& out) {
    ++g_dialogListCalls;
    g_dialogListId = dialogId;
    out.clear();
    for (int i = 0; i < g_dialogListCount; ++i) {
        out.push_back(DialogMsg(i, i, 0, 0));
    }
    return g_dialogListCount > 0;
}

// ---- Stubs for code outside the batch --------------------------------------------------------------------------------

static ObjectManager* g_test_dword_99F764 = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

VisualFXManager::VisualFXManager() {}
VisualFXManager::~VisualFXManager() {}
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {}
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static VisualFXManager g_testInstance_3{};
VisualFXManager& VisualFXManager::s_inst = g_testInstance_3;

void VisualFXManager::DropAnimatedFXSetByID(int /*effectTableId*/) {}

// Record destructors of the script commands the checks create on the stack (declared out of line in the headers).
Script_SkipCharMenuTutorialMessage::~Script_SkipCharMenuTutorialMessage() {}
Script_SpawnCharacter::~Script_SpawnCharacter() {}
Script_SpawnContainer::~Script_SpawnContainer() {}
Script_StartDialog::~Script_StartDialog() {}

// Stream reads used by the pydata record readers. The checks never read a stream.
bool StreamReader::readStringEx(IStreamBase* /*stream*/, char* /*dst*/, std::uint64_t /*len*/) {
    return false;
}
template <>
bool StreamReader::readAs<bool>(IStreamBase* /*stream*/) {
    return false;
}
template <>
int StreamReader::readAs<int>(IStreamBase* /*stream*/) {
    return 0;
}
template <>
unsigned int StreamReader::readAs<unsigned int>(IStreamBase* /*stream*/) {
    return 0;
}
template <>
void StreamReader::readAs<float>(IStreamBase* /*stream*/, float* value) {
    *value = 0.0f;
}

void Script_CharacterState_Callback(const char* /*name*/, int /*arg*/, void (*/*callback*/)(ObjectBase*)) {}

void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
ScriptCmdImpl::~ScriptCmdImpl() {}

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_applicationStorage);
}

Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}

DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(g_debugStorage);
}

void DebugSwitches::load() {}

bool DebugSwitches::GetSwitch(const std::string& /*name*/) {
    ++g_switchReads;
    return false;
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    ++g_getConstantCalls;
    if (std::strcmp(className, "DialogStyles") == 0 && std::strcmp(constantName, "EnterLocationDialog") == 0) {
        return g_enterLocationValue;
    }
    return -1;
}

MenuManager* MenuManager::GetInstance() {
    return reinterpret_cast<MenuManager*>(g_menuManagerStorage);
}

MenuBase* MenuManager::GetMenuByName(const char* /*name*/) {
    return nullptr;
}

char* LC_API_STRSTR(const char* haystack, const char* needle) {
    return const_cast<char*>(std::strstr(haystack, needle));
}

int LC_API_STRCASECMP(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) {
            return ca - cb;
        }
        if (ca == 0) {
            return 0;
        }
    }
}

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectBase* ObjectHandle::GetObject(bool /*assertFound*/) {
    return g_objectFound ? reinterpret_cast<ObjectBase*>(g_objectStorage) : nullptr;
}

ObjectBase* ObjectHandle::GetObject(bool /*assertFound*/) const {
    return g_objectFound ? reinterpret_cast<ObjectBase*>(g_objectStorage) : nullptr;
}

ObjectHandle::operator GameObject*() {
    return g_gameObjectForHandle;
}

ObjectHandle::operator Character*() {
    return g_characterForHandle;
}

template <>
ObjectHandle::operator Container*() {
    return g_containerForHandle;
}

ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool active, char const* type) {
    ++g_lookupCalls;
    g_lookupName = name != nullptr ? name : "";
    g_lookupFlags = flags;
    g_lookupActive = active;
    g_lookupType = type;
    return ObjectHandle();
}

ObjectHandle ObjectBase::GetHandle() {
    return ObjectHandle();
}

PlayerInfo* PlayerManager::GetLocalPlayer(int /*localId*/, bool /*flag*/) {
    return PlayerObject();
}

PlayerInfo* PlayerManager::GetPlayer(int /*friendlyId*/, bool /*flag*/) {
    return PlayerObject();
}

void Level::SG_BlockLevel(bool blocked) {
    ++g_levelBlockCalls;
    g_levelBlockArg = blocked;
}

void Level::QuickSave(bool levelChange) {
    ++g_quickSaveCalls;
    g_quickSaveArg = levelChange;
}

LevelConfig* Level::GetLevelConfig() const {
    return reinterpret_cast<LevelConfig*>(g_levelConfigStorage);
}

bool CameraLevel::PlayAnim(int clipId, int controllerArg, bool preserveZoom) {
    ++g_playAnimCalls;
    g_playAnimClip = clipId;
    g_playAnimController = controllerArg;
    g_playAnimPreserve = preserveZoom;
    return true;
}

void Character::SG_Block(bool blocked) {
    ++g_charBlockCalls;
    g_charBlockArg = blocked;
}

int Character::SG_Save() {
    ++g_charSaveCalls;
    return 0;
}

void Container::Spawn() {
    ++g_containerSpawnCalls;
}

int CharStateMachine::SM_SetSpawnState(bool delayed, bool flag) {
    ++g_spawnStateCalls;
    g_spawnDelayed = delayed;
    g_spawnFlag = flag;
    return 0;
}

int CharStateMachine::SM_SetIdleState(bool /*flag*/) {
    return 0;
}

int CharStateMachine::SM_SetLimbusState(bool /*flag*/) {
    return 0;
}

bool CharStateMachine::SM_IsInLimbus() const {
    return false;
}

bool CharStateMachine::SM_IsAwaitingToSpawn() const {
    return false;
}

void v2Controller::Cmd_Stop() {
    ++g_cmdStopCalls;
    g_unk009AtStop = unk_009 ? 1 : 0;
}

void v2Controller::Cmd_WarpTo(const Point3D<float>& /*pos*/) {}

void v2Controller::Cmd_MoveTo(const Point3D<float>& /*pos*/) {}

void v2Controller::Cmd_MoveTo(GameObject* /*target*/) {}

void GameObject::SetPosition(const Point3D<float>& /*pos*/, bool /*setDestination*/) {}

void GameObject::ForceUpdatePosition() {}

void GameObject::DisableZoning() {}

void GameObject::DisableCollisions() {}

void GameObject::SetPhysicalObject(PhysicalObject* /*physical*/, bool /*pin*/) {}

void Character::Revive(GameObject* /*reviver*/, bool /*resetPhysics*/) {}

void CharAI::AI_SetMaster(Character* /*master*/) {}

void CharAnimator::ANIM_AddAnimDictToSet(int /*animDict*/) {}

void Door::Open(bool /*instant*/) {}

// ---- Checks ----------------------------------------------------------------------------------------------------------

namespace {

void SetUpWorld() {
    reinterpret_cast<Application*>(g_applicationStorage)->m_pyDataConstants =
        reinterpret_cast<PyDataConstants*>(g_pyDataStorage);
    LevelObject()->m_camera = CameraObject();
    PlayerObject()->unk_660 = nullptr;
}

void CheckPlayCamera() {
    Script_PlayCamera command;
    Structs::PlayCamera record;
    command.m_args = &record;
    CameraObject()->m_zoomAnimActive = true;
    g_currentLevel = LevelObject();

    record.Wait = false;
    Check(!command.IsBlocking(), "Script_PlayCamera", "not blocking while the record flag is clear");
    record.Wait = true;
    g_currentLevel = nullptr;
    Check(!command.IsBlocking(), "Script_PlayCamera", "not blocking without a current level");
    g_currentLevel = LevelObject();
    Check(command.IsBlocking(), "Script_PlayCamera", "blocking while the camera is busy");
    CameraObject()->m_zoomAnimActive = false;
    Check(!command.IsBlocking(), "Script_PlayCamera", "not blocking when the camera is idle");

    CameraObject()->m_zoomAnimActive = true;
    record.Anim = 12;
    ResetCounters();
    command.Execute(false, 0);
    Check(g_switchReads == 1, "Script_PlayCamera::Execute", "one trace read");
    Check(g_playAnimCalls == 1 && g_playAnimClip == 12, "Script_PlayCamera::Execute", "plays clip m_w2");
    Check(g_playAnimController == 0 && !g_playAnimPreserve, "Script_PlayCamera::Execute",
          "PlayAnim gets 0 and false");
    // Skipping: the clip is field +0x10 (m_w4) of the Arrays::CamAnimSetTable element m_camTableIndex of the camera.
    Structs::CamAnimSet* camSets = reinterpret_cast<Structs::CamAnimSet*>(g_camAnimSetStorage);
    camSets[0].Idle = 7;
    camSets[1].Idle = 33;
    Arrays::CamAnimSetTable::members = g_camAnimSetStorage;
    CameraObject()->m_camTableIndex = 1;
    ResetCounters();
    command.Execute(true, 0);
    Check(g_switchReads == 1, "Script_PlayCamera::Execute", "skipping: one trace read");
    Check(g_playAnimCalls == 1 && g_playAnimClip == 33, "Script_PlayCamera::Execute", "skipping: plays the camera set's clip");
    CameraObject()->m_camTableIndex = 0;
    ResetCounters();
    command.Execute(true, 0);
    Check(g_playAnimCalls == 1 && g_playAnimClip == 7, "Script_PlayCamera::Execute", "skipping: row 0");
    Arrays::CamAnimSetTable::members = nullptr;
}

void CheckSetCameraTargetBlocking() {
    Script_SetCameraTarget command;
    Structs::SetCameraTarget record;
    command.m_args = &record;
    g_currentLevel = LevelObject();

    record.Wait = false;
    CameraObject()->m_transitionRemainingMs = 5;
    Check(!command.IsBlocking(), "Script_SetCameraTarget", "not blocking while the record flag is clear");
    record.Wait = true;
    CameraObject()->m_transitionRemainingMs = 5;
    Check(command.IsBlocking(), "Script_SetCameraTarget", "blocking while the transition counter is positive");
    CameraObject()->m_transitionRemainingMs = 0;
    Check(!command.IsBlocking(), "Script_SetCameraTarget", "not blocking when the counter is zero");
    CameraObject()->m_transitionRemainingMs = 5;
    g_currentLevel = nullptr;
    Check(!command.IsBlocking(), "Script_SetCameraTarget", "not blocking without a level");
}

void CheckSkipAllCharMenu() {
    auto& queue = MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst.m_queues[0];
    queue.clear();
    queue.push_back(CharMenuTutorialMsg(1, "frame", "menu"));
    queue.push_back(CharMenuTutorialMsg(2, "frame", "menu"));
    queue.push_back(CharMenuTutorialMsg(3, "frame", "menu"));
    Script_SkipAllCharMenuTutorialMessages skipAll;
    skipAll.Execute(false, 0);
    Check(queue.empty(), "Script_SkipAllCharMenuTutorialMessages", "the queue is emptied");
}

void CheckSkipCharMenu() {
    auto& queue = MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst.m_queues[0];
    Script_SkipCharMenuTutorialMessage skip;

    queue.clear();
    queue.push_back(CharMenuTutorialMsg(1, "frame", "menu"));
    queue.push_back(CharMenuTutorialMsg(2, "frame", "menu"));
    CharMenuTutorialMsg::s_SkipFuncName = "SkipCharMenu";
    ResetCounters();
    skip.Execute(false, 0);
    Check(queue.size() == 1 && queue.front().m_stringId == 2, "Script_SkipCharMenuTutorialMessage",
          "pops the front message");
    Check(g_charInvokeCalls == 1 && g_charInvokeName == "SkipCharMenu" && g_charInvokeQueue == 0,
          "Script_SkipCharMenuTutorialMessage", "invokes the skip name on queue 0");

    CharMenuTutorialMsg::s_SkipFuncName = nullptr;
    ResetCounters();
    skip.Execute(false, 0);
    Check(queue.empty() && g_charInvokeCalls == 0, "Script_SkipCharMenuTutorialMessage",
          "pops without an invoke when no skip name is set");

    ResetCounters();
    skip.Execute(false, 0);
    Check(queue.empty() && g_charInvokeCalls == 0, "Script_SkipCharMenuTutorialMessage",
          "an empty queue is left alone");
}

void CheckStartDialogInit() {
    Script_StartDialog dialog;
    Structs::StartDialog record;
    dialog.m_args = &record;

    record.Style = g_enterLocationValue;
    dialog.Init();
    Check(dialog.unk_04, "Script_StartDialog::Init", "flag set for the EnterLocationDialog style");
    record.Style = 3;
    dialog.Init();
    Check(!dialog.unk_04, "Script_StartDialog::Init", "flag clear for another style");
}

void CheckStartDialogExecute() {
    auto& queue = MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0];
    queue.clear();
    Script_StartDialog dialog;
    Structs::StartDialog record;
    record.Actor = 5;
    record.Style = 3;
    record.Text = 21;
    dialog.m_args = &record;

    ResetCounters();
    dialog.Execute(true, 0);
    Check(g_switchReads == 0 && g_enqueueCalls == 0 && g_dialogCtorCalls == 0, "Script_StartDialog::Execute",
          "skipping does nothing");

    ResetCounters();
    dialog.Execute(false, 0);
    Check(g_switchReads == 1, "Script_StartDialog::Execute", "one trace read when not skipping");
    Check(g_dialogCtorCalls == 1 && g_dialogArgs[0] == 0 && g_dialogArgs[1] == 21 && g_dialogArgs[2] == 3 &&
              g_dialogArgs[3] == 5,
          "Script_StartDialog::Execute", "DialogMsg(0, m_w4, m_w3, m_w2)");
    Check(g_enqueueCalls == 1 && g_enqueueFlag && g_enqueueQueue == 0, "Script_StartDialog::Execute",
          "enqueued with flag true on queue 0");
    Check(queue.size() == 1 && queue.front().m_style == 3, "Script_StartDialog::Execute",
          "the message is in the queue with its style");

    record.Style = g_enterLocationValue;
    queue.clear();
    queue.push_back(DialogMsg(9, 9, 9, 9));
    ResetCounters();
    dialog.Execute(false, 0);
    Check(g_flushCalls == 1 && g_enqueueCalls == 0 && g_dialogCtorCalls == 0, "Script_StartDialog::Execute",
          "matching style with a queued message flushes the queue");

    queue.clear();
    ResetCounters();
    dialog.Execute(false, 0);
    Check(g_enqueueCalls == 1 && g_dialogCtorCalls == 1, "Script_StartDialog::Execute",
          "matching style with an empty queue enqueues the message");
}

void CheckStartDialogID() {
    auto& queue = MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0];
    Script_StartDialogID dialogId;
    Structs::StartDialogID record;
    record.DialogID = 9;
    dialogId.m_args = &record;

    queue.clear();
    g_dialogListCount = 1;
    ResetCounters();
    dialogId.Execute(true, 0);
    Check(g_dialogListCalls == 0, "Script_StartDialogID::Execute", "skipping does nothing");

    ResetCounters();
    dialogId.Execute(false, 0);
    Check(g_dialogListCalls == 1 && g_dialogListId == 9, "Script_StartDialogID::Execute",
          "GetDialogMsgListById(m_w2)");
    Check(g_enqueueCalls == 1 && !g_enqueueFlag && g_enqueueQueue == 0, "Script_StartDialogID::Execute",
          "enqueued with flag false on queue 0");
    Check(g_dialogInvokeCalls == 1 && g_dialogInvokeName == "StartDialog" && g_dialogInvokeQueue == 0,
          "Script_StartDialogID::Execute", "one message queued invokes StartDialog");

    queue.clear();
    g_dialogListCount = 2;
    ResetCounters();
    dialogId.Execute(false, 0);
    Check(g_enqueueCalls == 2 && queue.size() == 2, "Script_StartDialogID::Execute",
          "two messages are both enqueued");
    Check(g_dialogInvokeCalls == 0, "Script_StartDialogID::Execute", "no invoke when the queue holds two");
}

void CheckSpawnCharacter() {
    Script_SpawnCharacter spawn;
    Structs::SpawnCharacter record;
    SetName(record.Target, "Hero");
    spawn.m_args = &record;

    g_characterForHandle = nullptr;
    ResetCounters();
    spawn.Execute(false, 3);
    Check(g_lookupCalls == 1 && g_lookupName == "Hero" && g_lookupFlags == 3 && !g_lookupActive &&
              g_lookupType == nullptr,
          "Script_SpawnCharacter::Execute", "GetObjectByName(name, module, false, nullptr)");
    Check(g_spawnStateCalls == 0, "Script_SpawnCharacter::Execute", "no spawn state without a character");

    g_characterForHandle = CharacterObject();
    ResetCounters();
    spawn.Execute(false, 3);
    Check(g_spawnStateCalls == 1 && !g_spawnDelayed && !g_spawnFlag, "Script_SpawnCharacter::Execute",
          "SM_SetSpawnState(false, false)");
    g_characterForHandle = nullptr;
}

void CheckSpawnContainer() {
    Script_SpawnContainer spawn;
    Structs::SpawnContainer record;
    SetName(record.Target, "Chest");
    spawn.m_args = &record;

    g_containerForHandle = nullptr;
    ResetCounters();
    spawn.Execute(false, 1);
    Check(g_lookupName == "Chest" && g_lookupFlags == 1, "Script_SpawnContainer::Execute",
          "lookup by the record name");
    Check(g_containerSpawnCalls == 0, "Script_SpawnContainer::Execute", "no spawn without a container");

    g_containerForHandle = ContainerObject();
    ResetCounters();
    spawn.Execute(false, 1);
    Check(g_containerSpawnCalls == 1, "Script_SpawnContainer::Execute", "Container::Spawn once");
    g_containerForHandle = nullptr;
}

void CheckSaveGame() {
    Script_SaveGame save;
    g_currentLevel = LevelObject();
    PlayerObject()->unk_660 = CharacterObject();
    ResetCounters();
    save.Execute(false, 0);
    Check(g_levelBlockCalls == 1 && !g_levelBlockArg, "Script_SaveGame::Execute",
          "Level::SG_BlockLevel(false)");
    Check(g_quickSaveCalls == 1 && !g_quickSaveArg, "Script_SaveGame::Execute", "Level::QuickSave(false)");
    Check(g_charBlockCalls == 1 && !g_charBlockArg, "Script_SaveGame::Execute", "Character::SG_Block(false)");
    Check(g_charSaveCalls == 1, "Script_SaveGame::Execute", "Character::SG_Save once");

    g_currentLevel = nullptr;
    ResetCounters();
    save.Execute(false, 0);
    Check(g_levelBlockCalls == 0 && g_quickSaveCalls == 0, "Script_SaveGame::Execute",
          "no level calls without a current level");
    Check(g_charSaveCalls == 1, "Script_SaveGame::Execute", "the local character is still saved");

    PlayerObject()->unk_660 = nullptr;
    ResetCounters();
    save.Execute(false, 0);
    Check(g_charBlockCalls == 0 && g_charSaveCalls == 0, "Script_SaveGame::Execute",
          "no character calls without a local character");
    PlayerObject()->unk_660 = nullptr;
}

void CheckStopActorNamed() {
    Script_StopActor stop;
    Structs::StopActor record;
    SetName(record.Target, "Hero");
    stop.m_args = &record;

    Character* hero = CharacterObject();
    hero->m_controller = ControllerObject();
    ControllerObject()->unk_009 = false;
    g_objectFound = true;
    g_characterForHandle = hero;
    ResetCounters();
    stop.Execute(false, 2);
    g_objectFound = false;
    g_characterForHandle = nullptr;
    Check(g_lookupName == "Hero" && g_lookupFlags == 2 && !g_lookupActive && g_lookupType == nullptr,
          "Script_StopActor::Execute", "GetObjectByName(name, module, false, nullptr)");
    Check(g_cmdStopCalls == 1 && g_unk009AtStop == 1, "Script_StopActor::Execute",
          "Cmd_Stop runs with unk_009 set");
    Check(!ControllerObject()->unk_009, "Script_StopActor::Execute", "unk_009 is cleared after the stop");
}

}  // namespace

int main() {
    SetUpWorld();
    CheckPlayCamera();
    CheckSetCameraTargetBlocking();
    CheckSkipAllCharMenu();
    CheckSkipCharMenu();
    CheckStartDialogInit();
    CheckStartDialogExecute();
    CheckStartDialogID();
    CheckSpawnCharacter();
    CheckSpawnContainer();
    CheckSaveGame();
    CheckStopActorNamed();
    if (g_failures == 0) {
        std::printf("r2a-game-app-pack3-5356ec-0: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-pack3-5356ec-0: %d check(s) failed\n", g_failures);
    return 1;
}
