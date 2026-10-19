// Test for batch g1-game-items-save-pack0-dae626-0 (Condition, ConditionList, Condition_IsEventInState).
//
// Links only the batch source and this file. The engine symbols the source references are fakes defined here:
// CustomAlloc (malloc, counted; CustomFree is the inline free in pydata's deps/stream_reader.hpp), gAssertLevel,
// Application::GetCurrentLevel and the storage of Singleton<Application>, GameEventManager::GetEventByID, PyDataConstants::getConstantName, the seven
// GetConditionImplInstance factories (each records its index and returns a counting test Condition), and the
// v2Condition and v2ConditionStub members that the stub array needs. Fake events and levels are raw storage with the
// field written through the real class type (no constructor runs for them, as their constructors are in game-app).
//
// Checks: the base Condition (trace text), the empty and non-empty ConditionList Eval (including the early exit),
// AssignPyData (factory order by stub type, stub back-pointers, allocations), the list destructor (the array is
// released and the list is left empty; the frees go to pydata's inline CustomFree and are not counted), the list
// trace, and Condition_IsEventInState Eval and its State trace line. The Event trace line is partial and is not checked.

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Condition.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/Condition_IsEventInState.hpp"
#include "dh2/GameEvent.hpp"
#include "dh2/GameEventManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/condition_objective_factory.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// gAssertLevel is defined by core-platform; the test sets it to 0 (silent asserts).
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                       \
    do {                                                                                  \
        if (!(cond)) {                                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                 \
        }                                                                                 \
    } while (0)

int g_allocs = 0;
int g_evalCount = 0;
std::vector<int> g_factoryCalls;  // factory index, in call order

// A Condition whose Eval returns `value` and which counts its evaluations.
class TestCondition : public Condition {
public:
    bool Eval() override {
        ++g_evalCount;
        return value;
    }
    int id = -1;
    bool value = true;
};

TestCondition* MakeTestCondition(int id, bool value) {
    void* mem = CustomAlloc(static_cast<unsigned int>(sizeof(TestCondition)));
    TestCondition* cond = new (mem) TestCondition();
    cond->id = id;
    cond->value = value;
    return cond;
}

// Fake event table for GameEventManager::GetEventByID. Rows are raw storage; only m_state is written.
constexpr int kEventCount = 3;
alignas(GameEvent) unsigned char g_eventStore[kEventCount][sizeof(GameEvent)];

// Fake level and event manager. The level is raw storage in which m_gameEventManager is set through Level.
alignas(Level) unsigned char g_levelStore[sizeof(Level)];
alignas(GameEventManager) unsigned char g_managerStore[sizeof(GameEventManager)];
Level* g_currentLevel = nullptr;

// Fake PyDataConstants: the pointer only, since getConstantName is faked.
alignas(8) unsigned char g_pyDataStore[64];
std::vector<std::string> g_nameClasses;

GameEvent* EventRow(int i) {
    return reinterpret_cast<GameEvent*>(g_eventStore[i]);
}

}  // namespace

// ---- Engine fakes -------------------------------------------------------------------------------------------------

void* CustomAlloc(unsigned size) {
    ++g_allocs;
    return std::malloc(size);
}

Level* Application::GetCurrentLevel() const {
    return g_currentLevel;
}

Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) {
    return false;
}
template class Singleton<Application>;

GameEvent* GameEventManager::GetEventByID(int id) const {
    if (id < 0 || id >= kEventCount) {
        return nullptr;
    }
    return EventRow(id);
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    g_nameClasses.emplace_back(className);
    return value == 1 ? "Active" : (value == 2 ? "Completed" : "Inactive");
}

Structs::v2Condition::~v2Condition() {}
void Structs::v2Condition::finalize() {}
void Structs::v2Condition::read(IStreamBase*) {}
Structs::v2ConditionStub::~v2ConditionStub() {}
void Structs::v2ConditionStub::finalize() {}
void Structs::v2ConditionStub::read(IStreamBase*) {}

