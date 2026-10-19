// CSLiftingIdle and CSLiftingMove bodies (batch g1-game-character-pack4-c1ee6a-0): the idle and move states a character is
// in while it carries a LiftableObject. Declarations come from dh2/CSLiftingIdle.hpp and dh2/CSLiftingMove.hpp. Each PARTIAL
// comment names what is missing or unverified, and the ledger rows in game-character/ledger.d/g1-game-character-pack4-c1ee6a-0.csv
// repeat it.
//
// The held object is the CharStateMachine pointer at +0x50 (Character +0x54c, m_interactTarget). The original reads it as a
// LiftableObject (+0xf4 is ObjectBase m_goId, +0x390 is LiftableObject m_owner), so it is cast to that class here.
//
// The hooks that return an int in the original return a value that the void CharState slot cannot carry. Those rows are
// partial, and the comment names the value that is dropped.

#include "dh2/CSLiftingIdle.hpp"
#include "dh2/CSLiftingMove.hpp"

#include <cstdint>
#include <cstring>

#include "dh2/CSIdle.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// CharStateMachine +0x24 (the original's Character +0x520) takes these values in focus: 0x2380 for the idle state and
// 0x23c1 for the move state.
constexpr std::uint32_t kLiftingIdleFlags = 9088u;
constexpr std::uint32_t kLiftingMoveFlags = 9153u;

// The AnimStancedAnim/SL__LIST_IPHONE bit that adds the character's stance to the anim in both focus hooks (0x1000000).
constexpr int kStanceBit = 0x1000000;

// Event 63 (no heading) is raised by the move state's update.
constexpr int kEventNoHeading = 63;

// OnEvent: event 6 starts an interaction with the held object. Interaction kind 5 goes with it (the original passes the
// literal 5 as (Character*)&byte_5).
constexpr int kEventInteract = 6;
constexpr int kInteractKindHeld = 5;

// The LiftableObject GO_IDS value that the blur hooks check (GameObject +0xf4 == 6). No enumerator is named for it.
constexpr std::int32_t kLiftableGoId = 6;

// Runs the isTracingCharState probe that the focus and blur hooks perform: the original calls DebugSwitches::load on the
// singleton, then GetSwitch. The bool is discarded, as in the original.
void ProbeTracingSwitch() {
    DebugSwitches::s_inst.load();
    DebugSwitches::s_inst.GetSwitch("isTracingCharState");
}

// The stance offset that focus adds to the anim: GetAnimStance() when the AnimStancedAnim constant has bit 0x1000000
// set, otherwise 0.
int StanceOffset(const Character* character) {
    int stance = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & kStanceBit;
    if (stance != 0) {
        stance = character->GetAnimStance();
    }
    return stance;
}

// Reinterprets the bits that CharProperties::PROPS_GetWalkSpeed returns as a float (the original's *(float *)&WalkSpeed).
float FloatFromBits(std::int32_t bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// The exit test of the blur hooks. The original drops the held object unless the next state is 13, 18 or 19: it tests
// (1 << nextState) & 0xc2000 for nextState <= 0x13, and any larger value takes the drop path.
bool KeepsHeldObject(int nextState) {
    const auto state = static_cast<std::uint32_t>(nextState);
    return state <= 0x13u && ((1u << state) & 0xC2000u) != 0u;
}

// Releases the held object as the blur hooks do. When it is a LiftableObject in state 6 that this character owns, it is
// dropped. The held pointer is cleared in every case where it was set.
void ReleaseHeldObject(Character* character) {
    void* held = character->m_interactTarget;
    if (held == nullptr) {
        return;
    }
    auto* object = static_cast<LiftableObject*>(held);
    if (static_cast<std::int32_t>(object->m_goId) == kLiftableGoId && object->m_owner == character) {
        object->Drop();
    }
    character->m_interactTarget = nullptr;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CSLiftingIdle
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c0074 CSLiftingIdle::~CSLiftingIdle()
// Empty body (4-byte bx lr). No vptr store and no member cleanup appear; the base destructor runs implicitly, as in CSIdle.
CSLiftingIdle::~CSLiftingIdle() {}

// 0x3c06ec CSLiftingIdle::~CSLiftingIdle() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c0e90 CSLiftingIdle::OnUpdate(int,Character*,CharStateMachine*)
// PARTIAL. The original tail-calls CSIdle::IdleCommonUpdate and returns its int (see the CSIdle rows). This void slot drops
// that result, as CSIdle::OnUpdate does; use of the result by CharStateMachine is unverified. IdleCommonUpdate is itself
// partial (its COnline gate and PlayerManager stand-ins), so the push-apart it performs is partial here too.
void CSLiftingIdle::OnUpdate(int eventId, Character* character, CharStateMachine* machine) {
    CSIdle::IdleCommonUpdate(eventId, character, machine);
}

// 0x3c3140 CSLiftingIdle::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes the tracing switch, sets CharStateMachine m_stateFlags to 0x2380, then plays the lifting idle anim (the CharAnim
// row field at +0x50, pydata member m_w20; its name is not recovered) plus the stance offset. The trailing arguments are not
// read. The original's int return is ANIM_Set's void result.
void CSLiftingIdle::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch();
    character->m_stateFlags = kLiftingIdleFlags;
    const int idleAnim = character->GetCharAnimTable()->LiftIdle;
    character->CharAnimator::ANIM_Set(idleAnim + StanceOffset(character));
}

// 0x3c50b4 CSLiftingIdle::OnBlur(int,Character*,CharStateMachine*,int)
// Probes the tracing switch. Unless the next state is 13, 18 or 19, the held lifted object is dropped when this character
// owns it (see ReleaseHeldObject), and the held pointer is cleared.
void CSLiftingIdle::OnBlur(int, Character* character, CharStateMachine*, int nextState) {
    ProbeTracingSwitch();
    if (!KeepsHeldObject(nextState)) {
        ReleaseHeldObject(character);
    }
}

// 0x3c6608 CSLiftingIdle::OnEvent(int,Character*,CharStateMachine*,int,void*)
// PARTIAL. On event 6 with a held object, the original returns CharStateMachine::SM_SetInteractState(5, false, held, true),
// starting the interaction with the held object. This void slot drops that int, and use of it by CharStateMachine is
// unverified. On every other path the original returns an undefined r0. The data argument is not read.
void CSLiftingIdle::OnEvent(int, Character* character, CharStateMachine*, int event, void*) {
    if (event == kEventInteract) {
        void* held = character->m_interactTarget;
        if (held != nullptr) {
            character->CharStateMachine::SM_SetInteractState(kInteractKindHeld, false, held, true);
        }
    }
}

// 0x3c8d5c CSLiftingIdle::OnInit(int,Character*,CharStateMachine*)
// Registers nine events on the CharStateMachine base of the character (the original's (char*)a3 + 1276), in the original's
// call order. A null handler is the original's zero pointer-to-member. The original's return value is the last registration's
// result, which the void hook drops.
void CSLiftingIdle::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 35, 18, nullptr);
    machine->SM_RegisterEvent(stateId, 34, 18, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50001, 19, nullptr);
    machine->SM_RegisterEvent(stateId, 50002, 18, nullptr);
}

