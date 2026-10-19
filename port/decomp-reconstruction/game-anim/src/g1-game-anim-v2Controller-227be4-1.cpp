// Batch g1-game-anim-v2Controller-227be4-1: the second half of the v2Controller Cmd_* forwarders
// (Cmd_Zoom .. Cmd_Attack). Declarations come from dh2/v2Controller.hpp and dh2/v2Controllable.hpp.
//
// Every gated command first tests the block state: it runs when unk_009 (+0x09) is set, or when neither
// the global s_blocked nor m_blocked (+0x08) is set. A closed gate returns without forwarding.
// The Cmd_* that forward to the controllable call the Ctrl_* slot of the same name (see the comments).

#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/c_online.hpp"

namespace {

// Block test shared by the gated Cmd_* functions (original: unk_009 || (!s_blocked && !m_blocked)).
bool CommandsEnabled(const v2Controller& controller) {
    return controller.unk_009 || (!v2Controller::s_blocked && !controller.m_blocked);
}

// The CMsgControllerAction every online command sends: action code at +0x50, the object or skill id at +0x52 and the sending
// character's network id (Character +0x108, low byte) at +0x54.
void SendControllerAction(const Character* sender, std::uint8_t action, std::uint16_t targetId) {
    CMessaging* messaging = GetMessaging();
    CMsgControllerAction* message = static_cast<CMsgControllerAction*>(CMessage::CreateMessage("CMsgControllerAction", true));
    message->senderId_ = static_cast<std::uint8_t>(sender->unk_108);
    message->action_ = action;
    message->targetId_ = targetId;
    messaging->SendMsg(message);
}

}  // namespace

// 0x405744 _ZN12v2Controller8Cmd_ZoomEf
// Not gated. Forwards to Ctrl_Zoom (vtable +0x60 of v2Controllable).
void v2Controller::Cmd_Zoom(float amount) {
    m_controllable->Ctrl_Zoom(amount);
}

// 0x405760 _ZN12v2Controller13Cmd_ResetZoomEv
// Not gated. Forwards to Ctrl_ResetZoom (vtable +0x64).
void v2Controller::Cmd_ResetZoom() {
    m_controllable->Ctrl_ResetZoom();
}

// 0x40577c _ZN12v2Controller19Cmd_TranslateMapCamEff
// Not gated. Forwards both offsets to Ctrl_TranslateMapCam (vtable +0x68).
void v2Controller::Cmd_TranslateMapCam(float dx, float dy) {
    m_controllable->Ctrl_TranslateMapCam(dx, dy);
}

// 0x405798 _ZN12v2Controller14Cmd_DropObjectEv
// Gated. The original calls GetOnline() and discards its result, then calls Ctrl_DropObject (vtable +0x54).
// GetOnline() is a thunk (0x7fd794 is a branch to COnline::GetInstance at 0x7fd744), so the call is written
// as the thunk's target.
void v2Controller::Cmd_DropObject() {
    if (!CommandsEnabled(*this)) {
        return;
    }
    COnline::GetInstance();
    m_controllable->Ctrl_DropObject();
}

// 0x4057fc _ZN12v2Controller10Cmd_UseOOIEP10GameObject
// Gated. Online with the per-controller flag (+0x0a) and a character: the target is the argument or else the character's object
// of interest; unless it is a merchant character or its interaction type with the character is 1 (and not 8), action 5 is sent
// with the target's network id. Then Ctrl_UseOOI (vtable +0x50).
void v2Controller::Cmd_UseOOI(GameObject* target) {
    if (!CommandsEnabled(*this)) {
        return;
    }
    if (GetOnline()->IsOnlineGame() && unk_00a && m_character != nullptr) {
        GameObject* object = target != nullptr ? target : m_character->m_objectOfInterest;  // Character +0x14a4
        if (object != nullptr) {
            const bool merchant = object->IsCharacter() && static_cast<Character*>(object)->IsMerchant();
            if (!merchant && object->GetInteractionType(m_character) != 1) {
                if (object->GetInteractionType(m_character) != 8) {
                    SendControllerAction(m_character, 5, static_cast<std::uint16_t>(object->unk_108));
                }
            }
        }
    }
    m_controllable->Ctrl_UseOOI(target);
}

// 0x405954 _ZN12v2Controller12Cmd_EndSkillEj
// Gated. Online with the flag and a character: action 2 with the skill id is sent. Then Ctrl_EndSkill (vtable +0x40).
void v2Controller::Cmd_EndSkill(unsigned int skill) {
    if (!CommandsEnabled(*this)) {
        return;
    }
    if (GetOnline()->IsOnlineGame() && unk_00a && m_character != nullptr) {
        SendControllerAction(m_character, 2, static_cast<std::uint16_t>(skill));
    }
    m_controllable->Ctrl_EndSkill(skill);
}

// 0x405a20 _ZN12v2Controller14Cmd_BeginSkillEj
// Gated. Online with the flag and a character, and the skill usable: action 1 with the skill id is sent. Then Ctrl_BeginSkill
// (vtable +0x3c).
void v2Controller::Cmd_BeginSkill(unsigned int skill) {
    if (!CommandsEnabled(*this)) {
        return;
    }
    if (GetOnline()->IsOnlineGame() && unk_00a && m_character != nullptr) {
        if (m_character->AI_IsSkillUsable(skill)) {
            SendControllerAction(m_character, 1, static_cast<std::uint16_t>(skill));
        }
    }
    m_controllable->Ctrl_BeginSkill(skill);
}

// 0x405b04 _ZN12v2Controller10Cmd_AttackEP10GameObject
// Gated. Online with the flag and a character: the melee attack is started on the character's AI (AI_DoMeleeAttack) and the
// target state is restored (current and last target, attacking flag). When the target and the flag are unchanged and the
// character is attacking or flagged, the restore runs with the last target synced and no message goes out; otherwise the
// restore runs and action 0 with the target's network id (0 without target) is sent. Then Ctrl_Attack (vtable +0x38).
void v2Controller::Cmd_Attack(GameObject* target) {
    if (!CommandsEnabled(*this)) {
        return;
    }
    if (GetOnline()->IsOnlineGame() && unk_00a && m_character != nullptr) {
        Character* ch = m_character;
        GameObject* const oldTarget = ch->m_target;          // CharAI +0x40
        GameObject* const oldLast = ch->m_lastTarget;        // CharAI +0x44
        const bool oldAttacking = ch->m_attacking;           // CharAI +0x78
        ch->AI_DoMeleeAttack(target, true);
        if (oldTarget == m_character->m_target && m_character->m_attacking == oldAttacking &&
            (m_character->SM_IsAttacking() || m_character->m_attacking)) {
            m_character->AI_SetTarget(oldLast, true);
            m_character->AI_SyncLastTarget();
            m_character->AI_SetTarget(oldTarget, true);
            m_character->m_attacking = oldAttacking;
        } else {
            m_character->AI_SetTarget(oldLast, true);
            m_character->AI_SyncLastTarget();
            m_character->AI_SetTarget(oldTarget, true);
            m_character->m_attacking = oldAttacking;
            SendControllerAction(m_character, 0, target != nullptr ? static_cast<std::uint16_t>(target->unk_108) : std::uint16_t(0));
        }
    }
    m_controllable->Ctrl_Attack(target);
}
