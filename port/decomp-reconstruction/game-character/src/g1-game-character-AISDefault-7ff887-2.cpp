// Batch g1-game-character-AISDefault-7ff887-2 (part 3 of 3 of AISDefault): the target and combat hooks (OnAttack,
// OnInteract, the melee, close, ranged and out-of-range hooks), OnUpdate, InitVCB, the combat results, anim event and
// script timer hooks. Declarations and layout come from dh2/AISDefault.hpp. The deleting destructor (0x3dc968) is
// compiler generated and is not rebuilt.
//
// Layout facts used here (32-bit offsets, the port reads them by name):
//   - CharAIScript::m_character (+0x98) is the owner Character. CharAI is the Character base at +0x3c8, so
//     CharAI::m_target is Character +0x408 and CharAI::m_targetSeeking is Character +0x412.
//   - v2Controllable::m_controller (Character +0x378) is the v2Controller that the Cmd_* calls drive.
//   - GameObject::m_pfObject (+0x1c8) holds the path list PFObject::m_path at +0x38, so the list sentinel is
//     Character +0x200. The original walks that list in several places with no body; only its emptiness is observable.
//   - CharStateMachine is the Character base at +0x4fc (the state tests use it).
//   - CharAIScript::unk_b8 (+0xb8) is the callback mask word. InitVCB writes 0x800 (OnTargetHit) and 0x1000
//     (OnTargetMissed) there, and OnCombatResults reads them.
//   - CharAIScript::unk_bc (+0xbc) is the counter that OnUpdate tests against 199.

#include <cstring>

#include "dh2/AISDefault.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

namespace {

// The original walks the path list (Character +0x200) in several places with an empty loop body. Those walks
// have no effect, so only the emptiness of the list is kept.
bool PathIsEmpty(const Character* character) {
    return character->m_pfObject.m_path.empty();
}

// The target drop that OnInteract runs: AI_SetTarget(null, false) and then AI_SyncLastTarget. It does not touch the
// seeking flag (asm 0x3dc244: the path ends in a tail call to AI_SyncLastTarget, with no store to +0x412).
void ClearTarget(CharAI* ai) {
    ai->AI_SetTarget(nullptr, false);
    ai->AI_SyncLastTarget();
}

// The drop that the seek hooks run once the character has no path left to walk: ClearTarget, then the seeking flag
// at +0x4a of CharAI (Character +0x412) is cleared. OnTargetInCloseRange, OnTargetInRangedRange and
// OnTargetOutOfRange store 0 there (Hex-Rays: *(owner + 1042) = 0).
void DropTarget(CharAI* ai) {
    ClearTarget(ai);
    ai->m_targetSeeking = false;
}

// The body that OnTargetInRangedRange and OnTargetOutOfRange share (the ranged hook runs it after its enemy branch).
// While the target is sought, the character walks to the target's interaction spot. The target is dropped when the
// path is empty after the move.
void SeekInteractionSpot(Character* self) {
    CharAI* ai = self;
    if (!ai->AI_IsTargetSeeking()) {
        return;
    }
    CharStateMachine* sm = self;
    if (!sm->SM_IsIdle(false) && !sm->SM_IsAttacking() && !PathIsEmpty(self)) {
        return;
    }
    self->m_controller->Cmd_MoveTo(ai->m_target->GetInteractionSpot());
    if (PathIsEmpty(self)) {
        DropTarget(ai);
    }
}

}  // namespace

// 0x3dc12c AISDefault::OnAttack(int,int,bool)
// The two int arguments are unused by the original. The flag is the third hook argument and goes to F_MeleeAttack.
void AISDefault::OnAttack(int /*a*/, int /*b*/, bool flag) {
    CharAI* ai = m_character;
    Character* target = ai->AI_GetTargetAsCharacter();
    if (target) {
        // F_MeleeAttack and F_ApplyResult are static in the binary (Hex-Rays shows no this argument). They are called
        // through the owner, as CharAI::_HandleProjectile does; the object is ignored by the callee.
        Character::AttackResult result{};
        m_character->F_MeleeAttack(result, m_character, target, flag, false);
        m_character->F_ApplyResult(result, m_character, target, false);
        return;
    }
    // The target is not a character: the owner interacts with it (vtable slot +0x98, owner passed in r1).
    if (GameObject* object = ai->m_target) {
        object->Interact(m_character);
    }
}

