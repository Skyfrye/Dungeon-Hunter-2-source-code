// Test for g1-game-items-save-Quest-1defd1-0.cpp. It links only that source and this file. The functions the Quest bodies
// reach in other batches and categories are defined here as recording stubs: the Objective base (TestObjective overrides
// the pure slots), ObjectiveList, RewardList, ConditionList, StreamReader<int>, ScriptManager, the Application singleton,
// the pydata constants, the level and character save calls and the debug state name. Quest's own constructor and
// destructor are stubs, so the test builds a Quest with empty list members and sets the fields it needs.
// The pydata record (Structs::v2Quest) is not built: its constructors are in another batch. So the tests cover the bodies
// that never read m_pyData: IsVolatileState, the save and load pair, GiveRewards, DBG_GetCurrentStateName, Compile for a
// state that does not register, Synchronize with primaryOnly false, the script slot guards and the early returns of
// HandleSaveInStateTransitonIfNeeded.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/Level.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Quest.hpp"
#include "dh2/RewardList.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/quest_state_names.hpp"
#include "dh2/global/script_ids.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Global assert level, defined by core-platform in the real build.
int gAssertLevel = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Recorded by the stubs below.
int g_writeCalls = 0;
int g_lastWritten = -1;
int g_readValue = 0;
int g_giveCalls = 0;
bool g_giveResult = true;
int g_rewardCompiles = 0;
int g_rewardInvalidates = 0;
int g_objListSaves = 0;
int g_objListLoads = 0;
int g_objListCompiles = 0;
int g_objListInvalidates = 0;
int g_objListRegisters = 0;
int g_objListInstalls = 0;
int g_startScriptCalls = 0;
int g_lastDbgState = -1;
int g_dbgNameCalls = 0;
IStreamBase* g_lastObjListStream = nullptr;

class TestObjective : public Objective {
public:
    void Compile() override { ++compiles; }
    void Register() override { ++registers; }
    void Unregister() override { ++unregisters; }
    void GetPositions(Vector3DFList&) const override {}
    void RemoveObjectiveMarker() override { ++removeMarkers; }
    void InstallObjectiveMarker(int markerKind, int markerIndex) override {
        ++installs;
        lastKind = markerKind;
        lastIndex = markerIndex;
    }
    void _loadData(IStreamBase*) override { ++loads; }
    void _saveData(IStreamBase*) override { ++saves; }
    void _resetData() override {}

    int compiles = 0;
    int registers = 0;
    int unregisters = 0;
    int removeMarkers = 0;
    int installs = 0;
    int lastKind = -1;
    int lastIndex = -1;
    int loads = 0;
    int saves = 0;
};

}  // namespace

// ---- Stubs for the Objective base: the vtable needs every non-pure slot. ----
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

// ---- Stubs for the list members a default-constructed Quest owns. ----
ConditionList::ConditionList() {}
ConditionList::~ConditionList() {}
ObjectiveList::ObjectiveList() {}
ObjectiveList::~ObjectiveList() {}
RewardList::RewardList() {}
RewardList::~RewardList() {}

void ObjectiveList::Register() { ++g_objListRegisters; }
void ObjectiveList::Unregister() {}
void ObjectiveList::RemoveObjectiveMarkers() {}
void ObjectiveList::InvalidateCompile() { ++g_objListInvalidates; }
void ObjectiveList::Compile() { ++g_objListCompiles; }
void ObjectiveList::_saveData(IStreamBase* stream) {
    ++g_objListSaves;
    g_lastObjListStream = stream;
}
void ObjectiveList::_loadData(IStreamBase* stream) {
    ++g_objListLoads;
    g_lastObjListStream = stream;
}
void ObjectiveList::InstallObjectiveMarkers(int, int) { ++g_objListInstalls; }

bool RewardList::Give() {
    ++g_giveCalls;
    return g_giveResult;
}
void RewardList::Compile() { ++g_rewardCompiles; }
void RewardList::InvalidateCompile() { ++g_rewardInvalidates; }

