// Test for batch g1-game-character-CharStateMachine-33fc5a-1.
//
// The batch source calls functions of other batches (state queries and lookups, Character::RaiseEvent, CharAnimator,
// CharTimers, Random). They are stubbed below so the executable links, and each stub records what it was given.
// Character is never constructed: a zero-filled buffer stands in for it, and only its spawn fields are written.
// The checks use only public members and the stubs, so no private state is reached.

#include <cstdio>
#include <cstring>

#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/Random.hpp"

// ---- Globals the stubs record or read -----------------------------------------------------------------------

namespace {
int g_stateStub = -1;        // returned by SM_GetState
bool g_hasState = false;     // returned by _HasState: false, so _SetState finds no state object to enter (it clears the current
                             // state) and goes on to raise event 29, which is what the checks look at

int g_raiseCalls = 0;        // Character::RaiseEvent
int g_raiseEvent = -1;
void* g_raiseData = nullptr;
int g_raiseReturn = 77;

int g_animCalls = 0;         // CharAnimator::ANIM_Set
int g_animValue = -1;

int g_timerCalls = 0;        // CharTimers::TMR_Start
unsigned int g_timerMs = 0;
int g_timerRepeat = -1;
int g_timerEvent = -1;
void* g_timerUser = reinterpret_cast<void*>(1);
int g_timerReturn = 5;

int g_randomCalls = 0;       // Random::GetRandom
int g_randomRange = -1;
bool g_randomSynced = false;
unsigned int g_randomReturn = 0;

int g_checks = 0;
int g_failures = 0;

void Check(bool cond, const char* what) {
    ++g_checks;
    if (!cond) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

void ResetRecords() {
    g_raiseCalls = 0;
    g_raiseEvent = -1;
    g_raiseData = nullptr;
    g_animCalls = 0;
    g_animValue = -1;
    g_timerCalls = 0;
    g_timerMs = 0;
    g_timerRepeat = -1;
    g_timerEvent = -1;
    g_timerUser = reinterpret_cast<void*>(1);
    g_randomCalls = 0;
    g_randomRange = -1;
    g_randomSynced = false;
}
}  // namespace

// ---- Stubs for symbols defined by other batches (only the linker needs them) ----------------------------------

int gAssertLevel = 0;

int CharStateMachine::SM_GetState() const { return g_stateStub; }
bool CharStateMachine::SM_IsIdle(bool) const { return false; }
bool CharStateMachine::SM_IsAwaitingToRevive() const { return false; }
bool CharStateMachine::_HasState(int) const { return g_hasState; }
bool CharStateMachine::_HasEvent(int, int) const { return false; }

int Character::RaiseEvent(int eventId, void* data) {
    ++g_raiseCalls;
    g_raiseEvent = eventId;
    g_raiseData = data;
    return g_raiseReturn;
}

void CharAnimator::ANIM_Set(int animId) {
    ++g_animCalls;
    g_animValue = animId;
}

int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    ++g_timerCalls;
    g_timerMs = durationMs;
    g_timerRepeat = repeat;
    g_timerEvent = eventId;
    g_timerUser = userData;
    return g_timerReturn;
}

unsigned int Random::GetRandom(int range, bool synced) {
    ++g_randomCalls;
    g_randomRange = range;
    g_randomSynced = synced;
    return g_randomReturn;
}

// ---- Checks --------------------------------------------------------------------------------------------------

