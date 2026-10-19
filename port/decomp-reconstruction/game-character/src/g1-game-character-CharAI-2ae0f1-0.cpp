// Batch g1-game-character-CharAI-2ae0f1-0 (part 1 of 9 of CharAI): the step driver pieces, the pointer
// clean-up, the regen, target and master updates, the AI event dispatcher, the projectile hook and the
// script unload/setup entry points. Declarations and layout come from dh2/CharAI.hpp.
//
// Offsets in comments are the original 32-bit offsets inside CharAI (this) unless a line says Character.
// CharAI is embedded in Character at +0x3c8, so m_character holds the owner and the Character bases
// (CharStateMachine +0x4fc, CharTimers +0x3b4, CharProperties +0x560, v2Controllable +0x374) are reached through it.

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/AISExternal.hpp"
#include "dh2/AISMonster.hpp"
#include "dh2/AISFaery.hpp"
#include "dh2/AISDefault.hpp"
#include "dh2/AISPlayerIPhone.hpp"
#include "dh2/AISPlayer.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/Projectile.hpp"
#include "dh2/v2Controller.hpp"

// Script classes whose complete definitions are not in the tree yet (dh2/CharAIScript.hpp and
// dh2/AISExternal.hpp are still being written). Only the names are needed for the specializations below.
class AISExternal;
class AISMonster;

namespace {

const char* const kCharAICpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI.cpp";
const char* const kCharAIHeader =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\/../AI/CharAI.h";

// The original ASSERT(expr) macro. Level 2 stores 0 to address 0, which faults; std::abort() ends the process
// the same way. Level 1 prints the message to stderr and execution continues. Level 0 is silent.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

}  // namespace

// 0x3cb2f0 CharAI::StepResetAvailableStep(void)
void CharAI::StepResetAvailableStep() {
    CharAI::s_stepAvailableStep = 3;
}

// 0x3cb314 CharAI::StepInitScript(void)
// The original returns the result of the slot 51 call (InitVCB). The only caller (LoadScriptProcess) ignores it, so the
// port returns void.
void CharAI::StepInitScript() {
    OnInit();                       // vtable slot 2 (+0x08)
    if (m_scriptName != nullptr) {  // +0x30
        m_scriptLoading->InitVCB();  // vtable slot 51 (+0xcc) of the script being loaded (+0x20)
    }
}

// 0x3cb34c CharAI::_UpdatePointers(void)
// Clears the pointers to objects that were marked for deletion (ObjectBase::m_markedForDeletion, +0x81).
// Fields: m_target +0x40, m_lastTarget +0x44, m_master +0x50, unk_58 +0x58, and every value of the
// unk_5c map (+0x5c, an STLport tree of unsigned int -> Character*). The original walks the tree in key order;
// a range-for over the std::map visits the same nodes.
void CharAI::_UpdatePointers() {
    if (m_target && m_target->m_markedForDeletion) {
        m_target = nullptr;
    }
    if (m_master && m_master->m_markedForDeletion) {
        m_master = nullptr;
    }
    if (unk_58 && unk_58->m_markedForDeletion) {
        unk_58 = nullptr;
    }
    if (m_lastTarget && m_lastTarget->m_markedForDeletion) {
        m_lastTarget = nullptr;
    }
    for (auto& entry : unk_5c) {
        if (entry.second && entry.second->m_markedForDeletion) {
            entry.second = nullptr;
        }
    }
}

// 0x3cb454 CharAI::UpdatePointers(void)
// Thunk: forwards to _UpdatePointers (0x3cb34c).
void CharAI::UpdatePointers() {
    _UpdatePointers();
}

// 0x3cb458 CharAI::IsScriptProcessLoaded(void) const
bool CharAI::IsScriptProcessLoaded() const {
    return m_loadStep > 6;  // +0x28
}

// 0x3cb748 CharAI::AI_PauseUpdate(uint)
// Sets m_updatePaused (+0x18) and arms the Character's CharTimers entry for event 49, which clears the flag again.
int CharAI::AI_PauseUpdate(unsigned int ms) {
    m_updatePaused = true;
    return m_character->CharTimers::TMR_Start(ms, 0, 49, nullptr);
}

// 0x3cb77c CharAI::_UpdateRegen(void)
// PARTIAL: when IsRemotelyUpdated() is false the original tail-calls the void Character::RegenTick, so the
// value it returns is the r0 left by that call. This body returns 0 on that path.
int CharAI::_UpdateRegen() {
    const int result = m_character->IsRemotelyUpdated();  // ObjectBase slot 21 (+0x54)
    if (result) {
        return result;
    }
    m_character->RegenTick(AI_IsInCombat());
    return 0;
}

