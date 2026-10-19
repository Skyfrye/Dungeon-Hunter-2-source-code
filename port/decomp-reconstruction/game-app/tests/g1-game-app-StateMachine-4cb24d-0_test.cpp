// Test for batch g1-game-app-StateMachine-4cb24d-0. The states here are StateBase subclasses that append one
// "<tag>.<event>;" entry to a log for every slot the machine calls. The checks cover the queue order, the
// Ctor/Pause/Resume/Dtor order, switch, pop by state and by null, the recursion helpers, Sleep/WakeUp order, and
// ownership (owned states are deleted, others are not). Link: the .cpp of this batch, the destructor source of batch
// -1 (game-app/src/g1-game-app-StateMachine-4cb24d-1.cpp, which calls __clear) and the StateBase source.
// Exit status 0 means every check passed.
#include <cstdio>
#include <string>

#include "dh2/StateBase.hpp"
#include "dh2/StateMachine.hpp"

namespace {

int g_failures = 0;
std::string g_log;  // one "<tag>.<event>;" entry per slot call
int g_live = 0;     // TestState objects alive

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Compares the log with the expected text and clears it.
void ExpectLog(const char* expected, const char* what) {
    if (g_log != expected) {
        std::printf("FAIL: %s: expected \"%s\", got \"%s\"\n", what, expected, g_log.c_str());
        ++g_failures;
    }
    g_log.clear();
}

class TestState : public StateBase {
public:
    explicit TestState(char tag) : m_tag(tag) { ++g_live; }
    ~TestState() override { --g_live; }

    void Ctor(const StateMachine*) override { Note("Ctor"); }
    void Dtor(const StateMachine*) override { Note("Dtor"); }
    void Pause(const StateMachine*) override { Note("Pause"); }
    void Resume(const StateMachine*) override { Note("Resume"); }

    void Update(StateMachine* machine, double dt) override {
        Note("Update");
        m_lastDt = dt;
        for (int i = 0; i < m_recurseUpdates; ++i) {
            machine->RecurseUpdate(dt);
        }
    }

    void Draw(const StateMachine* machine) override {
        Note("Draw");
        for (int i = 0; i < m_recurseDraws; ++i) {
            machine->RecurseDraw();
        }
    }

    void Draw2D(const StateMachine*) override { Note("Draw2D"); }
    void Sleep(const StateMachine*) override { Note("Sleep"); }
    void WakeUp(const StateMachine*) override { Note("WakeUp"); }

    int m_recurseUpdates = 0;  // RecurseUpdate calls made from Update
    int m_recurseDraws = 0;    // RecurseDraw calls made from Draw
    double m_lastDt = 0.0;

private:
    void Note(const char* event) {
        g_log += m_tag;
        g_log += '.';
        g_log += event;
        g_log += ';';
    }

    char m_tag;
};

// A push is queued: nothing runs until Update, then Ctor runs before the first Update.
void CaseQueuedPush() {
    g_log.clear();
    TestState a('A');
    StateMachine m;
    m.PushState(&a, false);
    ExpectLog("", "a queued push does nothing before Update");
    m.Update(0.5);
    ExpectLog("A.Ctor;A.Update;", "push then Update: Ctor, then Update on the new top");
    Check(a.m_lastDt == 0.5, "Update passes dt to the top state");
}

// A second push pauses the old top before the new state's Ctor. Only the top gets Update.
void CaseStackedPush() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    ExpectLog("A.Ctor;A.Pause;B.Ctor;B.Update;", "second push pauses the old top before the new Ctor");
    Check(b.m_lastDt == 1.0, "the top state receives dt");
    Check(a.m_lastDt == 0.0, "a paused state below the top is not updated");
}

// Popping the top runs its Dtor, then Resume on the new top; the next Update reaches the new top.
void CasePopTop() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    g_log.clear();
    m.PopState(&b);
    m.Update(2.0);
    ExpectLog("B.Dtor;A.Resume;A.Update;", "pop of the top: Dtor, then Resume on the new top, then its Update");
    Check(a.m_lastDt == 2.0, "Update after the pop reaches A with the new dt");
}

// A pop for a state that is not on top is dropped.
void CasePopNotTop() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    g_log.clear();
    m.PopState(&a);
    m.Update(1.0);
    ExpectLog("B.Update;", "a pop for a state below the top is dropped");
}

// A null pop removes the top. On an empty stack a pop does nothing.
void CasePopNullAndEmpty() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PopState(nullptr);
    m.Update(1.0);
    ExpectLog("", "a pop on an empty stack does nothing");
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    g_log.clear();
    m.PopState(nullptr);
    m.Update(1.0);
    ExpectLog("B.Dtor;A.Resume;A.Update;", "a null pop removes the top");
}

// Switch pops everything (Dtor on each, top first) and pushes the new state without a Pause.
void CaseSwitch() {
    g_log.clear();
    TestState a('A');
    TestState c('C');
    StateMachine m;
    m.PushState(&a, false);
    m.Update(1.0);
    g_log.clear();
    m.SwitchState(&c, false);
    m.Update(1.0);
    ExpectLog("A.Dtor;C.Ctor;C.Update;", "switch pops all with Dtor, then pushes with no Pause");
}

