#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#include <dlfcn.h>
#endif
// Batch g1-game-character-CharStateMachine-33fc5a-1 (part 2 of 3 of CharStateMachine): the state queries and
// transitions, the state and event lookups, _SetState, the constructor and destructor, Flush, RaiseStateEvent and the
// revive wrappers. Declarations and layout come from dh2/CharStateMachine.hpp.
//
// Offsets in comments are the original 32-bit offsets inside CharStateMachine (this) unless a line says Character.
// The original state map is an STLport tree. Here it is a std::map, so its tree walks become find() calls.
//
// PARTIAL rows: _GetEvent and _GetState (an absent key returns nullptr, not the original's sentinel address),
// RaiseStateEvent and SM_SetRevivedState and SM_SetRevivingState (the no-current-state exit of RaiseStateEvent returns
// 0 where the original returns its this register). Each comment inside them names what is missing. _SetState is
// reconstructed: its exit (OnBlur), enter (OnFocus) and event (OnEvent) slots are declared in dh2/CharState.hpp.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAnimator.hpp"
#include "dh2/CharState.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/Random.hpp"

namespace {

const char* const kCharStateMachineCpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\CharStateMachine.cpp";

// The original ASSERT(expr) macro, as in the CharAI batch. Level 2 faults in the original (a store to address 0);
// std::abort() ends the process the same way. Level 1 prints the message to stderr and execution continues.
// Level 0 is silent.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The event id the spawn and revive paths use for their timers and state raises.
constexpr int kSpawnTimerEvent = 45;

}  // namespace

// 0x3c0420 CharStateMachine::SM_IsLifting(void) const
// The original reads a byte table (CSWTCH.6292, indexed by state - 14) only for states 18 and 19. The table holds
// 1 at indexes 4 and 5 and 0 at 0..3 and 6..7 (bytes read from the binary), so the result is true exactly for those
// two states and false for every other state.
bool CharStateMachine::SM_IsLifting() const {
    const int state = SM_GetState();
    return state == 18 || state == 19;
}

// 0x3c0b50 CharStateMachine::SM_SetAnim(int)
// A queued animation (m_pendingAnim, +0x28) wins over the argument, and this call consumes it. The original tail-calls
// CharAnimator::ANIM_Set, which is void, so the declaration in dh2/CharStateMachine.hpp is void.
void CharStateMachine::SM_SetAnim(int anim) {
    const int pending = m_pendingAnim;  // +0x28
    m_pendingAnim = -1;
    static_cast<CharAnimator*>(m_character)->ANIM_Set(pending == -1 ? anim : pending);  // Character +0x49c
}

// 0x3c1600 CharStateMachine::SetCharacter(Character *)
// The original stores the pointer even when it is null, after the ASSERT (line 225, expression "c").
void CharStateMachine::SetCharacter(Character* c) {
    if (!c) {
        AssertFailed("c", kCharStateMachineCpp, 225);
    }
    m_character = c;  // +0x04
}

// 0x3c1694 CharStateMachine::_GetEvent(int,int) const
// PARTIAL: the original walks the state map and then the event map of that state with lower_bound and keeps an
// exact match. When either key is absent it returns the address just past the sentinel header of that map, which
// no caller reads (callers test _HasState and _HasEvent first, and the ASSERTs report the miss). This rebuild
// returns nullptr for an absent key, which cannot be reproduced on a 64-bit host. The header declares the const
// method with a non-const result, so the found node is returned through const_cast (the map is not modified).
CharStateMachine::Event* CharStateMachine::_GetEvent(int stateId, int eventId) const {
    if (!_HasState(stateId)) {
        AssertFailed("_HasState(stateId)", kCharStateMachineCpp, 208);
    }
    if (!_HasEvent(stateId, eventId)) {
        AssertFailed("_HasEvent(stateId, eventId)", kCharStateMachineCpp, 209);
    }
    const auto state = m_states.find(stateId);
    if (state == m_states.end()) {
        return nullptr;  // PARTIAL: absent key, see above
    }
    const auto& events = state->second.m_events;  // +0x08 of StateInfo
    const auto event = events.find(eventId);
    if (event == events.end()) {
        return nullptr;  // PARTIAL: absent key, see above
    }
    return const_cast<Event*>(&event->second);  // handler at +0x00, m_nextState at +0x08
}

// 0x3c184c CharStateMachine::_GetState(int)
// PARTIAL: the original returns the address just past the sentinel header of the state map when the key is absent
// (not reproducible on a 64-bit host). This rebuild returns nullptr in that case. Callers test _HasState first, and
// the ASSERT reports a miss.
CharStateMachine::StateInfo* CharStateMachine::_GetState(int stateId) {
    if (!_HasState(stateId)) {
        AssertFailed("_HasState(stateId)", kCharStateMachineCpp, 151);
    }
    const auto it = m_states.find(stateId);
    if (it == m_states.end()) {
        return nullptr;  // PARTIAL: absent key, see above
    }
    return &it->second;
}

