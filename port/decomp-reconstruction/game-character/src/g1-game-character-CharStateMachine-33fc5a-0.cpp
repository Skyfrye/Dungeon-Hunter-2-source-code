// Batch g1-game-character-CharStateMachine-33fc5a-0 (part 1 of 3 of CharStateMachine): the state and event
// lookups over the state map, SM_GetState, and the SM_Is* queries that read the current state. Declarations
// and layout come from dh2/CharStateMachine.hpp, which already declares every function in this batch.
//
// Offsets in comments are the original 32-bit offsets inside CharStateMachine (this). The state map is
// std::map<int, StateInfo> at +0x08, the current state is m_curState at +0x20. The original tree walks
// (STLport lower_bound followed by an equality check) are written as std::map::find, which gives the same answer.

#include <cstdint>

#include "dh2/CharStateMachine.hpp"

namespace {

// unsigned __int8 CSWTCH_6292[4] = {1, 1, 1, 1}, indexed by state - 8 (SM_IsIncapacitated). SM_IsLifting
// (0x3c0420) reads the same table at state - 14; that function is in another batch and keeps its own copy.
const std::uint8_t kCSWTCH_6292[4] = {1, 1, 1, 1};

}  // namespace

// 0x3c0084 CharStateMachine::_HasState(int) const
bool CharStateMachine::_HasState(int stateId) const {
    return m_states.find(stateId) != m_states.end();
}

// 0x3c00e0 CharStateMachine::_HasEvent(int, int) const
bool CharStateMachine::_HasEvent(int stateId, int eventId) const {
    const auto state = m_states.find(stateId);
    if (state == m_states.end()) {
        return false;
    }
    // StateInfo +0x08: the per-state event map keyed by event id.
    const auto& events = state->second.m_events;
    return events.find(eventId) != events.end();
}

// 0x3c01ac CharStateMachine::SM_GetState() const
int CharStateMachine::SM_GetState() const {
    // +0x20 m_curState. The state id is the first word of the StateInfo it points at. Null means no state (-1).
    return m_curState ? m_curState->m_id : -1;
}

// 0x3c01c0 CharStateMachine::SM_IsInLimbus() const
bool CharStateMachine::SM_IsInLimbus() const {
    return SM_GetState() == 0;
}

// 0x3c01d4 CharStateMachine::SM_IsInPreSpawn() const
bool CharStateMachine::SM_IsInPreSpawn() const {
    return SM_GetState() == 17;
}

// 0x3c01ec CharStateMachine::SM_IsAwaitingToRevive() const
bool CharStateMachine::SM_IsAwaitingToRevive() const {
    const int state = SM_GetState();
    return state == 0 || state == 17 || state == 16;
}

// 0x3c0230 CharStateMachine::SM_IsAwaitingToSpawn() const
bool CharStateMachine::SM_IsAwaitingToSpawn() const {
    return SM_GetState() == 17;
}

// 0x3c0248 CharStateMachine::SM_IsSpawning() const
bool CharStateMachine::SM_IsSpawning() const {
    return SM_GetState() == 1;
}

// 0x3c0260 CharStateMachine::SM_IsIdle(bool) const
bool CharStateMachine::SM_IsIdle(bool strict) const {
    const int state = SM_GetState();
    if (state == 13) {
        return true;
    }
    if (state != 18) {
        return state == 3;
    }
    return !strict;
}

// 0x3c029c CharStateMachine::SM_IsMoving(bool) const
bool CharStateMachine::SM_IsMoving(bool strict) const {
    const int state = SM_GetState();
    if (state == 4) {
        return true;
    }
    if (state == 19) {
        return !strict;
    }
    return false;
}

// 0x3c02d0 CharStateMachine::SM_IsAttacking() const
bool CharStateMachine::SM_IsAttacking() const {
    return SM_GetState() == 5;
}

// 0x3c02e8 CharStateMachine::SM_IsUsingSkill() const
bool CharStateMachine::SM_IsUsingSkill() const {
    return SM_GetState() == 6;
}

// 0x3c0300 CharStateMachine::SM_IsUsingSkill(unsigned int) const
bool CharStateMachine::SM_IsUsingSkill(unsigned int skillId) const {
    // +0x54 m_skillId (compared as unsigned, as the original compares the raw word).
    return SM_GetState() == 6 && static_cast<unsigned int>(m_skillId) == skillId;
}

// 0x3c0334 CharStateMachine::SM_IsCasting() const
bool CharStateMachine::SM_IsCasting() const {
    return SM_GetState() == 7;
}

// 0x3c034c CharStateMachine::SM_IsScared(bool) const
bool CharStateMachine::SM_IsScared(bool useFlag) const {
    if (useFlag) {
        // +0x2c m_statusFlags bit 2 (scared).
        return ((m_statusFlags >> 2) & 1u) != 0;
    }
    return SM_GetState() == 8;
}

// 0x3c0378 CharStateMachine::SM_IsStunned(bool) const
bool CharStateMachine::SM_IsStunned(bool useFlag) const {
    if (useFlag) {
        // +0x2c m_statusFlags bit 1 (stunned).
        return ((m_statusFlags >> 1) & 1u) != 0;
    }
    return SM_GetState() == 9;
}

// 0x3c03a4 CharStateMachine::SM_IsKnockedBack() const
bool CharStateMachine::SM_IsKnockedBack() const {
    return SM_GetState() == 10;
}

// 0x3c03bc CharStateMachine::SM_IsIncapacitated() const
bool CharStateMachine::SM_IsIncapacitated() const {
    // States 8 to 11 index CSWTCH_6292 (all 1). Any other state gives 0.
    const int state = SM_GetState();
    if (static_cast<unsigned int>(state - 8) > 3u) {
        return false;
    }
    return kCSWTCH_6292[state - 8] != 0;
}

// 0x3c03f0 CharStateMachine::SM_IsDead() const
bool CharStateMachine::SM_IsDead() const {
    return SM_GetState() == 12;
}

// 0x3c0408 CharStateMachine::SM_IsInteracting() const
bool CharStateMachine::SM_IsInteracting() const {
    return SM_GetState() == 13;
}