// Queued operations run in order within one Update: push, switch, push.
void CaseQueueOrder() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    TestState c('C');
    StateMachine m;
    m.PushState(&a, false);
    m.SwitchState(&b, false);
    m.PushState(&c, false);
    m.Update(1.0);
    ExpectLog("A.Ctor;A.Dtor;B.Ctor;B.Pause;C.Ctor;C.Update;", "queued operations run in order in one Update");
}

// RecurseUpdate inside Update reaches the state one level below, with the same dt. The walk restarts on each call
// (the index is restored), so two calls reach that state twice. Outside Update it does nothing.
void CaseRecurseUpdate() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    TestState c('C');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.PushState(&c, false);
    m.Update(1.0);
    g_log.clear();
    c.m_recurseUpdates = 2;
    m.Update(0.25);
    ExpectLog("C.Update;B.Update;B.Update;", "RecurseUpdate reaches one level down each time it is called");
    Check(b.m_lastDt == 0.25, "the state below receives the same dt");
    Check(a.m_lastDt == 0.0, "the state two levels down is not reached");
    m.RecurseUpdate(0.25);
    ExpectLog("", "RecurseUpdate outside Update does nothing");
}

// Draw runs the top state. RecurseDraw inside Draw reaches the state below. Draw2D runs the top state only.
void CaseDraw() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    g_log.clear();
    m.Draw();
    ExpectLog("B.Draw;", "Draw runs the top state only");
    b.m_recurseDraws = 1;
    m.Draw();
    ExpectLog("B.Draw;A.Draw;", "RecurseDraw inside Draw reaches the state below");
    m.RecurseDraw();
    ExpectLog("", "RecurseDraw outside Draw does nothing");
    m.Draw2D();
    ExpectLog("B.Draw2D;", "Draw2D runs the top state only");
}

// Sleep goes top first, WakeUp goes bottom first.
void CaseSleepWake() {
    g_log.clear();
    TestState a('A');
    TestState b('B');
    StateMachine m;
    m.PushState(&a, false);
    m.PushState(&b, false);
    m.Update(1.0);
    g_log.clear();
    m.Sleep();
    ExpectLog("B.Sleep;A.Sleep;", "Sleep goes top first");
    m.WakeUp();
    ExpectLog("A.WakeUp;B.WakeUp;", "WakeUp goes bottom first");
}

// An owned state is deleted when it is popped. A state that is not owned is left alone.
void CaseOwnedPop() {
    g_log.clear();
    TestState keep('K');
    const int before = g_live;
    {
        StateMachine m;
        TestState* owned = new TestState('O');
        m.PushState(&keep, false);
        m.PushState(owned, true);
        m.Update(1.0);
        Check(g_live == before + 1, "an owned state is alive while it is on the stack");
        m.PopState(owned);
        m.Update(1.0);
        Check(g_live == before, "popping an owned state deletes it, and the non-owned state stays");
    }
    Check(g_live == before, "the stacked, non-owned state survives the machine");
    g_log.clear();
}

// Switch deletes the owned state it pops. The new state is not owned and stays alive until its own scope ends.
void CaseOwnedSwitch() {
    g_log.clear();
    const int before = g_live;
    {
        TestState next('N');
        Check(g_live == before + 1, "the non-owned state is alive");
        StateMachine m;
        TestState* owned = new TestState('O');
        m.PushState(owned, true);
        m.Update(1.0);
        g_log.clear();
        m.SwitchState(&next, false);
        m.Update(1.0);
        ExpectLog("O.Dtor;N.Ctor;N.Update;", "switch runs Dtor on the owned state and then deletes it");
        Check(g_live == before + 1, "switch deletes the owned state it pops");
    }
    Check(g_live == before, "all states are gone when the scope ends");
    g_log.clear();
}

// Destroying the machine runs Dtor on every stacked state, top first, and deletes owned stacked states. A queued owned
// state is deleted without Dtor, because it was never started.
void CaseDestructor() {
    g_log.clear();
    const int before = g_live;
    {
        TestState keepA('A');
        TestState keepB('B');
        StateMachine* m = new StateMachine();
        m->PushState(&keepA, false);
        m->PushState(&keepB, false);
        m->Update(1.0);
        g_log.clear();
        TestState* queued = new TestState('Q');
        m->PushState(queued, true);
        delete m;
        ExpectLog("B.Dtor;A.Dtor;", "destructor runs Dtor top first and frees the queued owned state with no Dtor");
        Check(g_live == before + 2, "the queued owned state is deleted by the destructor");
    }
    Check(g_live == before, "all states are gone after the destructor");
    g_log.clear();
}

}  // namespace

int main() {
    CaseQueuedPush();
    CaseStackedPush();
    CasePopTop();
    CasePopNotTop();
    CasePopNullAndEmpty();
    CaseSwitch();
    CaseQueueOrder();
    CaseRecurseUpdate();
    CaseDraw();
    CaseSleepWake();
    CaseOwnedPop();
    CaseOwnedSwitch();
    CaseDestructor();

    Check(g_live == 0, "no TestState is left alive");
    if (g_failures == 0) {
        std::printf("StateMachine (g1-game-app-StateMachine-4cb24d-0): all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
