// Batch g1-game-character-CharAI-2ae0f1-2: the CharAI script process hooks, the interaction request and the melee and
// range attack selection. Declarations come from dh2/CharAI.hpp. Each PARTIAL comment names what is missing; the ledger
// rows in game-character/ledger.d/g1-game-character-CharAI-2ae0f1-2.csv repeat it.

#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// DebugSwitches::load(&s_inst), then GetSwitch(name). DebugSwitches::GetInstance (0x330740) runs that load and returns
// &s_inst, so one GetInstance call does the whole probe. The binary's trace probes have no body beyond this lookup, so
// they are kept as calls. The bool is returned for the callers whose pseudocode tests it.
bool ProbeSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

// (float)(Attack_FrontalAngle >> 1) * pi/180: the half angle of the frontal search, in radians.
float FrontalHalfAngleRad() {
    const int frontalAngle = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "Attack_FrontalAngle");
    return static_cast<float>(frontalAngle >> 1) * kCharAIRadPerDegree;
}

}  // namespace

// 0x3cfd68 _ZN6CharAI14AI_SendMessageEiPKv
void CharAI::AI_SendMessage(int msg, const void* data) {
    // The original calls vtable slot 7 (+0x1c), which is the virtual OnMsg.
    OnMsg(msg, data);
}

// 0x3cfd7c _ZN6CharAI16AI_ScriptCleanUpEv
void CharAI::AI_ScriptCleanUp() {
    m_character->CharTimers::TMR_Stop(m_aiTickTimer);
    m_character->CharTimers::TMR_Stop(m_dotTimer);
    m_dotTimer = -1;
    m_aiTickTimer = -1;
    if (m_script) {
        _SkillCleanUp();
        _SpellCleanUp();
        m_script->OnTerminate();  // CharAIScript vtable slot 5 (+0x14)
    }
}

// 0x3cfde4 _ZN6CharAI13AI_ScriptInitEv
// The timers are restarted from the CharacterDesign constants (ApplicationGetPyDataConstants, declared in
// global/charai_ai.hpp; its definition belongs to the Application batches). The script hooks run last, when a script is loaded.
void CharAI::AI_ScriptInit() {
    if (!m_character->IsDead()) {
        if (m_aiTickTimer != -1) {
            m_character->CharTimers::TMR_Stop(m_aiTickTimer);
        }
        const int aiTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "AI_Tick");
        m_aiTickTimer = m_character->CharTimers::TMR_Start(aiTick, -1, 51, nullptr);
        const int oldDotTimer = m_dotTimer;
        if (oldDotTimer != -1) {
            m_character->CharTimers::TMR_Stop(oldDotTimer);
        }
        const int dotTick = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "DoT_Tick");
        m_dotTimer = m_character->CharTimers::TMR_Start(dotTick, -1, 52, nullptr);
    }
    if (m_script) {
        m_script->OnInit();       // CharAIScript vtable slot 2 (+0x08)
        m_script->OnInitPost();   // slot 3 (+0x0c)
        m_script->OnInitFinal();  // slot 4 (+0x10)
    }
}

// 0x3cff34 _ZN6CharAI15AI_InteractWithEP10GameObject
void CharAI::AI_InteractWith(GameObject* obj) {
    if (m_character->IsDead()) {
        return;
    }
    if (obj) {
        AI_SetTarget(obj, false);
    } else {
        obj = m_target;
        if (!obj) {
            return;
        }
    }
    if (m_interacting || !OnPreInteract()) {
        return;
    }
    const int kind = obj->GetInteractionType(m_character);
    m_interacting = true;
    // Kinds -1 and -2 (none, or a direct interaction) skip the state machine and go straight to the hook.
    if (static_cast<unsigned int>(kind + 2) <= 1) {
        OnInteract();
        return;
    }
    m_character->CharStateMachine::SM_SetInteractState(kind, true, obj, false);
    if (m_character->CharStateMachine::SM_IsInteracting()) {
        OnInteract();
    }
}