// ---- Stubs for Quest's own constructor and destructor (not in this batch). ----
Quest::Quest(int) {}
Quest::~Quest() {}

// ---- Stream reader specializations for int. ----
template <>
void StreamReader::readAs<int>(IStreamBase*, int* value) {
    *value = g_readValue;
}
template <>
void StreamReader::writeAs<int>(IStreamBase*, int value) {
    ++g_writeCalls;
    g_lastWritten = value;
}

// ---- Script manager: the storage and the two members the bodies call. ----
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
ScriptManager ScriptManager::s_inst;
bool ScriptManager::IsScriptRunning(int) const { return false; }
void ScriptManager::StartScript(int, int, bool) { ++g_startScriptCalls; }

// ---- Application singleton and the other externals. None of them is reached by the tested paths. ----
Application& ApplicationGetInstance() { std::abort(); }
Level* Application::GetCurrentLevel() const { return nullptr; }
PyDataConstants* ApplicationGetPyDataConstants() { return nullptr; }
int PyDataConstants::getConstant(const char*, const char*) const { return 0; }
const char* StringManager::getString(int) const { return "text"; }
void Level::SG_BlockLevel(bool) {}
void Level::QuickSave(bool) {}
PlayerInfo* PlayerManager::GetLocalPlayer(int, bool) { return nullptr; }
void Character::SG_Block(bool) {}
int Character::SG_Save() { return 0; }
int TempHackScriptIDAreStrings(const char*) { return -1; }
const char* DBG_GetStateNameFromID(int state) {
    ++g_dbgNameCalls;
    g_lastDbgState = state;
    return "stub-state";
}

