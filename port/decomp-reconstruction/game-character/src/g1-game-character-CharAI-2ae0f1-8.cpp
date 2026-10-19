// Batch g1-game-character-CharAI-2ae0f1-8: the CharAI spell and skill controller (CharAI_Skills.cpp in the original).
// Covers the usability checks, begin/end/cancel and the use wrappers for spells and skills, the per-frame skill
// update, the cleanup, blur and event hooks for the skill and spell scripts, AI_ReloadSkills and
// _ClearNonStickyTarget.
//
// Layout facts used here: CharAI::m_skillScripts (+0xb4) and m_spellScripts (+0xc0) are vectors of CharAISkillScript*;
// m_curSkill (+0xcc) is the skill in use; m_skillStepBegun (+0xd0) and m_skillStepEnded (+0xd1) are the step flags.
// The skill and faery rows come back from Character::GetCharSkill and GetCharFaery as typed Arrays rows
// (Structs::Skill and Structs::Faery, see pydata-accessors/structs_records.hpp), read by their named members.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::Skill, Structs::Faery

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

const char* const kCharAISkillsCpp =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\AI\\CharAI_Skills.cpp";

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

// 0x3d80b4 CharAI::AI_IsSpellUsable(void) const
// The spell index is the current faery. The original reads the spell script at that index after an assert; an index
// past the end (or negative) is an out-of-bounds read there, so the port returns false instead.
bool CharAI::AI_IsSpellUsable() const {
    if (m_character->SM_IsUsingSkill() || m_character->SM_IsCasting() || !IsScriptProcessLoaded()) {
        return false;
    }
    const int spellId = m_character->SG_GetCurrentFaerieId(-1);
    const int spellCount = static_cast<int>(m_spellScripts.size());
    if (spellId >= spellCount) {  // signed compare, as in the original
        AssertFailed("spellId < (int)m_spellScripts.size()", kCharAISkillsCpp, 321);
    }
    if (spellId < 0 || spellId >= spellCount) {
        return false;
    }
    CharAISkillScript* script = m_spellScripts[static_cast<std::size_t>(spellId)];
    if (!script) {
        return false;
    }
    return script->OnSkillCheck_Usable();
}

// 0x3d81c0 CharAI::AI_BeginSpell(bool)
// A faery spell of kind 1 (Structs::Faery m_w7) that is already active runs its OnPreSkill (no range check) and, online unless forced (flag
// true), sends a CMsgControllerAction (action 3, the faery id) before returning true. Otherwise, if the spell is usable, the cast step flags
// are cleared, the cast state is entered and the same message is sent online; the result is whether the character is casting.
bool CharAI::AI_BeginSpell(bool flag) {
    const int faeryId = m_character->SG_GetCurrentFaerieId(-1);
    const auto* faery = static_cast<const Structs::Faery*>(m_character->GetCharFaery(faeryId));
    if (faery->SpellType == 1 && AI_IsSpellActive()) {
        m_spellScripts[static_cast<std::size_t>(faeryId)]->OnPreSkill();  // no range check, as in the original
        if (GetOnlineGameFlag() && !flag) {
            SendControllerAction(m_character, 3, static_cast<std::uint16_t>(faeryId));
        }
        return true;
    }
    if (!AI_IsSpellUsable()) {
        return false;
    }
    m_skillStepBegun = false;
    m_skillStepEnded = false;
    m_character->SM_SetCastState(static_cast<unsigned int>(faeryId), nullptr, false);
    if (GetOnlineGameFlag() && !flag) {
        SendControllerAction(m_character, 3, static_cast<std::uint16_t>(faeryId));
    }
    return m_character->SM_IsCasting();
}

// 0x3d832c CharAI::AI_CastSpell(void)
bool CharAI::AI_CastSpell() {
    if (AI_BeginSpell(false)) {
        AI_EndSpell(false);
        return true;
    }
    return false;
}

// 0x3d8358 CharAI::AI_IsSkillUsable(uint) const
// While a skill is in use, the skill is usable only when bit 0x8000 of Character +0x520 (CharStateMachine::m_stateFlags,
// +0x24) is set. Then the character must not be casting and the script process must be loaded. The index is checked against
// m_skillScripts (assert line 181); an index past the end fails. The skill script's OnSkillCheck_Usable decides the rest.
bool CharAI::AI_IsSkillUsable(unsigned int skill) const {
    if (m_character->SM_IsUsingSkill() && (m_character->CharStateMachine::m_stateFlags & 0x8000u) == 0) {
        return false;
    }
    if (m_character->SM_IsCasting() || !IsScriptProcessLoaded()) {
        return false;
    }
    const std::size_t skillCount = m_skillScripts.size();
    if (skill >= skillCount) {
        AssertFailed("skillId < m_skillScripts.size()", kCharAISkillsCpp, 181);
        return false;
    }
    CharAISkillScript* script = m_skillScripts[skill];
    if (!script) {
        return false;
    }
    return script->OnSkillCheck_Usable();
}