// 0x3d01ac _ZN6CharAI16AI_DoMeleeAttackEP10GameObjectb
void CharAI::AI_DoMeleeAttack(GameObject* a2, bool a3) {
    if (m_character->IsDead()) {
        return;
    }
    // Character +0x528 is CharStateMachine::m_statusFlags (+0x2c). The original returns when bit 0 of it is set.
    if (m_character->CharStateMachine::m_statusFlags & 1u) {
        return;
    }
    if (m_character->CanRangeAttack()) {
        AI_DoRangeAttack(a2, a3);
        return;
    }
    if (m_character->CharStateMachine::SM_IsAttacking()) {
        // m_attackLastStep (+0x79) is passed as the TargetList arg3 here, and it is zero on this branch.
        if (!m_attackLastStep) {
            ProbeSwitch("isTracingCharAICommands");
            m_attacking = true;
            ObjectSearcher::TargetList list(m_character, 1, 0, 1);
            if (m_character->m_hasHeading) {
                list.Search(0.0f, FrontalHalfAngleRad());
            } else if (m_target && AI_CanAttack(nullptr) && !m_target->IsDead()) {
                // AI_CanAttack receives the m_hasHeading byte in the binary (the asm loads it into R1 and does not reload
                // R1 before the call), which is 0 on this path.
                if (m_character->IsPlayer()) {
                    ProbeSwitch("isTracingChar_MeleePotentialTarget");
                }
            } else {
                // The SetSortType call goes to the .clone.1 variant (0x3d015c), which ignores its argument and installs
                // _sortFrontal, so the value 2 (frontal) is passed.
                list.SetSortType(2);
                list.Search(0.0f, kCharAIFullCircle);
            }
            if (!list.m_results.empty()) {
                AI_SetTarget(list.m_results.top().object, false);
                if (ProbeSwitch("isTracingChar_MeleePotentialTarget") && m_character->IsPlayer()) {
                    while (!list.m_results.empty()) {
                        list.m_results.pop();
                    }
                }
            }
        }
    } else {
        ProbeSwitch("isTracingCharAICommands");
        m_attacking = false;
        if (a2) {
            AI_SetTarget(a2, a3);
        } else {
            ObjectSearcher::TargetList list(m_character, 1, 0, 1);
            if (m_character->m_hasHeading) {
                list.Search(0.0f, FrontalHalfAngleRad());
            } else {
                list.SetSortType(2);  // .clone.1 as above
                list.Search(0.0f, kCharAIFullCircle);
            }
            if (!list.m_results.empty()) {
                AI_SetTarget(list.m_results.top().object, false);
                if (ProbeSwitch("isTracingChar_MeleePotentialTarget") && m_character->IsPlayer()) {
                    while (!list.m_results.empty()) {
                        list.m_results.pop();
                    }
                }
            }
        }
        if (!m_target) {
            if (m_character->m_ooiInteractionType == 8 && !m_character->m_hasHeading) {
                if (m_character->IsPlayer()) {
                    ProbeSwitch("isTracingChar_MeleePotentialTarget");
                }
                m_targetSeeking = true;
                AI_SetTarget(m_character->m_objectOfInterest, false);
                AI_SyncLastTarget();
            }
        }
        if (!a3) {
            GameObject* data = nullptr;
            if (m_target) {
                // The melee range test takes a null object here (the asm passes the a3 value, which is 0 on this path).
                if (!AI_IsInMeleeRange(nullptr)) {
                    return;
                }
                data = m_target;
            }
            m_character->CharStateMachine::SM_SetAttackState(data, false);
        }
    }
}

// 0x3d076c _ZN6CharAI16AI_DoRangeAttackEP10GameObjectb
void CharAI::AI_DoRangeAttack(GameObject* a2, bool a3) {
    if (m_character->IsDead()) {
        return;
    }
    // The same gate as AI_DoMeleeAttack: Character +0x528 is CharStateMachine::m_statusFlags, and bit 0 set returns.
    if (m_character->CharStateMachine::m_statusFlags & 1u) {
        return;
    }
    // CanRangeAttack(int&, int&, int&) returns the range through its second output; the other two are not read here.
    int unusedA = 0;
    int maxRange = 0;
    int unusedC = 0;
    if (!m_character->CanRangeAttack(unusedA, maxRange, unusedC)) {
        AI_DoMeleeAttack(a2, a3);
        return;
    }
    if (m_character->CharStateMachine::SM_IsAttacking()) {
        // m_attackLastStep (+0x79) gates this branch and is passed as TargetList arg3 (zero on this branch).
        if (!m_attackLastStep) {
            ProbeSwitch("isTracingCharAICommands");
            ObjectSearcher::TargetList list(m_character, 1, 0, 1);
            if (m_character->m_hasHeading) {
                list.Search(static_cast<float>(maxRange), FrontalHalfAngleRad());
            } else if (m_target && AI_CanAttack(nullptr) && !m_target->IsDead()) {
                // AI_CanAttack receives the m_hasHeading byte in the binary (same register pattern as the melee path), 0 here.
                if (m_character->IsPlayer()) {
                    ProbeSwitch("isTracingChar_MeleePotentialTarget");
                }
            } else {
                list.SetSortType(2);  // .clone.1 installs _sortFrontal, as in AI_DoMeleeAttack
                list.Search(static_cast<float>(maxRange), kCharAIFullCircle);
            }
            if (!list.m_results.empty()) {
                AI_SetTarget(list.m_results.top().object, false);
                m_character->GameObject::LookAt(list.m_results.top().object);
            }
        }
    } else {
        ProbeSwitch("isTracingCharAICommands");
        m_attacking = false;
        if (a2) {
            m_character->GameObject::LookAt(a2);
        } else {
            ObjectSearcher::TargetList list(m_character, 1, 0, 1);
            if (m_character->m_hasHeading) {
                list.Search(static_cast<float>(maxRange), FrontalHalfAngleRad());
            } else {
                list.SetSortType(2);  // .clone.1 as above
                list.Search(static_cast<float>(maxRange), kCharAIFullCircle);
            }
            if (!list.m_results.empty()) {
                AI_SetTarget(list.m_results.top().object, false);
                m_character->GameObject::LookAt(list.m_results.top().object);
            }
        }
        if (!a3) {
            m_character->CharStateMachine::SM_SetAttackState(nullptr, false);
        }
    }
}

