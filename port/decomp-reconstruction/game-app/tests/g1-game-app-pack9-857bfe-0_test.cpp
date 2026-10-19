// Test for batch g1-game-app-pack9-857bfe-0. Checks the parts of the nine script command bodies that run without the engine:
// the IsBlocking values, the tracing switch read at the top of each Execute, the static waitForAnim flag and the callback
// arguments of Script_PutCharacterInIdle::Execute, and the commands that do nothing or only trace. The object-manager,
// application, level and character paths are not exercised: their stubs abort, so a call on those paths fails the run.
// Exit status 0 means every check passed.
//
// This test links only the batch source. The engine functions it references are stubbed below.
#include <cstdio>
#include <cstdlib>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_PutCharacterInIdle.hpp"
#include "dh2/Script_PutCharacterInLimbus.hpp"
#include "dh2/Script_ReEquipHands.hpp"
#include "dh2/Script_RestartLevel.hpp"
#include "dh2/Script_SaveGame.hpp"
#include "dh2/Script_SetActorMaster.hpp"
#include "dh2/Script_SetActorPosition.hpp"
#include "dh2/Script_SetCamera.hpp"
#include "dh2/Script_SetCameraClip.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/script_character_callback.hpp"

// ---- Test-only link stubs. The original bodies of these are in other batches. ----

// Recorded state of the stubs.
static int g_switchCalls = 0;
static std::string g_lastSwitchName;
static const char* g_callbackName = nullptr;
static int g_callbackArg = 0;
static void (*g_callbackFn)(ObjectBase*) = nullptr;
static int g_callbackCalls = 0;

// Storage for the DebugSwitches object the stubs hand out. The stubs never touch it.
alignas(8) static unsigned char g_switchesStorage[512];

// ScriptCmdImpl slots that the vtable names but the batch does not define (Init and Update are empty in the original).
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
// Non-virtual destructor, called when a command object is destroyed. The test never deletes one.
ScriptCmdImpl::~ScriptCmdImpl() {}

// Structs record: the vtable key function and the virtual overrides of the records the test builds.
namespace Structs {
ScriptCmd::~ScriptCmd() {}
void ScriptCmd::finalize() {}
void ScriptCmd::read(IStreamBase*) {}
PutCharacterInIdle::~PutCharacterInIdle() {}
void PutCharacterInIdle::finalize() {}
void PutCharacterInIdle::read(IStreamBase*) {}
}  // namespace Structs

// The state callback: records its arguments and does not call back.
void Script_CharacterState_Callback(const char* name, int arg, void (*callback)(ObjectBase*)) {
    ++g_callbackCalls;
    g_callbackName = name;
    g_callbackArg = arg;
    g_callbackFn = callback;
}

// The application is the library's singleton (ApplicationGetInstance, Application::GetCurrentLevel: GSLevel::s_level, null
// outside a level). The local player: a manager whose GetLocalPlayer hands out a zero-filled PlayerInfo, so no character is set.
alignas(PlayerManager) static unsigned char g_playersStorage[sizeof(PlayerManager)];
alignas(PlayerInfo) static unsigned char g_playerInfoStorage[sizeof(PlayerInfo)];
PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) { return reinterpret_cast<PlayerInfo*>(g_playerInfoStorage); }

// The object, level and character paths. They are not reached by the tested paths, so each aborts.

DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(g_switchesStorage);
}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) {
    ++g_switchCalls;
    g_lastSwitchName = name;
    return false;
}

ObjectHandle ObjectBase::GetHandle() { std::abort(); }
ObjectHandle ObjectManager::GetObjectByName(char const*, int, bool, char const*) { std::abort(); }
ObjectBase* ObjectHandle::GetObject(bool) { return nullptr; }
ObjectHandle::operator GameObject*() { return nullptr; }
ObjectHandle::operator Character*() { return nullptr; }
void GameObject::SetPosition(const Point3D<float>&, bool) { std::abort(); }
void GameObject::ForceUpdatePosition() { std::abort(); }
int CharStateMachine::SM_SetIdleState(bool) { std::abort(); }
int CharStateMachine::SM_SetLimbusState(bool) { std::abort(); }
bool CharStateMachine::SM_IsInLimbus() const { std::abort(); }
bool CharStateMachine::SM_IsAwaitingToSpawn() const { std::abort(); }
void CharAI::AI_SetMaster(Character*) { std::abort(); }

