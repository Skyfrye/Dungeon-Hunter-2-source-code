// Test for the ScriptManager batch g1-game-app-ScriptManager-b3ae8b-0 (part 1 of 2).
// It links with the batch source only. The symbols that other batches and engine categories define are faked here: the
// file stream and its reads, the file-release slot, the allocator and the profiling markers, LC_API_STRCASECMP, the
// debug switches, the ScriptCmdImpl base (destructor, Init, Update), the ScriptCmdID constant and the v2Controller block flag.
// The script command classes are test subclasses of ScriptCmdImpl, and the command factory tables of LoadScriptFile are test tables
// (type 0: a plain command, type 1: a command with its block flag set). Returns non-zero on failure.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/deps/application.hpp"
#include "core-platform/lc_api.hpp"
#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/runtime_support.hpp"
#include "dh2/global/script_cmd_map.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "dh2/v2Controller.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                    \
    do {                                                                                \
        if (!(cond)) {                                                                  \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                               \
        }                                                                               \
    } while (0)

// ---- fake file stream -------------------------------------------------------------------------

std::vector<unsigned char> g_bytes;  // what the next opened file contains
std::size_t g_pos = 0;               // read position in g_bytes
bool g_openFails = false;
int g_opens = 0;
int g_closes = 0;
int g_frees = 0;

class FakeStream : public IStreamBase {
public:
    std::uint32_t size() const override { return static_cast<std::uint32_t>(g_bytes.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return false; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        std::size_t avail = g_bytes.size() > g_pos ? g_bytes.size() - g_pos : 0;
        std::size_t take = static_cast<std::size_t>(n) < avail ? static_cast<std::size_t>(n) : avail;
        if (take > 0) std::memcpy(dst, &g_bytes[g_pos], take);
        return take;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        std::uint64_t taken = peek(dst, n);
        g_pos += static_cast<std::size_t>(taken);
        return taken;
    }
    std::uint64_t write(const void*, std::uint64_t) override { return 0; }
    void seek(std::uint64_t pos) override { g_pos = static_cast<std::size_t>(pos); }
    std::uint64_t tell() const override { return g_pos; }
    void skip(std::uint64_t n) override { g_pos += static_cast<std::size_t>(n); }
    void seekWrite(std::uint64_t pos) override { seek(pos); }
    std::uint64_t tellWrite() const override { return tell(); }
};

FakeStream g_stream;

// ---- faked symbols ----------------------------------------------------------------------------

}  // namespace

// The base-class members the fake stream's vtable needs.
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

// StreamReader specializations: little-endian fields read through the stream.
template <>
void StreamReader::readAs<int>(IStreamBase* stream, int* value) {
    std::uint32_t raw = 0;
    stream->read(&raw, 4);
    *value = static_cast<int>(raw);
}

template <>
void StreamReader::readAs<unsigned int>(IStreamBase* stream, unsigned int* value) {
    std::uint32_t raw = 0;
    stream->read(&raw, 4);
    *value = static_cast<unsigned int>(raw);
}

template <>
void StreamReader::peekAs<int>(IStreamBase* stream, int* value) {
    std::uint32_t raw = 0;
    stream->peek(&raw, 4);
    *value = static_cast<int>(raw);
}

bool StreamReader::readStringEx(IStreamBase* stream, char* dst, std::uint64_t len) {
    return stream->read(dst, len) == len;
}

IStreamBase* ApplicationOpenStream(const char* name) {
    static_cast<void>(name);
    ++g_opens;
    if (g_openFails) {
        return nullptr;
    }
    g_pos = 0;
    return &g_stream;
}

void ApplicationCloseStream(IStreamBase* stream) {
    static_cast<void>(stream);
    ++g_closes;
}

void CustomFree(void* p) {
    ++g_frees;
    std::free(p);
}

void* operator new[](std::size_t size, MemoryHintState) {
    return std::malloc(size > 0 ? size : 1);
}

int LC_API_STRCASECMP(const char* a, const char* b) {
    while (*a != '\0' && *b != '\0') {
        int ca = std::tolower(static_cast<unsigned char>(*a));
        int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) return ca - cb;
        ++a;
        ++b;
    }
    return std::tolower(static_cast<unsigned char>(*a)) - std::tolower(static_cast<unsigned char>(*b));
}

