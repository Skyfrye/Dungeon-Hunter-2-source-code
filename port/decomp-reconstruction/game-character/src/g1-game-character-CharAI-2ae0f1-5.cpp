// Batch g1-game-character-CharAI-2ae0f1-5: the AI group map (GroupInfo copy and destructor, the default constructor
// that the original builds inline, ClearGroupInfo, AddToGroup, RemoveFromGroup), the animation step hooks, the animation
// event dispatcher, AI_SyncLastTarget and AI_IsTargetSeeking. Declarations come from dh2/CharAI.hpp. Each PARTIAL comment
// names what is missing; the ledger rows in game-character/ledger.d/g1-game-character-CharAI-2ae0f1-5.csv repeat it.
//
// Two gates recur. The anim stack level (Character +0x4c8) is CharAnimator::m_animStackIdx at +0x2c, public in
// dh2/CharAnimator.hpp. CharStateMachine::m_stateFlags (Character +0x520, bit 0x1000) is public in dh2/CharStateMachine.hpp.
// Both gates are read directly. Character::m_ooiInteractionType (+0x14a8) is the interaction type test in _OnAnimStepEnd_Attack.

#include <algorithm>
#include <cstdint>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/name_table.hpp"

// ---- group map ------------------------------------------------------------------------------------------------------

// 0x3d2cc0 CharAI::GroupInfo::~GroupInfo()
// The original frees the three vectors in reverse declaration order (m_members +0x18, m_leaders +0x0c, m_masterLeaders
// +0x00). The member destructors do the same.
CharAI::GroupInfo::~GroupInfo() {}

// 0x3d2de0 CharAI::GroupInfo::GroupInfo(CharAI::GroupInfo const&)
// The asm calls the vector copy constructor on all three vectors (the Hex-Rays first call shows a default constructor,
// which is wrong), then copies m_allMembersDead (+0x24), m_leadersDead (+0x28) and m_triggered (+0x29). pad_2a is not copied.
CharAI::GroupInfo::GroupInfo(const GroupInfo& other)
    : m_masterLeaders(other.m_masterLeaders),
      m_leaders(other.m_leaders),
      m_members(other.m_members),
      m_allMembersDead(other.m_allMembersDead),
      m_leadersDead(other.m_leadersDead),
      m_triggered(other.m_triggered) {}

// No standalone symbol: AddToGroup builds a new group in place. The original zeroes the 0x2c bytes (the vectors are empty),
// sets m_allMembersDead (+0x24) to -1 and leaves the flags at 0. That is the state written here.
CharAI::GroupInfo::GroupInfo()
    : m_allMembersDead(-1), m_leadersDead(false), m_triggered(false) {}

// 0x3d2fb0 CharAI::ClearGroupInfo()
// The original erases the whole tree (the node count is non-zero) and resets the root, the count and both ends. That is
// std::map::clear().
void CharAI::ClearGroupInfo() {
    if (!s_groups.empty()) {
        s_groups.clear();
    }
}

// 0x3d2ff8 CharAI::RemoveFromGroup()
// The role picks the vector: 0 and 3 use m_members, 1 uses m_leaders, 2 uses m_masterLeaders, and any other role does
// nothing. The search is for this CharAI: the vectors hold Character pointers and the comparison converts each stored
// Character* to its CharAI base (asm: the find is called with the CharAI pointer and no adjustment). A found entry is erased.
void CharAI::RemoveFromGroup() {
    GroupInfo* group = m_group;
    if (!group) {
        return;
    }
    std::vector<Character*>* members = nullptr;
    switch (m_groupRole) {
        case 0:
        case 3:
            members = &group->m_members;
            break;
        case 1:
            members = &group->m_leaders;
            break;
        case 2:
            members = &group->m_masterLeaders;
            break;
        default:
            return;
    }
    const auto it = std::find(members->begin(), members->end(), this);
    if (it != members->end()) {
        members->erase(it);
    }
}

