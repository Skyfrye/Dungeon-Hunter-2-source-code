// CSScared and CSSkill bodies (batch g1-game-character-pack7-7fd0af-0): the scared state (fleeing, with a random
// head-towards offset on the OnEvent 35 and OnFocus paths) and the skill state (skill event registrations, the
// is_stoppable flag, the blur and focus flag handling). Declarations come from dh2/CSScared.hpp and dh2/CSSkill.hpp.
//
// The Hex-Rays pseudocode for CSScared::OnEvent and CSScared::OnFocus drops the float arithmetic of the random
// head-towards vector and shows v2Controller::Cmd_HeadTowards with one argument. Those two bodies are rebuilt from the
// disassembly (decomp_asm.py --address 0x3c2b28 and 0x3c45c4), which shows the Point3D overload and the draw order.
// The constants are named by their bit patterns: 0x38D1B717 is 1.0e-4f, 0x3951B717 is 2.0e-4f, the draw range is the
// MOVW immediate 0x270E (9998) and the sign range is MOV 0x64 (100). Every draw uses the ordinary stream: the constant
// specialised clone _ZN6Random9GetRandomEib.clone.1_2 (0x3c26a0) advances s_seed and debug counter [0] only.

#include "dh2/CSScared.hpp"
#include "dh2/CSSkill.hpp"

#include "core-platform/lc_api.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/Random.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Offset scale and bias, by bit pattern: the draw is multiplied by 1.0e-4f (0x38D1B717) and 2.0e-4f (0x3951B717) is added.
constexpr float kDrawScale = 1.0e-4f;
constexpr float kDrawBias = 2.0e-4f;

// The draw range is 9998, so the offset lies in (0, 1]. The sign draw range is 100.
constexpr int kDrawRange = 9998;
constexpr int kSignRange = 100;

// A sign draw of at most 49 negates its component (CMP R0, #0x31 and LDRLE in the original).
constexpr int kNegateAtOrBelow = 49;

// The tracing-switch probe that most state bodies run first. The original loads the switch file, reads the named switch
// and discards the result.
void ProbeTracingSwitch(const char* name) {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(name);
}

// The random head-towards vector of CSScared::OnEvent and CSScared::OnFocus. X and Y are drawn first, then the sign draws
// for X and then Y, all on the ordinary stream. Z stays 0.
Point3D<float> RandomHeadTowardsVector() {
    float x = static_cast<float>(static_cast<int>(Random::GetRandom(kDrawRange, false))) * kDrawScale + kDrawBias;
    float y = static_cast<float>(static_cast<int>(Random::GetRandom(kDrawRange, false))) * kDrawScale + kDrawBias;
    if (static_cast<int>(Random::GetRandom(kSignRange, false)) <= kNegateAtOrBelow) {
        x = -x;
    }
    if (static_cast<int>(Random::GetRandom(kSignRange, false)) <= kNegateAtOrBelow) {
        y = -y;
    }
    return Point3D<float>{x, y, 0.0f};
}

// Row `id` of Arrays::CharAnimTable, at host element size. The original reads the 32-bit row at stride 160, and the field
// it reads at +0x7c is m_w31.
const Structs::CharAnim& CharAnimRow(int id) {
    const auto* rows = static_cast<const Structs::CharAnim*>(static_cast<const void*>(Arrays::CharAnimTable::members));
    return rows[id];
}

}  // namespace

// 0x3c0028 CSScared::~CSScared()
// Empty: the Hex-Rays body and the disassembly are a bare return (bx lr). The base destructor runs implicitly, as in CSIdle.
CSScared::~CSScared() {}

// 0x3c08f4 CSScared::~CSScared() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above. The original stores the
// CharState vtable (off_9663A8) and calls CustomFree(this), which C++ delete covers.

// 0x3c2b28 CSScared::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Event 35 (0x23) is the head-towards event: it sends the character toward a random offset point (the vector of
// RandomHeadTowardsVector) through the controller at Character +0x378. Other events do nothing.
void CSScared::OnEvent(int, Character* character, CharStateMachine*, int eventId, void*) {
    if (eventId != 35) {
        return;
    }
    const Point3D<float> offset = RandomHeadTowardsVector();
    character->m_controller->Cmd_HeadTowards(offset);
}

// 0x3c45c4 CSScared::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes the tracing switch, sets the state flags to 0x2240 (the original's Character +0x520, CharStateMachine +0x24) and
// plays the scared anim: the CharAnimTable row's m_w31 plus the stance offset. The stance is added only when the
// AnimStancedAnim constant has bit 0x100 set (then it is Character::GetAnimStance()). The head-towards command and the
// random vector come next, then the character cancels sneaking and its physical object is unpinned when present.
void CSScared::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch("isTracingCharState");
    character->m_stateFlags = 0x2240u;

    const int animRow = CharAnimRow(character->GetCharAnimTableId()).Scared;
    int stance = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & 0x100;
    if (stance != 0) {
        stance = character->GetAnimStance();
    }
    character->ANIM_Set(stance + animRow);

    const Point3D<float> offset = RandomHeadTowardsVector();
    character->m_controller->Cmd_HeadTowards(offset);

    character->CancelSneaking();
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->unpin();
    }
}

