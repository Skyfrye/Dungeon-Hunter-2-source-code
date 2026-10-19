// Batch g1-game-character-CharStateMachine-33fc5a-2 (part 3 of 3 of CharStateMachine): the SM_Set* transitions from
// SM_SetDeadState (0x3c58c8) to SM_SetSkillState (0x3c6670), Update (0x3c628c), RegisterState (0x3c7318) and
// SM_RegisterEvent (0x3c7b18). Declarations come from dh2/CharStateMachine.hpp; the header's RaiseStateEvent was changed
// from void to int (see the notes in this batch's report).
//
// Offsets in comments are the original 32-bit offsets inside CharStateMachine (this), or inside Character (m_character).
// Arrays::CharAnimTable rows are Structs::CharAnim records (listing stride 160, pydata's array_strides.hpp). Its m_wN
// members are named by listing offset: m_wN sits at +4N, so `row.m_w8` is the word at +0x20.
//
// The row id comes from Character::GetCharAnimTableId(), which is reconstructed (it falls back to 17 for an out-of-range
// word). Every row read is written from the pseudocode. The remaining PARTIAL rows are the RaiseStateEvent dependency
// (see the row of that function: its no-current-state exit returns a pointer in the original) and the paths that return
// the leftover row address (noted per function).
//
// Fall-through returns. Some original paths return the leftover row address (Hex-Rays prints `result = members + 160*id`,
// a reuse of the result register). A host pointer cannot be returned as an int, so those paths return 0 and are marked.

#include <cstdint>
#include <string>

// runtime_support.hpp comes first: pydata's deps/stream_reader.hpp declares a MemoryHintState function that clashes with
// the core-platform enum unless the enum is declared before it (Character.hpp works around the same clash with a macro).
#include "dh2/global/runtime_support.hpp"    // PushProfilingContext / PopProfilingContext
#include "core-platform/deps/application.hpp"  // ApplicationGetDt: Application::GetDt on the singleton
#include "dh2/CharState.hpp"                  // CharState slots: OnInit, OnUpdate
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/DebugSwitches.hpp"              // the isTracingCharSM probe in RegisterState
#include "dh2/global/GetNewState.hpp"         // the state factories in g_stateList
#include "dh2/global/charai_ai.hpp"          // ApplicationGetPyDataConstants (dword_99F758)
#include "pydata-accessors/structs_records.hpp"  // Structs::CharAnim, the Arrays::CharAnimTable element
#include "pydata-accessors/w7_arrays_02.hpp"    // Arrays::CharAnimTable::members and size
#include "pydata-accessors/w7_pydata12.hpp"     // PyDataConstants::getConstant

namespace {

// 1161527296 (bits 0x453b8000) is the float 3000.0f. The SM_Set functions write it to Character +0x14fc (m_combatTextCooldown,
// Character.hpp) when that float is <= 0, before they resolve the anim row.
constexpr float kCooldownStartMs = 3000.0f;  // 0x453b8000

// True when `id` indexes Arrays::CharAnimTable (the original's `id >= 0 && id < size`).
bool CharAnimIdInRange(int id) {
    return id >= 0 && static_cast<std::uint32_t>(id) < Arrays::CharAnimTable::size;
}

// Row `id` of Arrays::CharAnimTable. The caller checks the range first.
const Structs::CharAnim& CharAnimRow(int id) {
    const auto* rows = static_cast<const Structs::CharAnim*>(static_cast<const void*>(Arrays::CharAnimTable::members));
    return rows[id];
}

// The stance offset added to an anim id: GetAnimStance() when the AnimStancedAnim bits `mask` are set, else 0. The
// original reads the constant, masks it, and replaces the masked value with GetAnimStance() when it is non-zero.
int AnimStanceOffset(const Character* character, int mask) {
    const int bits = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE");
    return (bits & mask) != 0 ? character->GetAnimStance() : 0;
}

// g_stateList (0x9666c0, 160 bytes): 20 pairs of { state id, GetNewState<T> }. Read from the binary: the ids are 0 to 19 in
// order, and each factory address is the one GetNewState<T> has in dh2/global/GetNewState.hpp. Only RegisterState reads the
// table, so it is kept here rather than in a header.
struct StateFactoryEntry {
    int stateId;
    CharState* (*factory)();
};

const StateFactoryEntry kStateList[20] = {
    {0, &GetNewState<CSLimbus>},      // 0x3c0454
    {1, &GetNewState<CSSpawn>},       // 0x3c0470
    {2, &GetNewState<CSDespawn>},     // 0x3c048c
    {3, &GetNewState<CSIdle>},        // 0x3c04a8
    {4, &GetNewState<CSMove>},        // 0x3c04c4
    {5, &GetNewState<CSAttack>},      // 0x3c04e0
    {6, &GetNewState<CSSkill>},       // 0x3c04fc
    {7, &GetNewState<CSCast>},        // 0x3c0518
    {8, &GetNewState<CSScared>},      // 0x3c0534
    {9, &GetNewState<CSStunned>},     // 0x3c0550
    {10, &GetNewState<CSKnockedBack>},  // 0x3c056c
    {11, &GetNewState<CSInjured>},    // 0x3c0588
    {12, &GetNewState<CSDead>},       // 0x3c05a4
    {13, &GetNewState<CSInteract>},   // 0x3c05c0
    {14, &GetNewState<CSAnim>},       // 0x3c05dc
    {15, &GetNewState<CSReviving>},   // 0x3c05f8
    {16, &GetNewState<CSRevived>},    // 0x3c0614
    {17, &GetNewState<CSPreSpawn>},   // 0x3c0630
    {18, &GetNewState<CSLiftingIdle>},  // 0x3c064c
    {19, &GetNewState<CSLiftingMove>},  // 0x3c0668
};

}  // namespace