// 0x3d37d0 CharAI::AddToGroup(Character*)
// Static. The original takes the Character in its first argument (Hex-Rays types it as CharAI *this); the second argument
// is unused. A Character with an empty group name joins nothing. The role name picks the role: "Normal" 0, "Leader" 1,
// "MasterLeader" 2, "Group" 3, and any other name returns. The group is keyed by (group name, ObjectBase::unk_64 at +0x64).
// The map lookup is std::map::find (the Hex-Rays descent is a lower_bound followed by an equality test). A
// missing key is inserted with a fresh GroupInfo. The Character joins m_masterLeaders for role 2, m_leaders for role 1, and
// m_members for roles 0 and 3. Then m_group (+0x34) and m_groupRole (+0x38) are set on the CharAI.
// The meaning of the key id at +0x64 is not recovered; the field keeps its ObjectBase name.
void CharAI::AddToGroup(Character* c) {
    if (c->m_charGroup.empty()) {
        return;
    }
    const char* roleName = c->m_charGroupRole.c_str();
    int role = 0;
    if (std::strcmp(roleName, "Normal") == 0) {
        role = 0;
    } else if (std::strcmp(roleName, "Leader") == 0) {
        role = 1;
    } else if (std::strcmp(roleName, "MasterLeader") == 0) {
        role = 2;
    } else if (std::strcmp(roleName, "Group") == 0) {
        role = 3;
    } else {
        return;
    }
    const std::pair<std::string, int> key(c->m_charGroup, c->unk_64);
    auto it = s_groups.find(key);
    if (it == s_groups.end()) {
        it = s_groups.emplace(key, GroupInfo()).first;
    }
    GroupInfo& group = it->second;
    if (role == 1) {
        group.m_leaders.push_back(c);
    } else if (role == 2) {
        group.m_masterLeaders.push_back(c);
    } else {
        group.m_members.push_back(c);
    }
    c->CharAI::m_group = &group;
    c->CharAI::m_groupRole = role;
}

// ---- targets -----------------------------------------------------------------------------------------------------------

// 0x3d49c4 CharAI::AI_SyncLastTarget(void)
void CharAI::AI_SyncLastTarget() {
    m_lastTarget = m_target;
}

// 0x3d49d0 CharAI::AI_IsTargetSeeking(void) const
// Seeking is off when m_targetSeeking (+0x4a) is clear. Otherwise the result is the inverse of bit 0x1000 in Character +0x520,
// which is CharStateMachine::m_stateFlags (+0x24).
bool CharAI::AI_IsTargetSeeking() const {
    if (!m_targetSeeking) {
        return false;
    }
    return (m_character->CharStateMachine::m_stateFlags & 0x1000u) == 0;
}

// ---- animation hooks: sequences and step dispatch ----------------------------------------------------------------------

// 0x3d3ae4 CharAI::_OnEndOfAnimSection(void)
bool CharAI::_OnEndOfAnimSection() {
    return true;
}

// 0x3d3aec CharAI::_OnEndOfAnim(void)
bool CharAI::_OnEndOfAnim() {
    return true;
}

// 0x3d3d30 CharAI::_OnAnimSequenceEnd(void)
// The original reads the state (CharStateMachine at +0x4fc) and discards it.
bool CharAI::_OnAnimSequenceEnd() {
    m_character->CharStateMachine::SM_GetState();
    return true;
}

// 0x3d3d4c CharAI::_OnAnimSequenceBegin(void)
// The original reads the state (CharStateMachine at +0x4fc) and discards it.
bool CharAI::_OnAnimSequenceBegin() {
    m_character->CharStateMachine::SM_GetState();
    return true;
}

// 0x3d3ff8 CharAI::_OnAnimStepEnd(void)
// State 5 (attack) goes to _OnAnimStepEnd_Attack. States 6 and 7 (skill, spell) go to _OnAnimStepEnd_SkillSpell. Every other
// state returns true. The dispatch is exact; the two callees are PARTIAL.
bool CharAI::_OnAnimStepEnd() {
    const int state = m_character->CharStateMachine::SM_GetState();
    if (state == 5) {
        return _OnAnimStepEnd_Attack();
    }
    if (state < 5 || state > 7) {
        return true;
    }
    return _OnAnimStepEnd_SkillSpell();
}

// 0x3d4204 CharAI::_OnAnimStepBegin(void)
// State 4 (move) goes to _OnAnimStepBegin_Move, 5 (attack) to _OnAnimStepBegin_Attack, and 6 and 7 (skill, spell) to
// _OnAnimStepBegin_SkillSpell. Every other state returns true. The dispatch is exact; the attack and skill callees are PARTIAL.
bool CharAI::_OnAnimStepBegin() {
    switch (m_character->CharStateMachine::SM_GetState()) {
        case 4:
            return _OnAnimStepBegin_Move();
        case 5:
            return _OnAnimStepBegin_Attack();
        case 6:
        case 7:
            return _OnAnimStepBegin_SkillSpell();
        default:
            return true;
    }
}