int main() {
    // Zero-filled storage for the Character the state machine points at. Only m_spawnDelay is used.
    alignas(alignof(Character)) unsigned char storage[sizeof(Character)];
    std::memset(storage, 0, sizeof storage);
    Character* const ch = reinterpret_cast<Character*>(storage);

    CharStateMachine sm;
    sm.SetCharacter(ch);

    // SM_IsLifting: true for states 18 and 19 only.
    g_stateStub = 18;
    Check(sm.SM_IsLifting(), "IsLifting true for state 18");
    g_stateStub = 19;
    Check(sm.SM_IsLifting(), "IsLifting true for state 19");
    g_stateStub = 17;
    Check(!sm.SM_IsLifting(), "IsLifting false for state 17");
    g_stateStub = 20;
    Check(!sm.SM_IsLifting(), "IsLifting false for state 20");
    g_stateStub = -1;
    Check(!sm.SM_IsLifting(), "IsLifting false with no state");

    // SM_SetAnim: a queued animation wins once, then the argument is used again.
    ResetRecords();
    sm.SM_SetAnim(3);
    Check(g_animCalls == 1 && g_animValue == 3, "SetAnim without a queued animation passes the argument");
    ResetRecords();
    sm.SM_SetAnimState(7, true, false);  // queues 7 and goes to state 14
    Check(g_raiseCalls == 1 && g_raiseEvent == 29, "SetAnimState raises event 29 through _SetState");
    ResetRecords();
    sm.SM_SetAnim(3);
    Check(g_animCalls == 1 && g_animValue == 7, "SetAnim uses the queued animation 7");
    ResetRecords();
    sm.SM_SetAnim(4);
    Check(g_animCalls == 1 && g_animValue == 4, "SetAnim after the queue is consumed uses the argument");

    // SM_SetSpawnState with delayed false: state 1 at once, no timer.
    ResetRecords();
    int r = sm.SM_SetSpawnState(false, false);
    Check(g_raiseCalls == 1 && g_timerCalls == 0 && r == g_raiseReturn,
          "SetSpawnState(false) sets state 1 and returns the RaiseEvent result");

    // Random spawn delay between 10 and 30: the timer gets roll + low.
    ch->m_spawnDelay.X = 10;
    ch->m_spawnDelay.Y = 30;
    g_randomReturn = 5;
    ResetRecords();
    r = sm.SM_SetSpawnState(true, false);
    Check(g_randomCalls == 1 && g_randomRange == 20 && !g_randomSynced,
          "spawn timer draws over high - low = 20 from the ordinary stream");
    Check(g_timerCalls == 1 && g_timerMs == 15 && g_timerRepeat == 0 && g_timerEvent == 45 && g_timerUser == nullptr,
          "spawn timer starts for 15 ms with event 45");
    Check(r == g_timerReturn, "SetSpawnState returns the TMR_Start result");

    // Negative minimum clamps to 0; with a maximum of 0 the timer is 0, so the state is set at once.
    ch->m_spawnDelay.X = -3;
    ch->m_spawnDelay.Y = 0;
    ResetRecords();
    sm.SM_SetSpawnState(true, false);
    Check(ch->m_spawnDelay.X == 0, "negative spawn_delay is clamped and stored");
    Check(g_timerCalls == 0 && g_randomCalls == 0 && g_raiseCalls == 1 && g_raiseEvent == 29,
          "zero spawn delay sets the state at once");

    // Maximum below minimum: the maximum is raised to the minimum and that value is the timer.
    ch->m_spawnDelay.X = 10;
    ch->m_spawnDelay.Y = 4;
    ResetRecords();
    sm.SM_SetSpawnState(true, false);
    Check(ch->m_spawnDelay.Y == 10, "maximum below minimum is raised to the minimum");
    Check(g_timerCalls == 1 && g_timerMs == 10 && g_randomCalls == 0, "maximum below minimum uses the minimum as timer");

    // Equal bounds: the timer is the bound, with no random draw.
    ch->m_spawnDelay.X = 10;
    ch->m_spawnDelay.Y = 10;
    ResetRecords();
    sm.SM_SetSpawnState(true, false);
    Check(g_timerCalls == 1 && g_timerMs == 10 && g_randomCalls == 0, "equal bounds start the timer without a draw");

    // Roll of 0 gives the minimum as the timer.
    ch->m_spawnDelay.X = 10;
    ch->m_spawnDelay.Y = 20;
    g_randomReturn = 0;
    ResetRecords();
    sm.SM_SetSpawnState(true, false);
    Check(g_randomRange == 10 && g_timerMs == 10, "roll 0 gives the minimum");

    // SetCharacter with a null pointer at assert level 0 is silent and stores the pointer.
    sm.SetCharacter(nullptr);
    sm.SetCharacter(ch);
    Check(true, "SetCharacter(nullptr) at assert level 0 does not stop the process");

    sm.Flush();
    Check(true, "Flush runs on an empty map");

    std::printf("%d checks, %d failures\n", g_checks, g_failures);
    return g_failures == 0 ? 0 : 1;
}