// The seven factories of the table, in table order. Each records its index.
template <>
Condition* GetConditionImplInstance<Condition_IsQuestInState>() {
    g_factoryCalls.push_back(0);
    return MakeTestCondition(0, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsQuestStateLower>() {
    g_factoryCalls.push_back(1);
    return MakeTestCondition(1, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsQuestStateHigher>() {
    g_factoryCalls.push_back(2);
    return MakeTestCondition(2, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsPlayerInLevel>() {
    g_factoryCalls.push_back(3);
    return MakeTestCondition(3, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsLevelInState>() {
    g_factoryCalls.push_back(4);
    return MakeTestCondition(4, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsPlayerAtLevel>() {
    g_factoryCalls.push_back(5);
    return MakeTestCondition(5, true);
}
template <>
Condition* GetConditionImplInstance<Condition_IsEventInState>() {
    g_factoryCalls.push_back(6);
    return MakeTestCondition(6, true);
}

// ---- Helpers ------------------------------------------------------------------------------------------------------

namespace {

void ResetCounts() {
    g_allocs = 0;
    g_evalCount = 0;
    g_factoryCalls.clear();
    g_nameClasses.clear();
}

// Reads back everything written to a temporary stream.
std::string ReadStream(std::FILE* f) {
    std::rewind(f);
    std::string text;
    char buf[128];
    std::size_t n;
    while ((n = std::fread(buf, 1, sizeof(buf), f)) > 0) {
        text.append(buf, n);
    }
    return text;
}

void SetEvent(int i, int state) {
    EventRow(i)->m_state = state;
}

// Builds a stub array of the given types. The stubs are host v2ConditionStub rows (m_w1 is the type).
void FillStubs(Structs::v2ConditionStub* stubs, const int* types, int count) {
    for (int i = 0; i < count; ++i) {
        stubs[i].Op = types[i];
    }
}

void TestBaseCondition() {
    TestCondition cond;
    cond.Compile();  // empty body: no state change
    std::FILE* f = std::tmpfile();
    CHECK(f != nullptr);
    if (f == nullptr) return;
    const std::size_t n = cond.DBG_TraceDetailedConditionInformation(reinterpret_cast<__sFILE*>(f));
    CHECK(n == 0x25);
    CHECK(ReadStream(f) == "\t  Unimplemented Trace for Condition\n");
    std::fclose(f);
}

void TestConditionListEmpty() {
    ConditionList list;
    CHECK(list.m_count == 0);
    CHECK(list.m_conditions == nullptr);
    CHECK(list.m_stubs == nullptr);
    CHECK(list.Eval());  // an empty list is true
}

void TestConditionListEval() {
    // Four rows, all true: every Condition is evaluated. Then one false in the middle: the walk stops there.
    // The list lives on the heap so that its destructor is run exactly once, explicitly.
    ConditionList* list = new (CustomAlloc(static_cast<unsigned int>(sizeof(ConditionList)))) ConditionList();
    Structs::v2ConditionStub stubs[4];
    const int types[4] = {6, 0, 3, 5};
    FillStubs(stubs, types, 4);
    ResetCounts();
    list->AssignPyData(stubs, 4);
    CHECK(list->m_count == 4);
    CHECK(list->m_stubs == stubs);
    CHECK(list->m_conditions != nullptr);
    CHECK(list->Eval());
    CHECK(g_evalCount == 4);

    ResetCounts();
    static_cast<TestCondition*>(list->m_conditions[2])->value = false;
    CHECK(!list->Eval());
    CHECK(g_evalCount == 3);  // conditions 0, 1 and 2; condition 3 is not evaluated

    // Release: the four Conditions and the array are freed (CustomFree), then the list block itself.
    list->~ConditionList();
    CHECK(list->m_conditions == nullptr);
    CustomFree(list);
}

void TestAssignPyDataFactoryOrder() {
    // Type 6 (IsEventInState), 0 (IsQuestInState), 3 (IsPlayerInLevel): factories run in row order and pick by type.
    ConditionList* list = new (CustomAlloc(static_cast<unsigned int>(sizeof(ConditionList)))) ConditionList();
    Structs::v2ConditionStub stubs[3];
    const int types[3] = {6, 0, 3};
    FillStubs(stubs, types, 3);
    ResetCounts();
    list->AssignPyData(stubs, 3);
    CHECK(g_allocs == 4);  // the pointer array, then one Condition per row (each from CustomAlloc in its factory)
    CHECK(g_factoryCalls.size() == 3);
    if (g_factoryCalls.size() == 3) {
        CHECK(g_factoryCalls[0] == 6);
        CHECK(g_factoryCalls[1] == 0);
        CHECK(g_factoryCalls[2] == 3);
    }
    for (int i = 0; i < 3; ++i) {
        TestCondition* cond = static_cast<TestCondition*>(list->m_conditions[i]);
        CHECK(cond->id == types[i]);
        CHECK(cond->m_stub == &stubs[i]);  // each Condition keeps its own stub row
    }
    list->~ConditionList();
    CustomFree(list);
}

void TestAssignPyDataZero() {
    // A zero count stores the stubs and count and allocates nothing.
    ConditionList list;
    ResetCounts();
    list.AssignPyData(nullptr, 0);
    CHECK(list.m_count == 0);
    CHECK(list.m_stubs == nullptr);
    CHECK(g_allocs == 0);
    CHECK(list.Eval());
}

void TestConditionListTrace() {
    ConditionList* list = new (CustomAlloc(static_cast<unsigned int>(sizeof(ConditionList)))) ConditionList();
    Structs::v2ConditionStub stubs[2];
    const int types[2] = {1, 2};
    FillStubs(stubs, types, 2);
    list->AssignPyData(stubs, 2);
    std::FILE* f = std::tmpfile();
    CHECK(f != nullptr);
    if (f != nullptr) {
        list->DBG_TraceDetailedConditionListInformation(reinterpret_cast<__sFILE*>(f));
        const std::string text = ReadStream(f);
        const std::string once = "\t  Unimplemented Trace for Condition\n";
        CHECK(text == once + once);
        std::fclose(f);
    }
    // Release the list's Conditions and array, then the list block.
    list->~ConditionList();
    CustomFree(list);
}

void TestConditionListDestructorEmptyBody() {
    // A list with a count but no array (never assigned) frees nothing.
    ConditionList* list = new (CustomAlloc(static_cast<unsigned int>(sizeof(ConditionList)))) ConditionList();
    ResetCounts();
    list->~ConditionList();
    CHECK(list->m_conditions == nullptr);
    CustomFree(list);
}

// Condition_IsEventInState: event rows 0..2 have states 0 (Inactive), 1 (Active), 2 (Completed).
void SetupLevelWithEvents() {
    std::memset(g_levelStore, 0, sizeof(g_levelStore));
    std::memset(g_managerStore, 0, sizeof(g_managerStore));
    std::memset(g_eventStore, 0, sizeof(g_eventStore));
    SetEvent(0, 0);
    SetEvent(1, 1);
    SetEvent(2, 2);
    Level* level = reinterpret_cast<Level*>(g_levelStore);
    level->m_gameEventManager = reinterpret_cast<GameEventManager*>(g_managerStore);
    g_currentLevel = level;
}

void TestEventInStateEval() {
    Condition_IsEventInState cond;
    Structs::v2ConditionStub stub;

    // No current level: false.
    g_currentLevel = nullptr;
    cond.m_stub = &stub;
    stub.Op1 = 1;
    stub.Op2 = 1;
    CHECK(!cond.Eval());

    // A level with no event manager: false (gAssertLevel 0 prints nothing).
    SetupLevelWithEvents();
    reinterpret_cast<Level*>(g_levelStore)->m_gameEventManager = nullptr;
    CHECK(!cond.Eval());

    // Event 1 is Active: state 1 holds, state 2 does not.
    SetupLevelWithEvents();
    stub.Op1 = 1;
    stub.Op2 = 1;
    CHECK(cond.Eval());
    stub.Op2 = 2;
    CHECK(!cond.Eval());

    // Event 2 is Completed.
    stub.Op1 = 2;
    stub.Op2 = 2;
    CHECK(cond.Eval());
    stub.Op2 = 0;
    CHECK(!cond.Eval());

    g_currentLevel = nullptr;
}

void TestEventInStateStateTrace() {
    Condition_IsEventInState cond;
    Structs::v2ConditionStub stub;
    stub.Op1 = 1;
    stub.Op2 = 1;
    cond.m_stub = &stub;
    SetupLevelWithEvents();
    std::FILE* f = std::tmpfile();
    CHECK(f != nullptr);
    if (f == nullptr) return;
    ResetCounts();
    const std::size_t n = cond.DBG_TraceDetailedConditionInformation(reinterpret_cast<__sFILE*>(f));
    // The Event line (event id 1 is outside Arrays::v2Events::size = 0, so "na"), then the State line. The return value is the
    // count of the State line's fprintf.
    const std::string stateLine = "\t    State       : Active\n\n";
    const std::string expected = "\t    Event       : na\n" + stateLine;
    CHECK(ReadStream(f) == expected);
    CHECK(n == stateLine.size());
    CHECK(g_nameClasses.size() == 1);
    if (!g_nameClasses.empty()) {
        CHECK(g_nameClasses[0] == "v2EventState");
    }
    std::fclose(f);
    g_currentLevel = nullptr;
}

}  // namespace

int main() {
    // The singleton's storage is the Application object; its PyDataConstants pointer feeds the trace.
    Singleton<Application>::s_inst.m_pyDataConstants = reinterpret_cast<PyDataConstants*>(g_pyDataStore);

    TestBaseCondition();
    TestConditionListEmpty();
    TestConditionListEval();
    TestAssignPyDataFactoryOrder();
    TestAssignPyDataZero();
    TestConditionListTrace();
    TestConditionListDestructorEmptyBody();
    TestEventInStateEval();
    TestEventInStateStateTrace();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-items-save-pack0-dae626-0 test: all checks passed\n");
    return 0;
}