// 0x3d4120 CharAI::_OnAnimStepBegin_Move(void)
// With a target that the AI is seeking, the original compares the squared distance from m_character->m_destination (GameObject
// +0x1a8) to the target's position against AI_GetMeleeRadiusSq(). When the target is outside that radius, it moves the
// character towards the target through the controller (v2Controllable m_controller, +0x378).
bool CharAI::_OnAnimStepBegin_Move() {
    if (!m_target) {
        return true;
    }
    if (!AI_IsTargetSeeking()) {
        return true;
    }
    const Point3D<float>& targetPosition = m_target->GetTargetPosition();
    const float dx = targetPosition.X - m_character->m_destination.X;
    const float dy = targetPosition.Y - m_character->m_destination.Y;
    const float dz = targetPosition.Z - m_character->m_destination.Z;
    if (AI_GetMeleeRadiusSq() > (dx * dx + dy * dy + dz * dz)) {
        return true;
    }
    m_character->m_controller->Cmd_MoveTo(m_target);
    return true;
}

// 0x3d3d68 CharAI::_OnAnimStepEnd_SkillSpell(void)
// When the step index is 0, the anim stack level is 1 (Character +0x4c8, which is CharAnimator::m_animStackIdx at +0x2c)
// and m_skillStepEnded (+0xd1) is set, the animation loop is stopped at once. The step count is read and discarded, as in
// the original. The function always returns true.
bool CharAI::_OnAnimStepEnd_SkillSpell() {
    const int stepIndex = m_character->CharAnimator::ANIM_GetStepIndex();
    m_character->CharAnimator::ANIM_GetStepCount();
    if (stepIndex == 0 && m_character->CharAnimator::m_animStackIdx == 1 && m_skillStepEnded) {
        m_character->CharAnimator::ANIM_StopLoop(true);
    }
    return true;
}

// 0x3d3dd4 CharAI::_OnAnimStepBegin_SkillSpell(void)
// Only step 0 of anim stack level 1 (Character +0x4c8, CharAnimator::m_animStackIdx) counts. There the skill or spell step
// has begun (m_skillStepBegun, +0xd0 set), and when m_skillStepEnded (+0xd1) is already set the loop is stopped.
bool CharAI::_OnAnimStepBegin_SkillSpell() {
    const int stepIndex = m_character->CharAnimator::ANIM_GetStepIndex();
    m_character->CharAnimator::ANIM_GetStepCount();
    if (stepIndex != 0 || m_character->CharAnimator::m_animStackIdx != 1) {
        return true;
    }
    m_skillStepBegun = true;
    if (m_skillStepEnded) {
        m_character->CharAnimator::ANIM_StopLoop(true);
    }
    return true;
}

// 0x3d3e44 CharAI::_OnAnimStepEnd_Attack(void)
// Without a combo attack the original returns. Otherwise it branches on the anim stack level (Character +0x4c8, that is
// CharAnimator::m_animStackIdx). Level 0 ends the attack: m_attacking (+0x78) is cleared and event 27 is raised, and event 28
// as well on the last step. Level 1 skips the next anim step when the step is the second to last one and the attack is not
// over. The attack is over when the target is dead (IsDead, vtable +0x34), or, with no target, when the object of interest's
// interaction type (Character +0x14a8) is 8. Otherwise m_attacking is cleared. Any other level returns without a change.
bool CharAI::_OnAnimStepEnd_Attack() {
    if (!m_character->HasComboAttack()) {
        return true;
    }
    const int stepIndex = m_character->CharAnimator::ANIM_GetStepIndex();
    const int stepCount = m_character->CharAnimator::ANIM_GetStepCount();
    const unsigned int stackIdx = m_character->CharAnimator::m_animStackIdx;
    if (stackIdx == 1) {
        bool attackOver;
        if (m_target) {
            attackOver = m_target->IsDead();
        } else {
            attackOver = m_character->m_ooiInteractionType == 8;
        }
        if (stepIndex != stepCount - 2 || attackOver) {
            m_attacking = false;
        } else {
            m_character->CharAnimator::ANIM_SkipNextStep();
        }
        return true;
    }
    if (stackIdx != 0) {
        return true;
    }
    const bool wasAttacking = m_attacking;
    m_attacking = false;
    if (stepIndex == stepCount - 1) {
        if (!wasAttacking) {
            _ClearNonStickyTarget();
        } else {
            m_character->CharAnimator::ANIM_SetStep(0);
        }
        m_character->RaiseEvent(27, nullptr);
        m_character->RaiseEvent(28, nullptr);
        return true;
    }
    if (!wasAttacking && !m_character->CanRangeAttack()) {
        _ClearNonStickyTarget();
        m_character->CharAnimator::ANIM_SetStep(static_cast<unsigned int>(stepCount));
    }
    m_character->RaiseEvent(27, nullptr);
    return true;
}

