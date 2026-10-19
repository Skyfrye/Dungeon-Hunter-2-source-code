// CSRevived and CSReviving bodies (batch g1-game-character-pack6-54e920-0): the two revive states. CSRevived is the state a
// character enters once it has been revived. CSReviving is the state of the character that revives another one. Declarations
// come from dh2/CSRevived.hpp and dh2/CSReviving.hpp; the Character layout comes from dh2/Character.hpp.
//
// The original reaches the Character sub-objects by byte offset. Here they are base-class subobjects, and the original offsets
// stay in comments. Field mapping used by these bodies:
//   Character +0x520 (CharStateMachine::m_stateFlags, +0x24)         -> the state flags word (9025 in both states)
//   Character +0x378 (v2Controllable::m_controller), byte +0x08       -> v2Controller::m_blocked
//   Character +0x3c8 (CharAI, +0x40 m_target at Character +0x408)    -> the target, read through its handle by CSReviving::OnFocus
//   Character +0x558 (inside CharStateMachine, +0x5c, m_reviveTarget) -> the revivee pointer.
//   CharAnim row +0x68 (m_w26) for CSRevived, +0x6c (m_w27) for CSReviving -> the anim id base, added to the stance offset.
//
// Deleting destructors (vtable slot 0x04) are compiler-generated, so they have no body here (see the ledger).

#include "dh2/CSRevived.hpp"
#include "dh2/CSReviving.hpp"

#include <string>

#include "dh2/Character.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Runs the "isTracingCharState" probe that every focus and blur hook here runs: DebugSwitches::load on the singleton, then
// GetSwitch(name). The bool is discarded, as in the original.
void ProbeTracingSwitch() {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingCharState"));
}

// The stance offset added to an anim id: GetAnimStance() when the AnimStancedAnim bits `mask` are set, else 0. The original
// reads the constant, masks it, and replaces the masked value with GetAnimStance() when it is non-zero.
int AnimStanceOffset(const Character* character, int mask) {
    const int bits = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE");
    return (bits & mask) != 0 ? character->GetAnimStance() : 0;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// CSRevived
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c0060 CSRevived::~CSRevived()
// Complete-object destructor. The body is empty (asm: BX LR). The base destructor runs implicitly.
CSRevived::~CSRevived() {}

// 0x3c0064 CSRevived::OnUpdate(int,Character*,CharStateMachine*)
// Empty body (asm: BX LR). The arguments are not read.
void CSRevived::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c0068 CSRevived::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Empty body (asm: BX LR). The arguments are not read.
void CSRevived::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0754 CSRevived::~CSRevived() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c34cc CSRevived::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Runs the "isTracingCharState" probe. Then the state flags word (+0x520) becomes 9025 (0x2341), CancelSneaking runs, and the
// anim is set to the stance offset plus the CharAnim row's +0x68 field (m_w26; the name is not recovered). The stance offset
// applies when the AnimStancedAnim constant has bit 0x100000 set. Last, the controller's block flag (v2Controller +0x08) is
// set. The trailing arguments are not read. The original's SM_SetAnim result is dropped, as the CharState hook is void.
void CSRevived::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch();
    character->CharStateMachine::m_stateFlags = 9025u;
    character->CancelSneaking();
    const Structs::CharAnim* row = character->GetCharAnimTable();
    const int anim = AnimStanceOffset(character, 0x100000) + row->Revived;
    character->CharStateMachine::SM_SetAnim(anim);
    character->m_controller->m_blocked = true;
}

// 0x3c53ec CSRevived::OnBlur(int,Character*,CharStateMachine*,int)
// Runs the "isTracingCharState" probe, then revives the character with no reviver and no physics reset (Character::Revive(
// nullptr, true)), clears the controller's block flag, and adds the multiplayer highlight. Revive is partial in its own row
// (the online block and the offline re-placement are not made); this body calls it as the original does. The original's
// return value is the result of AddMultiplayerHighlight, which is void here (see the header).
void CSRevived::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch();
    character->Revive(nullptr, true);
    character->m_controller->m_blocked = false;
    character->AddMultiplayerHighlight();
}

// 0x3c8cec CSRevived::OnInit(int,Character*,CharStateMachine*)
// Registers one handler-less event on the CharStateMachine base (the original's (char*)a3 + 1276): event 34 with next state 3.
// The machine argument is not read. The original's int result is dropped.
void CSRevived::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
}

// ---------------------------------------------------------------------------------------------------------------------
// CSReviving
// ---------------------------------------------------------------------------------------------------------------------

// 0x3c0054 CSReviving::~CSReviving()
// Complete-object destructor. The body is empty (asm: BX LR). The base destructor runs implicitly.
CSReviving::~CSReviving() {}

// 0x3c0058 CSReviving::OnUpdate(int,Character*,CharStateMachine*)
// Empty body (asm: BX LR). The arguments are not read.
void CSReviving::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c005c CSReviving::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Empty body (asm: BX LR). The arguments are not read.
void CSReviving::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0788 CSReviving::~CSReviving() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c5294 CSReviving::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Runs the "isTracingCharState" probe, sets the state flags word (+0x520) to 9025, cancels sneaking, and sets the controller's block flag.
// Then the target (CharAI m_target at Character +0x408, read without a null test as the original does) is resolved through its handle and
// stored as the character being revived (CharStateMachine +0x5c, Character +0x558). AI_SetTarget clears the target, AI_SyncLastTarget copies
// it, and the anim is set to the stance offset plus the CharAnim row's +0x6c field (m_w27). The stance offset applies when the AnimStancedAnim
// constant has bit 0x80000 set.
void CSReviving::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch();
    character->CharStateMachine::m_stateFlags = 9025u;
    character->CancelSneaking();
    character->m_controller->m_blocked = true;

    ObjectHandle handle = character->CharAI::m_target->GetHandle();
    character->CharStateMachine::m_reviveTarget = handle;

    character->CharAI::AI_SetTarget(nullptr, false);
    character->CharAI::AI_SyncLastTarget();
    const Structs::CharAnim* row = character->GetCharAnimTable();
    const int anim = AnimStanceOffset(character, 0x80000) + row->Reviving;
    character->CharStateMachine::SM_SetAnim(anim);
}

// 0x3c6724 CSReviving::OnBlur(int,Character*,CharStateMachine*,int)
// Runs the "isTracingCharState" probe, then ends the revived character's revived state (SM_SetRevivedState(nullptr, false) on the
// CharStateMachine of the character stored at Character +0x558) and clears the controller's block flag. The original returns the int of
// SM_SetRevivedState; the void slot drops it.
void CSReviving::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch();
    character->CharStateMachine::m_reviveTarget->CharStateMachine::SM_SetRevivedState(nullptr, false);
    character->m_controller->m_blocked = false;
}

// 0x3c8b8c CSReviving::OnInit(int,Character*,CharStateMachine*)
// Registers eight events on the CharStateMachine base (the original's (char*)a3 + 1276), in the original's call order. Each row
// is (state, event, next state, handler), and a null handler is the original's zero pointer-to-member. The machine argument is
// not read. The original's int result of the last registration is dropped.
void CSReviving::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50005, 6, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50001, 4, nullptr);
}
