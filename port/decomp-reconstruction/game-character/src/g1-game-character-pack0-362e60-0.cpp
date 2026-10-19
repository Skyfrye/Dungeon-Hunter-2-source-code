// Bodies of batch g1-game-character-pack0-362e60-0: the iPhone AI thunks (AISPlayerIPhone), and the CSAnim and CSAttack
// character states. Declarations come from dh2/AISPlayerIPhone.hpp, dh2/CSAnim.hpp and dh2/CSAttack.hpp.
//
// Offsets in comments are the original 32-bit offsets from the Character object (Hex-Rays "a3 + N"). The code reaches
// the fields of Character's bases through their base subobjects: CharAnimator +0x49c, CharStateMachine +0x4fc,
// CharProperties +0x560, CharTimers +0x3b4 and CharAI +0x3c8. A field at Character +0x520 is CharStateMachine +0x24,
// and so on.

#include "dh2/AISPlayerIPhone.hpp"

#include <cmath>
#include <cstdint>
#include <cstring>

#include "dh2/AISDefault.hpp"
#include "dh2/CSAnim.hpp"
#include "dh2/CSAttack.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// The DebugSwitches probe that CSAnim and CSAttack run in focus and blur: load the switch file, then read
// "isTracingCharState". The result is unused, as in the original.
void ProbeTracingCharState() {
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingCharState");
}

// CharProperties::PROPS_GetAttackSpeed returns the bits of a float as int, and CharAnimator::ANIM_SetSpeed takes the
// float. The bits are copied, not converted.
float FloatFromWord(std::uint32_t word) {
    float value = 0.0f;
    std::memcpy(&value, &word, sizeof value);
    return value;
}

std::uint32_t WordFromFloat(float value) {
    std::uint32_t word = 0;
    std::memcpy(&word, &value, sizeof word);
    return word;
}

// PyDataConstants "AnimStancedAnim" / "SL__LIST_IPHONE", masked with `mask`. When the masked value is non-zero, the
// character's stance (Character::GetAnimStance) is added to an anim id; otherwise nothing is added. The constant is read
// on each call, as the original reads it.
int AnimStanceOffset(const Character* character, int mask) {
    const int flags = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & mask;
    return flags != 0 ? character->GetAnimStance() : 0;
}

}  // namespace

// 0x3de174 _ZN15AISPlayerIPhoneD1Ev AISPlayerIPhone::~AISPlayerIPhone() (base-object destructor)
// The original stores the AISPlayerIPhone vtable (off_966CD8) and then calls AISPlayer::~AISPlayer. A C++ destructor
// does both itself, so the body is empty.
AISPlayerIPhone::~AISPlayerIPhone() {}

// 0x3de294 _ZN15AISPlayerIPhoneD0Ev AISPlayerIPhone::~AISPlayerIPhone() (deleting destructor)
// SKIPPED: compiler-generated. It runs the destructor above and then CustomFree(this); the C++ delete expression
// produces it.

// 0x3de1a8 _ZN15AISPlayerIPhone20OnTargetInMeleeRangeEv AISPlayerIPhone::OnTargetInMeleeRange() (thunk)
// Forwards to AISDefault::OnTargetInMeleeRange (0x3dc284) on the same object, bypassing the AISPlayer override. The
// Hex-Rays int return is r0 residue; the hook is void.
void AISPlayerIPhone::OnTargetInMeleeRange() {
    AISDefault::OnTargetInMeleeRange();
}

// 0x3de1ac _ZN15AISPlayerIPhone20OnTargetInCloseRangeEv AISPlayerIPhone::OnTargetInCloseRange() (thunk)
// Forwards to AISDefault::OnTargetInCloseRange (0x3dc300). The Hex-Rays _DWORD* return is r0 residue; the hook is void.
void AISPlayerIPhone::OnTargetInCloseRange() {
    AISDefault::OnTargetInCloseRange();
}

// 0x3de1b0 _ZN15AISPlayerIPhone21OnTargetInRangedRangeEv AISPlayerIPhone::OnTargetInRangedRange() (thunk)
// Forwards to AISDefault::OnTargetInRangedRange (0x3dc560). The Hex-Rays int return is r0 residue; the hook is void.
void AISPlayerIPhone::OnTargetInRangedRange() {
    AISDefault::OnTargetInRangedRange();
}