// The hook forwarders below call the loaded script (m_script, CharAI +0x1c). Each one checks m_script and makes the call
// through the same CharAIScript vtable slot the binary uses (the slot is named in the comment). When no script is loaded,
// the original returns without a call; the void forwarders have no result to return.

// 0x3d0b80 _ZN6CharAI10OnInitPostEv
void CharAI::OnInitPost() {
    if (m_script) {
        m_script->OnInitPost();  // slot 3, +0x0c
    }
}

// 0x3d0ba4 _ZN6CharAI11OnInitFinalEv
void CharAI::OnInitFinal() {
    if (m_script) {
        m_script->OnInitFinal();  // slot 4, +0x10
    }
}

// 0x3d0bc8 _ZN6CharAI5OnMsgEiPKv
void CharAI::OnMsg(int msg, const void* data) {
    if (m_script) {
        m_script->OnMsg(msg, data);  // slot 7, +0x1c
    }
}

// 0x3d0bec _ZN6CharAI14OnStateChangedEii
void CharAI::OnStateChanged(int newState, int oldState) {
    if (m_script) {
        m_script->OnStateChanged(newState, oldState);  // slot 8, +0x20
    }
}

// 0x3d0c10 _ZN6CharAI7OnTimerEPv
void CharAI::OnTimer(void* timer) {
    if (m_script) {
        m_script->OnTimer(timer);  // slot 32, +0x80
    }
}

// 0x3d0c34 _ZN6CharAI13OnStunExpiredEv
void CharAI::OnStunExpired() {
    if (m_script) {
        m_script->OnStunExpired();  // slot 33, +0x84
    }
}

// 0x3d0c58 _ZN6CharAI13OnFearExpiredEv
void CharAI::OnFearExpired() {
    if (m_script) {
        m_script->OnFearExpired();  // slot 34, +0x88
    }
}

// 0x3d0c7c _ZN6CharAI20OnAttackDelayExpiredEv
void CharAI::OnAttackDelayExpired() {
    if (m_script) {
        m_script->OnAttackDelayExpired();  // slot 35, +0x8c
    }
}

// 0x3d0ca0 _ZN6CharAI13OnScriptTimerEj
void CharAI::OnScriptTimer(unsigned int id) {
    if (m_script) {
        m_script->OnScriptTimer(id);  // slot 36, +0x90
    }
}

// 0x3d0cc4 _ZN6CharAI11OnAnimEventEPKc
void CharAI::OnAnimEvent(const char* name) {
    if (m_script) {
        m_script->OnAnimEvent(name);  // slot 37, +0x94
    }
}

// 0x3d0ce8 _ZN6CharAI11OnEndOfAnimEv
void CharAI::OnEndOfAnim() {
    if (m_script) {
        m_script->OnEndOfAnim();  // slot 38, +0x98
    }
}

// 0x3d0d0c _ZN6CharAI13OnPreInteractEv
bool CharAI::OnPreInteract() {
    // The script's answer is returned; with no script loaded the original returns 0.
    if (m_script) {
        return m_script->OnPreInteract();  // slot 39, +0x9c
    }
    return false;
}

// 0x3d0d38 _ZN6CharAI10OnInteractEv
void CharAI::OnInteract() {
    if (m_script) {
        m_script->OnInteract();  // slot 40, +0xa0
    }
}

// 0x3d0d5c _ZN6CharAI15OnProjectileHitEP10GameObject
void CharAI::OnProjectileHit(GameObject* target) {
    if (m_script) {
        m_script->OnProjectileHit(target);  // slot 43, +0xac
    }
}