// 0x3d4044 CharAI::_OnAnimStepBegin_Attack(void)
// Level 0 (CharAnimator::m_animStackIdx) stores the step index in m_attackStep (+0x74) and raises event 26 with it. Level 1
// on step 0 sets m_attackLastStep (+0x79), aims the controller at the target and calls OnPreAttack(m_attackStep), and
// m_attackCommitted (+0x7a) is cleared. Level 1 on a later step sets m_attackLastStep from the last-step test, aims at the
// target, and sets m_attackCommitted to the same test. Any other level returns.
bool CharAI::_OnAnimStepBegin_Attack() {
    const int stepIndex = m_character->CharAnimator::ANIM_GetStepIndex();
    const int stepCount = m_character->CharAnimator::ANIM_GetStepCount();
    const unsigned int stackIdx = m_character->CharAnimator::m_animStackIdx;
    if (stackIdx == 0) {
        m_attackStep = stepIndex;
        m_character->RaiseEvent(26, reinterpret_cast<void*>(static_cast<std::intptr_t>(stepIndex)));
        return true;
    }
    if (stackIdx != 1) {
        return true;
    }
    if (stepIndex == 0) {
        m_attackLastStep = true;
        m_character->m_controller->Cmd_LookAt(m_target);
        m_attackCommitted = false;
        OnPreAttack(m_attackStep);
        return true;
    }
    const bool lastStep = stepIndex == stepCount - 1;
    m_attackLastStep = lastStep;
    m_character->m_controller->Cmd_LookAt(m_target);
    m_attackCommitted = lastStep;
    return true;
}

// ---- animation events ----------------------------------------------------------------------------------------------

// 0x3d3af4 CharAI::_ParseObjectAnimEvent(char const*)
// The name is "object/anim". "camera/anim" plays a camera anim; any other object is looked up by name. A Character gets
// the anim by its index in Arrays::AnimTable. Any other object with a visual gets PlayClip on its anim controller.
void CharAI::_ParseObjectAnimEvent(const char* name) {
    const char* slash = std::strchr(name, '/');
    if (!slash) {
        return;
    }
    const std::string objectName(name, slash);  // LC_API_STRNCPY_0 into a local buffer, terminated
    const char* animName = slash + 1;
    if (objectName == "camera") {
        // The camera is Application::GetCurrentLevel()->m_camera (Level +0x128). When the level has a camera and the camera
        // accepts the requester (CanPlayShakeAnim), the anim is found in Arrays::AnimDict and played with preserveZoom set.
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        CameraLevel* camera = level ? level->m_camera : nullptr;
        if (camera && camera->CanPlayShakeAnim(m_character)) {
            const int animIndex = pydata::FindMemberName(Arrays::AnimDict::m_memberNames,
                                                         Arrays::AnimDict::m_memberNames.size, animName);
            camera->PlayAnim(animIndex, 0, true);
        }
        return;
    }
    ObjectHandle handle = dword_99F764->GetObjectByName(objectName.c_str(), -1, false, nullptr);
    if (Character* character = handle) {
        // The anim is found by name in Arrays::AnimTable (-1 when absent) and set on the character's CharAnimator (+0x49c).
        // The table's NameTable::size is the count it was read with (ReadNameTable refuses a count that differs from the
        // table size), so it is the loop bound the original reads from Arrays::AnimTable::size.
        const int animIndex = pydata::FindMemberName(Arrays::AnimTable::m_memberNames,
                                                     Arrays::AnimTable::m_memberNames.size, animName);
        character->CharAnimator::ANIM_Set(animIndex);
        return;
    }
    if (GameObject* object = handle) {
        VisualObject* visual = object->m_visualObject;  // +0x2d8
        if (visual) {
            AnimController* anim = visual->m_animController;  // +0x38
            if (anim) {
                anim->PlayClip(animName, false, 0, 0);  // the const char* overload, vtable slot +0x20
            }
        }
    }
}

namespace {

// Index of `name` in a PyData name table: the first strcmp match in table order, or -1. The original loops over the table
// size and compares the names, which is what this does with NameTable::size. Arrays::AnimatedEffectTable and Arrays::Sounds
// are read through their NameTable form (member_names.hpp), as game-ui does for Arrays::Sounds.
int FindNameIndex(const pydata::NameTable& table, const char* name) {
    for (int i = 0; i < table.size; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) {
            return i;
        }
    }
    return -1;
}