// 0x3de1b4 _ZN15AISPlayerIPhone18OnTargetOutOfRangeEv AISPlayerIPhone::OnTargetOutOfRange() (thunk)
// Forwards to AISDefault::OnTargetOutOfRange (0x3dc698). The Hex-Rays unsigned return is r0 residue; the hook is void.
void AISPlayerIPhone::OnTargetOutOfRange() {
    AISDefault::OnTargetOutOfRange();
}

// 0x3c0050 _ZN6CSAnimD1Ev CSAnim::~CSAnim() (complete-object destructor)
// Empty in the original. The CharState base destructor, which has no body either, runs through the C++ chain.
CSAnim::~CSAnim() {}

// 0x3c07bc _ZN6CSAnimD0Ev CSAnim::~CSAnim() (deleting destructor)
// SKIPPED: compiler-generated. It stores the vtable (off_9663A8) and calls CustomFree(this); the C++ delete expression
// produces it.

// 0x3c8b28 _ZN6CSAnim6OnInitEiP9CharacterP16CharStateMachine CSAnim::OnInit(int, Character*, CharStateMachine*)
// Registers two events on the character's own CharStateMachine (Character +0x4fc). The original does not read the sm
// argument, so it is left unnamed here.
void CSAnim::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine& stateMachine = *character;
    stateMachine.SM_RegisterEvent(stateId, 50001, 4, nullptr);
    stateMachine.SM_RegisterEvent(stateId, 50005, 6, nullptr);
}

// 0x3c1a14 _ZN6CSAnim7OnEventEiP9CharacterP16CharStateMachineiPv CSAnim::OnEvent(int, Character*, CharStateMachine*, int, void*)
// Event 34 sends the character back to idle when the CharStateMachine's loop flag (+0x44, Character +0x540) is set. The
// original's int return is incidental; the hook is void. The sm argument and the event data are not read.
void CSAnim::OnEvent(int stateId, Character* character, CharStateMachine* sm, int eventId, void* data) {
    if (eventId == 34) {
        CharStateMachine& stateMachine = *character;
        if (stateMachine.m_animLoop) {
            stateMachine.SM_SetIdleState(false);
        }
    }
}

// 0x3c1a3c _ZN6CSAnim8OnUpdateEiP9CharacterP16CharStateMachine CSAnim::OnUpdate(int, Character*, CharStateMachine*)
// While the character is not the dummy (Character +0x1480, m_isDummy) and the CharStateMachine's anim flag (+0x45,
// Character +0x541) is set, the character goes back to idle. The original passes the m_isDummy byte as the argument; the
// enclosing test has just found it zero, so the argument is false.
void CSAnim::OnUpdate(int stateId, Character* character, CharStateMachine* sm) {
    if (!character->m_isDummy) {
        CharStateMachine& stateMachine = *character;
        if (stateMachine.m_animFlag) {
            stateMachine.SM_SetIdleState(false);
        }
    }
}

// 0x3c2dd0 _ZN6CSAnim6OnBlurEiP9CharacterP16CharStateMachinei CSAnim::OnBlur(int, Character*, CharStateMachine*, int)
// Runs the "isTracingCharState" DebugSwitches probe and nothing else.
void CSAnim::OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) {
    ProbeTracingCharState();
}

// 0x3c324c _ZN6CSAnim7OnFocusEiP9CharacterP16CharStateMachineiiPv CSAnim::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
// Runs the DebugSwitches probe. Then the CharStateMachine's m_stateFlags word (Character +0x520, CharStateMachine +0x24)
// is written with 8768 when the anim flag (+0x45) is set and 9024 when it is clear, and the anim is set to -1.
void CSAnim::OnFocus(int stateId, Character* character, CharStateMachine* sm, int prevState, int eventId, void* data) {
    ProbeTracingCharState();
    CharStateMachine& stateMachine = *character;
    stateMachine.m_stateFlags = stateMachine.m_animFlag ? 8768u : 9024u;
    stateMachine.SM_SetAnim(-1);
}