// 0x3cb7c0 CharAI::SetCharacter(Character *)
// The Hex-Rays return value is the r0 left after the assert message; the function is void in the source.
void CharAI::SetCharacter(Character* c) {
    if (!c) {
        AssertFailed("c", kCharAICpp, 455);
    }
    m_character = c;  // +0x04
}

// 0x3cb854 CharAI::StepQueryAvailableStep(int)
// Hands out up to `needed` steps from the shared budget s_stepAvailableStep and returns the amount granted.
int CharAI::StepQueryAvailableStep(int needed) {
    if (needed < 0) {
        AssertFailed("needed >= 0", kCharAICpp, 353);
    }
    const int result = (needed >= CharAI::s_stepAvailableStep) ? CharAI::s_stepAvailableStep : needed;
    CharAI::s_stepAvailableStep -= result;
    return result;
}

// 0x3cb908 CharAI::_UpdateTarget(void)
// Compares the current target (+0x40) with the state cached on the previous update and raises the matching
// AI events: 10/11 died or revived (m_targetAlive +0x48), 12/13 out of sight or in sight (m_targetInSight +0x49),
// 14..17 range (close, ranged, melee). A target that stops being interactive is dropped (+0x40 and +0x44).
int CharAI::_UpdateTarget() {
    int result = m_character->SM_IsAwaitingToSpawn();
    if (result) {
        return result;
    }
    result = m_character->SM_IsInLimbus();
    if (result) {
        return result;
    }
    if (!m_target) {
        return result;
    }
    result = m_target->IsInteractive(m_character);  // GameObject slot 34 (+0x88)
    if (!result) {
        m_target = nullptr;
        m_lastTarget = nullptr;
        return m_character->RaiseEvent(12, nullptr);
    }
    if (m_target) {
        m_character->GetCharAIId();
        result = !m_target->IsDead();  // GameObject slot 13 (+0x34)
        const bool alive = result != 0;
        if (m_targetAlive) {
            if (!result) {
                result = m_character->RaiseEvent(10, m_target);
            }
        } else if (result) {
            result = m_character->RaiseEvent(11, m_target);
        }
        GameObject* target = m_target;
        m_targetAlive = alive;
        if (target) {
            result = AI_IsInSight(target);
            const bool inSight = result != 0;
            if (m_targetInSight) {
                if (!result) {
                    result = m_character->RaiseEvent(12, m_target);
                }
            } else if (result) {
                result = m_character->RaiseEvent(13, m_target);
            }
            GameObject* current = m_target;
            m_targetInSight = inSight;
            if (current && inSight) {
                result = current->IsInteractive(m_character);
                if (result) {
                    if (m_character->CanRangeAttack()) {  // Character slot 73 (+0x124)
                        if (!AI_IsInCloseRange(m_target)) {
                            if (AI_IsInRange(m_target)) {
                                return m_character->RaiseEvent(15, m_target);
                            }
                            return m_character->RaiseEvent(14, m_target);
                        }
                        return m_character->RaiseEvent(16, m_target);
                    }
                    if (!AI_IsInMeleeRange(m_target)) {
                        return m_character->RaiseEvent(14, m_target);
                    }
                    return m_character->RaiseEvent(17, m_target);
                }
            }
        }
    }
    return result;
}

