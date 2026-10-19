// CharStateMachine: per-character state machine, embedded by value in Character.
// Vtable (_ZTV16CharStateMachine, 16 bytes): slot 0/1 are the two destructors.
// Original 32-bit size is not recorded (always embedded; last member +0x60).
#pragma once

#include <cstdint>
#include <map>

class Character;
class CharState;  // state objects built from g_stateList; slots: +8 init, +12 enter, +16 exit, +20 update, +24 event

class CharStateMachine {
public:
    // Handler registered for one (state, event) pair. In the original map node the key sits at +16 and this
    // value at +20: pointer-to-member (8 bytes) followed by the default next state.
    struct Event {
        bool (Character::*m_handler)(int eventId, void* data, int stateId, int& nextState);  // +0x00
        int m_nextState;                          // +0x08 (-1 = stay)
    };

    // Value of the state map. Node value starts at +20 (id), +24 (object), +28 (event map header).
    struct StateInfo {
        int m_id;                                 // +0x00
        CharState* m_state;                       // +0x04
        std::map<int, Event> m_events;            // +0x08
    };

    CharStateMachine();                           // 0x3c1b58
    virtual ~CharStateMachine();                  // slot 0 (0x3c2a44 / 0x3c2aa8), slot 1 deleting (0x3c2ac4)

    void SetCharacter(Character* c);              // 0x3c1600
    void Update();                                // 0x3c628c
    void Flush();                                 // 0x3c2a00
    void RegisterState(int stateId);              // 0x3c7318
    void SM_RegisterEvent(int stateId, int eventId, int nextState, bool (Character::*handler)(int, void*, int, int&));  // 0x3c7b18
    int RaiseStateEvent(int eventId, void* data);  // 0x3c5684 returns int: its pseudocode returns the handler result or _SetState's int

    // Queries
    int SM_GetState() const;                      // 0x3c01ac (-1 when no current state)
    bool SM_IsInLimbus() const;                   // 0x3c01c0
    bool SM_IsInPreSpawn() const;                 // 0x3c01d4
    bool SM_IsAwaitingToRevive() const;           // 0x3c01ec
    bool SM_IsAwaitingToSpawn() const;            // 0x3c0230
    bool SM_IsSpawning() const;                   // 0x3c0248
    bool SM_IsIdle(bool strict) const;            // 0x3c0260
    bool SM_IsMoving(bool strict) const;          // 0x3c029c
    bool SM_IsAttacking() const;                  // 0x3c02d0
    bool SM_IsUsingSkill() const;                 // 0x3c02e8
    bool SM_IsUsingSkill(unsigned int skillId) const;  // 0x3c0300
    bool SM_IsCasting() const;                    // 0x3c0334
    bool SM_IsScared(bool useFlag) const;         // 0x3c034c
    bool SM_IsStunned(bool useFlag) const;        // 0x3c0378
    bool SM_IsKnockedBack() const;                // 0x3c03a4
    bool SM_IsIncapacitated() const;              // 0x3c03bc
    bool SM_IsDead() const;                       // 0x3c03f0
    bool SM_IsInteracting() const;                // 0x3c0408
    bool SM_IsLifting() const;                    // 0x3c0420