// 0x3c0010 _ZN8CSAttackD1Ev CSAttack::~CSAttack() (complete-object destructor)
// Empty in the original, as for CSAnim. The CharState base destructor runs through the C++ chain.
CSAttack::~CSAttack() {}

// 0x3c0990 _ZN8CSAttackD0Ev CSAttack::~CSAttack() (deleting destructor)
// SKIPPED: compiler-generated. It stores the vtable (off_9663A8) and calls CustomFree(this).

// 0x3c8284 _ZN8CSAttack6OnInitEiP9CharacterP16CharStateMachine CSAttack::OnInit(int, Character*, CharStateMachine*)
// Registers ten events on the character's own CharStateMachine (Character +0x4fc). Event 50010 uses Character::CSM_Injured,
// events 50011, 50012 and 50013 use Character::CSM_Interrupted, and event 50001 uses Character::CSM_StoppedAttacking. The
// other events have the zero member pointer as their handler.
void CSAttack::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine& stateMachine = *character;
    stateMachine.SM_RegisterEvent(stateId, 34, 3, nullptr);
    stateMachine.SM_RegisterEvent(stateId, 50008, 12, nullptr);
    stateMachine.SM_RegisterEvent(stateId, 50005, 6, nullptr);
    stateMachine.SM_RegisterEvent(stateId, 50006, 7, nullptr);
    stateMachine.SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    stateMachine.SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    stateMachine.SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    stateMachine.SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    stateMachine.SM_RegisterEvent(stateId, 50001, 4, &Character::CSM_StoppedAttacking);
    stateMachine.SM_RegisterEvent(stateId, 50007, 15, nullptr);
}

// 0x3c1288 _ZN8CSAttack7OnEventEiP9CharacterP16CharStateMachineiPv CSAttack::OnEvent(int, Character*, CharStateMachine*, int, void*)
// Event 26 turns the character toward its target (CharAI m_target, Character +0x408). With no target, a player that has a
// ranged weapon and a heading turns toward the heading. Event 28 swaps the attack anim pair for a player: the pair is
// (m_w1, m_w2) of the CharAnimTable row, each plus the stance from AnimStancedAnim, and the physics body is unpinned when
// the character has a heading and pinned otherwise. Character::IsPlayer is the virtual at vtable offset 0x28; the
// original passes the state id as an extra argument, which IsPlayer does not take.
void CSAttack::OnEvent(int stateId, Character* character, CharStateMachine* sm, int eventId, void* data) {
    if (eventId == 26) {
        CharAI& ai = *character;
        GameObject* target = ai.m_target;
        if (target) {
            const Point3D<float>& targetPosition = target->GetTargetPosition();
            character->LookAt(targetPosition);
        } else {
            ItemInventory& inventory = *character;
            if (inventory.HasRangedWeapon() && character->m_hasHeading) {
                character->SetHeadingDirection(character->m_heading, true);
            }
        }
    } else if (eventId == 28 && character->IsPlayer()) {
        const Structs::CharAnim* entry = character->GetCharAnimTable();
        CharAnimator& animator = *character;
        if (character->m_hasHeading) {
            const int newAnim = AnimStanceOffset(character, 0x40) + entry->Attack;
            const int oldAnim = AnimStanceOffset(character, 0x80) + entry->AttackStatic;
            animator.ANIM_Swap(newAnim, oldAnim);
            if (PhysicalObject* physical = character->m_physicalObject) {
                physical->unpin();
            }
        } else {
            const int newAnim = AnimStanceOffset(character, 0x80) + entry->AttackStatic;
            const int oldAnim = AnimStanceOffset(character, 0x40) + entry->Attack;
            animator.ANIM_Swap(newAnim, oldAnim);
            if (PhysicalObject* physical = character->m_physicalObject) {
                physical->pin();
            }
        }
    }
}