// 0x3cbb34 CharAI::RaiseAIEvent(int,void *)
// Event dispatcher. Event ids 0..63 come from the script and the state machine. Most hooks call the matching
// virtual of this CharAI (slots 2..50, see the header) and then, for the events that also go to the state
// machine, CharStateMachine::RaiseStateEvent. The original tail-calls that function (return
// CharStateMachine::RaiseStateEvent(...)), so the int it returns is the result of every state-machine path below.
// PARTIAL, in two places:
//  1. CharProperties::HandleDots, the void hooks and _SkillFocus and friends leave r0 unset when the original
//     tail-calls them, so those paths return 0 here. Events 49 and 50 return the CharAI pointer still in r0
//     (Hex-Rays `return this`); this body returns 0 there because that pointer is not reproduced as an int.
//  2. Event 29 passes the payload pointer as the new state. The pointer-to-int conversion is kept for the
//     header signature OnStateChanged(int, int) and is not 64-bit clean; the signature needs a fix.
// Event 53 (the timer event) is complete: its payload is a CharTimers::Timer, and slot 0 (GetID) gives the id.
int CharAI::RaiseAIEvent(int eventId, void* data) {
    // The state-machine event. The original returns the int from CharStateMachine::RaiseStateEvent.
    auto raiseState = [this, data](int stateEvent) {
        return m_character->CharStateMachine::RaiseStateEvent(stateEvent, data);  // +0x4fc state machine
    };
    const int id = eventId;
    switch (eventId) {
    case 0:
        return raiseState(50001);
    case 1:
        return raiseState(50002);
    case 2:
        OnDied(static_cast<GameObject*>(data));  // slot 9
        return raiseState(id);
    case 3:
        OnRevived(static_cast<GameObject*>(data));  // slot 10
        return 0;
    case 34: {
        const bool handled = _OnEndOfAnim();
        OnEndOfAnim();  // slot 38
        return handled ? raiseState(id) : 0;
    }
    case 35: {
        const bool handled = _OnEndOfAnimSection();
        OnEndOfAnim();  // slot 38
        return handled ? raiseState(id) : 0;
    }
    case 40: {
        const bool handled = _OnAnimEvent(static_cast<const char*>(data));
        return handled ? raiseState(id) : 0;
    }
    case 41:
        OnTimer(data);  // slot 32
        return raiseState(id);
    case 48:
        return raiseState(id);
    case 49:
        m_updatePaused = false;  // +0x18, set by AI_PauseUpdate
        return 0;
    case 50:
        m_targetSeeking = true;  // +0x4a
        return 0;
    case 51:
        return _UpdateRegen();
    case 52:
        m_character->CharProperties::HandleDots();  // Character +0x560
        return 0;
    case 53: {
        // The payload is the CharTimers::Timer that fired. Its slot 0 is GetID, and its result is the id passed on
        // to the script. Without a payload the id is -1.
        unsigned int timerId = static_cast<unsigned int>(-1);
        if (data) {
            timerId = static_cast<CharTimers::Timer*>(data)->GetID();  // Timer vtable slot 0
        }
        OnScriptTimer(timerId);  // slot 36
        return 0;
    }
    case 63:
        m_character->GameObject::EnableCollisions();
        return raiseState(id);
    default:
        break;
    }

    // Not one of the events above. While the controller is blocked (per-controller m_blocked or the global
    // v2Controller::s_blocked) and its unk_009 is clear, the event goes to the state machine only.
    v2Controller* controller = m_character->m_controller;  // Character +0x378 (v2Controllable::m_controller)
    if (!controller->unk_009 && (v2Controller::s_blocked || controller->m_blocked)) {
        return raiseState(id);
    }
    switch (id) {
    case 4:
        OnKill(static_cast<Character*>(data));  // slot 44
        return 0;
    case 7:
        OnFriendSpotted(static_cast<Character*>(data));  // slot 11
        return 0;
    case 8:
        OnNeutralSpotted(static_cast<Character*>(data));  // slot 12
        return 0;
    case 9:
        OnEnemySpotted(static_cast<Character*>(data));  // slot 13
        return raiseState(id);
    case 10:
        OnTargetDied();  // slot 16
        return 0;
    case 11:
        OnTargetRevived();  // slot 17
        return 0;
    case 12:
        OnTargetOutOfSight();  // slot 18
        return 0;
    case 13:
        OnTargetInSight();  // slot 19
        return 0;
    case 14:
        OnTargetOutOfRange();  // slot 20
        return 0;
    case 15:
        OnTargetInRangedRange();  // slot 21
        return 0;
    case 16:
        OnTargetInCloseRange();  // slot 22
        return 0;
    case 17:
        OnTargetInMeleeRange();  // slot 23
        return 0;
    case 18:
        OnMasterDied();  // slot 24
        return 0;
    case 19:
        OnMasterRevived();  // slot 25
        return 0;
    case 20:
        OnMasterOutOfSight();  // slot 26
        return 0;
    case 21:
        OnMasterInSight();  // slot 27
        return 0;
    case 22:
        OnMasterOutOfRange();  // slot 28
        return 0;
    case 23:
        OnMasterInRangedRange();  // slot 29
        return 0;
    case 24:
        OnMasterInCloseRange();  // slot 30
        return 0;
    case 25:
        OnMasterInMeleeRange();  // slot 31
        return 0;
    case 29:
        // PARTIAL: see the note above. The payload is the new state; the current state is the old one.
        OnStateChanged(static_cast<int>(reinterpret_cast<std::intptr_t>(data)),  // slot 8
                       m_character->SM_GetState());
        return 0;
    case 30:
        _SkillFocus();
        return 0;
    case 31:
        _SkillBlur();
        return 0;
    case 32:
        _SpellFocus();
        return 0;
    case 33:
        _SpellBlur();
        return 0;
    case 36:
        return _OnAnimSequenceBegin() ? raiseState(id) : 0;
    case 37:
        return _OnAnimSequenceEnd() ? raiseState(id) : 0;
    case 38:
        return _OnAnimStepBegin() ? raiseState(id) : 0;
    case 39:
        return _OnAnimStepEnd() ? raiseState(id) : 0;
    case 42:
        OnAttackDelayExpired();  // slot 35
        return raiseState(id);
    case 43:
        OnStunExpired();  // slot 33
        return raiseState(id);
    case 44:
        OnFearExpired();  // slot 34
        return raiseState(id);
    case 55:
        OnCollisionBegin(static_cast<GameObject*>(data), true);  // slot 47
        return 0;
    case 56:
        OnCollisionBegin(static_cast<GameObject*>(data), false);
        return 0;
    case 57:
        OnCollisionPersist(static_cast<GameObject*>(data), true);  // slot 48
        return 0;
    case 58:
        OnCollisionPersist(static_cast<GameObject*>(data), false);
        return 0;
    case 59:
        OnCollisionEnd(static_cast<GameObject*>(data), true);  // slot 49
        return 0;
    case 60:
        OnCollisionEnd(static_cast<GameObject*>(data), false);
        return 0;
    case 61:
        OnCollisionResult(static_cast<GameObject*>(data), true);  // slot 50
        return 0;
    case 62:
        OnCollisionResult(static_cast<GameObject*>(data), false);
        return 0;
    default:
        return raiseState(id);
    }
}