namespace {

// Volatile states 2..11 follow CSWTCH_6217 = {1,0,1,1,0,1,1,0,1,1}; every other state is not volatile.
void TestIsVolatileState() {
    const bool expected[10] = {true, false, true, true, false, true, true, false, true, true};
    for (int state = -2; state <= 14; ++state) {
        bool want = false;
        if (state >= 2 && state <= 11) {
            want = expected[state - 2];
        }
        Quest q(0);
        CHECK(q.IsVolatileState(state) == want);
    }
}

void TestSaveAndLoad() {
    Quest q(0);
    TestObjective accept;
    TestObjective end;
    q.m_acceptType = &accept;
    q.m_endType = &end;
    q.m_state = 6;

    int streamMarker = 0;
    IStreamBase* stream = reinterpret_cast<IStreamBase*>(&streamMarker);
    q._saveQuestData(stream);
    CHECK(g_writeCalls == 1);
    CHECK(g_lastWritten == 6);
    CHECK(accept.saves == 1);
    CHECK(end.saves == 1);
    CHECK(g_objListSaves == 1);
    CHECK(g_lastObjListStream == stream);

    // A volatile loaded state (5) sets m_needsReinit and returns IsVolatileState.
    q.m_needsReinit = false;
    g_readValue = 5;
    const int volatileResult = q._loadQuestData(stream, false);
    CHECK(q.m_state == 5);
    CHECK(volatileResult == 1);
    CHECK(q.m_needsReinit);
    CHECK(accept.loads == 1);
    CHECK(end.loads == 1);
    CHECK(g_objListLoads == 1);

    // A non-volatile loaded state (6) leaves m_needsReinit clear and returns 0.
    q.m_needsReinit = false;
    g_readValue = 6;
    const int plainResult = q._loadQuestData(stream, true);
    CHECK(q.m_state == 6);
    CHECK(plainResult == 0);
    CHECK(!q.m_needsReinit);
}

void TestGiveRewards() {
    Quest q(0);
    q.m_rewardsPending = true;
    g_giveResult = true;
    CHECK(q.GiveRewards() == 1);
    CHECK(!q.m_rewardsPending);
    CHECK(g_giveCalls == 1);

    q.m_rewardsPending = true;
    g_giveResult = false;
    CHECK(q.GiveRewards() == 0);
    CHECK(!q.m_rewardsPending);
    g_giveResult = true;
}

void TestDbgStateNameAndUpdate() {
    Quest q(0);
    q.m_state = 7;
    const char* name = q.DBG_GetCurrentStateName();
    CHECK(g_lastDbgState == 7);
    CHECK(name != nullptr && std::string(name) == "stub-state");
    q.UpdatePostClosed();  // empty body: nothing to check beyond the call
}

// Compile in a state that neither registers nor installs (Locked) clears the accept and end flags, compiles the three
// lists and compiles the pending rewards only when they are pending. The pydata record is not read in this state.
void TestCompileLockedState() {
    Quest q(0);
    TestObjective accept;
    TestObjective end;
    accept.m_valid = true;
    accept.m_completed = true;
    end.m_valid = true;
    end.m_completed = true;
    q.m_acceptType = &accept;
    q.m_endType = &end;
    q.m_state = 0;
    q.m_rewardsPending = false;

    q.Compile();
    CHECK(!accept.m_valid && !accept.m_completed);
    CHECK(!end.m_valid && !end.m_completed);
    CHECK(accept.compiles == 1);
    CHECK(end.compiles == 1);
    CHECK(g_objListInvalidates == 1);
    CHECK(g_objListCompiles == 1);
    CHECK(g_rewardInvalidates == 1);
    CHECK(g_rewardCompiles == 0);
    CHECK(accept.registers == 0 && end.registers == 0);
    CHECK(accept.installs == 0 && end.installs == 0);
    CHECK(g_objListRegisters == 0 && g_objListInstalls == 0);

    q.m_rewardsPending = true;
    q.Compile();
    CHECK(g_rewardCompiles == 1);
}

void TestSynchronizeCopy() {
    Quest source(0);
    source.m_state = 9;
    source.m_stateStamp = 1234;
    source.m_needsReinit = true;

    Quest target(0);
    target.m_state = 3;
    target.m_stateStamp = 0;
    target.m_needsReinit = false;
    target.Synchronize(&source, false);
    CHECK(target.m_state == 9);
    CHECK(target.m_stateStamp == 1234);
    CHECK(target.m_needsReinit);
}

// Script slots outside 0..13 do not read the pydata record: they resolve to no script and never start one. The ASSERT
// prints only at level 1, so the level stays at 0 here.
void TestScriptSlotGuards() {
    Quest q(0);
    CHECK(q.GetScriptIDFromID(-1) == -1);
    CHECK(q.GetScriptIDFromID(14) == -1);
    CHECK(!q.TestIsScriptRunning(-1));
    CHECK(!q.TestIsScriptRunning(14));
    q.ExecScript(-1);
    q.ExecScript(14);
    CHECK(g_startScriptCalls == 0);
}

// HandleSave returns before reading the pydata record when m_needsReinit is set, and for a state with no save rule.
void TestHandleSaveEarlyReturns() {
    Quest q(0);
    q.m_needsReinit = true;
    q.HandleSaveInStateTransitonIfNeeded(2);
    q.HandleSaveInStateTransitonIfNeeded(5);

    q.m_needsReinit = false;
    q.HandleSaveInStateTransitonIfNeeded(3);  // Available: not in the switch, nothing to save
    q.HandleSaveInStateTransitonIfNeeded(6);  // Active: not in the switch
    CHECK(!q.m_needsReinit);
}

}  // namespace

int main() {
    TestIsVolatileState();
    TestSaveAndLoad();
    TestGiveRewards();
    TestDbgStateNameAndUpdate();
    TestCompileLockedState();
    TestSynchronizeCopy();
    TestScriptSlotGuards();
    TestHandleSaveEarlyReturns();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("Quest test: all checks passed\n");
    return 0;
}
