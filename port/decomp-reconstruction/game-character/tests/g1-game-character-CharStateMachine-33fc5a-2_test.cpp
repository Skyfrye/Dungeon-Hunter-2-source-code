// Checks the CharStateMachine transitions that run without the engine. SM_SetAttackState sends the attack event (50004)
// to _SetState when immediate and to RaiseStateEvent otherwise. SM_RegisterEvent sets the handler and the next state of an
// event in a registered state, creates the event when it is missing, and leaves the map alone for an unknown state.
// The engine calls the bodies make are stubs here that record their arguments. The row-based transitions need a Character
// and Structs::CharAnim rows, so they are not covered by this test.
#include <cstdint>
#include <cstdio>
#include <map>
#include <string>
#include <vector>

// Include the engine headers first: pydata's deps/stream_reader.hpp clashes with core-platform's MemoryHintState.
#include "dh2/global/runtime_support.hpp"
#include "core-platform/deps/application.hpp"

// The test reaches the private members of CharStateMachine (m_states) through the same macro as the other game-character
// tests. It is test-only.
#define private public
#include "dh2/Character.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#undef private

// ---- stubs for the out-of-line members the bodies reference (not under test) ----

struct EngineCall {
    int kind;     // 0 = _SetState, 1 = RaiseStateEvent
    int stateId;  // -1 for RaiseStateEvent
    int eventId;
    void* data;
};

static std::vector<EngineCall> g_calls;

int CharStateMachine::_SetState(int stateId, int eventId, void* data) {
    g_calls.push_back(EngineCall{0, stateId, eventId, data});
    return 7;
}

int CharStateMachine::RaiseStateEvent(int eventId, void* data) {
    g_calls.push_back(EngineCall{1, -1, eventId, data});
    return 9;
}

int CharStateMachine::SM_SetRevivingState(void*, bool) { return 0; }

CharStateMachine::CharStateMachine() : m_character(nullptr), m_curState(nullptr), m_stateFlags(0), m_skillId(0) {}
CharStateMachine::~CharStateMachine() {}

int Character::GetCharAnimTableId() const { return -1; }
bool Character::IsBoss() const { return false; }
int Character::GetAnimStance() const { return 0; }
const void* Character::GetCharSkill(int) const { return nullptr; }
bool Character::CSM_Spawn(int, void*, int, int&) { return false; }

int CharTimers::TMR_Start(unsigned int, int, int, void*) { return 0; }

int PyDataConstants::getConstant(const char*, const char*) const { return 0; }
PyDataConstants* ApplicationGetPyDataConstants() { return nullptr; }
int ApplicationGetDt() { return 0; }
void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

std::uint8_t* Arrays::CharAnimTable::members = nullptr;
std::uint32_t Arrays::CharAnimTable::size = 0;

// ---- checks ----

static int failures = 0;
#define CHECK(c)                                                              \
    do {                                                                      \
        if (!(c)) {                                                           \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);          \
            ++failures;                                                       \
        }                                                                     \
    } while (0)

int main() {
    // SM_SetAttackState: immediate goes to _SetState(5, 50004, data), otherwise to RaiseStateEvent(50004, data).
    {
        CharStateMachine sm;
        int token = 0;
        g_calls.clear();
        CHECK(sm.SM_SetAttackState(&token, true) == 7);
        CHECK(g_calls.size() == 1);
        if (g_calls.size() == 1) {
            CHECK(g_calls[0].kind == 0);
            CHECK(g_calls[0].stateId == 5);
            CHECK(g_calls[0].eventId == 50004);
            CHECK(g_calls[0].data == &token);
        }
        g_calls.clear();
        CHECK(sm.SM_SetAttackState(&token, false) == 9);
        CHECK(g_calls.size() == 1);
        if (g_calls.size() == 1) {
            CHECK(g_calls[0].kind == 1);
            CHECK(g_calls[0].eventId == 50004);
            CHECK(g_calls[0].data == &token);
        }
    }

    // SM_RegisterEvent: an unknown state changes nothing.
    {
        CharStateMachine sm;
        sm.SM_RegisterEvent(9, 3, 4, &Character::CSM_Spawn);
        CHECK(sm.m_states.empty());
    }

    // SM_RegisterEvent: a registered state gets the event with its handler and next state.
    {
        CharStateMachine sm;
        CharStateMachine::StateInfo info{};
        info.m_id = 5;
        sm.m_states[5] = info;
        sm.m_states[6] = info;

        sm.SM_RegisterEvent(5, 7, 12, &Character::CSM_Spawn);
        CHECK(sm.m_states.at(5).m_events.size() == 1);
        const auto& ev = sm.m_states.at(5).m_events.at(7);
        CHECK(ev.m_handler == &Character::CSM_Spawn);
        CHECK(ev.m_nextState == 12);
        CHECK(sm.m_states.at(6).m_events.empty());  // other states untouched

        // The same event again replaces the handler and the next state; no second entry appears.
        sm.SM_RegisterEvent(5, 7, 20, nullptr);
        CHECK(sm.m_states.at(5).m_events.size() == 1);
        CHECK(sm.m_states.at(5).m_events.at(7).m_nextState == 20);
        CHECK(sm.m_states.at(5).m_events.at(7).m_handler == nullptr);

        // A second event sits beside the first, in key order.
        sm.SM_RegisterEvent(5, 2, -1, &Character::CSM_Spawn);
        CHECK(sm.m_states.at(5).m_events.size() == 2);
        CHECK(sm.m_states.at(5).m_events.at(2).m_nextState == -1);
        CHECK(sm.m_states.at(5).m_events.at(2).m_handler == &Character::CSM_Spawn);
        CHECK(sm.m_states.at(5).m_events.at(7).m_nextState == 20);
        CHECK(sm.m_states.at(5).m_events.begin()->first == 2);
    }

    if (failures == 0) {
        std::printf("ok\n");
    }
    return failures == 0 ? 0 : 1;
}
