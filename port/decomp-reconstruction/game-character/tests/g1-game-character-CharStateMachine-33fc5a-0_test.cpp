// Checks the CharStateMachine queries that run without the engine: the state and event lookups over the state map,
// SM_GetState, the SM_Is* predicates over the current state, the status flag bits and the skill check.
// The constructor (0x3c1b58) and the virtual destructor (0x3c2a44) are defined in other batches; the test defines
// them as shims so a CharStateMachine can be built and destroyed. The test reaches the private members through the
// same macro as the other game-character tests; it is test-only.
#include <cstdint>
#include <cstdio>
#include <map>

#define private public
#include "dh2/CharStateMachine.hpp"
#undef private

// Shims for the out-of-line members that are not in this batch. The tested members read only the fields the test sets.
CharStateMachine::CharStateMachine() : m_character(nullptr), m_curState(nullptr), m_stateFlags(0), m_skillId(0) {}
CharStateMachine::~CharStateMachine() {}

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

// Adds an empty state with the given id to the state map.
static void AddState(CharStateMachine& sm, int id) {
    CharStateMachine::StateInfo info{};
    info.m_id = id;
    sm.m_states[id] = info;
}

// Adds an event with the given id to the event map of the state with the given id.
static void AddEvent(CharStateMachine& sm, int stateId, int eventId) {
    CharStateMachine::Event ev{};
    ev.m_nextState = -1;
    sm.m_states[stateId].m_events[eventId] = ev;
}

int main() {
    // _HasState: membership in the state map.
    {
        CharStateMachine sm;
        CHECK(!sm._HasState(3));  // empty map
        AddState(sm, 3);
        AddState(sm, 5);
        AddState(sm, 9);
        CHECK(sm._HasState(3));
        CHECK(sm._HasState(5));
        CHECK(sm._HasState(9));
        CHECK(!sm._HasState(4));
        CHECK(!sm._HasState(10));
        CHECK(!sm._HasState(-1));
    }

    // _HasEvent: the state must exist, and its event map must hold the event id.
    {
        CharStateMachine sm;
        CHECK(!sm._HasEvent(5, 7));  // no states at all
        AddState(sm, 3);             // state with no events
        AddState(sm, 5);
        AddEvent(sm, 5, 7);
        AddEvent(sm, 5, 9);
        CHECK(sm._HasEvent(5, 7));
        CHECK(sm._HasEvent(5, 9));
        CHECK(!sm._HasEvent(5, 8));  // state exists, event does not
        CHECK(!sm._HasEvent(4, 7));  // no such state
        CHECK(!sm._HasEvent(3, 7));  // state exists with an empty event map
    }

    // SM_GetState: -1 with no current state, otherwise the id of the current state.
    {
        CharStateMachine sm;
        sm.m_curState = nullptr;
        CHECK(sm.SM_GetState() == -1);
        CharStateMachine::StateInfo cur{};
        cur.m_id = 6;
        sm.m_curState = &cur;
        CHECK(sm.SM_GetState() == 6);
    }

    // Predicates over the current state. Each block sets the current state id and checks the queries.
    {
        CharStateMachine sm;
        CharStateMachine::StateInfo cur{};
        auto at = [&](int id) {
            cur.m_id = id;
            sm.m_curState = &cur;
        };

        sm.m_curState = nullptr;
        CHECK(!sm.SM_IsInLimbus());
        CHECK(!sm.SM_IsAwaitingToRevive());  // no state (-1) is not awaiting
        CHECK(!sm.SM_IsIncapacitated());
        CHECK(!sm.SM_IsIdle(false));

        at(0);
        CHECK(sm.SM_IsInLimbus());
        CHECK(sm.SM_IsAwaitingToRevive());
        CHECK(!sm.SM_IsSpawning());

        at(1);
        CHECK(sm.SM_IsSpawning());
        CHECK(!sm.SM_IsInLimbus());

        at(16);
        CHECK(sm.SM_IsAwaitingToRevive());
        CHECK(!sm.SM_IsAwaitingToSpawn());

        at(17);
        CHECK(sm.SM_IsInPreSpawn());
        CHECK(sm.SM_IsAwaitingToSpawn());
        CHECK(sm.SM_IsAwaitingToRevive());

        at(3);
        CHECK(sm.SM_IsIdle(true));
        CHECK(sm.SM_IsIdle(false));

        at(13);  // interacting also counts as idle, regardless of the flag
        CHECK(sm.SM_IsIdle(true));
        CHECK(sm.SM_IsInteracting());

        at(18);  // idle only when the flag is clear
        CHECK(!sm.SM_IsIdle(true));
        CHECK(sm.SM_IsIdle(false));

        at(4);
        CHECK(sm.SM_IsMoving(true));
        CHECK(sm.SM_IsMoving(false));

        at(19);  // moving only when the flag is clear
        CHECK(!sm.SM_IsMoving(true));
        CHECK(sm.SM_IsMoving(false));

        at(5);
        CHECK(sm.SM_IsAttacking());
        CHECK(!sm.SM_IsCasting());

        sm.m_skillId = 42;
        at(6);
        CHECK(sm.SM_IsUsingSkill());
        CHECK(sm.SM_IsUsingSkill(42u));
        CHECK(!sm.SM_IsUsingSkill(43u));
        at(7);
        CHECK(!sm.SM_IsUsingSkill(42u));  // skill id matches but the state is not using a skill
        CHECK(sm.SM_IsCasting());

        at(8);
        CHECK(sm.SM_IsScared(false));
        CHECK(!sm.SM_IsStunned(false));
        at(9);
        CHECK(sm.SM_IsStunned(false));
        CHECK(!sm.SM_IsScared(false));
        at(10);
        CHECK(sm.SM_IsKnockedBack());

        for (int id = 8; id <= 11; ++id) {
            at(id);
            CHECK(sm.SM_IsIncapacitated());
        }
        at(7);
        CHECK(!sm.SM_IsIncapacitated());
        at(12);
        CHECK(!sm.SM_IsIncapacitated());
        CHECK(sm.SM_IsDead());
        at(2);
        CHECK(!sm.SM_IsDead());
    }

    // Status flags: the flag variants read m_statusFlags, not the state.
    {
        CharStateMachine sm;
        CharStateMachine::StateInfo cur{};
        cur.m_id = 2;
        sm.m_curState = &cur;

        sm.m_statusFlags = 0;
        CHECK(!sm.SM_IsScared(true));
        CHECK(!sm.SM_IsStunned(true));

        sm.m_statusFlags = 0x4;  // bit 2: scared
        CHECK(sm.SM_IsScared(true));
        CHECK(!sm.SM_IsStunned(true));
        CHECK(!sm.SM_IsScared(false));  // state 2 is not the scared state

        sm.m_statusFlags = 0x2;  // bit 1: stunned
        CHECK(sm.SM_IsStunned(true));
        CHECK(!sm.SM_IsScared(true));

        sm.m_statusFlags = 0x6;
        CHECK(sm.SM_IsScared(true));
        CHECK(sm.SM_IsStunned(true));
    }

    if (failures == 0) {
        std::printf("CharStateMachine tests: all passed\n");
        return 0;
    }
    std::printf("CharStateMachine tests: %d failure(s)\n", failures);
    return 1;
}
