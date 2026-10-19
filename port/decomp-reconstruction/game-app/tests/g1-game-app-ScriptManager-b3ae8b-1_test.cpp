// Test for g1-game-app-ScriptManager-b3ae8b-1: ScriptManager::StartScript(int, int, bool).
// The engine calls that StartScript makes (PlayerManager, DebugSwitches, GetOnline, CMessaging, CMessage) are stubbed in
// this file, so only the control flow and the state changes are checked. The PlayerManager is never constructed (its
// std::map member needs PlayerInfo, which is not written yet), so the stubs never dereference it: only the int at
// +0x714 is written, and StartScript reads it.
#include "dh2/ScriptManager.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"

// What GetOnlineGameFlag() answers (the library one reads COnline +0x05 through GetOnline()).
static bool StartScriptOnlineFlagForTest = false;

namespace {

int g_failures = 0;

void Expect(bool condition, const char* text, int line) {
    if (!condition) {
        std::fprintf(stderr, "FAIL line %d: %s\n", line, text);
        ++g_failures;
    }
}

#define EXPECT(cond) Expect((cond), #cond, __LINE__)

// Stub state.
int g_allPlayersDead = 0;
bool g_skipAllScripts = false;
int g_tracingReads = 0;
std::vector<std::pair<int, bool>> g_skipCalls;
int g_createCalls = 0;
bool g_createArg = false;
std::string g_createName;
std::vector<CMessage*> g_sent;

// The message CreateMessage returns: a real CMsgScriptCmd, so the typed payload fields are written in place.
CMsgScriptCmd g_message(true);

// Storage for the PlayerManager global. It is zeroed and never constructed (see the file comment).
alignas(PlayerManager) unsigned char g_pmStorage[sizeof(PlayerManager)] = {};

void ResetStubs() {
    g_allPlayersDead = 0;
    g_skipAllScripts = false;
    g_tracingReads = 0;
    g_skipCalls.clear();
    g_createCalls = 0;
    g_createArg = false;
    g_createName.clear();
    g_sent.clear();
    StartScriptOnlineFlagForTest = false;
    dword_99F76C->m_globalDeathState = 0;
    g_message.command_ = 0;
    g_message.scriptId_ = 0;
    g_message.module_ = 0;
}

// A ScriptManager with three scripts, all idle.
void Setup(ScriptManager& sm) {
    sm.m_contexts.assign(3, ScriptManager::ScriptContext{});
    sm.m_cmds.assign(3, ScriptManager::ScriptCmds{});
}

}  // namespace

// Global the game defines with the globals batch. The stubs never read it.
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// Engine stubs. The CMessage, CMessaging and PlayerManager stubs never dereference their this pointer.
int PlayerManager::AllPlayersDead() { return g_allPlayersDead; }

COnline* GetOnline() { return nullptr; }
// The online-game flag read (game-app/src/online_flag.cpp reads it through GetOnline()): offline here; the test sets
// StartScriptOnlineFlagForTest to take the online path.
bool GetOnlineGameFlag() { return StartScriptOnlineFlagForTest; }
CMessaging* GetMessaging() { return CMessaging::GetInstance(); }

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}

DebugSwitches* DebugSwitches::GetInstance() {
    static DebugSwitches instance;
    return &instance;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    if (name == "SkipAllScripts") {
        return g_skipAllScripts;
    }
    if (name == "isTracingScriptCmd") {
        ++g_tracingReads;
    }
    return false;
}

CMessaging* CMessaging::GetInstance() {
    static char tag = 0;
    return reinterpret_cast<CMessaging*>(&tag);
}

void CMessaging::SendMsg(CMessage* message) { g_sent.push_back(message); }

CMessage* CMessage::CreateMessage(const char* typeName, bool arg) {
    ++g_createCalls;
    g_createName = typeName;
    g_createArg = arg;
    return &g_message;
}

CMessage::CMessage(const char*, bool) {}
// CMessage's own virtuals. The vtable is emitted with the key function (the destructor), so every slot needs a body.
CMessage::~CMessage() {}
void* CMessage::GetDataPtr() { return nullptr; }
void CMessage::PreInitialize() {}
std::uint32_t CMessage::GetDataSize() const { return 0; }
void CMessage::ResetData() {}
std::uint32_t CMessage::WriteData(NetBitStream& stream) {
    static_cast<void>(stream);
    return 0;
}
std::uint32_t CMessage::ReadData(NetBitStream& stream) {
    static_cast<void>(stream);
    return 0;
}
CMessage* CMessage::Duplicate() { return nullptr; }

ScriptManager::ScriptManager() : m_skipScript(-1), m_activeCount(0), m_loadedCount(0), m_inCutScene(false) {}
ScriptManager::~ScriptManager() {}

void ScriptManager::SkipScript(int id, bool fromRemote) { g_skipCalls.emplace_back(id, fromRemote); }

bool ScriptManager::IsScriptRunning(int id) const {
    return m_contexts[static_cast<std::size_t>(id)].m_state != 2;
}

namespace {

void TestOutOfRangeIdIsIgnored() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    sm.StartScript(-1, 4, false);
    sm.StartScript(3, 4, false);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(g_tracingReads == 0);
    EXPECT(g_skipCalls.empty());
    EXPECT(g_createCalls == 0);
}