    // Transitions
    void SM_SetAnim(int anim);                    // 0x3c0b50 (void: the original tail-calls CharAnimator::ANIM_Set, which is void)
    int SM_SetIdleState(bool flag);               // 0x3c1a00
    int SM_SetPreSpawnState();                    // 0x3c1a64
    int SM_SetLimbusState(bool flag);             // 0x3c1a74
    int SM_SetAnimState(int anim, bool loop, bool flag);  // 0x3c1aa8
    int SM_SetSpawnState(bool delayed, bool flag);  // 0x3c2734
    int SM_SetRevivedState(void* data, bool immediate);   // 0x3c5880
    int SM_SetRevivingState(void* data, bool immediate);  // 0x3c58a4
    int SM_SetDeadState(bool flag, void* data, bool immediate);  // 0x3c58c8
    int SM_SetDodgingState(void* data, bool immediate);   // 0x3c5b3c
    int SM_SetBlockingState(void* data, bool immediate);  // 0x3c5c60
    int SM_SetInjureState(void* data, bool immediate);    // 0x3c5d84
    int SM_SetKnockBackState(bool strong, void* data, bool immediate);  // 0x3c5ea0
    int SM_SetStunState(unsigned int durationMs, bool flag, void* data, bool immediate);   // 0x3c5ffc
    int SM_SetScareState(unsigned int durationMs, bool flag, void* data, bool immediate);  // 0x3c6144
    int SM_SetCastState(unsigned int castIndex, void* data, bool immediate);  // 0x3c6394
    int SM_SetAttackState(void* data, bool immediate);    // 0x3c6488
    int SM_SetInteractState(int interactKind, bool flag, void* target, bool immediate);  // 0x3c64ac
    int SM_SetSkillState(unsigned int skillId, bool flag, void* data, bool immediate);   // 0x3c6670

public:
    bool _HasState(int stateId) const;            // 0x3c0084
    bool _HasEvent(int stateId, int eventId) const;  // 0x3c00e0
    StateInfo* _GetState(int stateId);            // 0x3c184c
    Event* _GetEvent(int stateId, int eventId) const;  // 0x3c1694
    int _SetState(int stateId, int eventId, void* data);  // 0x3c1938

    // _vptr                                      // +0x00
    Character* m_character;                       // +0x04
    std::map<int, StateInfo> m_states;            // +0x08 (STLport map: header 0x08..0x17, node count +0x18)
    uint8_t pad_1c[4];                            // +0x1c untouched
    StateInfo* m_curState;                        // +0x20 null when none; ctor 0
    uint32_t m_stateFlags;                        // +0x24 bit10 scare flag, bit11 stun flag (set by SM_SetScare/StunState a3)
    int m_pendingAnim;                            // +0x28 -1 = none; consumed by SM_SetAnim
    uint32_t m_statusFlags;                       // +0x2c bit1 stunned, bit2 scared (cleared on events 0x2a/0x2b/0x2c)
    uint32_t unk_30;                              // +0x30 name: m_walkSpeedBits (CSMove::UpdateType 0x3c0f18 stores PROPS_GetWalkSpeed here, Character +0x52c)
    bool m_limbusFlag;                            // +0x34 SM_SetLimbusState arg
    uint8_t pad_35[3];                            // +0x35
    int m_deadAnim;                               // +0x38 SM_SetDeadState second anim
    bool m_idleFlag;                              // +0x3c SM_SetIdleState arg
    uint8_t pad_3d;                               // +0x3d
    bool m_deadFlag;                              // +0x3e SM_SetDeadState arg
    bool m_deadAltAnim;                           // +0x3f selects the alternate CharAnimTable dead anim
    uint32_t unk_40;                              // +0x40 name: m_moveType (CSMove::UpdateType 0x3c0f18 stores the move type here, Character +0x53c)
    bool m_animLoop;                              // +0x44 SM_SetAnimState arg
    bool m_animFlag;                              // +0x45 SM_SetAnimState arg
    uint8_t pad_46[2];                            // +0x46
    int m_interactKind;                           // +0x48
    bool m_interactFlag;                          // +0x4c
    uint8_t pad_4d[3];                            // +0x4d
    void* m_interactTarget;                       // +0x50
    int m_skillId;                                // +0x54
    bool m_skillFlag;                             // +0x58
    uint8_t pad_59[3];                            // +0x59
    Character* m_reviveTarget = nullptr;          // +0x5c the character a reviver is reviving (CSReviving::OnFocus stores it, OnBlur ends its revived state); ctor 0
    int m_stateTime;                              // +0x60 ms in current state (reset on state change)
};
