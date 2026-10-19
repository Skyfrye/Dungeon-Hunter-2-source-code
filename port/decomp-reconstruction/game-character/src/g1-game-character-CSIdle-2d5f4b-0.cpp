// CSIdle bodies (batch g1-game-character-CSIdle-2d5f4b-0): the idle state. Focus sets the idle animation, blur clears the
// idle flag, init registers the state's events, and the update runs IdleCommonUpdate, which pushes apart overlapping idle
// player characters. Declarations come from dh2/CSIdle.hpp.

#include "dh2/CSIdle.hpp"

#include <cmath>
#include <cstdint>

#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// The state id that IdleCommonUpdate tests another character's state against. The original uses the literal 3.
constexpr int kOtherIdleState = 3;

// The value OnFocus writes into CharStateMachine +0x24 (the original's Character +0x520): 0x2380.
constexpr std::uint32_t kFocusStateFlags = 9088u;

// The AnimStancedAnim/SL__LIST_IPHONE mask that selects the stance offset in OnFocus (the original's `& 2`).
constexpr int kStanceBit = 2;

// Runs the tracing-switch probe that OnFocus and OnBlur both perform. The bool is discarded, as in the original.
void ProbeTracingSwitch() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingCharState");
}

}  // namespace

// 0x3c0000 CSIdle::~CSIdle()
// Empty: the Hex-Rays body is a bare return (4-byte bx lr). No member cleanup appears, and the base destructor runs
// implicitly, as in CSMove.
CSIdle::~CSIdle() {}

// 0x3c09f8 CSIdle::~CSIdle() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c0004 CSIdle::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Empty body (4-byte bx lr). The arguments are not read.
void CSIdle::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0b78 CSIdle::IdleCommonUpdate(int,Character*,CharStateMachine*)
// A character with a heading raises event 0 and returns. Otherwise only a player character acts, and only offline (the online-game flag
// clear): when its time in state reaches PlayerInterPenetration_Delay, every other player character that is idle (state 3) for as long
// is pushed apart when closer than PlayerInterPenetration_Dist: both are sent (Cmd_MoveTo) away from each other by 0.75 of the overlap.
// The original returns an int (RaiseEvent's result on the first exit, leftover registers otherwise); the declaration is static void.
void CSIdle::IdleCommonUpdate(int, Character* character, CharStateMachine*) {
    if (character->m_hasHeading != 0) {
        character->RaiseEvent(0, nullptr);
        return;
    }
    if (!character->IsPlayer()) {
        return;
    }
    if (GetOnlineGameFlag()) {
        return;
    }

    // Unsigned compares, as in the original (its DWORD operands): the delay must not exceed the character's time in state.
    const auto delay = static_cast<std::uint32_t>(
        ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "PlayerInterPenetration_Delay"));
    if (delay > static_cast<std::uint32_t>(character->m_stateTime)) {
        return;
    }

    // The loop visits the players from index 0 (the online flag tested above is 0 here). The body reads the other player's
    // character as a Character* (it is compared with this character, and read at Character +0x160, +0x378, +0x4fc, +0x55c).
    const int playerCount = dword_99F76C->GetNumPlayers();
    for (int index = 0; index < playerCount; ++index) {
        Character* other = dword_99F76C->GetPlayer(index, false)->unk_660;
        if (other == nullptr || other == character) {
            continue;
        }
        if (other->SM_GetState() != kOtherIdleState ||
            delay > static_cast<std::uint32_t>(other->m_stateTime)) {
            continue;
        }

        const float constant = static_cast<float>(
            ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "PlayerInterPenetration_Dist"));
        const float dx = character->m_position.X - other->m_position.X;
        const float dy = character->m_position.Y - other->m_position.Y;
        const float dz = character->m_position.Z - other->m_position.Z;
        const float distanceSquared = ((dx * dx) + (dy * dy)) + (dz * dz);
        if (!(constant * constant > distanceSquared) || !(distanceSquared > 0.0f)) {
            continue;
        }

        const float distance = std::sqrt(distanceSquared);
        const float scale = ((constant - distance) * 0.75f) / distance;
        const float shiftX = scale * dx;
        const float shiftY = scale * dy;
        const float shiftZ = scale * dz;

        // This character moves out along the separation; its target is set first, as in the original.
        const Point3D<float> ownTarget{character->m_position.X + shiftX,
                                       character->m_position.Y + shiftY,
                                       character->m_position.Z + shiftZ};
        character->m_controller->Cmd_MoveTo(ownTarget);

        // The other character moves the opposite way. Its position is read after the first command, as in the original.
        const Point3D<float> otherTarget{other->m_position.X - shiftX,
                                         other->m_position.Y - shiftY,
                                         other->m_position.Z - shiftZ};
        other->m_controller->Cmd_MoveTo(otherTarget);
    }
}

// 0x3c0e80 CSIdle::OnUpdate(int,Character*,CharStateMachine*)
// The original tail-calls IdleCommonUpdate and returns its int (see that row). This void slot drops the result,
// as CSMove's slot does; the use of the result by CharStateMachine is unverified.
void CSIdle::OnUpdate(int eventId, Character* character, CharStateMachine* machine) {
    IdleCommonUpdate(eventId, character, machine);
}

// 0x3c2d3c CSIdle::OnBlur(int,Character*,CharStateMachine*,int)
void CSIdle::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch();
    character->m_idleFlag = false;
}

// 0x3c3020 CSIdle::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// The idle animation is the CharAnim row's +0x28 field (the pydata member m_w10; its name is not recovered), plus the
// character's stance when the AnimStancedAnim constant has bit 2 set. The trailing arguments are not read.
void CSIdle::OnFocus(int, Character* character, CharStateMachine*, int, int, void*) {
    ProbeTracingSwitch();
    if (character->m_idleFlag) {
        return;
    }
    character->m_stateFlags = kFocusStateFlags;

    const int idleAnim = character->GetCharAnimTable()->Idle;
    int stance = ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & kStanceBit;
    if (stance != 0) {
        stance = character->GetAnimStance();
    }
    character->CharAnimator::ANIM_Set(stance + idleAnim);
}

// 0x3c7e60 CSIdle::OnInit(int,Character*,CharStateMachine*)
// The registrations go to the CharStateMachine base of the character (the original's (char*)a3 + 1276), not to the
// machine argument, which the original never reads. Each row is (state, event, next state, handler), in the original's
// call order. A null handler is the original's zero pointer-to-member.
void CSIdle::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, 35, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 34, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50006, 7, nullptr);
    machine->SM_RegisterEvent(stateId, 50005, 6, nullptr);
    machine->SM_RegisterEvent(stateId, 50004, 5, &Character::CSM_Attack);
    machine->SM_RegisterEvent(stateId, 50001, 4, nullptr);
    machine->SM_RegisterEvent(stateId, 50002, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50003, 13, nullptr);
    machine->SM_RegisterEvent(stateId, 50007, 15, nullptr);
    character->m_idleFlag = false;
}