// 0x3dc1b0 AISDefault::OnInteract(void)
void AISDefault::OnInteract() {
    CharAI* ai = m_character;
    GameObject* target = ai->m_target;
    if (!target) {
        return;
    }
    // A character target that is a monster is not interacted with.
    if (target->IsCharacter() && ai->AI_GetTargetAsCharacter()->IsMonster()) {
        return;
    }
    target->Interact(m_character);
    // The original reads the target again after the call. A target cleared by the call is a null read there; the port
    // stops instead.
    target = ai->m_target;
    if (!target) {
        return;
    }
    if (target->unk_2fa != 0) {  // GameObject +0x2fa (unk_2fa, meaning not recovered): a non-zero value skips the reset
        return;
    }
    // A character target that is a merchant keeps the target.
    if (target->IsCharacter() && ai->AI_GetTargetAsCharacter()->IsMerchant()) {
        return;
    }
    // Only the target is dropped (AI_SetTarget(null, false), AI_SyncLastTarget). The seeking flag keeps its value.
    ClearTarget(ai);
}

// 0x3dc284 AISDefault::OnTargetInMeleeRange(void)
void AISDefault::OnTargetInMeleeRange() {
    Character* self = m_character;
    CharAI* ai = self;
    if (ai->AI_IsEnemy(nullptr)) {
        self->m_controller->Cmd_Stop();
        self->m_controller->Cmd_Attack(ai->m_target);
        return;
    }
    if (ai->AI_IsInInteractionRange(ai->m_target)) {
        self->m_controller->Cmd_Stop();
        ai->AI_InteractWith(nullptr);
    }
}

// 0x3dc300 AISDefault::OnTargetInCloseRange(void)
void AISDefault::OnTargetInCloseRange() {
    Character* self = m_character;
    CharAI* ai = self;
    CharStateMachine* sm = self;
    if (ai->AI_IsEnemy(nullptr)) {
        if (!ai->AI_IsTargetSeeking()) {
            return;
        }
        if (!sm->SM_IsIdle(false) && !sm->SM_IsAttacking() && !PathIsEmpty(self)) {
            return;
        }
        // Back away from the target: the point beyond the character by the same offset that the target has from it.
        const Point3D<float>& selfPos = self->GetTargetPosition();
        const Point3D<float>& targetPos = ai->m_target->GetTargetPosition();
        Point3D<float> away;
        away.X = (selfPos.X - targetPos.X) + selfPos.X;
        away.Y = (selfPos.Y - targetPos.Y) + selfPos.Y;
        away.Z = (selfPos.Z - targetPos.Z) + selfPos.Z;
        self->m_controller->Cmd_MoveTo(away);
        if (PathIsEmpty(self)) {
            DropTarget(ai);
        }
        return;
    }
    if (ai->AI_IsInInteractionRange(ai->m_target)) {
        self->m_controller->Cmd_Stop();
        ai->AI_InteractWith(nullptr);
        return;
    }
    if (!PathIsEmpty(self)) {
        return;
    }
    self->m_controller->Cmd_MoveTo(ai->m_target->GetInteractionSpot());
    if (PathIsEmpty(self)) {
        DropTarget(ai);
    }
}

// 0x3dc560 AISDefault::OnTargetInRangedRange(void)
void AISDefault::OnTargetInRangedRange() {
    Character* self = m_character;
    CharAI* ai = self;
    if (ai->AI_IsEnemy(nullptr)) {
        self->m_controller->Cmd_Stop();
        self->m_controller->Cmd_Attack(ai->m_target);
        return;
    }
    SeekInteractionSpot(self);
}

// 0x3dc698 AISDefault::OnTargetOutOfRange(void)
void AISDefault::OnTargetOutOfRange() {
    SeekInteractionSpot(m_character);
}

// 0x3dc798 AISDefault::OnUpdate(void)
// Over 199 updates the counter (+0xbc) resets and the character is paused for 1000 ms and stops moving.
void AISDefault::OnUpdate() {
    if (unk_bc > 199u) {
        unk_bc = 0;
        CharAI* ai = m_character;
        ai->AI_PauseUpdate(1000u);
        m_character->m_controller->Cmd_Stop();
    }
}