// 0x3c58c8 CharStateMachine::SM_SetDeadState(bool, void*, bool)
// PARTIAL only through the non-immediate path, which returns RaiseStateEvent's value (its no-current-state exit differs;
// see RaiseStateEvent). The row work is complete.
int CharStateMachine::SM_SetDeadState(bool flag, void* data, bool immediate) {
    int result = m_character->GetCharAnimTableId();
    if (!CharAnimIdInRange(result)) {
        return result;
    }
    const Structs::CharAnim& row = CharAnimRow(result);
    // m_deadAltAnim (+0x3f) selects the alternate dead anims: listing +0x10 and +0x18/+0x1c word pairs.
    const bool alt = m_deadAltAnim;
    const int animBase = alt ? row.DeadlyGreatKB : row.Died;  // +0x10 / +0x1c
    const int stance = AnimStanceOffset(m_character, alt ? 0x20000 : 0x8000);
    m_pendingAnim = stance + animBase;  // +0x28
    // Dead anim (+0x38): the alt path adds stance bit 0x40000 to +0x18, the normal path adds bit 0x10000 to +0x14.
    const int deadAnim = alt ? row.DespawnGreatKB + AnimStanceOffset(m_character, 0x40000)
                             : row.Despawn + AnimStanceOffset(m_character, 0x10000);
    m_deadAnim = deadAnim;
    m_deadFlag = flag;         // +0x3e
    m_deadAltAnim = false;     // +0x3f reset
    if (SM_IsAwaitingToRevive()) {
        m_curState = nullptr;  // +0x20
    }
    if (immediate) {
        return _SetState(12, 50008, data);
    }
    return RaiseStateEvent(50008, data);
}

// 0x3c5b3c CharStateMachine::SM_SetDodgingState(void*, bool)
// PARTIAL: the Hex-Rays `result` reuse returns the row address when the row word at +0x20 is -1; that path returns 0 here.
// The non-immediate path also returns RaiseStateEvent's value (see there).
int CharStateMachine::SM_SetDodgingState(void* data, bool immediate) {
    int result = m_character->m_combatTextCooldown > 0.0f ? 1 : 0;
    if (m_character->m_combatTextCooldown <= 0.0f) {
        m_character->IsPlayer();  // vtable +0x28 is Character::IsPlayer in the listing; the original discards the result
        m_character->m_combatTextCooldown = kCooldownStartMs;  // Character +0x14fc
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            const int animBase = CharAnimRow(result).Dodging;  // +0x20
            if (animBase != -1) {
                const int stance = AnimStanceOffset(m_character, 0x4000);
                m_pendingAnim = stance + animBase;  // +0x28
                if (immediate) {
                    return _SetState(11, 50010, data);
                }
                return RaiseStateEvent(50010, data);
            }
            result = 0;  // PARTIAL: the original returns the row address here
        }
    }
    return result;
}

