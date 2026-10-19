// CSMove bodies (batch g1-game-character-CSMove-401d7e-0, redone in r2a-game-character-pack0-a32a82-0): the move state.
// Focus selects the walk or run animation, blur stops the actor, init registers the state's events. Declarations come
// from dh2/CSMove.hpp. The ledger rows in game-character/ledger.d/ repeat the notes of each function.
//
// The move type (CharStateMachine +0x40, unk_40), the walk speed bits (CharStateMachine +0x30, unk_30), the state flags
// (CharStateMachine +0x24, m_stateFlags), the target (CharAI +0x40, m_target) and the DesignSettings and CharAnim records
// are public in their headers, so they are read and written directly. Nothing in this unit is a stub any more.

#include "dh2/CSMove.hpp"

#include <cmath>
#include <cstdint>
#include <cstring>

#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::DesignSettings, Structs::CharAnim
#include "pydata-accessors/w7_arrays_02.hpp"    // Arrays::DesignSettingsTable::members
#include "pydata-accessors/w7_pydata12.hpp"     // PyDataConstants::getConstant

namespace {

// Move types stored in CharStateMachine +0x40 (the original's Character +0x53c).
constexpr int kMoveNone = 0;
constexpr int kMoveWalk = 1;
constexpr int kMoveRun = 2;

// CharStateMachine +0x24 is written as one word with this value by focus (the original's Character +0x520): 0x23c1.
constexpr std::uint32_t kFocusStateFlags = 9153u;

// Stance bits tested against the AnimStancedAnim constant: 0x20 for the run anim, 0x10 for the walk anim.
constexpr int kRunStanceBit = 0x20;
constexpr int kWalkStanceBit = 0x10;

// Event id raised when the character has no heading (or stops at its destination without a target).
constexpr int kEventNoHeading = 63;

// Reinterprets the float bits that CharProperties::PROPS_GetWalkSpeed returns as float (the original's COERCE_FLOAT).
float FloatFromBits(std::int32_t bits) {
    float value = 0.0f;
    std::memcpy(&value, &bits, sizeof value);
    return value;
}

// Runs the DebugSwitches probe that focus and blur both perform. DebugSwitches::GetInstance (0x330740) is
// load(&s_inst) followed by return &s_inst, so GetInstance()->GetSwitch(name) matches the original's
// load(&s_inst) then GetSwitch(&s_inst, name). The bool is discarded, as in the original.
void ProbeTracingSwitch() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingCharState");
}

// (x*x + y*y) + z*z of the heading, in the original's float evaluation order.
float HeadingLengthSquared(const Character* character) {
    const float x = character->m_heading.X;
    const float y = character->m_heading.Y;
    const float z = character->m_heading.Z;
    return ((x * x) + (y * y)) + (z * z);
}

// Structs::DesignSettings record 0 of Arrays::DesignSettingsTable (the original reads members + 92 and members + 96,
// with no index): m_w23 at +0x5c is the walk threshold and m_w24 at +0x60 is the run threshold.
float WalkThreshold() {
    return reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members)->PlayerRunToWalkPercent;
}
float RunThreshold() {
    return reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members)->PlayerWalkToRunPercent;
}

// The AnimStancedAnim/SL__LIST_IPHONE constant from the application's PyDataConstants, masked with `bit`.
int StanceBit(int bit) {
    return ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & bit;
}

// The ANIM_Set argument: the CharAnim field, plus the character's stance when the stance bit is set. This is the
// original's (AnimStance + v10), where AnimStance is 0 or Character::GetAnimStance().
int StancedAnim(const Character* character, int field, int stanceBit) {
    int anim = field;
    if (StanceBit(stanceBit) != 0) {
        anim += character->GetAnimStance();
    }
    return anim;
}

// Walk-type tail shared by UpdateType's walk paths: sets the walk move type and speed, then plays the walk anim
// (CharAnim +0x94, row m_w37 of Character::GetCharAnimTable()).
void ApplyWalk(Character* character) {
    character->CharStateMachine::unk_40 = kMoveWalk;
    const std::int32_t speedBits = character->CharProperties::PROPS_GetWalkSpeed();
    character->CharStateMachine::unk_30 = static_cast<std::uint32_t>(speedBits);
    const Structs::CharAnim* row = character->GetCharAnimTable();
    const int anim = StancedAnim(character, row->Walk, kWalkStanceBit);
    character->CharAnimator::ANIM_Set(anim);
    character->CharAnimator::ANIM_SetSpeed(FloatFromBits(speedBits));
}

// Run-type tail: sets the run move type and speed, then plays the run anim (CharAnim +0x70, row m_w28).
void ApplyRun(Character* character) {
    character->CharStateMachine::unk_40 = kMoveRun;
    const std::int32_t speedBits = character->CharProperties::PROPS_GetWalkSpeed();
    character->CharStateMachine::unk_30 = static_cast<std::uint32_t>(speedBits);
    const Structs::CharAnim* row = character->GetCharAnimTable();
    const int anim = StancedAnim(character, row->Run, kRunStanceBit);
    character->CharAnimator::ANIM_Set(anim);
    character->CharAnimator::ANIM_SetSpeed(FloatFromBits(speedBits));
}

}  // namespace

// 0x3c0008 CSMove::~CSMove()
// Empty: the Hex-Rays body is a bare return (4-byte bx lr). No base destructor call and no member cleanup appear.
CSMove::~CSMove() {}

// 0x3c09c4 CSMove::~CSMove() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original sets the vptr to off_9663A8 and calls CustomFree(this). See the ledger row.