namespace {
int g_profilePushes = 0;
int g_debugLoads = 0;
int g_switchLookups = 0;
std::string g_lastSwitch;
int g_cmdDestructors = 0;
int g_initCalls = 0;
alignas(DebugSwitches) unsigned char g_switchesStorage[sizeof(DebugSwitches)];
}  // namespace

void PushProfilingContext(const char* name) {
    static_cast<void>(name);
    ++g_profilePushes;
}

void PopProfilingContext(const char* name) {
    static_cast<void>(name);
}

// The tracing switch lookup goes through GetInstance(), which performs the load.
DebugSwitches* DebugSwitches::GetInstance() {
    ++g_debugLoads;
    return reinterpret_cast<DebugSwitches*>(g_switchesStorage);
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    ++g_switchLookups;
    g_lastSwitch = name;
    return false;
}

// ScriptCmdID/ExecScript: -1 here, so a command whose id is -1 is the ExecScript command of these tests.
int PyDataConstants::getConstant(const char*, const char*) const {
    return -1;
}

alignas(16) static unsigned char g_constantsStorage[64];

// The base command. Init and Update are empty in the original. The destructor is the one ScriptCmds::Free calls.
ScriptCmdImpl::~ScriptCmdImpl() {
    ++g_cmdDestructors;
}
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

bool v2Controller::s_blocked = true;

// Structs::ScriptCmd: the record of the test commands reads only its type id (the first int).
namespace Structs {
ScriptCmd::~ScriptCmd() {}
void ScriptCmd::finalize() {}
void ScriptCmd::read(IStreamBase* stream) {
    StreamReader::readAs<int>(stream, &ID);
}
}  // namespace Structs

namespace {

// Command with a scripted blocking flag. ExecuteScript runs Execute, then IsBlocking, then Update when it blocks.
class TestCmd : public ScriptCmdImpl {
public:
    TestCmd(int id, bool blocking) : blocking_(blocking) {
        unk_04 = false;
        m_cmdId = id;
        m_args = nullptr;
    }
    void Init() override { ++inits; ++g_initCalls; }
    void Update() override { ++updates; }
    void Execute(bool skipping, int module) override {
        ++executes;
        lastSkipping = skipping;
        lastModule = module;
    }
    bool IsBlocking() const override { return blocking_; }