// 0x3c5c60 CharStateMachine::SM_SetBlockingState(void*, bool)
// PARTIAL: same -1 leftover-row return and RaiseStateEvent dependency as SM_SetDodgingState; the row word is +0x0c.
int CharStateMachine::SM_SetBlockingState(void* data, bool immediate) {
    int result = m_character->m_combatTextCooldown > 0.0f ? 1 : 0;
    if (m_character->m_combatTextCooldown <= 0.0f) {
        m_character->IsPlayer();  // vtable +0x28, result discarded in the original
        m_character->m_combatTextCooldown = kCooldownStartMs;  // Character +0x14fc
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            const int animBase = CharAnimRow(result).Blocking;  // +0x0c
            if (animBase != -1) {
                const int stance = AnimStanceOffset(m_character, 0x2000);
                m_pendingAnim = stance + animBase;  // +0x28
                if (immediate) {
                    return _SetState(11, 50010, data);
                }
                return RaiseStateEvent(50010, data);
            }
            result = 0;  // PARTIAL: the original returns the row address here
        }
    }
    return result;
}

// 0x3c5d84 CharStateMachine::SM_SetInjureState(void*, bool)
// PARTIAL only through RaiseStateEvent on the non-immediate path (see there). This path has no -1 check on the row word.
int CharStateMachine::SM_SetInjureState(void* data, bool immediate) {
    int result = m_character->m_combatTextCooldown > 0.0f ? 1 : 0;
    if (m_character->m_combatTextCooldown <= 0.0f) {
        m_character->IsPlayer();  // vtable +0x28, result discarded in the original
        m_character->m_combatTextCooldown = kCooldownStartMs;  // Character +0x14fc
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            const int animBase = CharAnimRow(result).Injured;  // +0x3c
            const int stance = AnimStanceOffset(m_character, 0x1000);
            m_pendingAnim = stance + animBase;  // +0x28
            if (immediate) {
                return _SetState(11, 50010, data);
            }
            return RaiseStateEvent(50010, data);
        }
    }
    return result;
}

// 0x3c5ea0 CharStateMachine::SM_SetKnockBackState(bool, void*, bool)
// PARTIAL only through RaiseStateEvent on the non-immediate path (see there).
int CharStateMachine::SM_SetKnockBackState(bool strong, void* data, bool immediate) {
    int result = m_character->IsBoss() ? 1 : 0;
    if (result == 0) {
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            const Structs::CharAnim& row = CharAnimRow(result);
            if (strong) {
                const int animBase = row.GreatKnockedBack;  // +0x24
                const int stance = AnimStanceOffset(m_character, 0x800);
                m_pendingAnim = stance + animBase;  // +0x28
                // Hex-Rays: *(this + 11) = &off_18, a whole-word store of 0x18 to m_statusFlags (+0x2c).
                m_statusFlags = 0x18u;
            } else {
                const int animBase = row.KnockedBack;  // +0x48
                const int stance = AnimStanceOffset(m_character, 0x400);
                const std::uint32_t flags = m_statusFlags;
                m_pendingAnim = stance + animBase;  // +0x28
                m_statusFlags = flags & 0xFFFFFFE7u;  // clears bits 0x08 and 0x10
            }
            if (immediate) {
                return _SetState(10, 50011, data);
            }
            return RaiseStateEvent(50011, data);
        }
    }
    return result;
}

// 0x3c5ffc CharStateMachine::SM_SetStunState(unsigned int, bool, void*, bool)
// PARTIAL only through RaiseStateEvent on the non-immediate path (see there).
int CharStateMachine::SM_SetStunState(unsigned int durationMs, bool flag, void* data, bool immediate) {
    int result = m_character->IsBoss() ? 1 : 0;
    if (result == 0) {
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            if ((m_statusFlags & 2u) == 0) {
                // The CharTimers base subobject of Character, at +0x3b4 (948 bytes into Character).
                m_character->CharTimers::TMR_Start(durationMs, 0, 43, nullptr);
                m_statusFlags |= 2u;  // bit 0x02: stunned
            }
            const int animBase = CharAnimRow(result).Stunned;  // +0x8c
            const int stance = AnimStanceOffset(m_character, 0x200);
            m_pendingAnim = stance + animBase;  // +0x28
            if (immediate) {
                result = _SetState(9, 50012, data);
            } else {
                result = RaiseStateEvent(50012, data);
            }
            if (flag) {
                m_stateFlags |= 0x800u;  // +0x24 bit 11: stun flag
            }
        }
    }
    return result;
}