// The trace probe the original makes before the spell, skill, ranged, interact and melee attack branches of _OnAnimEvent (DebugSwitches::load, then
// GetSwitch with the std::string "isTracingCharAI_AnimEvent", built by a compiler clone of the string constructor at 0x3d43ec). The result is unused.
void ProbeTracingAnimEvent() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingCharAI_AnimEvent");
}

}  // namespace

// 0x3d4434 CharAI::_OnAnimEvent(char const*)
// The prefixes route the event: "ev_" goes to the virtual OnAnimEvent (the script hook), "an_" to _ParseObjectAnimEvent,
// "fx_" to the animated effect table, "sfx_" to the sound table. Any other name is handled by the loaded state:
// 5 (attack) picks the attack event, 6 (skill) "do_skill", 7 (spell) "do_spell", 13 (interact) "interact".
// Every attack, skill, spell and interact branch first makes the "isTracingCharAI_AnimEvent" trace probe (ProbeTracingAnimEvent).
bool CharAI::_OnAnimEvent(const char* name) {
    const int stepIndex = m_character->CharAnimator::ANIM_GetStepIndex();
    m_character->CharAnimator::ANIM_GetStepCount();
    if (std::strncmp(name, "ev_", 3) == 0) {
        OnAnimEvent(name + 3);
        return true;
    }
    if (std::strncmp(name, "an_", 3) == 0) {
        _ParseObjectAnimEvent(name + 3);
        return true;
    }
    if (std::strncmp(name, "fx_", 3) == 0) {
        const int effectId = FindNameIndex(Arrays::AnimatedEffectTable::m_memberNames, name + 3);
        if (effectId != -1) {
            VisualFXManager::s_inst.PlayAnimFXSet(effectId, m_character->GetTargetPosition(), nullptr, nullptr);
        }
        return true;
    }
    if (std::strncmp(name, "sfx_", 4) == 0) {
        // The sound (Arrays::Sounds index, -1 when absent) plays at the owner's target position: Play3D(sound, position, false, 1, -1.0, -1.0).
        const int soundId = FindNameIndex(Arrays::Sounds::m_memberNames, name + 4);
        if (soundId != -1) {
            const Point3D<float>& target = m_character->GetTargetPosition();
            const glitch::core::vector3d<float> position{target.X, target.Y, target.Z};
            VoxSoundManager::s_instance->Play3D(soundId, position, false, 1, -1.0f, -1.0f);
        }
        return true;
    }
    switch (m_character->CharStateMachine::SM_GetState()) {
        case 5: {
            int unusedA = 0;  // the original passes one scratch slot for the first two outputs; neither is read here
            int unusedB = 0;
            int projectileIndex = 0;
            if (m_character->CanRangeAttack(unusedA, unusedB, projectileIndex)) {
                if (std::strcmp(name, "attack_ranged") == 0 || std::strcmp(name, "attack_mainhand") == 0 ||
                    std::strcmp(name, "do_skill") == 0) {
                    // The trace probe, then projectile projectileIndex is spawned owned by m_character with CharAI::_HandleProjectile as the callback.
                    ProbeTracingAnimEvent();
                    Singleton<ProjectileManager>::s_inst.Spawn(projectileIndex, m_character, nullptr, nullptr,
                                                               &CharAI::_HandleProjectile, nullptr, false);
                }
            } else if (std::strcmp(name, "attack_mainhand") != 0) {
                if (std::strcmp(name, "attack_offhand") == 0) {
                    ProbeTracingAnimEvent();
                    OnAttack(m_attackStep, stepIndex - 1, true);
                }
            } else {
                ProbeTracingAnimEvent();
                OnAttack(m_attackStep, stepIndex - 1, false);
            }
            break;
        }
        case 6:
            if (std::strcmp(name, "do_skill") == 0) {
                ProbeTracingAnimEvent();
                _SkillEvent();
            }
            break;
        case 7:
            if (std::strcmp(name, "do_spell") == 0) {
                ProbeTracingAnimEvent();
                _SpellEvent();
            }
            break;
        case 13:  // 0xD
            if (std::strcmp(name, "interact") == 0) {
                ProbeTracingAnimEvent();
                OnInteract();
            }
            break;
        default:
            break;
    }
    return true;
}