void TestLocalStartWhenAlive() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    sm.StartScript(1, 5, false);
    EXPECT(sm.m_contexts[1].m_module == 5);
    EXPECT(sm.m_contexts[1].m_nextCmd == 0);
    EXPECT(sm.m_contexts[1].m_state == 0);
    EXPECT(sm.m_activeCount == 1);
    EXPECT(g_tracingReads == 1);
    EXPECT(g_skipCalls.empty());
    EXPECT(g_createCalls == 0);
    EXPECT(g_sent.empty());
}

void TestNoStartWhenAllDeadOffline() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    g_allPlayersDead = 1;
    sm.StartScript(1, 5, false);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(sm.m_contexts[1].m_module == 0);
    EXPECT(g_tracingReads == 0);
}

void TestNoStartWhenAllDeadOnlineFirstStep() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    g_allPlayersDead = 1;
    StartScriptOnlineFlagForTest = true;
    dword_99F76C->m_globalDeathState = 1;
    sm.StartScript(1, 5, false);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(g_sent.empty());
}

void TestStartWhenAllDeadOnlinePastFirstStep() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    g_allPlayersDead = 1;
    StartScriptOnlineFlagForTest = true;
    dword_99F76C->m_globalDeathState = 2;
    sm.StartScript(1, 5, false);
    EXPECT(sm.m_activeCount == 1);
    EXPECT(sm.m_contexts[1].m_module == 5);
    EXPECT(g_sent.size() == 1);
}

void TestSkipAllScriptsRequestsSkip() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    g_skipAllScripts = true;
    sm.StartScript(2, 7, false);
    EXPECT(g_skipCalls.size() == 1);
    EXPECT(g_skipCalls.size() == 1 && g_skipCalls[0] == std::make_pair(2, false));
    // The start still goes ahead after the skip request.
    EXPECT(sm.m_activeCount == 1);
    EXPECT(sm.m_contexts[2].m_module == 7);
}

void TestSkipNotRequestedWhenAlreadySkipping() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    g_skipAllScripts = true;
    sm.m_skipScript = 0;
    sm.StartScript(2, 7, false);
    EXPECT(g_skipCalls.empty());
    EXPECT(sm.m_activeCount == 1);
}

void TestOnlineLocalStartSendsCommand() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    StartScriptOnlineFlagForTest = true;
    sm.StartScript(1, 5, false);
    EXPECT(g_createCalls == 1);
    EXPECT(g_createName == "CMsgScriptCmd");
    EXPECT(g_createArg);
    EXPECT(g_sent.size() == 1);
    EXPECT(g_sent.size() == 1 && g_sent[0] == &g_message);
    EXPECT(g_message.command_ == 0);
    EXPECT(g_message.scriptId_ == 1);
    EXPECT(g_message.module_ == 5);
    // The script is still started locally after the send.
    EXPECT(sm.m_activeCount == 1);
    EXPECT(sm.m_contexts[1].m_module == 5);
}

void TestOnlineLocalStartNoSendWhenCmdFlagSet() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    StartScriptOnlineFlagForTest = true;
    sm.m_cmds[1].unk_04 = true;
    sm.StartScript(1, 5, false);
    EXPECT(g_createCalls == 0);
    EXPECT(g_sent.empty());
    EXPECT(sm.m_activeCount == 1);
}

void TestOnlineRemoteStartWhileRunningDoesNothing() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    StartScriptOnlineFlagForTest = true;
    sm.m_contexts[1].m_state = 1;
    sm.StartScript(1, 5, true);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(sm.m_contexts[1].m_module == 0);
    EXPECT(g_tracingReads == 0);
    EXPECT(g_createCalls == 0);
}

void TestOnlineRemoteStartWhenFinishedStarts() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    StartScriptOnlineFlagForTest = true;
    sm.m_contexts[1].m_state = 2;
    sm.StartScript(1, 5, true);
    EXPECT(sm.m_activeCount == 1);
    EXPECT(sm.m_contexts[1].m_module == 5);
    EXPECT(sm.m_contexts[1].m_state == 0);
    EXPECT(g_createCalls == 0);
}

void TestOfflineRemoteStartIgnoresRunningCheck() {
    ScriptManager sm;
    Setup(sm);
    ResetStubs();
    sm.m_contexts[1].m_state = 1;
    sm.StartScript(1, 5, true);
    EXPECT(sm.m_activeCount == 1);
    EXPECT(sm.m_contexts[1].m_module == 5);
}

}  // namespace

int main() {
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_pmStorage);
    TestOutOfRangeIdIsIgnored();
    TestLocalStartWhenAlive();
    TestNoStartWhenAllDeadOffline();
    TestNoStartWhenAllDeadOnlineFirstStep();
    TestStartWhenAllDeadOnlinePastFirstStep();
    TestSkipAllScriptsRequestsSkip();
    TestSkipNotRequestedWhenAlreadySkipping();
    TestOnlineLocalStartSendsCommand();
    TestOnlineLocalStartNoSendWhenCmdFlagSet();
    TestOnlineRemoteStartWhileRunningDoesNothing();
    TestOnlineRemoteStartWhenFinishedStarts();
    TestOfflineRemoteStartIgnoresRunningCheck();
    if (g_failures == 0) {
        std::printf("StartScript tests passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