// 0x3d8474 CharAI::AI_EndSkill(uint)
// The skill record word at +0x48 (Structs::Skill m_w18) selects the end path: 2 stops the looping animation when the
// step has begun, otherwise the step is marked ended.
void CharAI::AI_EndSkill(unsigned int skill) {
    if (!m_character->SM_IsUsingSkill()) {
        return;
    }
    const auto* record = static_cast<const Structs::Skill*>(m_character->GetCharSkill(static_cast<int>(skill)));
    if (record->Type != 2) {
        return;
    }
    if (m_skillStepBegun) {
        m_character->ANIM_StopLoop(true);
    } else {
        m_skillStepEnded = true;
    }
}

// 0x3d84e0 CharAI::AI_CancelSkill(uint)
// An index past the end is an out-of-bounds read in the original after the assert; the port returns there.
void CharAI::AI_CancelSkill(unsigned int skill) {
    const std::size_t skillCount = m_skillScripts.size();
    if (skill >= skillCount) {
        AssertFailed("skillId < m_skillScripts.size()", kCharAISkillsCpp, 290);
        return;
    }
    CharAISkillScript* script = m_skillScripts[skill];
    if (!script) {
        return;
    }
    const auto* record = static_cast<const Structs::Skill*>(m_character->GetCharSkill(static_cast<int>(skill)));
    if (record->Type != 1) {
        return;
    }
    if (script->OnSkillCheck_Active()) {
        script->OnPreSkill();
    }
}

// 0x3d85d4 CharAI::AI_IsSkillActive(uint) const
// The in-use test runs before the index read, as in the original. An index past the end is an out-of-bounds read
// there; after the assert the port returns false.
bool CharAI::AI_IsSkillActive(unsigned int skill) const {
    const std::size_t skillCount = m_skillScripts.size();
    if (skill >= skillCount) {
        AssertFailed("skillId < m_skillScripts.size()", kCharAISkillsCpp, 199);
    }
    if (m_character->SM_IsUsingSkill() && skill == static_cast<unsigned int>(m_curSkill)) {
        return true;
    }
    if (skill >= skillCount) {
        return false;
    }
    CharAISkillScript* script = m_skillScripts[skill];
    if (!script) {
        return false;
    }
    return script->OnSkillCheck_Active();
}

// 0x3d86bc CharAI::AI_BeginSkill(uint)
// A skill whose record word m_w18 (+0x48) is 1 and that is already active runs its OnPreSkill (no range check) and returns true.
// Otherwise a usable skill becomes the current skill, the step flags are cleared and the skill state is entered (SM_SetSkillState with
// the record's m_w2). A player character counts it in property 216; above 199 the local player unlocks the "epic_withskills" trophy.
// The result is whether the character is using a skill.
bool CharAI::AI_BeginSkill(unsigned int skill) {
    const auto* record = static_cast<const Structs::Skill*>(m_character->GetCharSkill(static_cast<int>(skill)));
    if (record->Type == 1 && AI_IsSkillActive(skill)) {
        m_skillScripts[skill]->OnPreSkill();  // no range check, as in the original
        return true;
    }
    if (!AI_IsSkillUsable(skill)) {
        return false;
    }
    m_curSkill = static_cast<int>(skill);
    m_skillStepBegun = false;
    m_skillStepEnded = false;
    m_character->SM_SetSkillState(skill, record->AnimIsMoving, nullptr, false);
    if (m_character->IsPlayer()) {
        m_character->PROPS_AddInt(216, 1);
        TrophyManager* trophies = TrophyManager::s_instance;
        if (m_character->PROPS_GetInt(216, false) > 199) {
            if (dword_99F76C->IsLocalPlayer(m_character)) {
                trophies->UnlockTrophy(pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), "epic_withskills"));
            }
        }
    }
    return m_character->SM_IsUsingSkill();
}

// 0x3d8868 CharAI::AI_UseSkill(uint)
bool CharAI::AI_UseSkill(unsigned int skill) {
    if (AI_BeginSkill(skill)) {
        AI_EndSkill(skill);
        return true;
    }
    return false;
}

// 0x3d8894 CharAI::UpdateAllSkills(void)
// The loops capture the count once and re-read the element each time, as the original does.
void CharAI::UpdateAllSkills() {
    if (m_character->SM_IsUsingSkill() || m_character->SM_IsCasting()) {
        return;
    }
    const std::size_t skillCount = m_skillScripts.size();
    for (std::size_t i = 0; i < skillCount; ++i) {
        if (CharAISkillScript* script = m_skillScripts[i]) {
            script->OnSkillUpdate();
        }
    }
    const std::size_t spellCount = m_spellScripts.size();
    for (std::size_t i = 0; i < spellCount; ++i) {
        if (CharAISkillScript* script = m_spellScripts[i]) {
            script->OnSkillUpdate();
        }
    }
}