// 0x3c6144 CharStateMachine::SM_SetScareState(unsigned int, bool, void*, bool)
// PARTIAL only through RaiseStateEvent on the non-immediate path (see there).
int CharStateMachine::SM_SetScareState(unsigned int durationMs, bool flag, void* data, bool immediate) {
    int result = m_character->IsBoss() ? 1 : 0;
    if (result == 0) {
        result = m_character->GetCharAnimTableId();
        if (CharAnimIdInRange(result)) {
            if ((m_statusFlags & 4u) == 0) {
                m_character->CharTimers::TMR_Start(durationMs, 0, 44, nullptr);
                m_statusFlags |= 4u;  // bit 0x04: scared
            }
            const int animBase = CharAnimRow(result).Scared;  // +0x7c
            const int stance = AnimStanceOffset(m_character, 0x100);
            m_pendingAnim = stance + animBase;  // +0x28
            if (immediate) {
                result = _SetState(8, 50013, data);
            } else {
                result = RaiseStateEvent(50013, data);
            }
            if (flag) {
                m_stateFlags |= 0x400u;  // +0x24 bit 10: scare flag
            }
        }
    }
    return result;
}

// 0x3c628c CharStateMachine::Update()
// The state time (+0x60) accumulates the frame time, the stun and scare restarts run, and then the current state's
// OnUpdate slot (CharState vtable +0x14) runs with (state id, character, this) when a state is current.
void CharStateMachine::Update() {
    PushProfilingContext("CharStateMachine::Update");
    const int previousTime = m_stateTime;
    const int dt = ApplicationGetDt();
    const std::uint32_t statusFlags = m_statusFlags;
    m_stateTime = dt + previousTime;  // +0x60
    if ((statusFlags & 2u) != 0) {
        if (!SM_IsStunned(false)) {
            SM_SetStunState(0xFFFFFFFFu, ((m_stateFlags >> 11) & 1u) != 0, nullptr, false);
        }
        if ((m_statusFlags & 4u) != 0) {
            if (!SM_IsScared(false)) {
                SM_SetScareState(0xFFFFFFFFu, ((m_stateFlags >> 10) & 1u) != 0, nullptr, false);
            }
        }
    } else if ((statusFlags & 4u) != 0) {
        if (!SM_IsScared(false)) {
            SM_SetScareState(0xFFFFFFFFu, ((m_stateFlags >> 10) & 1u) != 0, nullptr, false);
        }
    }
    if (m_curState != nullptr) {
        m_curState->m_state->OnUpdate(m_curState->m_id, m_character, this);  // vtable +0x14
    }
    PopProfilingContext("CharStateMachine::Update");
}

// 0x3c6394 CharStateMachine::SM_SetCastState(unsigned int, void*, bool)
// PARTIAL: when the cast index is past the row's count, the original returns the row address; that path returns 0 here.
// The non-immediate path also returns RaiseStateEvent's value (see there).
int CharStateMachine::SM_SetCastState(unsigned int castIndex, void* data, bool immediate) {
    int result = m_character->GetCharAnimTableId();
    if (CharAnimIdInRange(result)) {
        const Structs::CharAnim& row = CharAnimRow(result);
        if (row.SpellsSize > castIndex) {  // +0x84 count of the +0x88 list
            const int animBase = static_cast<const std::int32_t*>(row.Spells)[castIndex];  // +0x88 list
            const int stance = AnimStanceOffset(m_character, 0x400000);
            m_pendingAnim = stance + animBase;  // +0x28
            if (immediate) {
                return _SetState(7, 50006, data);
            }
            return RaiseStateEvent(50006, data);
        }
        result = 0;  // PARTIAL: the original returns the row address here
    }
    return result;
}

