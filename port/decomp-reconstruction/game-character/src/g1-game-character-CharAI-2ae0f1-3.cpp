// Batch g1-game-character-CharAI-2ae0f1-3: the CharAI event forwarders (OnKill, the combat result and collision hooks,
// OnAttack, OnPreAttack, the master range hooks and OnMasterInSight), and the owner handlers OnRevived, OnDied, OnUpdate,
// OnTerminate, OnInit and OnEnemySpotted. Declarations come from dh2/CharAI.hpp. Each PARTIAL comment names what is
// missing; the ledger rows in game-character/ledger.d/g1-game-character-CharAI-2ae0f1-3.csv repeat it.
//
// Offsets are the 32-bit ones of the original. The forwarders reach the loaded script (m_script, CharAI +0x1c) through
// the same CharAIScript vtable slot the binary calls; the slot numbers are given per function.

#include <cstdint>

#include "dh2/CharAI.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// DebugSwitches::GetInstance (0x330740) runs the switch-file load and returns &s_inst, so one call does the whole
// trace probe the original makes as load(&s_inst) followed by GetSwitch("isTracingCharAIEvents"). The bool is unused.
void ProbeTracingCharAIEvents() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingCharAIEvents");
}

// The same probe for any switch name (load(&s_inst) then GetSwitch). The result is returned for callers that test it.
bool ProbeSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

// Arrays::DesignSettingsTable::members + 48: the m_w12 float of the first DesignSettings record (file offset +0x30).
float FirstDesignSettingsSpotAggro() {
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    return design->EnemySpottedAggro;
}

}  // namespace

// 0x3d0d80 _ZN6CharAI6OnKillEP9Character
// Vtable slot 44 (+0xb0) of the script. The original's trailing return value is the register left by the tail call,
// so the function is void.
void CharAI::OnKill(Character* victim) {
    if (m_script) {
        m_script->OnKill(victim);
    }
}

// 0x3d0da4 _ZN6CharAI15OnCombatResultsEP9CharacterS1_Pv
// Script slot 45 (+0xb4).
void CharAI::OnCombatResults(Character* attacker, Character* victim, void* results) {
    if (m_script) {
        m_script->OnCombatResults(attacker, victim, results);
    }
}

// 0x3d0dc8 _ZN6CharAI15OnCombatResultsEP10GameObjectPv
// Script slot 46 (+0xb8).
void CharAI::OnCombatResults(GameObject* other, void* results) {
    if (m_script) {
        m_script->OnCombatResults(other, results);
    }
}

// 0x3d0dec _ZN6CharAI16OnCollisionBeginEP10GameObjectb
// Script slot 47 (+0xbc).
void CharAI::OnCollisionBegin(GameObject* other, bool flag) {
    if (m_script) {
        m_script->OnCollisionBegin(other, flag);
    }
}

// 0x3d0e10 _ZN6CharAI18OnCollisionPersistEP10GameObjectb
// Script slot 48 (+0xc0).
void CharAI::OnCollisionPersist(GameObject* other, bool flag) {
    if (m_script) {
        m_script->OnCollisionPersist(other, flag);
    }
}

// 0x3d0e34 _ZN6CharAI14OnCollisionEndEP10GameObjectb
// Script slot 49 (+0xc4).
void CharAI::OnCollisionEnd(GameObject* other, bool flag) {
    if (m_script) {
        m_script->OnCollisionEnd(other, flag);
    }
}

// 0x3d0e58 _ZN6CharAI17OnCollisionResultEP10GameObjectb
// Script slot 50 (+0xc8).
void CharAI::OnCollisionResult(GameObject* other, bool flag) {
    if (m_script) {
        m_script->OnCollisionResult(other, flag);
    }
}

// 0x3d0e7c _ZN6CharAI8OnAttackEiib
// The gate is AI_CanAttack(nullptr) on the owner's CharAI subobject (Character +0x3c8, the same object as this). The
// script call (slot 42, +0xa8) is made only when the gate passes and a script is loaded.
void CharAI::OnAttack(int a, int b, bool flag) {
    if (static_cast<CharAI*>(m_character)->AI_CanAttack(nullptr)) {
        if (m_script) {
            m_script->OnAttack(a, b, flag);
        }
    }
}