// 0x3c000c CSMove::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Empty body (4-byte bx lr). The arguments are not read.
void CSMove::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0f18 CSMove::UpdateType(Character*,CharStateMachine*)
// Selects the walk or run animation from the heading length. A player keeps its move type unless the heading crosses
// a threshold: run when the run threshold squared is below the heading length squared, walk when the walk threshold
// squared is above it. A non-player with no move type yet walks, without the threshold test. The walk and run tails
// set the move type, the speed bits (CharStateMachine +0x30) and the anim. The original's int result is not kept: its
// callers, OnUpdate and OnFocus, discard it. The machine argument is unused in the original. IsPlayer (Character +0x28)
// is partial only in its name fallback (see its row).
void CSMove::UpdateType(Character* character, CharStateMachine*) {
    if (character->IsPlayer()) {
        const int moveType = character->CharStateMachine::unk_40;
        const float lengthSquared = HeadingLengthSquared(character);

        if (moveType != kMoveRun) {
            // Run when the run threshold squared is below the heading length squared.
            const float runThreshold = RunThreshold();
            if (runThreshold * runThreshold < lengthSquared) {
                ApplyRun(character);
                return;
            }
            if (moveType == kMoveNone) {
                ApplyWalk(character);
                return;
            }
            if (moveType == kMoveWalk) {
                return;
            }
        }

        // Walk when the walk threshold squared is above the heading length squared (the original's LABEL_6).
        const float walkThreshold = WalkThreshold();
        if (walkThreshold * walkThreshold > lengthSquared) {
            ApplyWalk(character);
        }
        return;
    }

    // Non-player with no move type yet: walk without the threshold test.
    if (character->CharStateMachine::unk_40 == kMoveNone) {
        ApplyWalk(character);
    }
}

// 0x3c1184 CSMove::OnUpdate(int,Character*,CharStateMachine*)
// Without a heading the state raises event 63. Without a target, a non-player that is at its destination and not
// remotely updated raises event 63 too. Otherwise UpdateType runs, and the walk speed is re-sent to the anim only when
// it differs from the stored speed bits by 0.0001f or more (asm: __aeabi_fsub, the sign bit cleared, then __aeabi_fcmplt
// against 0x38d1b717, which is 0.0001f). The original
// returns int (the RaiseEvent result, or the comparison); the CharState slot is void and CharStateMachine calls it
// through that slot (CharStateMachine-33fc5a-2.cpp), so the result is not read.
void CSMove::OnUpdate(int, Character* character, CharStateMachine* machine) {
    if (!character->m_hasHeading) {
        character->RaiseEvent(kEventNoHeading, nullptr);
        return;
    }
    if (character->CharAI::m_target == nullptr) {
        // Without a target, a non-player that is at its destination and not remotely updated stops (event 63).
        if (!character->IsPlayer()) {
            if (character->GameObject::IsAtDestination() && !character->IsRemotelyUpdated()) {
                character->RaiseEvent(kEventNoHeading, nullptr);
                return;
            }
        }
    }

    UpdateType(character, machine);
    const std::int32_t speedBits = character->CharProperties::PROPS_GetWalkSpeed();
    const float speed = FloatFromBits(speedBits);
    const float previous = FloatFromBits(static_cast<std::int32_t>(character->CharStateMachine::unk_30));
    if (!(std::fabs(speed - previous) < 0.0001f)) {
        character->CharStateMachine::unk_30 = static_cast<std::uint32_t>(speedBits);
        character->CharAnimator::ANIM_SetSpeed(speed);
    }
}

// 0x3c3aa4 CSMove::OnBlur(int,Character*,CharStateMachine*,int)
void CSMove::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeTracingSwitch();
    character->GameObject::Stop();
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->pin();
    }
}

// 0x3c3bf8 CSMove::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// Writes CharStateMachine +0x24 (state flags, 0x23c1) and +0x40 (move type, 0), then UpdateType, then unpins
// m_physicalObject (+0x2dc). The trailing arguments are not read. The original returns the PhysicalObject pointer it
// read (or the unpin result); the CharState slot is void and CharStateMachine calls it through that slot, so the
// result is not read.
void CSMove::OnFocus(int, Character* character, CharStateMachine* machine, int, int, void*) {
    ProbeTracingSwitch();
    character->CharStateMachine::m_stateFlags = kFocusStateFlags;
    character->CharStateMachine::unk_40 = kMoveNone;
    UpdateType(character, machine);
    if (character->m_physicalObject != nullptr) {
        character->m_physicalObject->unpin();
    }
}

// 0x3c80ac CSMove::OnInit(int,Character*,CharStateMachine*)
// The registrations go to the CharStateMachine base of the character (the original's (char*)a3 + 1276), not to the
// machine argument, which the original never reads. Each row is (state, event, next state, handler), in the
// original's call order. A null handler is the original's zero pointer-to-member.
void CSMove::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* machine = character;
    machine->SM_RegisterEvent(stateId, kEventNoHeading, 3, nullptr);
    machine->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    machine->SM_RegisterEvent(stateId, 50010, 11, &Character::CSM_Injured);
    machine->SM_RegisterEvent(stateId, 50011, 10, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50012, 9, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50013, 8, &Character::CSM_Interrupted);
    machine->SM_RegisterEvent(stateId, 50006, 7, nullptr);
    machine->SM_RegisterEvent(stateId, 50005, 6, nullptr);
    machine->SM_RegisterEvent(stateId, 50004, 5, &Character::CSM_Attack);
    machine->SM_RegisterEvent(stateId, 50003, 13, nullptr);
    machine->SM_RegisterEvent(stateId, 50007, 15, nullptr);
}
