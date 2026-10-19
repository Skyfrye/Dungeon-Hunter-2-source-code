// Test for the GameEvent batch g1-game-app-GameEvent-9380de-0.
// The state logic runs against fakes for the symbols GameEvent calls from other batches: ObjectiveList, the
// PyDataConstants lookups, ScriptManager::s_inst and TempHackScriptIDAreStrings. Returns non-zero on failure.
#include <cstdio>
#include <cstring>
#include <vector>

#include "dh2/GameEvent.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/script_ids.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                 \
    do {                                                                             \
        if (!(cond)) {                                                               \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                            \
        }                                                                            \
    } while (0)

// Fake ObjectiveList: results and call counts.
bool g_isValid = false;
bool g_eval = false;
int g_objectiveCtor = 0;
int g_objectiveDtor = 0;
int g_invalidate = 0;
int g_compile = 0;
int g_register = 0;
int g_reset = 0;
int g_assignCount = -1;
Structs::v2QuestObjectiveStub* g_assignStub = nullptr;
int g_traceCalls = 0;
__sFILE* g_traceStream = nullptr;

// Fake ScriptManager::StartScript log.
struct StartCall {
    int id;
    int module;
    bool fromRemote;
};
std::vector<StartCall> g_starts;

// Fake TempHackScriptIDAreStrings: returns 42 for a non-null name and records the string it was given.
int g_tempHackCalls = 0;
const char* g_tempHackArg = nullptr;

// Fake v2EventState constants: Inactive 0, Active 1, Completed 2 (the values SetState accepts).
const char* const kStateNames[] = {"Inactive", "Active", "Completed"};
char g_constantsTag = 0;  // stands in for the PyDataConstants object; the fake lookups ignore `this`

void resetFakes() {
    g_isValid = false;
    g_eval = false;
    g_objectiveCtor = 0;
    g_objectiveDtor = 0;
    g_invalidate = 0;
    g_compile = 0;
    g_register = 0;
    g_reset = 0;
    g_assignCount = -1;
    g_assignStub = nullptr;
    g_traceCalls = 0;
    g_traceStream = nullptr;
    g_starts.clear();
    g_tempHackCalls = 0;
    g_tempHackArg = nullptr;
}

}  // namespace

// ---- fakes for the symbols GameEvent.cpp calls ----

ObjectiveList::ObjectiveList() {
    ++g_objectiveCtor;
}

ObjectiveList::~ObjectiveList() {
    ++g_objectiveDtor;
}

bool ObjectiveList::IsValid() {
    return g_isValid;
}

bool ObjectiveList::Eval() {
    return g_eval;
}

void ObjectiveList::InvalidateCompile() {
    ++g_invalidate;
}

void ObjectiveList::Compile() {
    ++g_compile;
}

void ObjectiveList::Register() {
    ++g_register;
}

void ObjectiveList::_resetData() {
    ++g_reset;
}

void ObjectiveList::AssignPyData(Structs::v2QuestObjectiveStub* stub, int count) {
    g_assignStub = stub;
    g_assignCount = count;
}

void ObjectiveList::DBG_TraceDetailedObjectiveListInformation(__sFILE* stream) const {
    ++g_traceCalls;
    g_traceStream = stream;
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "v2EventState") != 0) {
        return 0;
    }
    for (int i = 0; i < 3; ++i) {
        if (std::strcmp(constantName, kStateNames[i]) == 0) {
            return i;
        }
    }
    return 0;
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    if (std::strcmp(className, "v2EventState") != 0 || value < 0 || value > 2) {
        return "";
    }
    return kStateNames[value];
}

PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(&g_constantsTag);
}

ScriptManager ScriptManager::s_inst;

ScriptManager::ScriptManager() {}

ScriptManager::~ScriptManager() {}

void ScriptManager::StartScript(int id, int module, bool fromRemote) {
    g_starts.push_back(StartCall{id, module, fromRemote});
}

int TempHackScriptIDAreStrings(const char* name) {
    ++g_tempHackCalls;
    g_tempHackArg = name;
    return name ? 42 : -1;
}

namespace Structs {
v2Event::~v2Event() {}
void v2Event::finalize() {}
void v2Event::read(IStreamBase*) {}
}  // namespace Structs

// ---- tests ----

