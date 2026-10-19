// Test for batch g1-game-app-StateBase-a78ab7-0. StateBase has no state of its own, so the test covers what the
// batch can show without the engine: every base slot is callable through a base pointer and returns normally, a
// subclass override is reached through a base pointer, and deleting through a base pointer runs the subclass
// destructor (the path the compiler-generated deleting destructor takes). Exit status 0 means every check passed.
#include <cstdio>
#include <type_traits>

#include "dh2/StateBase.hpp"

namespace {

int g_failures = 0;
int g_derivedDtorCalls = 0;  // CountingState::~CountingState
int g_updateCalls = 0;       // CountingState::Update
double g_lastDt = 0.0;       // dt passed to the last CountingState::Update

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Overrides nothing: every slot is StateBase's own empty body.
class PlainState : public StateBase {};

// Overrides the destructor and Update, so a base pointer must reach both.
class CountingState : public StateBase {
public:
    ~CountingState() override { ++g_derivedDtorCalls; }
    void Update(StateMachine* /*machine*/, double dt) override {
        ++g_updateCalls;
        g_lastDt = dt;
    }
};

}  // namespace

int main() {
    Check(std::is_polymorphic<StateBase>::value, "StateBase is polymorphic");

    // All nine base slots, called through a base pointer on an object that overrides none of them. The bodies read
    // no state, so nullptr is a valid machine and the calls must return without effect.
    {
        PlainState plain;
        StateBase* base = &plain;
        base->Ctor(nullptr);
        base->Dtor(nullptr);
        base->Pause(nullptr);
        base->Resume(nullptr);
        base->Update(nullptr, 0.5);
        base->Draw(nullptr);
        base->Draw2D(nullptr);
        base->Sleep(nullptr);
        base->WakeUp(nullptr);
    }
    Check(g_updateCalls == 0, "base Update on a plain state does not reach CountingState");

    // A subclass override is reached through a base pointer with its own arguments.
    {
        CountingState counting;
        StateBase* base = &counting;
        base->Update(nullptr, 0.25);
        Check(g_updateCalls == 1, "virtual Update reaches the CountingState override");
        Check(g_lastDt == 0.25, "Update passes dt through to the override");

        // Draw is not overridden, so the base no-op runs and the Update counter does not move.
        base->Draw(nullptr);
        Check(g_updateCalls == 1, "non-overridden Draw does not call Update");
    }
    Check(g_derivedDtorCalls == 1, "stack CountingState destructor runs at scope exit");

    // Deleting through a base pointer must run the subclass destructor, then release the storage.
    {
        StateBase* owned = new CountingState();
        delete owned;
    }
    Check(g_derivedDtorCalls == 2, "delete through a StateBase pointer runs the subclass destructor");

    if (g_failures == 0) {
        std::printf("StateBase: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
