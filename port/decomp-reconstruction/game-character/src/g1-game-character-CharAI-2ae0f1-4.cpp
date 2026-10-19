// Batch g1-game-character-CharAI-2ae0f1-4: the CharAI master, target and spotting hooks (forwarders to the loaded script), the
// target-out-of-sight handler, HandleGroups, and the CharAI::GroupInfo group rules (CanSpawn, OnDied, OnEnemySpotted, CanRespawn).
// Declarations come from dh2/CharAI.hpp. PARTIAL comments name what is missing; the ledger rows in
// game-character/ledger.d/g1-game-character-CharAI-2ae0f1-4.csv repeat them.

#include <cstddef>
#include <vector>

#include "dh2/CharAI.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/v2Controller.hpp"

namespace {

// DebugSwitches::load(&s_inst), then GetSwitch("isTracingCharAIEvents"). GetInstance runs the same load (guarded by
// s_loaded) and returns &s_inst, so one call does the whole probe. The bool is not used by these hooks.
void ProbeTracingCharAIEvents() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingCharAIEvents");
}

// A member awaiting spawn starts spawning: SM_SetSpawnState(delayed = true, flag = false) on its CharStateMachine.
void SpawnIfAwaiting(Character* c) {
    if (c->CharStateMachine::SM_IsAwaitingToSpawn()) {
        c->CharStateMachine::SM_SetSpawnState(true, false);
    }
}

// The original walks the vector for the count taken on entry and re-reads the begin pointer on every pass. Indexing the
// vector with the same count gives the same order and the same elements.
void SpawnAwaitingIn(const std::vector<Character*>& list) {
    const std::size_t count = list.size();
    for (std::size_t i = 0; i < count; ++i) {
        SpawnIfAwaiting(list[i]);
    }
}

// Cmd_Kill(controller, killer, 0) for each character in the list, in list order. The controller is the v2Controllable
// pointer at character +0x378 (v2Controllable::m_controller), which the original reads without a null test.
void KillAll(const std::vector<Character*>& list, GameObject* killer) {
    const std::size_t count = list.size();
    for (std::size_t i = 0; i < count; ++i) {
        list[i]->m_controller->Cmd_Kill(killer, false);
    }
}

}  // namespace

// 0x3d19f0 _ZN6CharAI18OnMasterOutOfSightEv
void CharAI::OnMasterOutOfSight() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterOutOfSight();
    }
}

// 0x3d1a9c _ZN6CharAI15OnMasterRevivedEv
void CharAI::OnMasterRevived() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterRevived();
    }
}

// 0x3d1b48 _ZN6CharAI12OnMasterDiedEv
void CharAI::OnMasterDied() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnMasterDied();
    }
}

// 0x3d1bf4 _ZN6CharAI20OnTargetInMeleeRangeEv
void CharAI::OnTargetInMeleeRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnTargetInMeleeRange();
    }
}

// 0x3d1ca0 _ZN6CharAI20OnTargetInCloseRangeEv
void CharAI::OnTargetInCloseRange() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnTargetInCloseRange();
    }
}

// 0x3d1d4c _ZN6CharAI21OnTargetInRangedRangeEv
void CharAI::OnTargetInRangedRange() {
    ProbeTracingCharAIEvents();
    // The byte at +0x4c is m_interacting in dh2/CharAI.hpp. Entering ranged range clears it.
    m_interacting = false;
    if (m_script) {
        m_script->OnTargetInRangedRange();
    }
}

// 0x3d1e00 _ZN6CharAI18OnTargetOutOfRangeEv
void CharAI::OnTargetOutOfRange() {
    ProbeTracingCharAIEvents();
    // The byte at +0x4c is m_interacting in dh2/CharAI.hpp. Leaving range clears it.
    m_interacting = false;
    if (m_script) {
        m_script->OnTargetOutOfRange();
    }
}

// 0x3d1eb4 _ZN6CharAI15OnTargetRevivedEv
void CharAI::OnTargetRevived() {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnTargetRevived();
    }
}

// 0x3d1f60 _ZN6CharAI12OnTargetDiedEv
void CharAI::OnTargetDied() {
    ProbeTracingCharAIEvents();
    // The byte at +0x78 is m_attacking in dh2/CharAI.hpp. A dead target ends the melee attack.
    m_attacking = false;
    if (m_script) {
        m_script->OnTargetDied();
    }
}

// 0x3d2014 _ZN6CharAI9OnDeAggroEP9Character
void CharAI::OnDeAggro(Character* c) {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnDeAggro(c);
    }
}

// 0x3d20c8 _ZN6CharAI7OnAggroEP9Character
void CharAI::OnAggro(Character* c) {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnAggro(c);
    }
}

// 0x3d217c _ZN6CharAI16OnNeutralSpottedEP9Character
void CharAI::OnNeutralSpotted(Character* c) {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnNeutralSpotted(c);
    }
}

// 0x3d2230 _ZN6CharAI15OnFriendSpottedEP9Character
void CharAI::OnFriendSpotted(Character* c) {
    ProbeTracingCharAIEvents();
    if (m_script) {
        m_script->OnFriendSpotted(c);
    }
}

