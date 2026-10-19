// Test for batch r2a-game-app-pack0-e3ab88-0 (redo of the GSConsole rows). GSConsole::Toggle pushes the console state when
// it is not the top state of the machine, and pops it when it is. The application singleton and the state machine are
// stubbed here, so the test links with the GSConsole source alone. Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/GSConsole.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"

// core-platform/memory.hpp declares gAssertLevel; Toggle reads it only on the null-machine path, which these checks skip.
int gAssertLevel = 0;

namespace {

int g_failures = 0;
int g_pushCount = 0;               // StateMachine::PushState calls
StateBase* g_pushedState = nullptr;
bool g_pushedOwned = true;
int g_popCount = 0;                // StateMachine::PopState calls
bool g_lastPopNull = false;        // whether the last PopState got a null state

// The application singleton the batch reaches through ApplicationGetInstance(). Only m_stateMachine is used.
Application g_application;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void ResetCounters() {
    g_pushCount = 0;
    g_pushedState = nullptr;
    g_pushedOwned = true;
    g_popCount = 0;
    g_lastPopNull = false;
}

}  // namespace

// ---- stubs for the engine symbols the batch references ----

Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) {
    return false;
}

Application& ApplicationGetInstance() {
    return g_application;
}

StateMachine::StateMachine() {}
StateMachine::~StateMachine() {}

void StateMachine::PushState(StateBase* state, bool owned) {
    ++g_pushCount;
    g_pushedState = state;
    g_pushedOwned = owned;
}

void StateMachine::PopState(StateBase* state) {
    ++g_popCount;
    g_lastPopNull = (state == nullptr);
}

void StateMachine::RecurseDraw() const {}

StateBase::~StateBase() {}
void StateBase::Ctor(const StateMachine*) {}
void StateBase::Dtor(const StateMachine*) {}
void StateBase::Pause(const StateMachine*) {}
void StateBase::Resume(const StateMachine*) {}
void StateBase::Update(StateMachine*, double) {}
void StateBase::Draw(const StateMachine*) {}
void StateBase::Draw2D(const StateMachine*) {}
void StateBase::Sleep(const StateMachine*) {}
void StateBase::WakeUp(const StateMachine*) {}

int main() {
    // Empty stack: the console is pushed, not owned.
    {
        StateMachine machine;
        g_application.m_stateMachine = &machine;
        ResetCounters();
        GSConsole::s_inst.Toggle();
        Check(g_pushCount == 1 && g_pushedState == &GSConsole::s_inst && !g_pushedOwned,
              "Toggle pushes the console, not owned, on an empty stack");
        Check(g_popCount == 0, "Toggle on an empty stack does not pop");
    }

    // The console is the top state: it is popped with PopState(nullptr), which pops the top.
    {
        StateMachine machine;
        machine.m_stack.push_back(StateMachine::StateInfo{&GSConsole::s_inst, false});
        g_application.m_stateMachine = &machine;
        ResetCounters();
        GSConsole::s_inst.Toggle();
        Check(g_popCount == 1 && g_lastPopNull, "Toggle pops the console when it is the top state");
        Check(g_pushCount == 0, "Toggle with the console on top does not push");
    }

    // Another state is on top: the console is pushed again.
    {
        GSConsole other;
        StateMachine machine;
        machine.m_stack.push_back(StateMachine::StateInfo{&other, false});
        g_application.m_stateMachine = &machine;
        ResetCounters();
        GSConsole::s_inst.Toggle();
        Check(g_pushCount == 1 && g_pushedState == &GSConsole::s_inst && !g_pushedOwned,
              "Toggle pushes the console when another state is on top");
        Check(g_popCount == 0, "Toggle with another state on top does not pop");
    }

    // The console is below another state: only the top is tested, so the console is pushed.
    {
        GSConsole other;
        StateMachine machine;
        machine.m_stack.push_back(StateMachine::StateInfo{&GSConsole::s_inst, false});
        machine.m_stack.push_back(StateMachine::StateInfo{&other, false});
        g_application.m_stateMachine = &machine;
        ResetCounters();
        GSConsole::s_inst.Toggle();
        Check(g_pushCount == 1 && g_popCount == 0, "Toggle tests only the top state");
    }

    if (g_failures == 0) {
        std::printf("GSConsole Toggle: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