// 0x3c1938 CharStateMachine::_SetState(int,int,void *)
// The previous id is taken first (-1 when there is no current state). The old state's exit slot (CharState vtable +0x10,
// OnBlur) runs with (old id, character, this, new state id). The new state becomes current, its state timer (+0x60)
// restarts when the id changes, and its enter slot (+0x0c, OnFocus) runs with (new id, character, this, previous id,
// eventId, data). A missing state clears the current state. RaiseEvent(29) is the last step, and the previous id is
// passed as its data value, the way the original casts the integer to a pointer.
int CharStateMachine::_SetState(int stateId, int eventId, void* data) {
    int prevId = -1;
    if (m_curState != nullptr) {
        prevId = m_curState->m_id;
        m_curState->m_state->OnBlur(m_curState->m_id, m_character, this, stateId);  // vtable +0x10
    }
    if (_HasState(stateId)) {
        StateInfo* const next = _GetState(stateId);
        m_curState = next;  // +0x20
        if (prevId != stateId) {
            m_stateTime = 0;  // +0x60
        }
        next->m_state->OnFocus(next->m_id, m_character, this, prevId, eventId, data);  // vtable +0x0c
    } else {
        m_curState = nullptr;
    }
    return m_character->RaiseEvent(29, reinterpret_cast<void*>(static_cast<std::intptr_t>(prevId)));
}

// 0x3c1a00 CharStateMachine::SM_SetIdleState(bool)
int CharStateMachine::SM_SetIdleState(bool flag) {
    m_idleFlag = flag;  // +0x3c
    return _SetState(3, -1, nullptr);
}

// 0x3c1a64 CharStateMachine::SM_SetPreSpawnState(void)
int CharStateMachine::SM_SetPreSpawnState() {
    return _SetState(17, -1, nullptr);
}

// 0x3c1a74 CharStateMachine::SM_SetLimbusState(bool)
// Entering the limbus state clears the current-state pointer when the character is waiting to revive.
int CharStateMachine::SM_SetLimbusState(bool flag) {
    m_limbusFlag = flag;  // +0x34
    if (SM_IsAwaitingToRevive()) {
        m_curState = nullptr;  // +0x20
    }
    return _SetState(0, -1, nullptr);
}

// 0x3c1aa8 CharStateMachine::SM_SetAnimState(int,bool,bool)
int CharStateMachine::SM_SetAnimState(int anim, bool loop, bool flag) {
    m_animFlag = flag;    // +0x45, the fourth argument
    m_pendingAnim = anim;  // +0x28
    m_animLoop = loop;    // +0x44, the third argument
    return _SetState(14, -1, nullptr);
}

// 0x3c1ac4 CharStateMachine::CharStateMachine(void)
// 0x3c1b58 CharStateMachine::CharStateMachine(void)   (identical copy of the constructor above; the one definition
//                                                     below serves both addresses)
// The original zeroes every named field except the pad at +0x1c, and sets the pending animation to -1. The state
// map is an empty std::map here, which is what the original STLport header sets up (root null, header as leftmost
// and rightmost, count 0).
CharStateMachine::CharStateMachine()
    : m_character(nullptr),
      m_curState(nullptr),
      m_stateFlags(0),
      m_pendingAnim(-1),
      m_statusFlags(0),
      unk_30(0),
      m_limbusFlag(false),
      m_deadAnim(0),
      m_idleFlag(false),
      m_deadFlag(false),
      m_deadAltAnim(false),
      unk_40(0),
      m_animLoop(false),
      m_animFlag(false),
      m_interactKind(0),
      m_interactFlag(false),
      m_interactTarget(nullptr),
      m_skillId(0),
      m_skillFlag(false),
      m_reviveTarget(nullptr),
      m_stateTime(0) {}

// 0x3c2734 CharStateMachine::SM_SetSpawnState(bool,bool)
// With delayed false the state is set to 1 at once. Otherwise a timer (event 45) runs for a random time between the
// Character's spawn_delay (+0x1434) and the value at +0x1438. A negative minimum is clamped to 0 and stored. When the
// maximum is below the minimum, the minimum is stored into +0x1438 and used as the timer. The second argument is
// never read by the original.
int CharStateMachine::SM_SetSpawnState(bool delayed, bool /*flag*/) {
    if (!delayed) {
        return _SetState(1, -1, nullptr);
    }
    Character* const ch = m_character;
    int minDelay = ch->m_spawnDelay.X;  // +0x1434, int32 (LDR in the original)
    if (minDelay < 0) {
        minDelay = 0;
        ch->m_spawnDelay.X = 0;
    }
    const int maxDelay = ch->m_spawnDelay.Y;  // +0x1438, int32
    int high = 0;  // the original's v5
    int low = 0;   // the original's v8
    if (maxDelay >= minDelay) {
        low = minDelay;
        high = maxDelay;
    } else {
        low = ch->m_spawnDelay.X;  // +0x1434 read again; equals minDelay after the clamp above
        high = minDelay;
        ch->m_spawnDelay.Y = minDelay;  // the maximum is raised to the minimum
    }
    if (high == low) {
        if (high == 0) {
            return _SetState(1, -1, nullptr);
        }
        return static_cast<CharTimers*>(ch)->TMR_Start(static_cast<unsigned int>(high), 0, kSpawnTimerEvent, nullptr);
    }
    // The original calls the GCC clone _ZN6Random9GetRandomEib.clone.1_2 at 0x3c26a0 (asm BL at 0x3c27ac). That clone
    // takes only the range in r0 and never reads r1, so the leftover value in r1 is ignored. It draws from the
    // ordinary stream (s_seed, counter [0]) and has no synchronized path, which is GetRandom(range, false).
    const int roll = static_cast<int>(Random::GetRandom(high - low, false));
    return static_cast<CharTimers*>(ch)->TMR_Start(static_cast<unsigned int>(roll + low), 0, kSpawnTimerEvent, nullptr);
}

