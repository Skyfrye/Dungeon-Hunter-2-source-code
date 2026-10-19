// Batch g1-game-character-CharAI-2ae0f1-7 (part 8 of 9 of CharAI): the aggro maps (AI_GetRelationsConverseMap,
// AI_GetAggroEntry, AI_SetAggro, AI_AddAggro, AI_ClearAggro, AI_ClearAllAggro, AI_ClearAllAggroTowardMe), the target
// setter, the range and melee tests, the attack check, the death reset, and the spell and skill accessors with the
// focus hooks. Declarations come from dh2/CharAI.hpp. Offsets in comments are the original 32-bit offsets inside CharAI
// (this) unless a line says Character.
//
// Map layout: CharAI::m_aggro (+0x7c) and m_aggroedBy (+0x94) are std::map<Character*, float>. The original reaches another
// character's maps through pointer arithmetic (other + 1116 is its m_aggroedBy, other + 1092 its m_aggro). Here the other
// character is converted to its CharAI base and the named member is used.
//
// The PARTIAL comments name what is missing; the ledger rows in game-character/ledger.d/g1-game-character-CharAI-2ae0f1-7.csv
// repeat them.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/w7_structs_2.hpp"  // Structs::Faery (m_w7 at +0x1c)

namespace {

// The CMsgControllerAction every online spell and skill start/end sends: action code at +0x50, the target/faery id at +0x52 and the owner's
// network id (Character +0x108) at +0x54.
void SendControllerAction(Character* character, std::uint8_t action, std::uint16_t targetId) {
    CMessaging* messaging = GetMessaging();
    CMsgControllerAction* message = static_cast<CMsgControllerAction*>(CMessage::CreateMessage("CMsgControllerAction", true));
    message->senderId_ = static_cast<std::uint8_t>(character->unk_108);
    message->action_ = action;
    message->targetId_ = targetId;
    messaging->SendMsg(message);
}

const char* const kCharAIQueries =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Queries.cpp";
const char* const kCharAISkills =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp";

// The original ASSERT(expr) macro. Level 2 stops the process; level 1 prints the message; level 0 is silent. Callers go on
// after a failed assert, as the original does.
void AssertFailed(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The original reloads the switch file before every query (DebugSwitches::load), then asks for the switch by name.
bool QueryDebugSwitch(const char* name) {
    DebugSwitches::GetInstance()->load();
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

// Squared distance between two positions, summed in x, y, z order as the pseudocode does.
float SquaredDistance(const Point3D<float>& a, const Point3D<float>& b) {
    const float dx = a.X - b.X;
    const float dy = a.Y - b.Y;
    const float dz = a.Z - b.Z;
    return dx * dx + dy * dy + dz * dz;
}

}  // namespace

// ---- aggro maps -----------------------------------------------------------------------------------------------------

// 0x3d7208 CharAI::AI_GetRelationsConverseMap(std::map<Character*,float,...> const&) const
// The original starts an empty map and inserts every (Character*, aggro) pair of the argument as (aggro, Character*).
// An equal aggro keeps the first pair, as insert_unique does.
std::map<float, Character*> CharAI::AI_GetRelationsConverseMap(const std::map<Character*, float>& m) const {
    std::map<float, Character*> converse;
    for (const auto& entry : m) {
        converse.insert(std::make_pair(entry.second, entry.first));
    }
    return converse;
}

// 0x3d72d0 CharAI::AI_GetAggroEntry(int,Character*&,float&) const
// The index counts the entries of the converse map of m_aggro from its lowest aggro. The entry at index gives the
// character and the aggro. When there is no such entry the character is set to null and the aggro is left alone.
void CharAI::AI_GetAggroEntry(int index, Character*& c, float& aggro) const {
    const std::map<float, Character*> converse = AI_GetRelationsConverseMap(m_aggro);
    int i = 0;
    for (const auto& entry : converse) {
        if (i == index) {
            c = entry.second;
            aggro = entry.first;
            return;
        }
        ++i;
    }
    c = nullptr;
}

// 0x3d6d68 CharAI::AI_ClearAggro(Character *)
// When c is in m_aggro: c's CharAI is told this owner de-aggros (slot 15, OnDeAggro), and both sides drop the pair.
// Then, when this owner is c's target, c's target is cleared and c's v2Controller is stopped.
void CharAI::AI_ClearAggro(Character* c) {
    if (!c) {
        return;
    }
    CharAI* cAI = c;
    if (m_aggro.find(c) != m_aggro.end()) {
        m_aggro.erase(c);
        cAI->m_aggroedBy.erase(m_character);
        cAI->OnDeAggro(m_character);  // slot 15 (+0x3c) with this owner's character as the argument
    }
    if (m_character == cAI->m_target) {
        cAI->AI_SetTarget(nullptr, false);
        c->m_controller->Cmd_Stop();  // v2Controllable::m_controller at Character +0x378
    }
}

// 0x3d5fa8 CharAI::AI_ClearAllAggro(void)
// The original walks m_aggro in order. For each character it removes this owner from that character's m_aggroedBy.
// Then it empties m_aggro and calls OnDeAggro (slot 15) on each of those characters with this owner as the argument.
void CharAI::AI_ClearAllAggro() {
    std::vector<Character*> others;
    others.reserve(m_aggro.size());
    for (const auto& entry : m_aggro) {
        Character* other = entry.first;
        CharAI* otherAI = other;
        otherAI->m_aggroedBy.erase(m_character);
        others.push_back(other);
    }
    m_aggro.clear();
    for (Character* other : others) {
        CharAI* otherAI = other;
        otherAI->OnDeAggro(m_character);
    }
}

// 0x3d6abc CharAI::AI_ClearAllAggroTowardMe(bool)
// The mirror of AI_ClearAllAggro over m_aggroedBy. With flag set, a character whose target is this owner gets its target
// cleared and its last target synced first. Each such character drops this owner from its m_aggro. Then m_aggroedBy is
// emptied and this owner calls OnDeAggro (slot 15) on each of those characters.
void CharAI::AI_ClearAllAggroTowardMe(bool flag) {
    std::vector<Character*> others;
    others.reserve(m_aggroedBy.size());
    for (const auto& entry : m_aggroedBy) {
        Character* other = entry.first;
        CharAI* otherAI = other;
        if (flag && m_character == otherAI->m_target) {
            otherAI->AI_SetTarget(nullptr, false);
            otherAI->AI_SyncLastTarget();
        }
        otherAI->m_aggro.erase(m_character);
        others.push_back(other);
    }
    m_aggroedBy.clear();
    for (Character* other : others) {
        OnDeAggro(other);  // slot 15 (+0x3c) on this owner
    }
}

// 0x3d79ec CharAI::AI_SetAggro(Character *,float)
// The aggro is set for c in this owner's m_aggro, and this owner is recorded in c's m_aggroedBy with the same value. A
// character that was not yet in m_aggro is first told it is aggroed (slot 14, OnAggro) with this owner as the argument.
// Nothing happens when this owner or c is a player or dead. The return value is the aggro that was set (a3), or 0.0f on
// the early-out (asm: MOV R5,#0 at loc_3D7A28, then MOV R0,R5). AI_AddAggro returns it minus the old value, and its
// callers branch on that result with > 0.
float CharAI::AI_SetAggro(Character* c, float aggro) {
    if (!c) {
        AssertFailed("c", kCharAIQueries, 628);
    }
    if (m_character->IsPlayer() || m_character->IsDead() || c->IsDead()) {
        return 0.0f;
    }
    if (m_aggro.find(c) == m_aggro.end()) {
        CharAI* cAI = c;
        cAI->OnAggro(m_character);  // slot 14 (+0x38)
    }
    m_aggro[c] = aggro;
    CharAI* cAI = c;
    cAI->m_aggroedBy[m_character] = aggro;
    return aggro;
}

// 0x3d7c68 CharAI::AI_AddAggro(Character *,float)
// An existing entry gets the new value added: AI_SetAggro(c, aggro + old), and the result minus old is returned (asm:
// BL AI_SetAggro, then __aeabi_fsub). Otherwise it tail-calls AI_SetAggro(c, aggro) and returns its result. So the return
// is the aggro actually added, or 0 / -old when AI_SetAggro refuses. Callers branch on it with > 0: Character::F_ApplyResult
// (0x3b10b4), Character::_AddAggro (0x3b8098) and CharAI::OnEnemySpotted (0x3d14b4).
float CharAI::AI_AddAggro(Character* c, float aggro) {
    if (!c) {
        AssertFailed("c", kCharAIQueries, 658);
    }
    const auto it = m_aggro.find(c);
    if (it == m_aggro.end()) {
        return AI_SetAggro(c, aggro);
    }
    const float old = it->second;
    return AI_SetAggro(c, aggro + old) - old;
}

// ---- targets and death ----------------------------------------------------------------------------------------------

// 0x3d6890 CharAI::AI_SetTarget(GameObject *,bool)
// force only stores the target. Otherwise the character's 0x14d0 counter is cleared when the target changes, the
// IsTracingCharAITarget switch is read (when it is set and the target changes, isTracingCharAITarget is read too), and
// the target is stored. A non-null target also refreshes the last target, the interaction flag, the alive flag and the
// in-sight flag. The trace bodies of the switch probes are not in the pseudocode.
void CharAI::AI_SetTarget(GameObject* target, bool force) {
    m_requestedTarget = target;
    if (force) {
        m_target = target;
        return;
    }
    if (m_target != target) {
        m_character->unk_14d0 = 0;
    }
    if (QueryDebugSwitch("IsTracingCharAITarget") && m_target != target) {
        QueryDebugSwitch("isTracingCharAITarget");
    }
    m_target = target;
    if (!target) {
        return;
    }
    (void)m_character->GetCharAIId();  // the pseudocode calls it and drops the value
    if (m_target != m_lastTarget) {
        m_interacting = false;
    }
    m_lastTarget = m_target;
    m_targetAlive = !m_target->IsDead();  // slot 13 (+0x34) on the target
    m_targetInSight = AI_IsInSight(m_target);
}

// 0x3d8038 CharAI::_SpellFocus(void)
// The current faery id is used as the index into m_spellScripts. A present script gets OnPreSkill. The pseudocode's
// return value (the id, or the OnPreSkill result) is unused because the declaration is void. The id is read once here;
// SG_GetCurrentFaerieId is const, so a second read gives the same value.
void CharAI::_SpellFocus() {
    const unsigned int spellId = static_cast<unsigned int>(m_character->SG_GetCurrentFaerieId(-1));
    if (spellId < m_spellScripts.size()) {
        CharAISkillScript* script = m_spellScripts[spellId];
        if (script) {
            script->OnPreSkill();
        }
    }
}

// 0x3d808c CharAI::_SkillFocus(void)
// The current skill index (m_curSkill, +0xcc, -1 when none) selects the skill script, which gets OnPreSkill. The return
// value is unused, as for _SpellFocus.
void CharAI::_SkillFocus() {
    const unsigned int skillId = static_cast<unsigned int>(m_curSkill);
    if (skillId < m_skillScripts.size()) {
        CharAISkillScript* script = m_skillScripts[skillId];
        if (script) {
            script->OnPreSkill();
        }
    }
}

// 0x3d6cdc CharAI::AI_SetDead(void)
// Clears the target, syncs the last target, sets the dead state on the state machine, stops the two timers (the AI tick
// slot +0x10 and the DoT slot +0x14), resets both slots to -1, clears the aggro in both directions and cleans up the skill
// and spell scripts.
void CharAI::AI_SetDead() {
    AI_SetTarget(nullptr, false);
    AI_SyncLastTarget();
    static_cast<CharStateMachine*>(m_character)->SM_SetDeadState(false, nullptr, true);
    static_cast<CharTimers*>(m_character)->TMR_Stop(static_cast<unsigned int>(m_aiTickTimer));
    static_cast<CharTimers*>(m_character)->TMR_Stop(static_cast<unsigned int>(m_dotTimer));
    m_dotTimer = -1;
    m_aiTickTimer = -1;
    AI_ClearAllAggro();
    AI_ClearAllAggroTowardMe(false);
    _SkillCleanUp();
    _SpellCleanUp();
}

// ---- ranges and attack ----------------------------------------------------------------------------------------------

// 0x3d6188 CharAI::AI_IsInMeleeRange(GameObject const*) const
// The target is a null argument's m_target (none gives false). The target's object handle must resolve to an object with
// a zero +0xf4 (ObjectBase::m_goId) that reports interaction type 8 against this owner's character. Otherwise the
// interaction range is used. For that object, the melee radii of both characters sum to a range that is compared with the
// squared distance between the positions. The object is taken as a Character here, since the original reads its CharAI
// at +0x3c8 + the base.
bool CharAI::AI_IsInMeleeRange(const GameObject* a2) const {
    const GameObject* target = a2;
    if (!target) {
        target = m_target;
        if (!target) {
            return false;
        }
    }
    ObjectHandle handle = target->GetHandle();
    GameObject* object = static_cast<GameObject*>(handle.GetObject(false));
    if (!object || static_cast<int>(object->m_goId) != 0 || object->GetInteractionType(m_character) != 8) {
        return AI_IsInInteractionRange(target);
    }
    Character* other = static_cast<Character*>(object);
    const float distSq = SquaredDistance(m_character->GetTargetPosition(), target->GetTargetPosition());
    const float range = AI_GetMeleeRadius() + static_cast<CharAI*>(other)->AI_GetMeleeRadius();
    if (QueryDebugSwitch("IsTracingCharAITarget")) {
        QueryDebugSwitch("isTracingCharAITarget");
    }
    return range * range > distSq;
}

// 0x3d63d8 CharAI::AI_IsInCloseRange(GameObject const*) const
// Same handle and interaction-type gate as AI_IsInMeleeRange. The character's CanRangeAttack gives the close range (the
// second and third outputs are unused and share one slot in the original). The squared distance must be below that range
// squared.
bool CharAI::AI_IsInCloseRange(const GameObject* a2) const {
    const GameObject* target = a2;
    if (!target) {
        target = m_target;
        if (!target) {
            return false;
        }
    }
    ObjectHandle handle = target->GetHandle();
    GameObject* object = static_cast<GameObject*>(handle.GetObject(false));
    if (!object || static_cast<int>(object->m_goId) != 0 || object->GetInteractionType(m_character) != 8) {
        return AI_IsInInteractionRange(target);
    }
    int closeRange = 0;
    int unused = 0;
    if (!m_character->CanRangeAttack(closeRange, unused, unused)) {
        return false;
    }
    const float distSq = SquaredDistance(m_character->GetTargetPosition(), target->GetTargetPosition());
    if (QueryDebugSwitch("IsTracingCharAITarget")) {
        QueryDebugSwitch("isTracingCharAITarget");
    }
    return static_cast<float>(closeRange * closeRange) > distSq;
}

// 0x3d6604 CharAI::AI_IsInRange(GameObject const*) const
// The character's CanRangeAttack gives the minimum and maximum range (the third output is unused). The squared distance
// must lie in [minimum squared, maximum squared].
bool CharAI::AI_IsInRange(const GameObject* a2) const {
    const GameObject* target = a2;
    if (!target) {
        target = m_target;
        if (!target) {
            return false;
        }
    }
    int minRange = 0;
    int maxRange = 0;
    int unused = 0;
    if (!m_character->CanRangeAttack(minRange, maxRange, unused)) {
        return false;
    }
    const float distSq = SquaredDistance(m_character->GetTargetPosition(), target->GetTargetPosition());
    if (QueryDebugSwitch("IsTracingCharAITarget")) {
        QueryDebugSwitch("isTracingCharAITarget");
    }
    return static_cast<float>(minRange * minRange) <= distSq && static_cast<float>(maxRange * maxRange) >= distSq;
}

// 0x3d67f4 CharAI::AI_CanAttack(GameObject *) const
// The target must be an enemy. A melee attack needs the inventory's melee ability and the melee range. Otherwise the
// character's range attack must exist and the target must be in range.
bool CharAI::AI_CanAttack(GameObject* a2) const {
    const GameObject* target = a2;
    if (!target) {
        target = m_target;
        if (!target) {
            return false;
        }
    }
    if (!AI_IsEnemy(target)) {
        return false;
    }
    if (m_character->ItemInventory::CanMeleeAttack() && AI_IsInMeleeRange(target)) {
        return true;
    }
    if (!m_character->CanRangeAttack()) {
        return false;
    }
    return AI_IsInRange(target);
}

// ---- spells and skills ----------------------------------------------------------------------------------------------

// 0x3d7d9c CharAI::AI_IsSpellActive(void) const
// The binary returns 0: no spell is ever active.
bool CharAI::AI_IsSpellActive() const {
    return false;
}

// 0x3d7da4 CharAI::AI_CancelSpell(void)
// The binary is an empty function.
void CharAI::AI_CancelSpell() {}

// 0x3d7da8 CharAI::AI_SpellInfo(float &) const
// PARTIAL: the current faery id indexes m_spellScripts. A present script gives its info 0 through GetInfo, and an absent one
// gives 0. The assert (line 457) fires for an id past the end. The original then reads the vector past its end (undefined);
// this port takes the no-script path there. The pseudocode's return value is the leftover register of the void GetInfo call,
// so the declaration is void.
void CharAI::AI_SpellInfo(float& info) const {
    const unsigned int spellId = static_cast<unsigned int>(m_character->SG_GetCurrentFaerieId(-1));
    const std::size_t count = m_spellScripts.size();
    if (spellId >= count) {
        AssertFailed("spellId < m_spellScripts.size()", kCharAISkills, 457);
    }
    CharAISkillScript* script = spellId < count ? m_spellScripts[spellId] : nullptr;
    if (script) {
        script->GetInfo(0, &info);
    } else {
        info = 0.0f;
    }
}

// 0x3d7e88 CharAI::AI_SkillInfo(uint,uint,float &) const
// PARTIAL: as AI_SpellInfo, the skill index is checked against m_skillScripts (assert line 439). The original reads past
// the vector's end when the assert is silent (undefined); this port takes the no-script path there. The return value is
// void, for the same reason as AI_SpellInfo.
void CharAI::AI_SkillInfo(unsigned int skillId, unsigned int infoId, float& info) const {
    const std::size_t count = m_skillScripts.size();
    if (skillId >= count) {
        AssertFailed("skillId < m_skillScripts.size()", kCharAISkills, 439);
    }
    CharAISkillScript* script = skillId < count ? m_skillScripts[skillId] : nullptr;
    if (script) {
        script->GetInfo(infoId, &info);
    } else {
        info = 0.0f;
    }
}

// 0x3d7f60 CharAI::AI_EndSpell(bool)
// While casting, and when the current faery's record word m_w7 (+0x1c) is 2: the loop stops when the anim step has begun, otherwise the step
// is marked ended. Online, unless forced (flag true), a CMsgControllerAction (action 4, target 0, the owner's network id) is sent.
void CharAI::AI_EndSpell(bool flag) {
    if (!static_cast<CharStateMachine*>(m_character)->SM_IsCasting()) {
        return;
    }
    const int faeryId = m_character->SG_GetCurrentFaerieId(-1);
    const auto* faery = static_cast<const Structs::Faery*>(m_character->GetCharFaery(faeryId));
    if (faery->SpellType != 2) {
        return;
    }
    if (m_skillStepBegun) {
        static_cast<CharAnimator*>(m_character)->ANIM_StopLoop(true);
    } else {
        m_skillStepEnded = true;
    }
    if (GetOnlineGameFlag() && !flag) {
        SendControllerAction(m_character, 4, 0);
    }
}
