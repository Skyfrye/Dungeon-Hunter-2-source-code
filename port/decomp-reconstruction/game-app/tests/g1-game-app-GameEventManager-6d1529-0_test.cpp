// Test for the GameEventManager batch g1-game-app-GameEventManager-6d1529-0.
// GameEvent methods and the runtime helpers are replaced by recording doubles, so no event or engine code is
// needed. Events are built with malloc and placement new, and released through CustomFree, as the original
// does. Returns non-zero on failure.
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <string>
#include <vector>

#include "dh2/GameEvent.hpp"
#include "dh2/GameEventManager.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

int g_failures = 0;
std::string g_log;               // one token per recorded GameEvent call: tag + m_index + space
int g_pushes = 0;
int g_pops = 0;
std::string g_profileName;
int g_destroyed = 0;
std::vector<void*> g_freed;

#define EXPECT(cond)                                                                  \
    do {                                                                              \
        if (!(cond)) {                                                                \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                             \
        }                                                                             \
    } while (0)

void Log(const char* tag, const GameEvent* ev) {
    g_log += tag;
    g_log += std::to_string(ev->m_index);
    g_log += ' ';
}

void ResetRecords() {
    g_log.clear();
    g_pushes = 0;
    g_pops = 0;
    g_profileName.clear();
    g_destroyed = 0;
    g_freed.clear();
}

// A new event with the given row index and name, built the way the original builds one: raw storage from the
// allocator, then the constructor in place.
GameEvent* MakeEvent(int index, const char* name) {
    void* mem = std::malloc(sizeof(GameEvent));
    GameEvent* ev = new (mem) GameEvent();
    ev->m_index = index;
    ev->m_name = name;
    return ev;
}

}  // namespace

// Doubles for the embedded ObjectiveList (its own batch defines the real code). The list has no effect here.
ObjectiveList::ObjectiveList() {}
ObjectiveList::~ObjectiveList() {}

// Recording doubles for the GameEvent methods the batch calls.
GameEvent::GameEvent() : m_state(-1), m_index(-1), m_name(nullptr), m_registered(false), m_pyData(nullptr) {}
GameEvent::~GameEvent() { ++g_destroyed; }
void GameEvent::Update() { Log("U", this); }
void GameEvent::Compile() { Log("C", this); }
void GameEvent::ReInit() { Log("R", this); }
void GameEvent::AssignPyData(Structs::v2Event* data) {
    m_pyData = data;
    Log("P", this);
}
void GameEvent::DBG_TraceDetailedInformation() const { Log("D", this); }

// Recording doubles for the runtime helpers.
void PushProfilingContext(const char* name) {
    ++g_pushes;
    g_profileName = name;
}
void PopProfilingContext(const char* name) {
    ++g_pops;
    EXPECT(g_profileName == name);
}
void CustomFree(void* p) {
    g_freed.push_back(p);
    std::free(p);
}

