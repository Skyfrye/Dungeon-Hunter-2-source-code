// Test for batch r2a-game-character-CharStateMachine-33fc5a-0.
//
// The batch bodies are in g1-game-character-CharStateMachine-33fc5a-1.cpp (_SetState, RaiseStateEvent, the revive wrappers)
// and g1-game-character-CharStateMachine-33fc5a-2.cpp (the SM_Set* transitions, Update, RegisterState). They are linked
// with g1-game-character-CharStateMachine-33fc5a-0.cpp for the state queries they call. Everything else they reference
// (Character, CharAnimator, CharTimers, Random, DebugSwitches, PhysicalObject, the CharState factories, the pydata
// accessors and the profiling calls) is stubbed below. Each stub records what it was given.
//
// Character is never constructed: zero-filled storage stands in for it, and only its public fields are written. The
// CharAnim and Skill records are zero-filled too. CharState is subclassed (FakeState) as an interface double, because the
// slots are the thing under test. Paths that would make a virtual call on the zero-filled Character (IsPlayer, reached
// with a combat-text cooldown of 0 or less) are not run.

#include "dh2/global/runtime_support.hpp"    // PushProfilingContext / PopProfilingContext (first: see -2.cpp)
#include "core-platform/deps/application.hpp"  // ApplicationGetDt
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/global/charai_ai.hpp"          // ApplicationGetPyDataConstants
#include "pydata-accessors/structs_records.hpp"  // Structs::CharAnim, Structs::Skill
#include "pydata-accessors/w7_arrays_02.hpp"    // Arrays::CharAnimTable
#include "pydata-accessors/w7_pydata12.hpp"     // PyDataConstants

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAnimator.hpp"
#include "dh2/CharState.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/GetNewState.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

// ---- Recorded stub state ------------------------------------------------------------------------------------------