// 0x3cc218 CharAI::StepLoadCommon(void)
// The original returns the result of LuaScript::Load (or `this` when m_usesCommons is clear); the only caller ignores it.
void CharAI::StepLoadCommon() {
    if (m_usesCommons) {                       // +0x2c
        m_scriptLoading->Load("_commons");     // LuaScript::Load (non-virtual) on the script being loaded (+0x20)
    }
}

// 0x3cc26c CharAI::StepSetCharacter(void)
void CharAI::StepSetCharacter() {
    m_scriptLoading->SetCharacter(m_character);  // CharAIScript::SetCharacter(m_character) on the script at +0x20
}

// 0x3cc278 CharAI::StepBindFunction(void)
void CharAI::StepBindFunction() {
    m_scriptLoading->BindFunction();  // CharAIScript::BindFunction on the script at +0x20
}

// 0x3cc280 CharAI::_HandleProjectile(Projectile *,void *)
// Static in the binary: the projectile arrives in r0 and the callback is taken as a plain
// (Projectile*, void*) function pointer by ProjectileManager::Spawn. The data argument is unused.
// Owner (+0x380) is the Character that fired the projectile; its CharAI gets OnProjectileHit(m_hitObject).
// The hit object (+0x3cc) either takes the owner's AttackResult (when it is a Character) or is asked
// whether it interacts with the owner (type 8 -> Interact(projectile)).
// F_MeleeAttack and F_ApplyResult are static in the binary (Hex-Rays shows no this argument), but Character.hpp
// declares them as members. They are called through the owner pointer, which the callee ignores.
int CharAI::_HandleProjectile(Projectile* p, void* data) {
    (void)data;
    if (!p) {
        AssertFailed("p", kCharAICpp, 238);
        return 0;
    }
    GameObject* hit = p->m_hitObject;                          // +0x3cc
    Character* owner = static_cast<Character*>(p->m_owner);    // +0x380
    Character* target = nullptr;
    if (hit) {
        ObjectHandle handle = hit->GetHandle();
        target = handle;  // ObjectHandle::operator Character*
    }
    if (!owner) {
        AssertFailed("self", kCharAICpp, 244);
        return 0;
    }
    static_cast<CharAI*>(owner)->OnProjectileHit(hit);  // slot 43 (+0xac) of the owner's CharAI
    if (!hit) {
        return 0;
    }
    if (!target) {
        if (hit->GetInteractionType(owner) == 8) {  // GameObject slot 36 (+0x90)
            hit->Interact(p);                       // GameObject slot 38 (+0x98)
        }
        return 0;
    }
    Character::AttackResult result{};
    owner->F_MeleeAttack(result, owner, target, false, p->unk_37c);  // +0x37c projectile flag
    owner->F_ApplyResult(result, owner, target, false);
    return (result.m_resultFlags & 3u) != 0 ? 1 : 0;  // byte at +0x18 of the result, & 3
}