namespace {

void TestGetEventByID() {
    GameEventManager mgr;
    EXPECT(mgr.GetEventByID(0) == nullptr);

    GameEvent* a = MakeEvent(0, "alpha");
    GameEvent* b = MakeEvent(1, "beta");
    GameEvent* c = MakeEvent(2, "gamma");
    mgr.m_events.push_back(a);
    mgr.m_events.push_back(b);
    mgr.m_events.push_back(c);

    EXPECT(mgr.GetEventByID(0) == a);
    EXPECT(mgr.GetEventByID(1) == b);
    EXPECT(mgr.GetEventByID(2) == c);
    EXPECT(mgr.GetEventByID(3) == nullptr);
    EXPECT(mgr.GetEventByID(-1) == nullptr);
    mgr.Unload();
}

// The event table the manager reads: three names and three (unconstructed) rows. The real Arrays::v2Events statics are used.
char g_names[3][8] = {"alpha", "beta", "gamma"};
char* g_namePointers[3] = {g_names[0], g_names[1], g_names[2]};
alignas(Structs::v2Event) unsigned char g_rows[3 * sizeof(Structs::v2Event)];

void SetUpEventTable() {
    Arrays::v2Events::m_memberNames.names = g_namePointers;
    Arrays::v2Events::m_memberNames.size = 3;
    Arrays::v2Events::size = 3;
    Arrays::v2Events::members = g_rows;
}

void TestGetEventByName() {
    SetUpEventTable();
    GameEventManager mgr;
    GameEvent* a = MakeEvent(0, "alpha");
    GameEvent* b = MakeEvent(1, "beta");
    mgr.m_events.push_back(a);
    mgr.m_events.push_back(b);

    // The name is looked up in the member name table, and the row index goes to GetEventByID.
    EXPECT(mgr.GetEventByName("alpha") == a);
    EXPECT(mgr.GetEventByName("beta") == b);
    EXPECT(mgr.GetEventByName("gamma") == nullptr);  // a row without a loaded event
    EXPECT(mgr.GetEventByName("delta") == nullptr);
    EXPECT(mgr.GetEventByName("alph") == nullptr);
    mgr.Unload();
}

void TestLoad() {
    ResetRecords();
    SetUpEventTable();
    GameEventManager mgr;
    mgr.Load();
    EXPECT(mgr.m_events.size() == 3);
    for (std::size_t i = 0; i < mgr.m_events.size(); ++i) {
        GameEvent* ev = mgr.m_events[i];
        EXPECT(ev != nullptr);
        if (ev == nullptr) {
            continue;
        }
        EXPECT(ev->m_index == static_cast<int>(i));
        EXPECT(ev->m_name == g_namePointers[i]);
        EXPECT(ev->m_pyData == reinterpret_cast<Structs::v2Event*>(g_rows) + i);
    }
    EXPECT(g_log == "P0 R0 P1 R1 P2 R2 ");  // AssignPyData then ReInit, per row in order
    // A second Load with events present does nothing.
    ResetRecords();
    mgr.Load();
    EXPECT(g_log.empty());
    EXPECT(mgr.m_events.size() == 3);
    EXPECT(mgr.GetEventByName("gamma") == mgr.m_events[2]);
    mgr.Unload();
}

void TestUpdateRunsEventsInOrderInProfileContext() {
    ResetRecords();
    GameEventManager mgr;
    mgr.m_events.push_back(MakeEvent(1, "a"));
    mgr.m_events.push_back(MakeEvent(2, "b"));
    mgr.m_events.push_back(MakeEvent(3, "c"));

    mgr.Update();
    EXPECT(g_log == "U1 U2 U3 ");
    EXPECT(g_pushes == 1);
    EXPECT(g_pops == 1);
    EXPECT(g_profileName == "GameEventManager::Update");
    mgr.Unload();
}

void TestUpdateEmptyStillProfiles() {
    ResetRecords();
    GameEventManager mgr;
    mgr.Update();
    EXPECT(g_log.empty());
    EXPECT(g_pushes == 1);
    EXPECT(g_pops == 1);
}

void TestCompileRunsEachEvent() {
    ResetRecords();
    GameEventManager mgr;
    mgr.m_events.push_back(MakeEvent(1, "a"));
    mgr.m_events.push_back(MakeEvent(2, "b"));
    mgr.m_events.push_back(MakeEvent(3, "c"));

    mgr.Compile();
    EXPECT(g_log == "C1 C2 C3 ");
    mgr.Unload();
}

void TestReInitPairsReInitWithCompile() {
    ResetRecords();
    GameEventManager mgr;
    mgr.m_events.push_back(MakeEvent(1, "a"));
    mgr.m_events.push_back(MakeEvent(2, "b"));
    mgr.m_events.push_back(MakeEvent(3, "c"));

    mgr.ReInit();
    EXPECT(g_log == "R1 C1 R2 C2 R3 C3 ");
    mgr.Unload();
}

void TestDebugTraceUsesConstLoop() {
    ResetRecords();
    GameEventManager mgr;
    mgr.m_events.push_back(MakeEvent(1, "a"));
    mgr.m_events.push_back(MakeEvent(2, "b"));

    const GameEventManager& constMgr = mgr;
    constMgr.DBG_TraceDetailedInformation();
    EXPECT(g_log == "D1 D2 ");
    mgr.Unload();
}

void TestUnloadDestroysAndFreesEachNonNullEvent() {
    ResetRecords();
    GameEventManager mgr;
    GameEvent* a = MakeEvent(1, "a");
    GameEvent* c = MakeEvent(3, "c");
    mgr.m_events.push_back(a);
    mgr.m_events.push_back(nullptr);
    mgr.m_events.push_back(c);

    mgr.Unload();
    EXPECT(g_destroyed == 2);
    EXPECT(g_freed.size() == 2);
    if (g_freed.size() == 2) {
        EXPECT(g_freed[0] == static_cast<void*>(a));
        EXPECT(g_freed[1] == static_cast<void*>(c));
    }
    EXPECT(mgr.m_events.empty());

    // A second Unload on the empty list does nothing.
    mgr.Unload();
    EXPECT(g_destroyed == 2);
    EXPECT(g_freed.size() == 2);
}

void TestDestructorUnloads() {
    ResetRecords();
    {
        GameEventManager scoped;
        scoped.m_events.push_back(MakeEvent(1, "a"));
        scoped.m_events.push_back(MakeEvent(2, "b"));
    }
    EXPECT(g_destroyed == 2);
    EXPECT(g_freed.size() == 2);
}

}  // namespace

int main() {
    TestGetEventByID();
    TestGetEventByName();
    TestLoad();
    TestUpdateRunsEventsInOrderInProfileContext();
    TestUpdateEmptyStillProfiles();
    TestCompileRunsEachEvent();
    TestReInitPairsReInitWithCompile();
    TestDebugTraceUsesConstLoop();
    TestUnloadDestroysAndFreesEachNonNullEvent();
    TestDestructorUnloads();

    if (g_failures != 0) {
        std::fprintf(stderr, "GameEventManager tests: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("GameEventManager tests passed\n");
    return 0;
}