namespace {

int g_checks = 0;
int g_failures = 0;

void Check(bool cond, const char* what) {
    ++g_checks;
    if (!cond) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

int g_dt = 0;                         // ApplicationGetDt
int g_constBits = 0;                  // PyDataConstants::getConstant (the AnimStancedAnim bits)
int g_stance = 100;                   // Character::GetAnimStance
int g_animTableId = 2;                // Character::GetCharAnimTableId: the row the checks use
bool g_isBoss = false;                // Character::IsBoss
const void* g_skillRecord = nullptr;  // Character::GetCharSkill
int g_profilePush = 0;
int g_profilePop = 0;

int g_raiseCalls = 0;                 // Character::RaiseEvent
int g_raiseEvent = -1;
void* g_raiseData = nullptr;
int g_raiseReturn = 77;

int g_timerCalls = 0;                 // CharTimers::TMR_Start
unsigned int g_timerMs = 0;
int g_timerRepeat = -1;
int g_timerEvent = -1;
void* g_timerUser = nullptr;

int g_probeLoads = 0;                 // DebugSwitches::load and GetSwitch
int g_probeGets = 0;
std::string g_probeName;

int g_pinCalls = 0;                   // PhysicalObject::pin

int g_handlerCalls = 0;               // Character::CSM_Attack, the handler the event checks register
int g_handlerStateSeen = -1;
int g_handlerNext = -1;               // when >= 0, the handler writes this into nextState
bool g_handlerResult = true;

// Arrays::CharAnimTable: four Structs::CharAnim records in zero-filled storage. Row 2 is the one the checks read.
alignas(16) unsigned char g_rows[4 * sizeof(Structs::CharAnim)];
std::int32_t g_castList[3] = {10, 20, 30};
std::int32_t g_interactList[2] = {5, 6};
alignas(16) unsigned char g_skillBuf[sizeof(Structs::Skill)];
alignas(16) unsigned char g_physDummy[64];
alignas(alignof(Character)) unsigned char g_charStorage[sizeof(Character)];

Structs::CharAnim* RowAt(int id) {
    return reinterpret_cast<Structs::CharAnim*>(g_rows + id * sizeof(Structs::CharAnim));
}

Character* Ch() { return reinterpret_cast<Character*>(g_charStorage); }

// CharState as an interface double. Each slot records its arguments.
struct FakeState : CharState {
    int initCalls = 0;
    int focusCalls = 0;
    int blurCalls = 0;
    int updateCalls = 0;
    int eventCalls = 0;
    int lastId = -1;
    int lastPrev = -2;
    int lastNext = -2;
    int lastEvent = -2;
    Character* lastChar = nullptr;
    CharStateMachine* lastSm = nullptr;
    void* lastData = nullptr;

    void OnInit(int stateId, Character* character, CharStateMachine* sm) override {
        ++initCalls;
        lastId = stateId;
        lastChar = character;
        lastSm = sm;
    }
    void OnFocus(int stateId, Character* character, CharStateMachine* sm, int prevState, int eventId,
                 void* data) override {
        ++focusCalls;
        lastId = stateId;
        lastChar = character;
        lastSm = sm;
        lastPrev = prevState;
        lastEvent = eventId;
        lastData = data;
    }
    void OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) override {
        ++blurCalls;
        lastId = stateId;
        lastChar = character;
        lastSm = sm;
        lastNext = nextState;
    }
    void OnUpdate(int stateId, Character* character, CharStateMachine* sm) override {
        ++updateCalls;
        lastId = stateId;
        lastChar = character;
        lastSm = sm;
    }
    void OnEvent(int stateId, Character* character, CharStateMachine* sm, int eventId, void* data) override {
        ++eventCalls;
        lastId = stateId;
        lastChar = character;
        lastSm = sm;
        lastEvent = eventId;
        lastData = data;
    }
};

// g_factoryStates[i] is what GetNewState for the i-th g_stateList entry returns (entry i has id i).
FakeState g_factoryStates[20];

void ResetFakeStates() {
    for (FakeState& s : g_factoryStates) {
        s = FakeState();
    }
}

void ResetRecords() {
    g_raiseCalls = 0;
    g_raiseEvent = -1;
    g_raiseData = nullptr;
    g_timerCalls = 0;
    g_timerMs = 0;
    g_timerRepeat = -1;
    g_timerEvent = -1;
    g_timerUser = nullptr;
    g_probeLoads = 0;
    g_probeGets = 0;
    g_probeName.clear();
    g_pinCalls = 0;
    g_handlerCalls = 0;
    g_handlerStateSeen = -1;
    g_handlerNext = -1;
    g_handlerResult = true;
    g_profilePush = 0;
    g_profilePop = 0;
    ResetFakeStates();
}

}  // namespace

// ---- Stubs for symbols defined by other batches and classes (only the linker needs them) ----------------------------

int gAssertLevel = 0;

namespace Arrays {
std::uint8_t* CharAnimTable::members = nullptr;
std::uint32_t CharAnimTable::size = 0;
}  // namespace Arrays

int ApplicationGetDt() { return g_dt; }
void PushProfilingContext(const char*) { ++g_profilePush; }
void PopProfilingContext(const char*) { ++g_profilePop; }

PyDataConstants* ApplicationGetPyDataConstants() {
    static unsigned char dummy[16];
    return reinterpret_cast<PyDataConstants*>(dummy);
}
int PyDataConstants::getConstant(const char*, const char*) const { return g_constBits; }

int Character::GetAnimStance() const { return g_stance; }
bool Character::IsBoss() const { return g_isBoss; }
int Character::GetCharAnimTableId() const { return g_animTableId; }
const void* Character::GetCharSkill(int) const { return g_skillRecord; }
int Character::RaiseEvent(int eventId, void* data) {
    ++g_raiseCalls;
    g_raiseEvent = eventId;
    g_raiseData = data;
    return g_raiseReturn;
}
bool Character::CSM_Attack(int, void*, int stateId, int& nextState) {
    ++g_handlerCalls;
    g_handlerStateSeen = stateId;
    if (g_handlerNext >= 0) {
        nextState = g_handlerNext;
    }
    return g_handlerResult;
}