// 0x3c64ac CharStateMachine::SM_SetInteractState(int, bool, void*, bool)
// PARTIAL: for kind >= the row's count, the original returns the row address; that path returns 0 here. The kinds 8 and
// 10 do not read the row. The non-immediate paths return RaiseStateEvent's value (see there).
int CharStateMachine::SM_SetInteractState(int interactKind, bool flag, void* target, bool immediate) {
    int result = m_character->GetCharAnimTableId();
    if (CharAnimIdInRange(result)) {
        if (interactKind == 8) {  // Hex-Rays: byte_8, the constant 8
            m_interactKind = 8;      // +0x48
            m_interactFlag = flag;   // +0x4c
            m_interactTarget = target;  // +0x50
            return SM_SetAttackState(target, immediate);
        }
        if (interactKind == 10) {  // Hex-Rays: &byte_9[1], the constant 10
            m_interactKind = 10;
            m_interactFlag = flag;
            m_interactTarget = target;
            return SM_SetRevivingState(target, immediate);
        }
        if (interactKind >= 0) {
            const Structs::CharAnim& row = CharAnimRow(result);
            if (interactKind < static_cast<std::int32_t>(row.InteractSize)) {  // +0x40 count of the +0x44 list
                const int animBase = static_cast<const std::int32_t*>(row.Interact)[interactKind];  // +0x44 list
                const int stance = AnimStanceOffset(m_character, 0x800000);
                m_pendingAnim = stance + animBase;  // +0x28
                m_interactKind = interactKind;
                m_interactFlag = flag;
                m_interactTarget = target;
                if (immediate) {
                    return _SetState(13, 50003, target);
                }
                return RaiseStateEvent(50003, target);
            }
            result = 0;  // PARTIAL: the original returns the row address here
        }
    }
    return result;
}

// 0x3c6670 CharStateMachine::SM_SetSkillState(unsigned int, bool, void*, bool)
// The anim word is Structs::Skill::m_w1 (skill record +0x04). PARTIAL: Character::GetCharSkill returns null for an
// out-of-range id, and the original reads the word past the list entry there (undefined); this takes 0. The
// non-immediate path also returns RaiseStateEvent's value (see there).
int CharStateMachine::SM_SetSkillState(unsigned int skillId, bool flag, void* data, bool immediate) {
    const auto* skillRecord = static_cast<const Structs::Skill*>(m_character->GetCharSkill(static_cast<int>(skillId)));
    const int skillAnim = skillRecord != nullptr ? skillRecord->Anim : 0;  // +0x04; 0 for the null (PARTIAL) case
    const int stance = AnimStanceOffset(m_character, 0x200000);
    m_pendingAnim = stance + skillAnim;  // +0x28
    m_skillId = static_cast<int>(skillId);  // +0x54
    m_skillFlag = flag;                     // +0x58
    if (immediate) {
        return _SetState(6, 50005, data);
    }
    return RaiseStateEvent(50005, data);
}

// 0x3c7318 CharStateMachine::RegisterState(int)
// A registered state returns at once. Otherwise the factory for the id is looked up in g_stateList (no entry: nothing
// happens). The new StateInfo gets its id and CharState from the factory, the state's init slot (vtable +0x08, OnInit)
// runs with (state id, character, this), and the "isTracingCharSM" probe runs. The probe result is unused, as in the
// original.
void CharStateMachine::RegisterState(int stateId) {
    if (m_states.find(stateId) != m_states.end()) {
        return;
    }
    const StateFactoryEntry* entry = nullptr;
    for (const StateFactoryEntry& candidate : kStateList) {
        if (candidate.stateId == stateId) {
            entry = &candidate;
            break;
        }
    }
    if (entry == nullptr) {
        return;
    }
    StateInfo& info = m_states[stateId];  // the original inserts the node with operator[] as well
    info.m_id = stateId;                   // +0x00
    info.m_state = entry->factory();       // +0x04
    info.m_state->OnInit(stateId, m_character, this);  // vtable +0x08
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingCharSM"));
}

// 0x3c7b18 CharStateMachine::SM_RegisterEvent(int, int, int, bool (Character::*)(int, void*, int, int&))
// Original: the state must already be in the state map (lower_bound and equality, which is find here). The event entry is
// created if it is missing, then its handler and next state are set. The original's two inserts only differ in which field
// they write first, so the final values are the same.
void CharStateMachine::SM_RegisterEvent(int stateId, int eventId, int nextState,
                                        bool (Character::*handler)(int, void*, int, int&)) {
    const auto state = m_states.find(stateId);
    if (state == m_states.end()) {
        return;
    }
    Event& event = state->second.m_events[eventId];  // StateInfo +0x08 event map, keyed by event id
    event.m_handler = handler;    // Event +0x00 (the member pointer, 8 bytes)
    event.m_nextState = nextState;  // Event +0x08
}

// 0x3c6488 CharStateMachine::SM_SetAttackState(void*, bool)
int CharStateMachine::SM_SetAttackState(void* data, bool immediate) {
    if (immediate) {
        return _SetState(5, 50004, data);
    }
    return RaiseStateEvent(50004, data);
}
