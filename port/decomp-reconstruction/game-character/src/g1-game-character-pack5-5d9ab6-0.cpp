// Batch g1-game-character-pack5-5d9ab6-0: the CSLimbus and CSPreSpawn character states. Empty update
// and destructor bodies, the state registration in OnInit, the focus, blur and event hooks, and the
// deleting destructors (compiler-generated, skipped). Declarations come from dh2/CSLimbus.hpp and
// dh2/CSPreSpawn.hpp; the Character layout comes from dh2/Character.hpp.
//
// The group block, the flag writes and the animation choice follow the pseudocode. The respawn timer of CSLimbus::OnFocus is gated by the
// online-game flag (GetOnlineGameFlag) and PlayerManager::IsLocalPlayerHosting.
//   - GroupInfo +0x24 (m_allMembersDead) is written 0 or 2 by the limbus group block.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CSLimbus.hpp"
#include "dh2/CSPreSpawn.hpp"
#include "dh2/CharAI.hpp"             // CharAI::GroupInfo
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/charai_ai.hpp"   // ApplicationGetPyDataConstants
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::CharAnim
#include "pydata-accessors/w7_pydata12.hpp"     // PyDataConstants::getConstant

namespace {

// The original ASSERT(expr) macro, as in the CharAI batch: level 2 stops the process, level 1 prints.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// Both states start with this call (0x330740 DebugSwitches::GetInstance() loads the switches and returns
// the singleton). The original reads the "isTracingCharState" switch and discards the result.
void ReadTraceSwitch() {
    (void)DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingCharState"));
}

// The AnimStancedAnim/SL__LIST_IPHONE constant masked with `bit` (the original's getConstant(...) & bit).
int StanceBit(int bit) {
    return ApplicationGetPyDataConstants()->getConstant("AnimStancedAnim", "SL__LIST_IPHONE") & bit;
}

// The ANIM_Set argument: the CharAnim field, plus the character's stance when the stance bit is set. This is the
// original's (AnimStance + row field), where AnimStance is 0 or Character::GetAnimStance().
int StancedAnim(const Character* character, int field, int stanceBit) {
    int anim = field;
    if (StanceBit(stanceBit) != 0) {
        anim += character->GetAnimStance();
    }
    return anim;
}

const char* const kCSPreSpawnFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\StateMachine\\/../States/CSPreSpawn.h";

}  // namespace

// 0x3bffe0 _ZN8CSLimbusD1Ev
// Complete-object destructor. The body is empty (asm: BX LR).
CSLimbus::~CSLimbus() {}

// 0x3bffe4 CSLimbus::OnUpdate(int, Character*, CharStateMachine*)
// Empty body (asm: BX LR).
void CSLimbus::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3bffe8 CSLimbus::OnEvent(int, Character*, CharStateMachine*, int, void*)
// Empty body (asm: BX LR).
void CSLimbus::OnEvent(int, Character*, CharStateMachine*, int, void*) {}

// 0x3c0a94 _ZN8CSLimbusD0Ev
// skipped: compiler-generated deleting destructor. It stores the CharState vtable into the object and
// then calls CustomFree(this). delete on a CSLimbus produces it, so no C++ body is written.

// 0x3c2be4 CSLimbus::OnBlur(int, Character*, CharStateMachine*, int)
// Trace switch, controller m_blocked cleared (Character +0x378 is the v2Controller pointer, m_blocked at +0x08),
// SetVisible(true) through vtable slot +0x40, the initial position and rotation (Character +0x1450 and +0x145c),
// Revive(nullptr, false), then the group block. When m_groupRole (CharAI +0x38) is 3, the original scans the other
// members of m_group (CharAI +0x34; GroupInfo +0x18 holds the member list) and writes GroupInfo +0x24
// (m_allMembersDead): 2 when any other member is in limbus, otherwise 0. An empty group gives 0. The original
// dereferences m_group without a null check, and so does this body.
void CSLimbus::OnBlur(int /*stateId*/, Character* character, CharStateMachine* /*machine*/, int /*nextState*/) {
    ReadTraceSwitch();
    character->m_controller->m_blocked = false;
    character->SetVisible(true);
    character->GameObject::SetPosition(character->m_initialPosition, true);
    character->GameObject::SetRotation(character->m_initialRotation);
    character->Character::Revive(nullptr, false);
    if (character->m_groupRole == 3) {
        CharAI::GroupInfo* group = character->m_group;
        bool otherInLimbus = false;
        for (Character* member : group->m_members) {
            if (member != character && member->CharStateMachine::SM_IsInLimbus()) {
                otherInLimbus = true;
            }
        }
        group->m_allMembersDead = otherInLimbus ? 2 : 0;
    }
}

// 0x3c2e58 CSLimbus::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
// Trace switch, CharStateMachine::m_stateFlags (+0x24, the original's Character +0x520) = 0, SetVisible(false) through slot +0x40. When the
// limbus flag (CharStateMachine::m_limbusFlag, +0x34, Character +0x530) is set and GetRespawnDelay() > 0 and either the online flag is clear
// or this client is hosting, the respawn timer starts: CharTimers::TMR_Start(delay, 0, 47, nullptr) on the CharTimers subobject (Character
// +0x3b4). Finally CharAI::AI_ClearAllAggro.
void CSLimbus::OnFocus(int /*stateId*/, Character* character, CharStateMachine* /*machine*/, int /*fromState*/,
                       int /*toState*/, void* /*data*/) {
    ReadTraceSwitch();
    character->CharStateMachine::m_stateFlags = 0;
    character->SetVisible(false);
    if (character->CharStateMachine::m_limbusFlag && character->GetRespawnDelay() > 0 &&
        (!GetOnlineGameFlag() || dword_99F76C->IsLocalPlayerHosting())) {
        character->CharTimers::TMR_Start(static_cast<unsigned int>(character->GetRespawnDelay()), 0, 47, nullptr);
    }
    character->CharAI::AI_ClearAllAggro();
}