void CharAnimator::ANIM_Set(int) {}

int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    ++g_timerCalls;
    g_timerMs = durationMs;
    g_timerRepeat = repeat;
    g_timerEvent = eventId;
    g_timerUser = userData;
    return 5;
}

unsigned int Random::GetRandom(int, bool) { return 0; }

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() { ++g_probeLoads; }
bool DebugSwitches::GetSwitch(const std::string& name) {
    ++g_probeGets;
    g_probeName = name;
    return false;
}
DebugSwitches DebugSwitches::s_inst;

void PhysicalObject::pin() { ++g_pinCalls; }

CharState::~CharState() {}

template <> CharState* GetNewState<CSLimbus>() { return &g_factoryStates[0]; }
template <> CharState* GetNewState<CSSpawn>() { return &g_factoryStates[1]; }
template <> CharState* GetNewState<CSDespawn>() { return &g_factoryStates[2]; }
template <> CharState* GetNewState<CSIdle>() { return &g_factoryStates[3]; }
template <> CharState* GetNewState<CSMove>() { return &g_factoryStates[4]; }
template <> CharState* GetNewState<CSAttack>() { return &g_factoryStates[5]; }
template <> CharState* GetNewState<CSSkill>() { return &g_factoryStates[6]; }
template <> CharState* GetNewState<CSCast>() { return &g_factoryStates[7]; }
template <> CharState* GetNewState<CSScared>() { return &g_factoryStates[8]; }
template <> CharState* GetNewState<CSStunned>() { return &g_factoryStates[9]; }
template <> CharState* GetNewState<CSKnockedBack>() { return &g_factoryStates[10]; }
template <> CharState* GetNewState<CSInjured>() { return &g_factoryStates[11]; }
template <> CharState* GetNewState<CSDead>() { return &g_factoryStates[12]; }
template <> CharState* GetNewState<CSInteract>() { return &g_factoryStates[13]; }
template <> CharState* GetNewState<CSAnim>() { return &g_factoryStates[14]; }
template <> CharState* GetNewState<CSReviving>() { return &g_factoryStates[15]; }
template <> CharState* GetNewState<CSRevived>() { return &g_factoryStates[16]; }
template <> CharState* GetNewState<CSPreSpawn>() { return &g_factoryStates[17]; }
template <> CharState* GetNewState<CSLiftingIdle>() { return &g_factoryStates[18]; }
template <> CharState* GetNewState<CSLiftingMove>() { return &g_factoryStates[19]; }

// ---- Checks --------------------------------------------------------------------------------------------------------

