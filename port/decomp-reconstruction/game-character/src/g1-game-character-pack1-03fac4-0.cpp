// CSCast and CSDead bodies (batch g1-game-character-pack1-03fac4-0): the cast and dead character states.
// Declarations come from dh2/CSCast.hpp and dh2/CSDead.hpp; the Character layout comes from dh2/Character.hpp.
//
// The original reaches the Character sub-objects by byte offset. Here they are base-class subobjects, and the
// original offsets stay in comments: CharAnimator +0x49c (1180), CharTimers +0x3b4 (948), CharAI +0x3c8,
// CharStateMachine +0x4fc (1276), CharProperties +0x560 (1376). Field mapping used by these bodies:
//   Character +0x378 (v2Controllable::m_controller)   -> v2Controller, m_blocked at +0x08
//   Character +0x412 (CharAI::m_targetSeeking, +0x4a) -> cleared by the cast focus
//   Character +0x520 (CharStateMachine::m_stateFlags, +0x24) -> the state flags word
//   Character +0x53a (CharStateMachine::m_deadFlag, +0x3e)   -> the dead flag
//   Character +0x4e8 (CharAnimator::m_currentAnim, +0x4c)     -> compared with -1
//   Character +0x2dc (GameObject::m_physicalObject)           -> the physics body
//
// Deleting destructors (vtable slot 0x04) are compiler-generated, so they have no body here (see the ledger).

#include "dh2/CSCast.hpp"
#include "dh2/CSDead.hpp"

#include <string>

#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// The trace probe that the focus and blur hooks run: DebugSwitches::load(&s_inst), then GetSwitch(name) on the same
// singleton. The bool is discarded, as in the original.
void ProbeSwitch(const char* name) {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string(name));
}

// The despawn delay used by the dead state: PyDataConstants "CharacterDesign" / "Despawn_Delay" (dword_99F758 is the
// PyDataConstants pointer of the Application singleton, reached through ApplicationGetPyDataConstants()).
unsigned int DespawnDelay() {
    return static_cast<unsigned int>(ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "Despawn_Delay"));
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CSCast
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c001c CSCast::~CSCast()
// Complete-object destructor. The body is empty (asm: BX LR).
CSCast::~CSCast() {}

// 0x3c0020 CSCast::OnUpdate(int,Character *,CharStateMachine *)
// Empty body (asm: BX LR). The arguments are not read.
void CSCast::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c0024 CSCast::OnEvent(int,Character *,CharStateMachine *,int,void *)
// Empty body (asm: BX LR). The arguments are not read.
void CSCast::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0928 CSCast::~CSCast() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c3934 CSCast::OnBlur(int,Character *,CharStateMachine *,int)
// Runs the "isTracingCharState" probe, then raises event 33 on the character. The original returns the int result of
// RaiseEvent; the CharState hook is void, so the result is dropped (see the header).
void CSCast::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeSwitch("isTracingCharState");
    character->RaiseEvent(33, nullptr);
}

// 0x3c39d0 CSCast::OnFocus(int,Character *,CharStateMachine *,int,int,void *)
// Runs the "isTracingCharState" probe, then sets the state flags word (CharStateMachine +0x24, the original's
// Character +0x520) to 25345 (0x6301), raises event 32, clears the state animation (SM_SetAnim(-1)), sets the animator
// speed to 1.0, clears CharAI m_targetSeeking (+0x4a, the original's Character +0x412), and cancels sneaking.
// The trailing arguments (previous state, event id and data) are not read.
void CSCast::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeSwitch("isTracingCharState");
    character->CharStateMachine::m_stateFlags = 25345u;
    character->RaiseEvent(32, nullptr);
    character->CharStateMachine::SM_SetAnim(-1);
    character->CharAnimator::ANIM_SetSpeed(1.0f);
    character->CharAI::m_targetSeeking = false;
    character->CancelSneaking();
}

// 0x3c85b8 CSCast::OnInit(int,Character *,CharStateMachine *)
// Registers two handler-less events for this state on the character's CharStateMachine subobject (the original's
// (char*)a3 + 1276): event 34 with next state 3, and event 50008 with next state 12. The machine argument is not read.
void CSCast::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
}

// ---------------------------------------------------------------------------------------------------------------------
// CSDead
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c0048 CSDead::~CSDead()
// Complete-object destructor. The body is empty (asm: BX LR).
CSDead::~CSDead() {}