// 0x3d0ed4 _ZN6CharAI11OnPreAttackEi
// Same gate as OnAttack. The script call is slot 41 (+0xa4), OnPreAttack(attackStep).
void CharAI::OnPreAttack(int attackStep) {
    if (static_cast<CharAI*>(m_character)->AI_CanAttack(nullptr)) {
        if (m_script) {
            m_script->OnPreAttack(attackStep);
        }
    }
}

// 0x3d0f1c _ZN6CharAI9OnRevivedEP10GameObject
// Stops every timer of the owner, restarts the AI_Tick (event 51) and DoT_Tick (event 52) timers with the CharacterDesign
// constants, then forwards to the script (slot 10, +0x28).
void CharAI::OnRevived(GameObject* reviver) {
    m_character->CharTimers::TMR_StopAll();
    const int aiTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "AI_Tick");
    m_aiTickTimer = m_character->CharTimers::TMR_Start(aiTick, -1, 51, nullptr);
    const int dotTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "DoT_Tick");
    m_dotTimer = m_character->CharTimers::TMR_Start(dotTick, -1, 52, nullptr);
    if (m_script) {
        m_script->OnRevived(reviver);
    }
}

// 0x3d1000 _ZN6CharAI6OnDiedEP10GameObject
// The group is told first, then the script (slot 9, +0x24), then the owner is marked dead.
void CharAI::OnDied(GameObject* killer) {
    if (m_group) {
        m_group->OnDied(m_character, killer);
    }
    if (m_script) {
        m_script->OnDied(killer);
    }
    AI_SetDead();
}

// 0x3d1050 _ZN6CharAI8OnUpdateEv
// The script's update hook (slot 6) runs first. Zoning is switched off, and the visual's visibility synchronised, when the owner is not idle (and
// not awaiting its spawn) or has a target, or has a master. Otherwise a zonable owner whose zoning is off gets it back; when it is alive and unflagged
// (unk_85 clear) it is moved to its initial position (SetPosition(m_initialPosition, true)) and its visual's scene node is moved there too:
// the virtual at +0xa4 of the node (ISceneNode::setPosition) with a copy of m_initialPosition.
void CharAI::OnUpdate() {
    if (m_script) {
        m_script->OnUpdate();
    }
    Character* self = m_character;
    const CharAI& owner = *self;

    // Zoning stops when the owner is not idle (and not awaiting spawn), or it has a target, or it has a master.
    // The original tests the owner's CharAI fields at Character +0x408 (m_target) and +0x418 (m_master).
    bool stopZoning;
    if (self->CharStateMachine::SM_IsIdle(false)) {
        stopZoning = owner.m_target != nullptr;
    } else {
        stopZoning = !self->CharStateMachine::SM_IsAwaitingToSpawn() || owner.m_target != nullptr;
    }
    if (!stopZoning) {
        stopZoning = owner.m_master != nullptr;
    }
    if (stopZoning) {
        VisualObject* visual = self->m_visualObject;
        self->GameObject::DisableZoning();
        if (visual != nullptr) {
            visual->SyncVisibility();
        }
        return;
    }

    // Zoning is re-enabled only when it is off (m_zoningEnabled at +0x2ee is 0) and the object is zonable.
    if (self->m_zoningEnabled != 0) {
        return;
    }
    if (!self->IsZonable()) {
        return;
    }
    self->GameObject::EnableZoning();
    if (self->IsDead()) {
        return;
    }
    if (self->unk_85 != 0) {
        return;
    }
    self->GameObject::SetPosition(self->m_initialPosition, true);

    // The visual's node (VisualObject +0x08) is moved to the initial position: ISceneNode::setPosition (virtual +0xa4) with a copy of
    // m_initialPosition.
    VisualObject* visual = self->m_visualObject;
    if (visual == nullptr || visual->m_node == nullptr) {
        return;
    }
    const glitch::core::vector3d<float> position{self->m_initialPosition.X, self->m_initialPosition.Y, self->m_initialPosition.Z};
    visual->m_node->setPosition(position);
}