int main() {
    std::memset(g_rows, 0, sizeof g_rows);
    std::memset(g_skillBuf, 0, sizeof g_skillBuf);
    std::memset(g_physDummy, 0, sizeof g_physDummy);
    std::memset(g_charStorage, 0, sizeof g_charStorage);

    Arrays::CharAnimTable::members = g_rows;
    Arrays::CharAnimTable::size = 4;
    RowAt(2)->DeadlyGreatKB = 14;     // dead, alternate: +0x10
    RowAt(2)->Despawn = 11;     // dead, normal: +0x14
    RowAt(2)->DespawnGreatKB = 12;     // dead, alternate dead: +0x18
    RowAt(2)->Died = 13;     // dead, normal base: +0x1c
    RowAt(2)->GreatKnockedBack = 77;     // knockback strong: +0x24
    RowAt(2)->InteractSize = 2;     // interact list count: +0x40
    RowAt(2)->Interact = g_interactList;  // interact list: +0x44
    RowAt(2)->KnockedBack = 55;    // knockback weak: +0x48
    RowAt(2)->Scared = 66;    // scare: +0x7c
    RowAt(2)->SpellsSize = 3;     // cast list count: +0x84
    RowAt(2)->Spells = g_castList;      // cast list: +0x88
    RowAt(2)->Stunned = 88;    // stun: +0x8c
    reinterpret_cast<Structs::Skill*>(g_skillBuf)->Anim = 42;  // skill anim: +0x04
    g_skillRecord = g_skillBuf;

    Character* const ch = Ch();
    ch->m_combatTextCooldown = 0.0f;
    ch->m_physicalObject = nullptr;

    CharStateMachine sm;
    sm.SetCharacter(ch);
    for (int id : {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}) {
        sm.RegisterState(id);
    }

    // ---- RegisterState -------------------------------------------------------------------------------------------
    // A fresh machine for the factory checks: the loop above registered the states that the later checks use.
    CharStateMachine sm2;
    sm2.SetCharacter(ch);
    ResetRecords();
    sm2.RegisterState(7);  // CSCast
    Check(sm2._HasState(7), "RegisterState registers a known state id");
    Check(g_factoryStates[7].initCalls == 1 && g_factoryStates[7].lastId == 7 && g_factoryStates[7].lastChar == ch &&
              g_factoryStates[7].lastSm == &sm2,
          "OnInit receives the state id, the character and the machine");
    Check(sm2._GetState(7)->m_id == 7 && sm2._GetState(7)->m_state == &g_factoryStates[7],
          "the StateInfo holds the id and the factory state");
    Check(g_probeLoads == 1 && g_probeGets == 1 && g_probeName == "isTracingCharSM",
          "RegisterState runs the isTracingCharSM probe once");
    ResetRecords();
    sm2.RegisterState(7);
    Check(g_factoryStates[7].initCalls == 0 && g_probeGets == 0, "registering the same id again does nothing");
    sm2.RegisterState(99);
    Check(!sm2._HasState(99) && g_probeGets == 0, "an id with no table entry is not registered");

    // ---- _SetState -----------------------------------------------------------------------------------------------
    ResetRecords();
    sm._SetState(3, -1, nullptr);  // no current state: no exit, enter with previous id -1
    Check(g_factoryStates[3].focusCalls == 1 && g_factoryStates[3].lastPrev == -1 && g_factoryStates[3].lastEvent == -1,
          "enter with no previous state passes previous id -1");
    Check(g_raiseEvent == 29 && reinterpret_cast<std::intptr_t>(g_raiseData) == -1,
          "_SetState raises event 29 with the previous id");
    Check(sm.m_curState != nullptr && sm.m_curState->m_id == 3, "the entered state is current");

    ResetRecords();
    sm.m_stateTime = 40;
    int dataMarker = 0;
    int r = sm._SetState(4, 55, &dataMarker);
    Check(g_factoryStates[3].blurCalls == 1 && g_factoryStates[3].lastNext == 4,
          "the old state gets OnBlur with the new state id");
    Check(g_factoryStates[4].focusCalls == 1 && g_factoryStates[4].lastPrev == 3 &&
              g_factoryStates[4].lastEvent == 55 && g_factoryStates[4].lastData == &dataMarker,
          "the new state gets OnFocus with the previous id, the event and the data");
    Check(sm.m_stateTime == 0, "a new state id restarts the state timer");
    Check(reinterpret_cast<std::intptr_t>(g_raiseData) == 3 && r == g_raiseReturn,
          "the transition returns RaiseEvent(29) with the previous id 3");

    ResetRecords();
    sm.m_stateTime = 40;
    sm._SetState(4, 56, nullptr);
    Check(sm.m_stateTime == 40, "the same state id keeps the state timer");

    ResetRecords();
    r = sm._SetState(99, 1, nullptr);
    Check(sm.m_curState == nullptr && r == g_raiseReturn,
          "an unregistered state clears the current state and still raises event 29");
    sm._SetState(4, -1, nullptr);  // current state 4 for the following checks

    // ---- RaiseStateEvent -----------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_curState = nullptr;
    sm.m_statusFlags = 0x7u;
    sm.RaiseStateEvent(0x2A, nullptr);
    Check(sm.m_statusFlags == 0x6u, "event 0x2A clears status bit 1");
    sm.RaiseStateEvent(0x2B, nullptr);
    Check(sm.m_statusFlags == 0x4u, "event 0x2B clears status bit 2");
    sm.RaiseStateEvent(0x2C, nullptr);
    Check(sm.m_statusFlags == 0x0u, "event 0x2C clears status bit 4");

    sm._SetState(3, -1, nullptr);  // current state 3
    ResetRecords();
    int ret = sm.RaiseStateEvent(0x40, nullptr);
    Check(ret == 0 && g_factoryStates[3].eventCalls == 1 && g_factoryStates[3].lastEvent == 0x40,
          "OnEvent runs, then a missing event gives 0");
    Check(sm.m_curState != nullptr && sm.m_curState->m_id == 3, "a missing event does not transition");

    sm.SM_RegisterEvent(3, 0x40, 4, &Character::CSM_Attack);
    ResetRecords();
    ret = sm.RaiseStateEvent(0x40, &dataMarker);
    Check(g_handlerCalls == 1 && g_handlerStateSeen == 3, "the registered handler runs with the current state id");
    Check(g_probeLoads == 1 && g_probeGets == 1, "the probe runs when the event is registered");
    Check(sm.m_curState != nullptr && sm.m_curState->m_id == 4 && ret == g_raiseReturn,
          "a true handler moves to the next state through _SetState");

    sm.SM_RegisterEvent(4, 0x41, 4, &Character::CSM_Attack);
    ResetRecords();
    g_handlerNext = 3;
    ret = sm.RaiseStateEvent(0x41, nullptr);
    Check(sm.m_curState != nullptr && sm.m_curState->m_id == 3,
          "the handler can change the next state, which is passed by reference");

    ResetRecords();
    g_handlerResult = false;
    ret = sm.RaiseStateEvent(0x40, nullptr);
    Check(ret == 0 && sm.m_curState != nullptr && sm.m_curState->m_id == 3,
          "a handler that returns false gives 0 and does not transition");

    ResetRecords();
    ch->m_physicalObject = reinterpret_cast<PhysicalObject*>(g_physDummy);
    sm.RaiseStateEvent(0x30, nullptr);  // state 3 is idle
    Check(g_pinCalls == 1, "event 0x30 pins the physical object of an idle character");
    ResetRecords();
    ch->m_physicalObject = nullptr;
    sm.RaiseStateEvent(0x30, nullptr);
    Check(g_pinCalls == 0, "event 0x30 with no physical object pins nothing");

    // ---- Update --------------------------------------------------------------------------------------------------
    sm._SetState(4, -1, nullptr);  // current state 4
    ResetRecords();
    g_dt = 16;
    sm.m_statusFlags = 0u;
    sm.m_stateTime = 100;
    sm.Update();
    Check(sm.m_stateTime == 116, "Update adds the frame time to the state time");
    Check(g_factoryStates[4].updateCalls == 1 && g_factoryStates[4].lastId == 4 && g_factoryStates[4].lastChar == ch &&
              g_factoryStates[4].lastSm == &sm,
          "Update runs OnUpdate on the current state");
    Check(g_profilePush == 1 && g_profilePop == 1, "Update is bracketed by the profiling context");

    ResetRecords();
    sm.m_statusFlags = 2u;     // stunned, state is not 9: the stun is re-applied
    sm.m_stateFlags = 0u;
    sm.m_pendingAnim = -1;
    sm.Update();
    Check(sm.m_pendingAnim == 88, "Update re-applies the stun anim (row +0x8c)");
    Check(g_timerCalls == 0, "a stun that is already flagged starts no timer");

    ResetRecords();
    sm.m_statusFlags = 4u;     // scared, state is not 8: the scare is re-applied
    sm.m_stateFlags = 0x400u;  // scare flag: kept
    sm.m_pendingAnim = -1;
    sm.Update();
    Check(sm.m_pendingAnim == 66, "Update re-applies the scare anim (row +0x7c)");
    Check((sm.m_stateFlags & 0x400u) != 0, "the scare flag stays set");

    // ---- SM_SetStunState and SM_SetScareState (timers) -----------------------------------------------------------
    ResetRecords();
    sm.m_statusFlags = 0u;
    sm.m_stateFlags = 0u;
    sm.m_pendingAnim = -1;
    int stunRet = sm.SM_SetStunState(500u, true, nullptr, true);
    Check(g_timerCalls == 1 && g_timerMs == 500u && g_timerRepeat == 0 && g_timerEvent == 43 && g_timerUser == nullptr,
          "stun starts a 500 ms timer with event 43 when not yet stunned");
    Check((sm.m_statusFlags & 2u) != 0 && (sm.m_stateFlags & 0x800u) != 0,
          "stun sets the stunned status bit and the stun state flag");
    Check(sm.m_pendingAnim == 88, "stun sets the stun anim");
    Check(stunRet == g_raiseReturn, "an immediate stun returns the _SetState result");

    ResetRecords();
    sm.m_statusFlags = 0u;
    sm.m_stateFlags = 0u;
    sm.m_pendingAnim = -1;
    sm.SM_SetScareState(300u, false, nullptr, false);
    Check(g_timerCalls == 1 && g_timerMs == 300u && g_timerEvent == 44,
          "scare starts a 300 ms timer with event 44 when not yet scared");
    Check((sm.m_statusFlags & 4u) != 0 && (sm.m_stateFlags & 0x400u) == 0,
          "scare sets the scared status bit, and the scare flag only when asked");
    Check(sm.m_pendingAnim == 66, "scare sets the scare anim");

    // ---- SM_SetKnockBackState ------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_statusFlags = 0xFFu;
    sm.m_pendingAnim = -1;
    int kb = sm.SM_SetKnockBackState(true, nullptr, true);
    Check(sm.m_pendingAnim == 77 && sm.m_statusFlags == 0x18u,
          "strong knockback sets the anim (row +0x24) and the status word to 0x18");
    Check(kb == g_raiseReturn, "an immediate knockback returns the _SetState result");

    ResetRecords();
    sm.m_statusFlags = 0xFFu;
    sm.m_pendingAnim = -1;
    sm.SM_SetKnockBackState(false, nullptr, true);
    Check(sm.m_pendingAnim == 55 && sm.m_statusFlags == 0xE7u,
          "weak knockback sets the anim (row +0x48) and clears bits 0x08 and 0x10");

    g_isBoss = true;
    ResetRecords();
    sm.m_pendingAnim = -1;
    int kbBoss = sm.SM_SetKnockBackState(true, nullptr, true);
    Check(kbBoss == 1 && sm.m_pendingAnim == -1, "a boss is not knocked back, and 1 is returned");
    g_isBoss = false;

    // ---- SM_SetDeadState -----------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_deadAltAnim = false;
    sm.m_pendingAnim = -1;
    sm.SM_SetDeadState(true, nullptr, true);
    Check(sm.m_pendingAnim == 13 && sm.m_deadAnim == 11 && sm.m_deadFlag && !sm.m_deadAltAnim,
          "dead: normal anims (+0x1c for the anim, +0x14 for the dead anim), flag set, alternate cleared");

    ResetRecords();
    sm.m_deadAltAnim = true;
    sm.m_pendingAnim = -1;
    sm.SM_SetDeadState(false, nullptr, true);
    Check(sm.m_pendingAnim == 14 && sm.m_deadAnim == 12 && !sm.m_deadFlag && !sm.m_deadAltAnim,
          "dead: alternate anims (+0x10 for the anim, +0x18 for the dead anim)");

    g_constBits = 0x8000;
    ResetRecords();
    sm.m_deadAltAnim = false;
    sm.m_pendingAnim = -1;
    sm.SM_SetDeadState(true, nullptr, true);
    Check(sm.m_pendingAnim == g_stance + 13, "stance bit 0x8000 adds GetAnimStance to the anim");
    g_constBits = 0;

    // ---- revive wrappers ----------------------------------------------------------------------------------------
    ResetRecords();
    int rv = sm.SM_SetRevivedState(nullptr, true);
    Check(rv == g_raiseReturn && g_factoryStates[16].focusCalls == 1 && g_factoryStates[16].lastEvent == 50009,
          "immediate revived state enters state 16 with event 50009");
    ResetRecords();
    rv = sm.SM_SetRevivingState(nullptr, true);
    Check(rv == g_raiseReturn && g_factoryStates[15].focusCalls == 1 && g_factoryStates[15].lastEvent == 50007,
          "immediate reviving state enters state 15 with event 50007");

    // ---- SM_SetCastState -----------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_pendingAnim = -1;
    int cast = sm.SM_SetCastState(1u, nullptr, true);
    Check(sm.m_pendingAnim == 20 && cast == g_raiseReturn, "cast index 1 uses the list entry 20 (row +0x88)");

    ResetRecords();
    sm.m_pendingAnim = -1;
    sm.SM_SetCastState(3u, nullptr, true);
    Check(sm.m_pendingAnim == -1 && g_raiseCalls == 0,
          "a cast index past the count changes nothing (PARTIAL: the original returns the row address)");

    // ---- SM_SetInteractState -------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_pendingAnim = -1;
    int ia = sm.SM_SetInteractState(8, true, &dataMarker, true);
    Check(sm.m_interactKind == 8 && sm.m_interactFlag && sm.m_interactTarget == &dataMarker,
          "interact kind 8 stores the kind, flag and target");
    Check(ia == g_raiseReturn && g_factoryStates[5].focusCalls == 1, "interact kind 8 runs SM_SetAttackState (state 5)");

    ResetRecords();
    sm.m_pendingAnim = -1;
    sm.SM_SetInteractState(1, false, nullptr, true);
    Check(sm.m_pendingAnim == 6 && sm.m_interactKind == 1, "interact kind 1 uses the list entry 6 (row +0x44)");

    ResetRecords();
    sm.SM_SetInteractState(2, false, nullptr, true);
    Check(sm.m_pendingAnim == 6 && sm.m_interactKind == 1,
          "interact kind 2 is past the count: nothing changes (PARTIAL: the original returns the row address)");

    // ---- SM_SetSkillState ----------------------------------------------------------------------------------------
    ResetRecords();
    sm.m_pendingAnim = -1;
    int sk = sm.SM_SetSkillState(0u, true, nullptr, true);
    Check(sm.m_pendingAnim == 42 && sm.m_skillId == 0 && sm.m_skillFlag && sk == g_raiseReturn,
          "skill anim is the record word at +0x04 (42)");
    g_constBits = 0x200000;
    sm.SM_SetSkillState(0u, false, nullptr, true);
    Check(sm.m_pendingAnim == g_stance + 42, "skill stance bit 0x200000 adds GetAnimStance");
    g_constBits = 0;

    // ---- cooldown paths (IsPlayer is not reached: the cooldown is positive) ---------------------------------------
    ResetRecords();
    ch->m_combatTextCooldown = 5.0f;
    sm.m_pendingAnim = -1;
    int dodge = sm.SM_SetDodgingState(nullptr, true);
    int block = sm.SM_SetBlockingState(nullptr, true);
    int injure = sm.SM_SetInjureState(nullptr, true);
    Check(dodge == 1 && block == 1 && injure == 1, "combat-text cooldown returns 1 from the dodge, block and injure paths");
    Check(sm.m_pendingAnim == -1 && ch->m_combatTextCooldown == 5.0f,
          "the cooldown paths change neither the anim nor the cooldown");
    ch->m_combatTextCooldown = 0.0f;

    // ---- SM_SetAttackState, wrapper that is not in this batch but used by kind 8 -----------------------------------
    ResetRecords();
    int atk = sm.SM_SetAttackState(nullptr, true);
    Check(atk == g_raiseReturn && g_factoryStates[5].focusCalls == 1, "SM_SetAttackState enters state 5 at once");

    std::printf("%d checks, %d failures\n", g_checks, g_failures);
    return g_failures == 0 ? 0 : 1;
}