// 0x3c2a00 CharStateMachine::Flush(void)
// Empties the state map (only when it is not empty, as the original does) and clears the current state.
void CharStateMachine::Flush() {
    if (!m_states.empty()) {
        m_states.clear();
    }
    m_curState = nullptr;  // +0x20
}

// 0x3c2a44 CharStateMachine::~CharStateMachine()
// 0x3c2ac4 CharStateMachine::~CharStateMachine()   (identical copy of the destructor above)
// The original sets the vtable, calls Flush(), and then erases the state map if it still has nodes. Flush() empties
// the map, so that second step never runs and is not written. The map is destroyed by its own destructor here.
CharStateMachine::~CharStateMachine() {
    Flush();
}

// 0x3c2aa8 CharStateMachine::~CharStateMachine()   (deleting destructor: skipped)
// The original calls the complete destructor above and then CustomFree(this). The rebuild gets the same effect from
// the compiler: delete runs the complete destructor and frees the object. Not written here.

// 0x3c5684 CharStateMachine::RaiseStateEvent(int,void *)
// PARTIAL on one exit only. With no current state the original returns its `this` register (for every event except
// 0x30), a pointer to the state machine, and this returns 0, because the header declares an int result. The other
// exits agree: after the state's event slot, a missing event or a handler that returns false gives 0, and otherwise the
// result is _SetState's int. Event 0x30 pins the character's physical object while SM_IsIdle(false) holds. When there
// is no current state, the original's return after that pin is the pin's leftover register, which is not recovered.
// The probe on "isTracingCharSM" runs when the event is registered; its result is unused, as in the original.
int CharStateMachine::RaiseStateEvent(int eventId, void* data) {
    switch (eventId) {
        case 0x2A:
            m_statusFlags &= ~1u;  // +0x2c
            break;
        case 0x2B:
            m_statusFlags &= ~2u;
            break;
        case 0x2C:
            m_statusFlags &= ~4u;
            break;
        case 0x30:
            if (SM_IsIdle(false)) {
                PhysicalObject* const phys = m_character->m_physicalObject;  // Character +0x2dc (GameObject member)
                if (phys != nullptr) {
                    phys->pin();
                }
            }
            break;
        default:
            break;
    }
    if (m_curState == nullptr) {
        return 0;  // PARTIAL: original returns its this register here, see above
    }
    // The state's event slot (vtable +0x18) runs first. The id is read again afterwards, as the original does.
    m_curState->m_state->OnEvent(m_curState->m_id, m_character, this, eventId, data);
    if (!_HasEvent(m_curState->m_id, eventId)) {
        return 0;
    }
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingCharSM"));
    Event* const ev = _GetEvent(m_curState->m_id, eventId);
    int nextState = ev->m_nextState;  // +0x08
    if (ev->m_handler) {
        const bool handled = (m_character->*(ev->m_handler))(eventId, data, m_curState->m_id, nextState);
        if (!handled) {
            return 0;  // the handler result, false
        }
    }
    return _SetState(nextState, eventId, data);
}

// 0x3c5880 CharStateMachine::SM_SetRevivedState(void *,bool)
// Immediate: _SetState(16, 50009). Otherwise the original tail-calls RaiseStateEvent(50009) and returns its int.
// PARTIAL only through RaiseStateEvent's no-current-state exit (see there).
int CharStateMachine::SM_SetRevivedState(void* data, bool immediate) {
    if (immediate) {
        return _SetState(16, 50009, data);
    }
    return RaiseStateEvent(50009, data);
}

// 0x3c58a4 CharStateMachine::SM_SetRevivingState(void *,bool)
// Immediate: _SetState(15, 50007). Otherwise the original tail-calls RaiseStateEvent(50007) and returns its int.
// PARTIAL only through RaiseStateEvent's no-current-state exit (see there).
int CharStateMachine::SM_SetRevivingState(void* data, bool immediate) {
    if (immediate) {
        return _SetState(15, 50007, data);
    }
    return RaiseStateEvent(50007, data);
}