// ---- Checks ----

static int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

static void TestIsBlocking() {
    // The commands are heap-allocated and never deleted, so no ScriptCmdImpl destructor runs during the test.
    Script_PutCharacterInIdle* idle = new Script_PutCharacterInIdle();
    Script_PutCharacterInLimbus* limbus = new Script_PutCharacterInLimbus();
    Script_ReEquipHands* hands = new Script_ReEquipHands();
    Script_RestartLevel* restart = new Script_RestartLevel();
    Script_SaveGame* save = new Script_SaveGame();
    Script_SetActorMaster* master = new Script_SetActorMaster();
    Script_SetActorPosition* position = new Script_SetActorPosition();
    Script_SetCamera* camera = new Script_SetCamera();
    Script_SetCameraClip* clip = new Script_SetCameraClip();
    CHECK(!idle->IsBlocking());
    CHECK(!limbus->IsBlocking());
    CHECK(!hands->IsBlocking());
    CHECK(!restart->IsBlocking());
    CHECK(!save->IsBlocking());
    CHECK(!master->IsBlocking());
    CHECK(!position->IsBlocking());
    CHECK(!camera->IsBlocking());
    CHECK(!clip->IsBlocking());
}

static void TestSetCameraDoesNothing() {
    Script_SetCamera* cmd = new Script_SetCamera();
    const int before = g_switchCalls;
    cmd->Execute(false, 3);
    CHECK(g_switchCalls == before);  // the empty body reads no switch
}

static void TestPutCharacterInIdleExecute() {
    Structs::PutCharacterInIdle* record = new Structs::PutCharacterInIdle();
    record->Target = const_cast<char*>("Hero");

    Script_PutCharacterInIdle* cmd = new Script_PutCharacterInIdle();
    cmd->m_args = record;

    g_switchCalls = 0;
    g_callbackCalls = 0;
    cmd->Execute(false, 7);  // not skipping: waitForAnim becomes true
    CHECK(g_switchCalls == 1);
    CHECK(g_lastSwitchName == "isTracingScriptCmd");
    CHECK(Script_PutCharacterInIdle::waitForAnim == true);
    CHECK(g_callbackCalls == 1);
    CHECK(g_callbackName != nullptr && std::string(g_callbackName) == "Hero");
    CHECK(g_callbackArg == 7);
    CHECK(g_callbackFn == &Script_PutCharacterInIdle::SetState);

    cmd->Execute(true, 9);  // skipping: waitForAnim becomes false
    CHECK(Script_PutCharacterInIdle::waitForAnim == false);
    CHECK(g_callbackCalls == 2);
    CHECK(g_callbackArg == 9);
}

static void TestSetStateIgnoresNull() {
    // A null object returns before GetHandle, which would abort in this test.
    Script_PutCharacterInIdle::waitForAnim = true;
    Script_PutCharacterInIdle::SetState(nullptr);
    CHECK(Script_PutCharacterInIdle::waitForAnim == true);
}

static void TestTraceOnlyCommands() {
    // These commands read the tracing switch and nothing else in this batch (their remaining logic is partial).
    g_switchCalls = 0;
    g_lastSwitchName.clear();
    Script_RestartLevel* restart = new Script_RestartLevel();
    restart->Execute(false, 1);
    CHECK(g_switchCalls == 1);
    CHECK(g_lastSwitchName == "isTracingScriptCmd");

    // Script_SaveGame::Execute reads the current level (none) and the local player's character (none) and saves them.
    g_switchCalls = 0;
    ApplicationGetInstance().m_playerManager = reinterpret_cast<PlayerManager*>(g_playersStorage);
    Script_SaveGame* save = new Script_SaveGame();
    save->Execute(false, 1);
    CHECK(g_switchCalls == 1);

    g_switchCalls = 0;
    Script_SetCameraClip* clip = new Script_SetCameraClip();
    clip->m_args = nullptr;
    clip->Execute(false, 1);
    CHECK(g_switchCalls == 1);
}

int main() {
    TestIsBlocking();
    TestSetCameraDoesNothing();
    TestPutCharacterInIdleExecute();
    TestSetStateIgnoresNull();
    TestTraceOnlyCommands();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-pack9-857bfe-0 tests passed\n");
    return 0;
}