// 0x3dc7d8 AISDefault::InitVCB(void)
// Sets the callback mask (+0xb8): 0x800 when the script defines OnTargetHit, 0x1000 when it defines OnTargetMissed.
// The return value is the OnTargetMissed bit alone, as the original returns it (no caller reads it).
int AISDefault::InitVCB() {
    unk_b8 = 0;
    const std::uint32_t hit = IsInVFTable("OnTargetHit") ? 0x800u : 0u;
    unk_b8 = hit;
    const std::uint32_t missed = IsInVFTable("OnTargetMissed") ? 0x1000u : 0u;
    unk_b8 = missed | hit;
    return static_cast<int>(missed);
}

// 0x3dc968 AISDefault::~AISDefault()
// The deleting destructor (D0) is compiler generated: it runs the destructor and frees the object. Nothing is written
// here; the complete-object destructor is in the part 2 batch.

// 0x3dc9a8 AISDefault::OnCombatResults(Character *,Character *,void *)
// The two characters go to the script as userdata. A result whose low two flag bits are set is a miss, and the script's
// OnTargetMissed runs when the miss callback bit (0x1000 in unk_b8) is set; otherwise a hit runs OnTargetHit when bit
// 0x800 is set. Hex-Rays reads the flags as the byte at +0x18 (a4[24]), which is AttackResult::m_resultFlags.
void AISDefault::OnCombatResults(Character* a2, Character* a3, void* a4) {
    sfc::script::lua::Arguments args;
    args.pushUserData(a2);
    args.pushUserData(a3);
    const auto* results = static_cast<const Character::AttackResult*>(a4);
    if ((results->m_resultFlags & 3u) != 0) {
        if ((unk_b8 & 0x1000u) != 0) {
            LuaScript::Call("OnTargetMissed", args);
        }
    } else if ((unk_b8 & 0x800u) != 0) {
        LuaScript::Call("OnTargetHit", args);
    }
}

// 0x3dca50 AISDefault::OnAnimEvent(char const*)
// The script hears every event: OnAnimEvent gets the event name and the character's last event data (CharAnimator m_lastEventData,
// Character +0x4f4). The step_right and step_left events then play the footprint effect (GetFXFootprint) at the position of the matching foot
// (right foot for step_right, left foot for step_left) and, when the character's CharEffect row (m_props.m_w8, row 0 when out
// of range) allows footsteps (Structs::CharEffect m_w5, +0x14) and the floor under it (m_pfObject.m_floor, whose floortypes string is the
// material) has a FootstepEffect row of that material name, that row's effect (Structs::FootstepEffect m_w1, +0x04) at the same place.
void AISDefault::OnAnimEvent(const char* name) {
    sfc::script::lua::Arguments args;
    args.pushString(name);
    args.pushInteger(m_character->m_lastEventData);
    LuaScript::Call("OnAnimEvent", args);

    const bool rightFoot = std::strcmp(name, "step_right") == 0;
    if (!rightFoot && std::strcmp(name, "step_left") != 0) {
        return;
    }
    const Point3D<float> footPosition =
        rightFoot ? m_character->GetRightFootPosition() : m_character->GetLeftFootPosition();
    Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(m_character->GetFXFootprint(), footPosition, nullptr, nullptr);

    const std::int32_t effectIndex = m_character->m_props.Effects;
    const auto* effects = reinterpret_cast<const Structs::CharEffect*>(Arrays::CharEffectTable::members);
    const bool footstepsAllowed = (effectIndex < 0 || effectIndex >= static_cast<std::int32_t>(Arrays::CharEffectTable::size))
                                      ? effects[0].TriggerFloorFX
                                      : effects[effectIndex].TriggerFloorFX;
    const char* material = nullptr;
    if (PFFloor* floor = m_character->m_pfObject.m_floor) {
        material = floor->m_floorTypes.c_str();
    }
    if (footstepsAllowed && material != nullptr) {
        const auto* footsteps = reinterpret_cast<const Structs::FootstepEffect*>(Arrays::FootstepEffectTable::members);
        for (std::uint32_t i = 0; i < Arrays::FootstepEffectTable::size; ++i) {
            if (std::strcmp(footsteps[i].Floortype, material) == 0) {
                Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(footsteps[i].Effect, footPosition, nullptr, nullptr);
                break;
            }
        }
    }
}

// 0x3dcc80 AISDefault::OnScriptTimer(uint)
// The timer id goes to the script as an integer argument of OnTimer.
void AISDefault::OnScriptTimer(unsigned int id) {
    sfc::script::lua::Arguments args;
    args.pushInteger(static_cast<int>(id));
    LuaScript::Call("OnTimer", args);
}
