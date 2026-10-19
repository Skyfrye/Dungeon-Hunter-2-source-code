// Test for batch r2a-game-app-Application-b291be-0: the state and level queries of the batch's -0 source, GetCurrentLevel,
// IsInitFinish and IsInActionPhase. They read the state stack (StateMachine::m_stack) and the level pointer GSLevel::s_level,
// so the test builds a real stack of states and a fake Level. Exit status 0 means every check passed.
//
// Link: check_tu.sh --test <this file> g1-game-app-Application-b291be-0.cpp
// The statics the source reads (GSLevel::s_level, GSLevel::s_gsLevel, GSInit::s_inst) are raw storage under their linker
// names, since their owners' sources are not linked. StateMachine's constructor and destructor are defined here for the
// same reason; the state machine source is not linked.
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/GSInit.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/Level.hpp"
#include "dh2/StateBase.hpp"
#include "dh2/StateMachine.hpp"

// Defined by the globals batch in the original. The test defines it so the batch source links alone.
int OPERATOR_PACKAGE_INGAME = 0;

// The statics of other classes that the batch source reads. Only their addresses are used.
extern "C" {
Level* _ZN7GSLevel7s_levelE = nullptr;                   // GSLevel::s_level, the Level of the current GSLevel
alignas(16) unsigned char _ZN7GSLevel9s_gsLevelE[256];   // GSLevel::s_gsLevel, compared by address only
alignas(16) unsigned char _ZN6GSInit6s_instE[256];       // GSInit::s_inst, compared by address only
}

// The state machine's constructor and destructor are defined here (the source is not linked). The destructor is the
// key function, so the vtable is emitted in this translation unit.
StateMachine::StateMachine() {}
StateMachine::~StateMachine() {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Application storage. The functions under test read only m_stateMachine, which each check sets.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

Application* TestApp() {
    return reinterpret_cast<Application*>(g_appStorage);
}

// Level storage. Only m_loadStep is read by the functions under test.
alignas(Level) unsigned char g_levelStorage[sizeof(Level)];

Level* FakeLevel(int loadStep) {
    Level* level = reinterpret_cast<Level*>(g_levelStorage);
    level->m_loadStep = loadStep;
    return level;
}

// A state that is only compared, never called.
alignas(StateBase) unsigned char g_otherStateStorage[64];

StateBase* OtherState() {
    return reinterpret_cast<StateBase*>(g_otherStateStorage);
}

StateBase* GSLevelState() {
    return &GSLevel::s_gsLevel;
}

StateBase* GSInitState() {
    return &GSInit::s_inst;
}

StateMachine::StateInfo Entry(StateBase* state) {
    StateMachine::StateInfo info{};
    info.state = state;
    info.owned = false;
    return info;
}

void TestGetCurrentLevel() {
    _ZN7GSLevel7s_levelE = nullptr;
    Check(TestApp()->GetCurrentLevel() == nullptr, "GetCurrentLevel is null with no level");
    _ZN7GSLevel7s_levelE = FakeLevel(0);
    Check(TestApp()->GetCurrentLevel() == _ZN7GSLevel7s_levelE, "GetCurrentLevel returns GSLevel::s_level");
    _ZN7GSLevel7s_levelE = nullptr;
}

void TestIsInitFinish() {
    Application* app = TestApp();
    StateMachine machine;

    app->m_stateMachine = nullptr;
    Check(!app->IsInitFinish(), "IsInitFinish is false without a state machine");

    app->m_stateMachine = &machine;
    Check(!app->IsInitFinish(), "IsInitFinish is false with an empty stack");

    machine.m_stack.push_back(Entry(nullptr));
    Check(!app->IsInitFinish(), "IsInitFinish is false when the top state is null");

    machine.m_stack.back() = Entry(GSInitState());
    Check(!app->IsInitFinish(), "IsInitFinish is false when the top state is GSInit::s_inst");

    machine.m_stack.back() = Entry(OtherState());
    Check(app->IsInitFinish(), "IsInitFinish is true when the top state is another state");

    machine.m_stack.clear();
    machine.m_stack.push_back(Entry(GSInitState()));
    machine.m_stack.push_back(Entry(OtherState()));
    Check(app->IsInitFinish(), "IsInitFinish looks only at the top entry");

    app->m_stateMachine = nullptr;
}

void TestIsInActionPhase() {
    Application* app = TestApp();
    StateMachine machine;
    app->m_stateMachine = &machine;

    _ZN7GSLevel7s_levelE = nullptr;
    Check(!app->IsInActionPhase(), "IsInActionPhase is false with an empty stack and no level");

    machine.m_stack.push_back(Entry(GSLevelState()));
    Check(!app->IsInActionPhase(), "IsInActionPhase is false with GSLevel on top and no level");

    _ZN7GSLevel7s_levelE = FakeLevel(38);
    Check(app->IsInActionPhase(), "IsInActionPhase is true with GSLevel on top and m_loadStep 38");

    _ZN7GSLevel7s_levelE = FakeLevel(37);
    Check(!app->IsInActionPhase(), "IsInActionPhase is false while the level is still loading (m_loadStep 37)");

    _ZN7GSLevel7s_levelE = FakeLevel(38);
    machine.m_stack.back() = Entry(OtherState());
    Check(!app->IsInActionPhase(), "IsInActionPhase is false when the top state is not GSLevel");

    app->m_stateMachine = nullptr;
    machine.m_stack.clear();
    _ZN7GSLevel7s_levelE = nullptr;
}

}  // namespace

int main() {
    TestGetCurrentLevel();
    TestIsInitFinish();
    TestIsInActionPhase();
    if (g_failures == 0) {
        std::printf("r2a-game-app-Application-b291be-0_test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-app-Application-b291be-0_test: %d failure(s)\n", g_failures);
    return 1;
}