// 0x3d11bc _ZN6CharAI11OnTerminateEv
// Clears the owner's AI state and detaches every character that has this owner as its master. The first pass is the
// object in unk_58 (cleared afterwards). The second walks unk_5c in key order (the original walks the STLport tree
// from its leftmost node to the header; std::map's in-order iteration visits the same nodes in the same order).
void CharAI::OnTerminate() {
    AI_ScriptCleanUp();
    AI_ClearAllAggro();
    AI_ClearAllAggroTowardMe(false);
    if (unk_58 != nullptr) {
        Character* other = static_cast<Character*>(unk_58);
        if (static_cast<CharAI*>(other)->m_master == m_character) {
            static_cast<CharAI*>(other)->AI_SetMaster(nullptr);
        }
    }
    unk_58 = nullptr;
    for (const auto& entry : unk_5c) {
        Character* other = entry.second;
        if (other != nullptr && static_cast<CharAI*>(other)->m_master == m_character) {
            static_cast<CharAI*>(other)->AI_SetMaster(nullptr);
        }
    }
}

// 0x3d12b0 _ZN6CharAI6OnInitEv
// When the owner is alive, the AI_Tick timer is restarted (the old one is stopped first) and the DoT_Tick timer too. The
// script that is still loading (m_scriptLoading, CharAI +0x20) then gets OnInit (slot 2, +0x08).
void CharAI::OnInit() {
    if (!m_character->IsDead()) {
        if (m_aiTickTimer != -1) {
            m_character->CharTimers::TMR_Stop(m_aiTickTimer);
        }
        const int aiTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "AI_Tick");
        const int newAiTick = m_character->CharTimers::TMR_Start(aiTick, -1, 51, nullptr);
        const int oldDotTimer = m_dotTimer;
        m_aiTickTimer = newAiTick;
        if (oldDotTimer != -1) {
            m_character->CharTimers::TMR_Stop(oldDotTimer);
        }
        const int dotTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "DoT_Tick");
        m_dotTimer = m_character->CharTimers::TMR_Start(dotTick, -1, 52, nullptr);
    }
    if (m_scriptLoading) {
        m_scriptLoading->OnInit();
    }
}

// 0x3d14b4 _ZN6CharAI14OnEnemySpottedEP9Character
// The threat branch adds aggro with AI_AddAggro(enemy, DesignSettings m_w12) on the owner's CharAI subobject, and runs the
// isTracingThreatChange probe only when the aggro actually added is > 0 (AI_AddAggro returns float, 0x3d7c68).
void CharAI::OnEnemySpotted(Character* enemy) {
    ProbeTracingCharAIEvents();
    if (m_group) {
        m_group->OnEnemySpotted(m_character, enemy);
    }
    if (!enemy->CharStateMachine::SM_IsAwaitingToSpawn() && !m_character->CharStateMachine::SM_IsAwaitingToSpawn() &&
        !enemy->CharStateMachine::SM_IsInLimbus() && !m_character->CharStateMachine::SM_IsInLimbus()) {
        if ((!AI_IsInCombat() || enemy->IsPlayer()) && AI_GetAggro(enemy) == 0.0f &&
            static_cast<CharAI*>(m_character)->AI_AddAggro(enemy, FirstDesignSettingsSpotAggro()) > 0.0f) {
            ProbeSwitch("isTracingThreatChange");
        }
        if (m_script) {
            m_script->OnEnemySpotted(enemy);
        }
    }
}

// 0x3d1694 _ZN6CharAI20OnMasterInMeleeRangeEv
// Script slot 31 (+0x7c).
void CharAI::OnMasterInMeleeRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterInMeleeRange();
    }
}

// 0x3d1740 _ZN6CharAI20OnMasterInCloseRangeEv
// Script slot 30 (+0x78).
void CharAI::OnMasterInCloseRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterInCloseRange();
    }
}

// 0x3d17ec _ZN6CharAI21OnMasterInRangedRangeEv
// Script slot 29 (+0x74).
void CharAI::OnMasterInRangedRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterInRangedRange();
    }
}

// 0x3d1898 _ZN6CharAI18OnMasterOutOfRangeEv
// Script slot 28 (+0x70).
void CharAI::OnMasterOutOfRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterOutOfRange();
    }
}

// 0x3d1944 _ZN6CharAI15OnMasterInSightEv
// Script slot 27 (+0x6c).
void CharAI::OnMasterInSight() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterInSight();
    }
}