// 0x3d8948 CharAI::_UpdateSkillsCB(int,uint,void*)
// Slot callback of Character::SG_TellSlots. The user pointer is the CharAI. A null pointer asserts; the original then
// dereferences it and faults, the port returns.
void CharAI::_UpdateSkillsCB(int slot, unsigned int skillIndex, void* user) {
    (void)slot;
    if (!user) {
        AssertFailed("_this", kCharAISkillsCpp, 114);
        return;
    }
    CharAI* self = static_cast<CharAI*>(user);
    if (skillIndex < self->m_skillScripts.size()) {
        if (CharAISkillScript* script = self->m_skillScripts[skillIndex]) {
            script->OnSkillUpdate();
        }
    }
}

// 0x3d8a04 CharAI::UpdateSkills(void)
// The original reads the current faery twice; the getter is const, so the port reads it once.
void CharAI::UpdateSkills() {
    if (m_character->SM_IsUsingSkill() || m_character->SM_IsCasting()) {
        return;
    }
    m_character->SG_TellSlots(&CharAI::_UpdateSkillsCB, this);
    const int faeryId = m_character->SG_GetCurrentFaerieId(-1);
    if (static_cast<unsigned int>(faeryId) < m_spellScripts.size()) {
        if (CharAISkillScript* script = m_spellScripts[static_cast<std::size_t>(faeryId)]) {
            script->OnSkillUpdate();
        }
    }
}

// 0x3d8a98 CharAI::_SpellCleanUp(void)
void CharAI::_SpellCleanUp() {
    const std::size_t spellCount = m_spellScripts.size();
    for (std::size_t i = 0; i < spellCount; ++i) {
        if (CharAISkillScript* script = m_spellScripts[i]) {
            script->OnSkillCleanUp();
        }
    }
}

// 0x3d8ae0 CharAI::_SkillCleanUp(void)
void CharAI::_SkillCleanUp() {
    const std::size_t skillCount = m_skillScripts.size();
    for (std::size_t i = 0; i < skillCount; ++i) {
        if (CharAISkillScript* script = m_skillScripts[i]) {
            script->OnSkillCleanUp();
        }
    }
}

// 0x3d8b28 CharAI::_SpellBlur(void)
// The original reads the current faery twice (const getter; the port reads it once).
void CharAI::_SpellBlur() {
    const int faeryId = m_character->SG_GetCurrentFaerieId(-1);
    if (static_cast<unsigned int>(faeryId) < m_spellScripts.size()) {
        if (CharAISkillScript* script = m_spellScripts[static_cast<std::size_t>(faeryId)]) {
            script->OnPostSkill();
        }
    }
}

// 0x3d8b7c CharAI::_SkillBlur(void)
void CharAI::_SkillBlur() {
    const auto skill = static_cast<unsigned int>(m_curSkill);
    if (skill < m_skillScripts.size()) {
        if (CharAISkillScript* script = m_skillScripts[skill]) {
            script->OnPostSkill();
        }
    }
}

// 0x3d8ba4 CharAI::_SpellEvent(void)
// The original reads the current faery twice (const getter; the port reads it once).
void CharAI::_SpellEvent() {
    const int faeryId = m_character->SG_GetCurrentFaerieId(-1);
    if (static_cast<unsigned int>(faeryId) < m_spellScripts.size()) {
        if (CharAISkillScript* script = m_spellScripts[static_cast<std::size_t>(faeryId)]) {
            script->OnSkill();
        }
    }
}

// 0x3d8bf8 CharAI::_SkillEvent(void)
void CharAI::_SkillEvent() {
    const auto skill = static_cast<unsigned int>(m_curSkill);
    if (skill < m_skillScripts.size()) {
        if (CharAISkillScript* script = m_skillScripts[skill]) {
            script->OnSkill();
        }
    }
}

// 0x3d8cfc CharAI::AI_ReloadSkills(void)
// Each skill script is deleted through its virtual destructor (vtable slot 1 in the original), the list is cleared,
// then the character reloads its skill slots and the AI rebuilds its scripts and updates them.
void CharAI::AI_ReloadSkills() {
    for (CharAISkillScript*& script : m_skillScripts) {
        if (script) {
            delete script;
            script = nullptr;
        }
    }
    m_skillScripts.clear();
    m_character->SG_ReloadSkills();
    SetSkillsAndSpells();
    UpdateAllSkills();
}

// 0x3d8d70 CharAI::_ClearNonStickyTarget(void)
// The original passes the sticky byte (+0x4b, zero on this path) as both the target pointer and the force flag,
// which is AI_SetTarget(nullptr, false).
void CharAI::_ClearNonStickyTarget() {
    if (!m_stickyTarget) {
        AI_SetTarget(nullptr, false);
        AI_SyncLastTarget();
    }
}