    bool blocking_;
    int inits = 0;
    int updates = 0;
    int executes = 0;
    bool lastSkipping = false;
    int lastModule = -999;
};

// The factory tables of LoadScriptFile. Type 0 makes a plain command, type 1 one whose block flag is set; the records are
// Structs::ScriptCmd (they read the type id).
ScriptCmdImpl* MakePlainCmd() {
    return new TestCmd(-1, false);
}
ScriptCmdImpl* MakeFlaggedCmd() {
    TestCmd* cmd = new TestCmd(-1, false);
    cmd->unk_04 = true;
    return cmd;
}
Structs::ScriptCmd* MakeRecord() {
    return new Structs::ScriptCmd();
}

// Adds a script with the given commands to sm, with its name, context and command block set up as LoadScriptFile would.
void AddScript(ScriptManager& sm, const char* name, const std::vector<TestCmd*>& cmds, int module) {
    char* nameCopy = static_cast<char*>(std::malloc(std::strlen(name) + 1));
    std::strcpy(nameCopy, name);
    sm.m_scriptNames.push_back(nameCopy);

    ScriptManager::ScriptCmds block;
    block.m_count = static_cast<int>(cmds.size());
    block.unk_04 = false;
    block.m_cmds = new ScriptCmdImpl*[cmds.size()];
    for (std::size_t i = 0; i < cmds.size(); ++i) {
        block.m_cmds[i] = cmds[i];
    }
    sm.m_cmds.push_back(block);

    ScriptManager::ScriptContext ctx{};
    ctx.m_module = module;
    ctx.m_nextCmd = 0;
    ctx.m_state = 0;
    sm.m_contexts.push_back(ctx);
}

void ResetCounters() {
    g_opens = 0;
    g_closes = 0;
    g_frees = 0;
    g_profilePushes = 0;
    g_debugLoads = 0;
    g_switchLookups = 0;
    g_cmdDestructors = 0;
    g_initCalls = 0;
    g_openFails = false;
}

// Constructor and state of a fresh manager.
void testConstructor() {
    ScriptManager sm;
    EXPECT(sm.m_skipScript == -1);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(sm.m_loadedCount == 0);
    EXPECT(sm.m_inCutScene == false);
    EXPECT(sm.m_contexts.empty());
    EXPECT(sm.m_cmds.empty());
    EXPECT(sm.m_scriptNames.empty());
    EXPECT(ScriptManager::s_inst.m_skipScript == -1);
}

// LoadScriptFileNames: a raw count, then length-prefixed names, appended to the list.
void testLoadScriptFileNames() {
    ResetCounters();
    ScriptManager sm;
    g_bytes = {2, 0, 0, 0,  3, 0, 0, 0, 'a', 'b', 'c',  2, 0, 0, 0, 'd', 'e'};
    sm.LoadScriptFileNames("names.bin", false);
    EXPECT(sm.m_scriptNames.size() == 2);
    EXPECT(sm.GetNameFromID(0) != nullptr && std::strcmp(sm.GetNameFromID(0), "abc") == 0);
    EXPECT(sm.GetNameFromID(1) != nullptr && std::strcmp(sm.GetNameFromID(1), "de") == 0);
    EXPECT(sm.GetNameFromID(2) == nullptr);
    EXPECT(sm.GetNameFromID(-1) == nullptr);
    EXPECT(g_closes == 1);

    // A second load appends after the first.
    g_bytes = {1, 0, 0, 0,  1, 0, 0, 0, 'z'};
    sm.LoadScriptFileNames("more.bin", true);  // m_loadedCount (0) >= script count (0) holds, so it loads
    EXPECT(sm.m_scriptNames.size() == 3);
    EXPECT(sm.GetNameFromID(2) != nullptr && std::strcmp(sm.GetNameFromID(2), "z") == 0);

    // A failed open adds nothing.
    g_openFails = true;
    sm.LoadScriptFileNames("missing.bin", false);
    EXPECT(sm.m_scriptNames.size() == 3);
    g_openFails = false;
}

// The append guard: a file is not read while loaded scripts are not yet registered.
void testAppendGuard() {
    ResetCounters();
    ScriptManager sm;
    TestCmd* c = new TestCmd(1, false);
    AddScript(sm, "only", {c}, 0);  // one script registered, m_loadedCount still 0
    g_bytes = {1, 0, 0, 0,  1, 0, 0, 0, 'q'};
    sm.LoadScriptFileNames("guard.bin", true);
    EXPECT(sm.m_scriptNames.size() == 1);  // unchanged: the guard returned before reading
    EXPECT(g_opens == 0);
}

// GetIDFromName: case-insensitive, searchAll true starts at 0, false starts at m_loadedCount.
void testGetIDFromName() {
    ScriptManager sm;
    AddScript(sm, "abc", {}, -1);
    AddScript(sm, "de", {}, -1);
    EXPECT(sm.GetIDFromName("DE", true) == 1);
    EXPECT(sm.GetIDFromName("abc", true) == 0);
    EXPECT(sm.GetIDFromName("zz", true) == -1);
    EXPECT(sm.GetIDFromName("abc", false) == 0);  // m_loadedCount is 0
    sm.m_loadedCount = 1;
    EXPECT(sm.GetIDFromName("abc", false) == -1);  // search starts at 1
    EXPECT(sm.GetIDFromName("De", false) == 1);
}

// LoadScriptFile with scripts that have no commands loads in full, and append adds to m_loadedCount.
void testLoadScriptFileEmptyScripts() {
    ResetCounters();
    ScriptManager sm;
    g_bytes = {2, 0, 0, 0,  0, 0, 0, 0,  0, 0, 0, 0};
    sm.LoadScriptFile("two.bin", false);
    EXPECT(sm.m_cmds.size() == 2);
    EXPECT(sm.m_contexts.size() == 2);
    EXPECT(sm.IsScriptRunning(0) == false);
    EXPECT(sm.IsScriptRunning(1) == false);
    EXPECT(sm.GetScriptModule(0) == -1);
    EXPECT(sm.m_loadedCount == 0);  // append false
    EXPECT(sm.m_cmds[0].m_count == 0);
    EXPECT(g_closes == 1);

    // Append with m_loadedCount 0 < 2 scripts: guarded, nothing changes.
    g_bytes = {1, 0, 0, 0,  0, 0, 0, 0};
    sm.LoadScriptFile("one.bin", true);
    EXPECT(sm.m_cmds.size() == 2);
    EXPECT(sm.m_loadedCount == 0);

    // With the loaded count caught up, the append runs and adds to m_loadedCount.
    sm.m_loadedCount = 2;
    sm.LoadScriptFile("one.bin", true);
    EXPECT(sm.m_cmds.size() == 3);
    EXPECT(sm.m_loadedCount == 3);
    EXPECT(sm.IsScriptRunning(2) == false);
}

// LoadScriptFile with commands: each is created from the table entry of its type id (peeked), its record reads itself, the command gets
// the id and the record, runs Init, and its block flag is copied to the script block.
void testLoadScriptFileCommands() {
    ResetCounters();
    ScriptManager sm;
    // Two scripts: the first has two commands (type 0, then type 1), the second has none.
    g_bytes = {2, 0, 0, 0,  2, 0, 0, 0,  0, 0, 0, 0,  1, 0, 0, 0,  0, 0, 0, 0};
    sm.LoadScriptFile("cmds.bin", false);
    EXPECT(sm.m_cmds.size() == 2);
    EXPECT(sm.m_contexts.size() == 2);
    EXPECT(sm.m_cmds[0].m_count == 2);
    TestCmd* first = static_cast<TestCmd*>(sm.m_cmds[0].m_cmds[0]);
    TestCmd* second = static_cast<TestCmd*>(sm.m_cmds[0].m_cmds[1]);
    EXPECT(first->m_cmdId == 0 && second->m_cmdId == 1);
    EXPECT(first->m_args != nullptr && second->m_args != nullptr);
    EXPECT(static_cast<Structs::ScriptCmd*>(first->m_args)->ID == 0);
    EXPECT(static_cast<Structs::ScriptCmd*>(second->m_args)->ID == 1);
    EXPECT(first->inits == 1 && second->inits == 1);
    EXPECT(!first->unk_04 && second->unk_04);
    EXPECT(sm.m_cmds[0].unk_04);
    EXPECT(sm.m_cmds[1].m_count == 0);
    EXPECT(!sm.m_cmds[1].unk_04);
    EXPECT(!sm.IsScriptRunning(0));
    EXPECT(!sm.IsScriptRunning(1));
    EXPECT(g_closes == 1);
    EXPECT(g_pos == g_bytes.size());
    delete static_cast<Structs::ScriptCmd*>(first->m_args);
    delete static_cast<Structs::ScriptCmd*>(second->m_args);
    first->m_args = nullptr;
    second->m_args = nullptr;
    sm.UnLoadAllScripts();
}

// ExecuteScript with no blocking commands: all run once, with the module and skip flag, then the script finishes.
void testExecuteScriptRunsToEnd() {
    ResetCounters();
    ScriptManager sm;
    TestCmd* a = new TestCmd(1, false);
    TestCmd* b = new TestCmd(2, false);
    TestCmd* c = new TestCmd(3, false);
    AddScript(sm, "run", {a, b, c}, 7);
    sm.m_activeCount = 1;
    EXPECT(sm.ExecuteScript(0) == false);
    EXPECT(a->executes == 1 && b->executes == 1 && c->executes == 1);
    EXPECT(a->lastModule == 7 && c->lastModule == 7);
    EXPECT(a->lastSkipping == false);
    EXPECT(sm.IsScriptRunning(0) == false);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(g_switchLookups == 1 && g_lastSwitch == "isTracingScriptCmd");
    EXPECT(std::strcmp(ScriptManager::s_dbgRunningScriptName, "run") == 0);
    // Finished scripts do nothing on a later call.
    EXPECT(sm.ExecuteScript(0) == false);
    EXPECT(a->executes == 1);
    // The commands are freed by the manager's cleanup at the end of the test.
    sm.UnLoadAllScripts();
}

// ExecuteScript with a blocking command: it stops there, runs Update, and resumes at the check on the next call.
void testExecuteScriptBlocking() {
    ResetCounters();
    ScriptManager sm;
    TestCmd* a = new TestCmd(1, false);
    TestCmd* b = new TestCmd(2, true);
    TestCmd* c = new TestCmd(3, false);
    AddScript(sm, "block", {a, b, c}, 0);
    sm.m_activeCount = 1;
    EXPECT(sm.ExecuteScript(0) == true);
    EXPECT(a->executes == 1 && b->executes == 1);
    EXPECT(b->updates == 1);
    EXPECT(c->executes == 0);
    EXPECT(sm.m_cmds[0].m_count == 3);
    EXPECT(sm.m_contexts[0].m_state == 1);
    EXPECT(sm.m_contexts[0].m_nextCmd == 1);
    EXPECT(sm.m_activeCount == 1);

    // Still blocking: no re-execute, Update again.
    EXPECT(sm.ExecuteScript(0) == true);
    EXPECT(b->executes == 1);
    EXPECT(b->updates == 2);

    // Unblocked: the command is passed, c runs, the script finishes.
    b->blocking_ = false;
    EXPECT(sm.ExecuteScript(0) == false);
    EXPECT(b->executes == 1);
    EXPECT(c->executes == 1);
    EXPECT(sm.IsScriptRunning(0) == false);
    EXPECT(sm.m_activeCount == 0);
    sm.UnLoadAllScripts();
}

// With a skip request, only commands whose id is the ExecScript id (-1 here) can block.
void testExecuteScriptSkipMode() {
    ResetCounters();
    ScriptManager sm;
    TestCmd* x = new TestCmd(1, true);   // blocking, but not ExecScript: passed while skipping
    TestCmd* y = new TestCmd(-1, true);  // blocking and the ExecScript id: stops the script
    AddScript(sm, "skip", {x, y}, 0);
    sm.m_skipScript = 9;
    EXPECT(sm.ExecuteScript(0) == true);
    EXPECT(x->executes == 1 && x->lastSkipping == true);
    EXPECT(x->updates == 0);
    EXPECT(y->updates == 1);
    sm.UnLoadAllScripts();
}

// ExecuteAllScripts: the active count and the skip request decide what is reset.
void testExecuteAllScripts() {
    {
        // Active count set, a script still blocking: result true, nothing reset. The blocking command has the ExecScript
        // id (-1 here), because a skip request is active and only that id is checked for blocking.
        ScriptManager sm;
        TestCmd* b = new TestCmd(-1, true);
        AddScript(sm, "wait", {b}, 0);
        sm.m_activeCount = 1;
        sm.m_skipScript = 4;
        EXPECT(sm.ExecuteAllScripts() == true);
        EXPECT(sm.m_activeCount == 1);
        EXPECT(sm.m_skipScript == 4);
        sm.UnLoadAllScripts();
    }
    {
        // Active count set, everything finished: result false, count reset, skip cleared.
        ScriptManager sm;
        TestCmd* a = new TestCmd(1, false);
        AddScript(sm, "done", {a}, 0);
        sm.m_activeCount = 1;
        sm.m_skipScript = 4;
        EXPECT(sm.ExecuteAllScripts() == false);
        EXPECT(sm.m_activeCount == 0);
        EXPECT(sm.m_skipScript == -1);
        sm.UnLoadAllScripts();
    }
    {
        // No active count, a script still blocking: result true, skip cleared. Uses the ExecScript id, as above.
        ScriptManager sm;
        TestCmd* b = new TestCmd(-1, true);
        AddScript(sm, "wait2", {b}, 0);
        sm.m_activeCount = 0;
        sm.m_skipScript = 4;
        EXPECT(sm.ExecuteAllScripts() == true);
        EXPECT(sm.m_activeCount == 0);
        EXPECT(sm.m_skipScript == -1);
        sm.UnLoadAllScripts();
    }
    {
        // No scripts at all: false, skip cleared.
        ScriptManager sm;
        sm.m_skipScript = 2;
        EXPECT(sm.ExecuteAllScripts() == false);
        EXPECT(sm.m_skipScript == -1);
    }
}

// InitCommands calls Init on every command of every block.
void testInitCommands() {
    ResetCounters();
    ScriptManager sm;
    TestCmd* a = new TestCmd(1, false);
    TestCmd* b = new TestCmd(2, false);
    TestCmd* c = new TestCmd(3, false);
    AddScript(sm, "s0", {a, b}, 0);
    AddScript(sm, "s1", {c}, 0);
    sm.InitCommands();
    EXPECT(a->inits == 1 && b->inits == 1 && c->inits == 1);
    EXPECT(g_initCalls == 3);
    sm.UnLoadAllScripts();
}

// Running, stopped, module and skip state, and IsCutSceneRunning over those.
void testStateQueries() {
    ScriptManager sm;
    AddScript(sm, "p", {}, 5);
    AddScript(sm, "q", {}, 6);
    EXPECT(sm.IsCutSceneRunning() == true);
    EXPECT(sm.IsScriptRunning(0) == true);
    EXPECT(sm.GetScriptModule(1) == 6);
    sm.StopScript(0, true);
    EXPECT(sm.IsScriptRunning(0) == false);
    EXPECT(sm.GetScriptModule(0) == -1);
    EXPECT(sm.IsCutSceneRunning() == true);  // script 1 still runs
    sm.StopScript(1, false);
    EXPECT(sm.IsCutSceneRunning() == false);
    sm.m_skipScript = 3;
    sm.StopSkipping();
    EXPECT(sm.m_skipScript == -1);

    ScriptManager empty;
    EXPECT(empty.IsCutSceneRunning() == false);
}

// SkipScript: the tracing switch is read, and the first skip request is kept. Offline nothing is sent.
void testSkipScript() {
    ResetCounters();
    ScriptManager sm;
    sm.SkipScript(4, false);
    EXPECT(sm.m_skipScript == 4);
    EXPECT(g_debugLoads == 1 && g_switchLookups == 1);
    sm.SkipScript(8, false);
    EXPECT(sm.m_skipScript == 4);  // only set when no request is active
    sm.StopSkipping();
    sm.SkipScript(8, true);
    EXPECT(sm.m_skipScript == 8);
}

// UnLoadAllScripts frees the commands and names and empties the vectors. Flush also clears the block flag.
void testUnloadAndFlush() {
    ResetCounters();
    {
        ScriptManager sm;
        TestCmd* a = new TestCmd(1, false);
        TestCmd* b = new TestCmd(2, false);
        AddScript(sm, "u0", {a}, 0);
        AddScript(sm, "u1", {b}, 0);
        sm.m_loadedCount = 2;
        sm.m_skipScript = 1;
        sm.UnLoadAllScripts();
        EXPECT(g_cmdDestructors == 2);
        EXPECT(sm.m_cmds.empty());
        EXPECT(sm.m_contexts.empty());
        EXPECT(sm.m_scriptNames.empty());
        EXPECT(sm.m_loadedCount == 0);
        EXPECT(sm.m_skipScript == -1);
        EXPECT(g_frees >= 2 + 2);  // two commands and two names freed
    }

    ResetCounters();
    v2Controller::s_blocked = true;
    ScriptManager sm;
    AddScript(sm, "f0", {}, 0);
    sm.m_skipScript = 3;
    sm.m_activeCount = 2;
    sm.m_inCutScene = true;
    sm.m_loadedCount = 5;
    sm.Flush();
    EXPECT(v2Controller::s_blocked == false);
    EXPECT(sm.m_skipScript == -1);
    EXPECT(sm.m_activeCount == 0);
    EXPECT(sm.m_inCutScene == false);
    EXPECT(sm.m_loadedCount == 0);
    EXPECT(sm.m_scriptNames.empty());
    EXPECT(sm.m_cmds.empty());
}

}  // namespace

// The factory tables of LoadScriptFile: type 0 makes a plain command, type 1 one whose block flag is set.
const ScriptCmdImplFactory s_scriptCmdImplMap[kScriptCmdTypeCount] = {&MakePlainCmd, &MakeFlaggedCmd};
const ScriptCmdDataFactory s_scriptCmdDataMap[kScriptCmdTypeCount] = {&MakeRecord, &MakeRecord};

int main() {
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(g_constantsStorage);
    testConstructor();
    testLoadScriptFileNames();
    testAppendGuard();
    testGetIDFromName();
    testLoadScriptFileEmptyScripts();
    testLoadScriptFileCommands();
    testExecuteScriptRunsToEnd();
    testExecuteScriptBlocking();
    testExecuteScriptSkipMode();
    testExecuteAllScripts();
    testInitCommands();
    testStateQueries();
    testSkipScript();
    testUnloadAndFlush();
    if (g_failures == 0) {
        std::printf("ScriptManager tests: all passed\n");
        return 0;
    }
    std::fprintf(stderr, "ScriptManager tests: %d failure(s)\n", g_failures);
    return 1;
}