// 0x3c4788 CSScared::OnUpdate(int,Character*,CharStateMachine*)
// When the scared bit (CharStateMachine +0x2c, bit 0x4) is clear, probes the CSScared tracing switch and stops the anim
// loop (CharAnimator::ANIM_StopLoop(false)). Nothing happens while the scared bit is set.
void CSScared::OnUpdate(int, Character* character, CharStateMachine*) {
    if ((character->m_statusFlags & 0x4u) == 0) {
        ProbeTracingSwitch("isTracingCSScared");
        character->ANIM_StopLoop(false);
    }
}

// 0x3c4834 CSScared::OnBlur(int,Character*,CharStateMachine*,int)
// Probes the tracing switch, sends the controller head-towards command to a null GameObject target (the original's
// Cmd_HeadTowards(GameObject*) with nullptr), then pins the physical object when present.
void CSScared::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch("isTracingCharState");
    character->m_controller->Cmd_HeadTowards(static_cast<GameObject*>(nullptr));
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->pin();
    }
}

// 0x3c861c CSScared::OnInit(int,Character*,CharStateMachine*)
// Registers six events on the character's CharStateMachine base (Character +0x4fc). The original reads the Character and
// not the sm argument, so the registrations go through the base subobject. A null handler registers no callback.
void CSScared::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 44, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
}

// 0x3c0014 CSSkill::~CSSkill()
// Empty: bare return in the original (bx lr), as for CSScared.
CSSkill::~CSSkill() {}

// 0x3c0018 CSSkill::OnUpdate(int,Character*,CharStateMachine*)
// Empty: the original is a bare return (bx lr).
void CSSkill::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c095c CSSkill::~CSSkill() (deleting destructor, vtable slot 0x04)
// Not written: compiler-generated. The original stores the CharState vtable (off_9663A8) and calls CustomFree(this).

// 0x3c0ac8 CSSkill::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Event 40 (0x28) with the data string "is_stoppable" sets bit 0x8000 of the CharStateMachine state flags (Character +0x520).
void CSSkill::OnEvent(int, Character* character, CharStateMachine*, int eventId, void* data) {
    if (eventId == 40 && LC_API_STRCMP(static_cast<const char*>(data), "is_stoppable") == 0) {
        character->m_stateFlags |= 0x8000u;
    }
}

// 0x3c434c CSSkill::OnBlur(int,Character*,CharStateMachine*,int)
// Probes the tracing switch, syncs the last target, stops the character, raises event 31, then:
//   - when the status bit 0x100 is set, starts timer 10 (duration 10, repeat 0, event 48);
//   - otherwise pins the physical object when present.
// For a monster, the boss bit 0x10000 of the state flags is cleared unless the character is a mini boss or a boss.
void CSSkill::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch("isTracingCharState");
    character->CharAI::AI_SyncLastTarget();
    character->GameObject::Stop();
    character->RaiseEvent(31, nullptr);

    if ((character->m_statusFlags & 0x100u) != 0) {
        character->CharTimers::TMR_Start(10u, 0, 48, nullptr);
    } else if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->pin();
    }

    if (!character->IsMonster()) {
        return;
    }
    if (!character->IsMiniBoss() && !character->IsBoss()) {
        character->m_stateFlags &= ~0x10000u;
    }
}

// 0x3c4480 CSSkill::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Probes the tracing switch. Sets the state flags to 0x6341, clears status bits 0x40 and 0x100, raises event 30 and
// clears the pending anim (SM_SetAnim(-1)). Then: anim speed 1.0, target seeking off (the byte at Character +0x412 is
// CharAI m_targetSeeking, +0x4a in the CharAI layout), cancel sneaking, status bit 0x100 when the skill flag is set
// (CharStateMachine +0x58), unpin the physical object when present. For a monster, the boss bit 0x10000 is set unless the
// character is a mini boss or a boss.
void CSSkill::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch("isTracingCharState");
    character->m_stateFlags = 0x6341u;
    character->m_statusFlags &= ~0x140u;
    character->RaiseEvent(30, nullptr);
    character->SM_SetAnim(-1);
    character->ANIM_SetSpeed(1.0f);
    character->m_targetSeeking = false;
    character->CancelSneaking();
    if (character->m_skillFlag) {
        character->m_statusFlags |= 0x100u;
    }
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->unpin();
    }

    if (character->IsMonster()) {
        if (!character->IsMiniBoss() && !character->IsBoss()) {
            character->m_stateFlags |= 0x10000u;
        }
    }
}

// 0x3c8438 CSSkill::OnInit(int,Character*,CharStateMachine*)
// Registers nine events on the character's CharStateMachine base (Character +0x4fc), in the original's call order.
// Event 34 and 50008 take no callback. 50001, 50004 and 50005 use CSM_StopSkill, the rest use CSM_Interrupted.
void CSSkill::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50001, 4, &Character::CSM_StopSkill);
    machine->SM_RegisterEvent(stateId, 50004, 5, &Character::CSM_StopSkill);
    machine->SM_RegisterEvent(stateId, 50005, 6, &Character::CSM_StopSkill);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
}