// 0x3c14f8 _ZN8CSAttack8OnUpdateEiP9CharacterP16CharStateMachine CSAttack::OnUpdate(int, Character*, CharStateMachine*)
// Looks at the target (CharAI m_target), then compares the attack speed with the cached speed word (CharStateMachine
// +0x30, Character +0x52c). When they differ by 0.0001 or more, the cache is updated and the anim speed is set. The
// original's int return is the comparison result and is not used by the hook, which is void.
void CSAttack::OnUpdate(int stateId, Character* character, CharStateMachine* sm) {
    CharAI& ai = *character;
    character->LookAt(ai.m_target);

    CharProperties& props = *character;
    CharStateMachine& stateMachine = *character;
    const float attackSpeed = FloatFromWord(static_cast<std::uint32_t>(props.PROPS_GetAttackSpeed()));
    const bool unchanged = std::fabs(FloatFromWord(stateMachine.unk_30) - attackSpeed) < 0.0001;
    if (!unchanged) {
        stateMachine.unk_30 = WordFromFloat(attackSpeed);
        CharAnimator& animator = *character;
        animator.ANIM_SetSpeed(attackSpeed);
    }
}

// 0x3c3f74 _ZN8CSAttack6OnBlurEiP9CharacterP16CharStateMachinei CSAttack::OnBlur(int, Character*, CharStateMachine*, int)
// Runs the DebugSwitches probe. When the attack delay is non-zero, a CharTimers slot is started for it with event 42
// (the attack-delay timer). Then the physics body is pinned when the character has one.
void CSAttack::OnBlur(int stateId, Character* character, CharStateMachine* sm, int nextState) {
    ProbeTracingCharState();
    if (character->GetAttackDelay()) {
        const unsigned int attackDelay = static_cast<unsigned int>(character->GetAttackDelay());
        CharTimers& timers = *character;
        timers.TMR_Start(attackDelay, 0, 42, nullptr);
    }
    if (PhysicalObject* physical = character->m_physicalObject) {
        physical->pin();
    }
}

// 0x3c404c _ZN8CSAttack7OnFocusEiP9CharacterP16CharStateMachineiiPv CSAttack::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
// Runs the DebugSwitches probe. Sets the CharStateMachine m_stateFlags word (Character +0x520) to 9025 and, when the
// attack delay is non-zero, sets bit 0 of the m_statusFlags word (Character +0x528). Then it picks the anim:
//   player, prevState != 4: the m_w2 anim with the 0x80 stance, then pin the body;
//   player, prevState == 4: the m_w1 anim with the 0x40 stance, then unpin the body;
//   not a player, m_w2 != -1: the m_w2 anim with the 0x80 stance, then pin;
//   not a player, m_w2 == -1: the m_w1 anim with the 0x40 stance, then unpin.
// Finally the attack speed (PROPS_GetAttackSpeed) is cached in the speed word (+0x30, Character +0x52c), the anim speed
// is set, and the character stops sneaking.
void CSAttack::OnFocus(int stateId, Character* character, CharStateMachine* sm, int prevState, int eventId, void* data) {
    ProbeTracingCharState();
    CharStateMachine& stateMachine = *character;
    stateMachine.m_stateFlags = 9025u;
    if (character->GetAttackDelay()) {
        stateMachine.m_statusFlags |= 1u;
    }

    CharAnimator& animator = *character;
    const Structs::CharAnim* entry = character->GetCharAnimTable();
    bool pinAnim = false;
    if (character->IsPlayer()) {
        if (prevState != 4) {
            character->GetCharAnimTableId();  // result discarded, as in the original
            if ((ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & 0x80) != 0) {
                character->GetAnimStance();  // result discarded, as in the original
            }
            pinAnim = true;
        }
    } else {
        pinAnim = entry->AttackStatic != -1;
    }

    if (pinAnim) {
        animator.ANIM_Set(AnimStanceOffset(character, 0x80) + entry->AttackStatic);
        if (PhysicalObject* physical = character->m_physicalObject) {
            physical->pin();
        }
    } else {
        animator.ANIM_Set(AnimStanceOffset(character, 0x40) + entry->Attack);
        if (PhysicalObject* physical = character->m_physicalObject) {
            physical->unpin();
        }
    }

    CharProperties& props = *character;
    const float attackSpeed = FloatFromWord(static_cast<std::uint32_t>(props.PROPS_GetAttackSpeed()));
    stateMachine.unk_30 = WordFromFloat(attackSpeed);
    animator.ANIM_SetSpeed(attackSpeed);
    character->CancelSneaking();
}