// 0x3c004c CSDead::OnUpdate(int,Character *,CharStateMachine *)
// Empty body (asm: BX LR). The arguments are not read.
void CSDead::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c0824 CSDead::~CSDead() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c499c CSDead::OnBlur(int,Character *,CharStateMachine *,int)
// Runs the "isTracingCharState" probe, clears the controller's block flag (v2Controller m_blocked, +0x08), and resets the
// filter of the physical object (GameObject +0x2dc) when there is one. The original's return value is the reset call's
// result, which is void (see the header).
void CSDead::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeSwitch("isTracingCharState");
    character->m_controller->m_blocked = false;
    PhysicalObject* physical = character->m_physicalObject;
    if (physical != nullptr) {
        physical->resetFilter();
    }
}

// 0x3c4c3c CSDead::OnEvent(int,Character *,CharStateMachine *,int,void *)
// Only event 34 is handled. The "isTracingCSDead" probe runs, the physical object is detached (SetPhysicalObject with a
// null body and pin false), and a character that is not a player (IsPlayer, vtable slot +0x28) starts the despawn timer:
// CharTimers::TMR_Start(despawn delay, 0, 46, nullptr), then the state flags word (+0x520) becomes 64. Other events do nothing.
void CSDead::OnEvent(int, Character* character, CharStateMachine*, int eventId, void*) {
    if (eventId != 34) {
        return;
    }
    ProbeSwitch("isTracingCSDead");
    character->GameObject::SetPhysicalObject(nullptr, false);
    if (!character->IsPlayer()) {
        character->CharTimers::TMR_Start(DespawnDelay(), 0, 46, nullptr);
        character->CharStateMachine::m_stateFlags = 64u;
    }
}

// 0x3c4d50 CSDead::OnFocus(int,Character *,CharStateMachine *,int,int,void *)
// Runs the "isTracingCharState" probe and then the "isTracingCSDead" probe. Sets the state flags word (+0x520) to 577
// (0x241), with bit 0x2000 added when the character is a player. Points the controller at the focus target (the data
// argument, a GameObject*), sets the controller's block flag, and removes the multiplayer highlight.
// Animation: when the dead flag (CharStateMachine +0x3e, Character +0x53a) is clear, SM_SetAnim(-1) runs first. Both paths
// then stop the animator loop. When the animator has no current anim (CharAnimator m_currentAnim, Character +0x4e8, is -1)
// and the character is not a player, the despawn timer starts (the original's goto skips it otherwise).
// Last: the physical object's filter is set (group 0, category 0x51C, mask 3, not a sensor) when there is one; sneaking is
// cancelled; state and self FX are disabled; every buff is removed; events 42, 44 and 43 are raised in that order.
void CSDead::OnFocus(int, Character* character, CharStateMachine*, int, int, void* data) {
    ProbeSwitch("isTracingCharState");
    ProbeSwitch("isTracingCSDead");
    character->CharStateMachine::m_stateFlags = 577u;
    if (character->IsPlayer()) {
        character->CharStateMachine::m_stateFlags |= 0x2000u;
    }
    character->m_controller->Cmd_LookAt(static_cast<GameObject*>(data));
    character->m_controller->m_blocked = true;
    character->RemoveMultiplayerHighlight();
    if (character->CharStateMachine::m_deadFlag) {
        character->CharAnimator::ANIM_StopLoop(false);
    } else {
        character->CharStateMachine::SM_SetAnim(-1);
        character->CharAnimator::ANIM_StopLoop(false);
    }
    if (character->CharAnimator::m_currentAnim == -1 && !character->IsPlayer()) {
        character->CharTimers::TMR_Start(DespawnDelay(), 0, 46, nullptr);
    }
    PhysicalObject* physical = character->m_physicalObject;
    if (physical != nullptr) {
        physical->setFilter(0, 0x51C, 3, false);
    }
    character->CancelSneaking();
    character->DisableStateFX();
    character->DisableSelfFX();
    character->CharProperties::PROPS_RemoveAllBuffs();
    character->RaiseEvent(42, nullptr);
    character->RaiseEvent(44, nullptr);
    character->RaiseEvent(43, nullptr);
}

// 0x3c8920 CSDead::OnInit(int,Character *,CharStateMachine *)
// Registers two handler-less events for this state on the character's CharStateMachine subobject (the original's
// (char*)a3 + 1276): event 46 with next state 2, and event 50009 with next state 16. The machine argument is not read.
void CSDead::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 46, 2, nullptr);
    machine->SM_RegisterEvent(stateId, 50009, 16, nullptr);
}