// 0x3c7cc0 CSLimbus::OnInit(int, Character*, CharStateMachine*)
// Registers event 47 for this state with the Character CSM_Spawn handler and next state 1. The first
// argument is the state id that the state machine passes in.
void CSLimbus::OnInit(int stateId, Character* character, CharStateMachine* /*machine*/) {
    character->CharStateMachine::SM_RegisterEvent(stateId, 47, 1, &Character::CSM_Spawn);
}

// 0x3c006c _ZN10CSPreSpawnD1Ev
// Complete-object destructor. The body is empty (asm: BX LR).
CSPreSpawn::~CSPreSpawn() {}

// 0x3c0070 CSPreSpawn::OnUpdate(int, Character*, CharStateMachine*)
// Empty body (asm: BX LR).
void CSPreSpawn::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c0720 _ZN10CSPreSpawnD0Ev
// skipped: compiler-generated deleting destructor. It stores the CharState vtable into the object and
// then calls CustomFree(this). delete on a CSPreSpawn produces it, so no C++ body is written.

// 0x3c2810 CSPreSpawn::OnEvent(int, Character*, CharStateMachine*, int, void*)
// Event 9 (spawn): calls Character::CSM_Spawn(9, data, stateId, nextState) and, when it returns true with the next
// state still 1, calls SetSpawnState(delayed = true, flag = false) and, when m_groupRole (CharAI +0x38) is 3, writes 0
// to GroupInfo +0x24 (m_allMembersDead) of m_group. When the next state changed, the original asserts (level 2
// stops, level 1 prints) with the source location of CSPreSpawn.h line 114.
// Event 40 ("is_interactive"): when the string matches, the original sets CharStateMachine::m_stateFlags |= 0x2000
// (Character +0x520) and calls InitPhysicalObject().
// The original return value (a pointer or the fprintf result) is discarded: the CharState slot is void.
void CSPreSpawn::OnEvent(int stateId, Character* character, CharStateMachine* /*machine*/, int event, void* data) {
    if (event == 9) {
        int nextState = 1;
        const bool spawned = character->Character::CSM_Spawn(9, data, stateId, nextState);
        if (spawned) {
            if (nextState == 1) {
                character->CharStateMachine::SM_SetSpawnState(true, false);
                if (character->m_groupRole == 3) {
                    character->m_group->m_allMembersDead = 0;
                }
            } else {
                AssertFailed(
                    "!\"CSM_Spawn() changed the next state... needs to decide what to do with that case\"",
                    kCSPreSpawnFile, 114);
            }
        }
    } else if (event == 40) {
        if (std::strcmp(static_cast<const char*>(data), "is_interactive") == 0) {
            character->CharStateMachine::m_stateFlags |= 0x2000u;
            character->InitPhysicalObject();
        }
    }
}

// 0x3c67d4 CSPreSpawn::OnBlur(int, Character*, CharStateMachine*, int)
// Trace switch, SetVisible(true) through slot +0x40 (asm: argument 1), Revive(nullptr, false), and
// EnableCollisions.
void CSPreSpawn::OnBlur(int /*stateId*/, Character* character, CharStateMachine* /*machine*/, int /*nextState*/) {
    ReadTraceSwitch();
    character->SetVisible(true);
    character->Character::Revive(nullptr, false);
    character->GameObject::EnableCollisions();
}

// 0x3c688c CSPreSpawn::OnFocus(int, Character*, CharStateMachine*, int, int, void*)
// Trace switch, CharStateMachine::m_stateFlags (+0x24, the original's Character +0x520) set to 0x1300, then the
// animation from the character's CharAnimTable row (Character::GetCharAnimTable, the row for GetCharAnimTableId).
// When the row's m_w25 (+0x64) is -1, the original plays m_w32 (+0x80) plus the stance (GetAnimStance) when the
// AnimStancedAnim constant has bit 0 set, and sets the speed to 0.0. Otherwise it plays m_w25. Then SetPhysicalObject
// (nullptr, false), SetVisible(false) when m_aiStateVisible (Character +0x13e4) is 0 (asm: the byte is the argument,
// so the value is 0), and DisableCollisions.
void CSPreSpawn::OnFocus(int /*stateId*/, Character* character, CharStateMachine* /*machine*/, int /*fromState*/,
                         int /*toState*/, void* /*data*/) {
    ReadTraceSwitch();
    character->CharStateMachine::m_stateFlags = 0x1300u;
    const Structs::CharAnim* row = character->GetCharAnimTable();
    if (row->PreSpawn == -1) {
        character->CharAnimator::ANIM_Set(StancedAnim(character, row->Spawn, 1));
        character->CharAnimator::ANIM_SetSpeed(0.0f);
    } else {
        character->CharAnimator::ANIM_Set(row->PreSpawn);
    }
    character->GameObject::SetPhysicalObject(nullptr, false);
    if (!character->m_aiStateVisible) {
        character->SetVisible(false);
    }
    character->GameObject::DisableCollisions();
}

// 0x3c8d24 CSPreSpawn::OnInit(int, Character*, CharStateMachine*)
// Registers event 45 for this state with next state 1 and no handler (null pointer-to-member).
void CSPreSpawn::OnInit(int stateId, Character* character, CharStateMachine* /*machine*/) {
    character->CharStateMachine::SM_RegisterEvent(stateId, 45, 1, nullptr);
}