// ---------------------------------------------------------------------------------------------------------------------
// CSLiftingMove
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c0078 CSLiftingMove::~CSLiftingMove()
// Empty body (4-byte bx lr). No vptr store and no member cleanup appear; the base destructor runs implicitly, as in CSMove.
CSLiftingMove::~CSLiftingMove() {}

// 0x3c06b8 CSLiftingMove::~CSLiftingMove() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c0ea0 CSLiftingMove::OnUpdate(int,Character*,CharStateMachine*)
// Raises event 63 when the character has no heading, or when it has no target (CharAI m_target at +0x40), is not a player
// (the IsPlayer slot, +0x28 of the primary vtable) and is at its destination. The eventId argument is only passed to that
// IsPlayer call in the original, where it is ignored.
void CSLiftingMove::OnUpdate(int, Character* character, CharStateMachine*) {
    if (!character->m_hasHeading ||
        (character->m_target == nullptr && !character->IsPlayer() && character->GameObject::IsAtDestination())) {
        character->RaiseEvent(kEventNoHeading, nullptr);
    }
}

// 0x3c3e40 CSLiftingMove::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes the tracing switch, sets CharStateMachine m_stateFlags to 0x23c1, plays the lifting move anim (the CharAnim row
// field at +0x54, pydata member m_w21; its name is not recovered) plus the stance offset, sets the anim speed to the walk speed
// (PROPS_GetWalkSpeed returns the float bits), then unpins the physics object. The trailing arguments are not read. The original's
// int return is the unpin result (void) or 0 when there is no physics object, and the void hook drops it.
void CSLiftingMove::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch();
    character->m_stateFlags = kLiftingMoveFlags;
    const int moveAnim = character->GetCharAnimTable()->LiftMove;
    character->CharAnimator::ANIM_Set(moveAnim + StanceOffset(character));
    const std::int32_t speedBits = character->CharProperties::PROPS_GetWalkSpeed();
    character->CharAnimator::ANIM_SetSpeed(FloatFromBits(speedBits));
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->unpin();
    }
}

// 0x3c5198 CSLiftingMove::OnBlur(int,Character*,CharStateMachine*,int)
// PARTIAL. The original returns int: the register left by the last call, or LiftableObject::Drop's bool on the path that drops
// the held object. This void slot drops it, as the other blur hooks do; use of the result by CharStateMachine is unverified.
// Probes the tracing switch, stops the actor, pins the physics object, then releases the held object as CSLiftingIdle does.
void CSLiftingMove::OnBlur(int, Character* character, CharStateMachine*, int nextState) {
    ProbeTracingSwitch();
    character->GameObject::Stop();
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->pin();
    }
    if (!KeepsHeldObject(nextState)) {
        ReleaseHeldObject(character);
    }
}

// 0x3c663c CSLiftingMove::OnEvent(int,Character*,CharStateMachine*,int,void*)
// PARTIAL. Same code as CSLiftingIdle::OnEvent (0x3c6608): on event 6 with a held object it returns
// CharStateMachine::SM_SetInteractState(5, false, held, true). This void slot drops that int, and use of it by
// CharStateMachine is unverified. The data argument is not read.
void CSLiftingMove::OnEvent(int, Character* character, CharStateMachine*, int event, void*) {
    if (event == kEventInteract) {
        void* held = character->m_interactTarget;
        if (held != nullptr) {
            character->CharStateMachine::SM_SetInteractState(kInteractKindHeld, false, held, true);
        }
    }
}

// 0x3c8ee0 CSLiftingMove::OnInit(int,Character*,CharStateMachine*)
// Registers six events on the CharStateMachine base of the character (the original's (char*)a3 + 1276), in the original's call
// order. A null handler is the original's zero pointer-to-member. The original's return value is the last registration's result,
// which the void hook drops.
void CSLiftingMove::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, kEventNoHeading, 18, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
}