namespace {

// Constructor sets the -1 / null defaults and default-constructs the ObjectiveList once.
void testConstructorAndDestructor() {
    resetFakes();
    {
        GameEvent e;
        EXPECT(e.m_index == -1);
        EXPECT(e.m_state == -1);
        EXPECT(e.m_name == nullptr);
        EXPECT(e.m_pyData == nullptr);
        EXPECT(!e.m_registered);
        EXPECT(g_objectiveCtor == 1);
        EXPECT(g_objectiveDtor == 0);
    }
    // The destructor body is empty; the member is destroyed once.
    EXPECT(g_objectiveDtor == 1);
}

void testDbgStateName() {
    resetFakes();
    GameEvent e;
    e.m_state = 0;
    EXPECT(std::strcmp(e.DBG_GetCurrentStateName(), "Inactive") == 0);
    e.m_state = 1;
    EXPECT(std::strcmp(e.DBG_GetCurrentStateName(), "Active") == 0);
    e.m_state = 2;
    EXPECT(std::strcmp(e.DBG_GetCurrentStateName(), "Completed") == 0);
    e.m_state = 3;
    EXPECT(std::strcmp(e.DBG_GetCurrentStateName(), "unknown") == 0);
    e.m_state = -1;
    EXPECT(std::strcmp(e.DBG_GetCurrentStateName(), "unknown") == 0);
}

void testExecScript() {
    resetFakes();
    GameEvent e;
    e.ExecScript(-1);
    EXPECT(g_starts.empty());
    e.ExecScript(0);
    EXPECT(g_starts.size() == 1);
    e.ExecScript(7);
    EXPECT(g_starts.size() == 2);
    if (g_starts.size() == 2) {
        EXPECT(g_starts[0].id == 0 && g_starts[0].module == -1 && !g_starts[0].fromRemote);
        EXPECT(g_starts[1].id == 7 && g_starts[1].module == -1 && !g_starts[1].fromRemote);
    }
}

void testSetState() {
    resetFakes();
    GameEvent e;
    Structs::v2Event data;
    char name[] = "EV_TEST.START";
    data.Script = name;
    data.TriggersSize = 0;
    data.Triggers = nullptr;
    e.AssignPyData(&data);

    e.SetState(1);
    EXPECT(e.m_state == 1);
    EXPECT(g_starts.empty());

    e.SetState(3);  // ignored, past Completed
    EXPECT(e.m_state == 1);
    e.SetState(-1);  // ignored: the original compares as unsigned
    EXPECT(e.m_state == 1);

    e.SetState(2);  // Completed also starts the event's script
    EXPECT(e.m_state == 2);
    EXPECT(g_tempHackCalls == 1);
    EXPECT(g_tempHackArg == name);
    EXPECT(g_starts.size() == 1);
    if (g_starts.size() == 1) {
        EXPECT(g_starts[0].id == 42 && g_starts[0].module == -1 && !g_starts[0].fromRemote);
    }

    e.SetState(0);
    EXPECT(e.m_state == 0);
    EXPECT(g_starts.size() == 1);
}

void testUpdateInactive() {
    resetFakes();
    GameEvent e;
    e.m_state = 0;
    g_isValid = false;
    e.Update();
    EXPECT(e.m_state == 0);
    EXPECT(g_starts.empty());

    g_isValid = true;
    e.Update();
    EXPECT(e.m_state == 1);  // Inactive -> Active; Active starts no script
    EXPECT(g_starts.empty());
}

void testUpdateActive() {
    resetFakes();
    GameEvent e;
    Structs::v2Event data;
    char name[] = "EV_DONE.END";
    data.Script = name;
    e.AssignPyData(&data);
    e.m_state = 1;

    g_eval = false;
    e.Update();
    EXPECT(e.m_state == 1);
    EXPECT(g_starts.empty());

    g_eval = true;
    e.Update();
    EXPECT(e.m_state == 2);  // Active -> Completed, which starts the script
    EXPECT(g_starts.size() == 1);
    if (g_starts.size() == 1) {
        EXPECT(g_starts[0].id == 42);
    }
}

void testUpdateCompletedAndUnknown() {
    resetFakes();
    GameEvent e;
    e.m_state = 2;
    g_eval = true;
    e.Update();
    EXPECT(e.m_state == 2);
    EXPECT(g_starts.empty());

    e.m_state = 5;
    e.Update();
    EXPECT(e.m_state == 5);
    EXPECT(g_starts.empty());
}

void testReInit() {
    resetFakes();
    GameEvent e;
    e.m_state = 2;
    e.ReInit();
    EXPECT(e.m_state == 0);
    EXPECT(g_reset == 1);
}

void testCompileRegistersOnce() {
    resetFakes();
    GameEvent e;
    e.Compile();
    EXPECT(g_invalidate == 1);
    EXPECT(g_compile == 1);
    EXPECT(g_register == 1);
    EXPECT(e.m_registered);

    e.Compile();
    EXPECT(g_invalidate == 2);
    EXPECT(g_compile == 2);
    EXPECT(g_register == 1);
}

void testTraceUsesStdout() {
    resetFakes();
    GameEvent e;
    e.DBG_TraceDetailedInformation();
    EXPECT(g_traceCalls == 1);
    EXPECT(g_traceStream == reinterpret_cast<__sFILE*>(stdout));
}

void testAssignPyData() {
    resetFakes();
    GameEvent e;
    Structs::v2Event data;
    std::uint8_t block[16] = {};
    data.TriggersSize = 3;
    data.Triggers = block;
    e.AssignPyData(&data);
    EXPECT(e.m_pyData == &data);
    EXPECT(g_assignCount == 3);
    EXPECT(g_assignStub == reinterpret_cast<Structs::v2QuestObjectiveStub*>(block));
}

}  // namespace

int main() {
    testConstructorAndDestructor();
    testDbgStateName();
    testExecScript();
    testSetState();
    testUpdateInactive();
    testUpdateActive();
    testUpdateCompletedAndUnknown();
    testReInit();
    testCompileRegistersOnce();
    testTraceUsesStdout();
    testAssignPyData();
    if (g_failures == 0) {
        std::printf("g1-game-app-GameEvent-9380de-0 tests passed\n");
        return 0;
    }
    std::fprintf(stderr, "%d failure(s)\n", g_failures);
    return 1;
}