// 0x3cc484 CharAI::IsMyTurn(CharAI const*)
// The argument is unused by the original. The character gets the turn when the update timer has run out and this
// AI is at the front of the update queue, or when it is a follower or a faerie; otherwise Character::IsPlayer decides.
bool CharAI::IsMyTurn(const CharAI* other) {
    (void)other;
    if (s_updateQueue.empty()) {
        AssertFailed("s_updateQueue.size() > 0", kCharAICpp, 102);
    }
    if ((s_updateTimer <= 0 && !s_updateQueue.empty() && s_updateQueue.front() == this) ||
        m_character->IsFollower() || m_character->IsFaerie()) {
        return true;
    }
    return m_character->IsPlayer();  // Character slot 10 (+0x28)
}

// 0x3cc5a4 CharAI::_UpdateMaster(void)
// The master counterpart of _UpdateTarget: master (+0x50) alive/dead (m_masterAlive +0x54, events 18/19),
// in sight (m_masterInSight +0x55, events 20/21) and the follow ranges (events 22..25).
int CharAI::_UpdateMaster() {
    int result = 0;
    if (m_master) {
        m_character->GetCharAIId();
        result = !m_master->IsDead();  // GameObject slot 13 (+0x34)
        const bool alive = result != 0;
        if (m_masterAlive) {
            if (!result) {
                result = m_character->RaiseEvent(18, m_master);
            }
        } else if (result) {
            result = m_character->RaiseEvent(19, m_master);
        }
        GameObject* master = m_master;
        m_masterAlive = alive;
        if (master) {
            result = AI_IsInSight(master);
            const bool inSight = result != 0;
            if (m_masterInSight) {
                if (!result) {
                    result = m_character->RaiseEvent(20, m_master);
                }
            } else if (result) {
                result = m_character->RaiseEvent(21, m_master);
            }
            GameObject* current = m_master;
            m_masterInSight = inSight;
            if (current && m_masterAlive && inSight) {
                // The original passes an unset register as IsMyTurn's argument; IsMyTurn ignores it.
                result = IsMyTurn(nullptr);
                if (result) {
                    if (m_character->CanRangeAttack()) {  // Character slot 73 (+0x124)
                        if (!AI_IsInCloseRange(m_master)) {
                            if (AI_IsInRange(m_master)) {
                                return m_character->RaiseEvent(23, m_master);
                            }
                            return m_character->RaiseEvent(22, m_master);
                        }
                        return m_character->RaiseEvent(24, m_master);
                    }
                    if (!AI_IsInMeleeRange(m_master)) {
                        return m_character->RaiseEvent(22, m_master);
                    }
                    return m_character->RaiseEvent(25, m_master);
                }
            }
        }
    }
    return result;
}

// 0x3cc9dc CharAI::AIUnLoadScriptProcess(bool)
// Tears the script process down when `force` is set or the load was staged (m_stagedLoad +0x24) and a loading
// script exists. The skill and spell scripts are deleted, the vectors cleared, and the load state reset.
void CharAI::AIUnLoadScriptProcess(bool force) {
    const bool unload = force ? true : m_stagedLoad;
    if (!m_scriptLoading || !unload) {
        return;
    }
    _SkillCleanUp();
    _SpellCleanUp();
    for (CharAISkillScript*& skill : m_skillScripts) {  // +0xb4
        if (skill) {
            delete skill;
            skill = nullptr;
        }
    }
    m_skillScripts.clear();
    for (CharAISkillScript*& spell : m_spellScripts) {  // +0xc0
        if (spell) {
            delete spell;
            spell = nullptr;
        }
    }
    m_spellScripts.clear();
    delete m_scriptLoading;  // vtable slot 1 (+0x04), the deleting destructor
    m_scriptLoading = nullptr;
    m_script = nullptr;
    m_scriptName = nullptr;
    m_loadStep = 0;
    m_usesCommons = false;
}

// 0x3ccaf4 void CharAI::SetScript<AISExternal>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 196-byte AISExternal (AISExternal(true)) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISExternal>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISExternal(true);
}

// 0x3ccbe4 void CharAI::SetScript<AISMonster>(void)
// The owner assert, then a previous m_scriptLoading is terminated (OnTerminate, slot 5, +0x14), deleted through its virtual deleting
// destructor (slot 1) and cleared; the 196-byte AISMonster (CharAIScript(true), the mask words cleared) becomes m_scriptLoading.
template <>
void CharAI::SetScript<AISMonster>() {
    if (!m_character) {
        AssertFailed("me && \"Make sure to call CharAI::SetCharacter before calling CharAI::SetScript\"",
                     kCharAIHeader, 673);
    }
    if (m_scriptLoading) {
        OnTerminate();  // slot 5 (+0x14)
        delete m_scriptLoading;
        m_scriptLoading = nullptr;
    }
    m_scriptLoading = new AISMonster(true);
}