// 0x3d22e4 _ZN6CharAI15OnTargetInSightEv
// The "isTracingCharAIEvents" probe, then a 3D sound plays at the owner's target position: the owner's AITable row (m_w9, +0x24) names the
// sound (VoxSoundManager::Play3D(sound, position, false, 1, -1.0f, -1.0f)); finally the script hook (slot 19, +0x4c).
void CharAI::OnTargetInSight() {
    ProbeTracingCharAIEvents();
    const int soundId = m_character->GetCharAI()->OnAggroSFX;
    const Point3D<float>& target = m_character->GetTargetPosition();
    const glitch::core::vector3d<float> position{target.X, target.Y, target.Z};
    VoxSoundManager::s_instance->Play3D(soundId, position, false, 1, -1.0f, -1.0f);
    if (m_script) {
        m_script->OnTargetInSight();
    }
}

// 0x3d2410 _ZN6CharAI18OnTargetOutOfSightEv
void CharAI::OnTargetOutOfSight() {
    ProbeTracingCharAIEvents();
    // The original names the owner's CharAI subobject (m_character + 0x3c8). CharAI is a public base of Character, so the
    // conversion gives that subobject.
    CharAI* ai = m_character;
    if (ai->AI_IsTargetACharacter()) {
        Character* target = ai->AI_GetTargetAsCharacter();
        ai->AI_ClearAggro(target);
    }
    m_interacting = false;
    if (m_script) {
        m_script->OnTargetOutOfSight();
    }
}

// 0x3d24f8 _ZN6CharAI12HandleGroupsEv
void CharAI::HandleGroups() {
    // The original body is a bare return (4 bytes).
}

// 0x3d24fc _ZN6CharAI9GroupInfo8CanSpawnEP9Character
bool CharAI::GroupInfo::CanSpawn(Character* c) {
    (void)c;  // the original never reads its argument
    return false;
}

// 0x3d2628 _ZN6CharAI9GroupInfo6OnDiedEP9CharacterP10GameObject
void CharAI::GroupInfo::OnDied(Character* c, GameObject* killer) {
    switch (c->m_groupRole) {
    case 2:  // master leader: the leaders are dead, then every leader and member is killed
        m_leadersDead = true;
        KillAll(m_leaders, killer);
        KillAll(m_members, killer);
        break;
    case 1:  // leader: m_leadersDead is set once every leader is dead
        if (!m_leadersDead) {
            m_leadersDead = true;
            // The walk stops at the first leader that is still alive, and the flag then reads false.
            bool allDead = true;
            const std::size_t count = m_leaders.size();
            for (std::size_t i = 0; i < count && allDead; ++i) {
                allDead = m_leaders[i]->IsDead();
                m_leadersDead = allDead;
            }
        }
        break;
    case 3:  // member: m_allMembersDead is evaluated while it is 0
        if (m_allMembersDead == 0) {
            bool allDead = true;
            const std::size_t count = m_members.size();
            for (std::size_t i = 0; i < count && allDead; ++i) {
                allDead = m_members[i]->IsDead();
            }
            m_allMembersDead = allDead ? 1 : 0;
        }
        break;
    default:
        break;
    }
}

// 0x3d27cc _ZN6CharAI9GroupInfo14OnEnemySpottedEP9CharacterS2_
void CharAI::GroupInfo::OnEnemySpotted(Character* c, Character* enemy) {
    (void)enemy;  // the original never reads its second argument
    if (m_triggered) {
        return;
    }
    switch (c->m_groupRole) {
    case 0:  // normal: only without master leaders and leaders does the spotting start the members and trigger the group
        if (m_masterLeaders.empty() && m_leaders.empty()) {
            SpawnAwaitingIn(m_members);
            m_triggered = true;
        }
        return;
    case 1:
        break;
    case 2:  // master leader: the leaders start spawning and the group is triggered
        SpawnAwaitingIn(m_leaders);
        m_triggered = true;
        break;
    case 3:  // member: the first sighting, while m_allMembersDead is -1, starts the members and resets the flag to 0
        if (m_allMembersDead == -1) {
            SpawnAwaitingIn(m_members);
            m_allMembersDead = 0;
            m_triggered = true;
        }
        return;
    default:
        return;
    }
    // Leader and master leader: start the awaiting members and the spotter, then trigger when there are no master leaders.
    SpawnAwaitingIn(m_members);
    SpawnIfAwaiting(c);
    if (m_masterLeaders.empty()) {
        m_triggered = true;
    }
}

// 0x3d2a34 _ZN6CharAI9GroupInfo10CanRespawnEP9Character
bool CharAI::GroupInfo::CanRespawn(Character* c) {
    const int role = c->m_groupRole;
    if (role == 0) {
        return !m_leadersDead;
    }
    if (role != 3) {
        return false;
    }
    // m_allMembersDead: 1 means "check the members now", 2 means every member was in limbus at the last check.
    if (m_allMembersDead != 1) {
        return m_allMembersDead == 2;
    }
    bool allInLimbus = true;
    const std::size_t count = m_members.size();
    for (std::size_t i = 0; i < count; ++i) {
        if (!m_members[i]->CharStateMachine::SM_IsInLimbus()) {
            allInLimbus = false;
        }
    }
    m_allMembersDead = allInLimbus ? 2 : 1;
    return allInLimbus;
}
