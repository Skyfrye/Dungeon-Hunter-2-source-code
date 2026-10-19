// Batch g1-game-character-Character-ee9946-7 (part 8 of 20 of Character): the Ctrl_* controller entry points (the
// primary vtable slots +0x34 through +0x11c, and the GameObject-side head, move and warp commands), the click handler
// Ctrl_Click, and the faery list accessors GetCharFaeryListId and GetCharFaeryList.
// Declarations come from dh2/Character.hpp, which this batch does not change.
//
// Virtual calls: a Ctrl_* body that the original reaches through the vtable (for example "*(this + 0x54)" for
// IsRemotelyUpdated, or "*(this + 0xec)" for Ctrl_MoveTo) is written as an unqualified call on this, which dispatches
// the same way. A call the original makes non-virtually (GameObject::Stop, GameObject::PathTo, CharAI::AI_SetTarget)
// is written qualified.
//
// The base slots are void (v2Controllable). Where the original returns a value that the slot discards (the bool from
// AI_BeginSpell, the IsDead result of Ctrl_UseOOI, the RaiseEvent result of Ctrl_Stop), the body does not return it.

#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PFWorld.hpp"                       // PFWorld::s_inst, ValidatePosition (Ctrl_WarpTo)
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Point3D.hpp"                       // Point3D<float>::angle
#include "dh2/TrophyManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/ctrl_camera.hpp"            // ApplicationGetInstance
#include "pydata-accessors/structs_records.hpp"  // Structs::DesignSettings, Structs::FaeryList
#include "pydata-accessors/w7_arrays27.hpp"      // Arrays::FaeryListTable
#include "pydata-accessors/w7_arrays_02.hpp"     // Arrays::DesignSettingsTable

namespace {

// The vector from the first point to the second, componentwise (the Hex-Rays "v10 = target - self" sequences).
Point3D<float> Between(const Point3D<float>& from, const Point3D<float>& to) {
    return Point3D<float>{to.X - from.X, to.Y - from.Y, to.Z - from.Z};
}

}  // namespace

// 0x3ad690 _ZN9Character11Ctrl_UseOOIEP10GameObject
// Character::Ctrl_UseOOI(GameObject*)
// Does nothing while the character is dead (IsDead, vtable slot +0x34). With a target it calls ForceUseOOI; without one
// it calls UseOOI when m_objectOfInterest is set. The original returns the IsDead value or the callee's result; the
// void slot does not, so nothing is returned here.
void Character::Ctrl_UseOOI(GameObject* target) {
    if (IsDead()) {
        return;
    }
    if (target) {
        ForceUseOOI(target);
        return;
    }
    if (m_objectOfInterest) {
        UseOOI();
    }
}

// 0x3ad6f0 _ZN9Character14Ctrl_UsePotionEv
// Character::Ctrl_UsePotion()
// Does nothing for a dead character or one without a potion. Otherwise the potion is removed; a player counts it (property 219) and the local player unlocks the
// "use_100_potions" trophy once the counter passes 99. HP and MP are filled (RegenHP(-1), RegenMP(-1)).
void Character::Ctrl_UsePotion() {
    if (IsDead()) {
        return;
    }
    if (!HasPotion()) {
        return;
    }
    ItemInventory::RemoveOnePotion();
    if (IsPlayer()) {
        PROPS_AddInt(219, 1);
        if (dword_99F76C->IsLocalPlayer(this)) {
            TrophyManager* trophies = TrophyManager::s_instance;
            if (PROPS_GetInt(219, false) > 99) {
                trophies->UnlockTrophy(pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), "use_100_potions"));
            }
        }
    }
    RegenHP(-1);
    RegenMP(-1);
}

// 0x3ad83c _ZN9Character12Ctrl_EndCastEb
// Character::Ctrl_EndCast(bool)
void Character::Ctrl_EndCast(bool primary) {
    CharAI::AI_EndSpell(primary);
}

// 0x3ad84c _ZN9Character14Ctrl_BeginCastEb
// Character::Ctrl_BeginCast(bool)
// The original returns the bool from CharAI::AI_BeginSpell; the void slot discards it.
void Character::Ctrl_BeginCast(bool primary) {
    CharAI::AI_BeginSpell(primary);
}

// 0x3ad85c _ZN9Character13Ctrl_EndSkillEj
// Character::Ctrl_EndSkill(unsigned int)
void Character::Ctrl_EndSkill(unsigned int skill) {
    CharAI::AI_EndSkill(skill);
}

// 0x3ad86c _ZN9Character15Ctrl_BeginSkillEj
// Character::Ctrl_BeginSkill(unsigned int)
// The original returns the bool from CharAI::AI_BeginSkill; the void slot discards it.
void Character::Ctrl_BeginSkill(unsigned int skill) {
    CharAI::AI_BeginSkill(skill);
}

// 0x3ad87c _ZN9Character11Ctrl_AttackEP10GameObject
// Character::Ctrl_Attack(GameObject*)
void Character::Ctrl_Attack(GameObject* target) {
    CharAI::AI_DoMeleeAttack(target, false);
}

// 0x3ad890 _ZN9Character9Ctrl_StopEv
// Character::Ctrl_Stop()
// Does nothing when the character is remotely updated (IsRemotelyUpdated, vtable slot +0x54). Otherwise it stops the
// GameObject and raises event 63. The original returns the RaiseEvent result; the void slot discards it.
void Character::Ctrl_Stop() {
    if (IsRemotelyUpdated()) {
        return;
    }
    GameObject::Stop();
    RaiseEvent(63, nullptr);
}

// 0x3ad8d4 _ZN9Character16Ctrl_HeadTowardsEP10GameObject
// Character::Ctrl_HeadTowards(GameObject*)
// With a target, turns toward the target: the direction is the target's position minus this object's, passed to the
// Point3D overload (vtable slot +0xdc). Without a target and with the heading flag set (GameObject m_hasHeading, +0x1b5),
// it heads toward the zero vector.
void Character::Ctrl_HeadTowards(GameObject* target) {
    if (IsRemotelyUpdated()) {
        return;
    }
    if (target) {
        const Point3D<float> direction = Between(GameObject::GetTargetPosition(), target->GetTargetPosition());
        Ctrl_HeadTowards(direction);
    } else if (m_hasHeading) {
        Ctrl_HeadTowards(Vec3f_Origin);
    }
}

// 0x3ad9ac _ZN9Character11Ctrl_LookAtEP10GameObject
// Character::Ctrl_LookAt(GameObject*)
// Looks at the target's position through the Point3D overload (vtable slot +0xd0) when a target is given. The original
// returns this when there is none; the void slot does not return a value.
void Character::Ctrl_LookAt(GameObject* target) {
    if (target) {
        Ctrl_LookAt(target->GetTargetPosition());
    }
}

// 0x3ad9e4 _ZN9Character11Ctrl_MoveToEP10GameObject
// Character::Ctrl_MoveTo(GameObject*)
// Does nothing when the character is remotely updated. With a target it paths to the target's position.
void Character::Ctrl_MoveTo(GameObject* target) {
    if (IsRemotelyUpdated()) {
        return;
    }
    if (target) {
        GameObject::PathTo(target->GetTargetPosition());
    }
}

// 0x3ada30 _ZN9Character11Ctrl_MoveToERK7Point3DIfE
// Character::Ctrl_MoveTo(Point3D<float> const&)
void Character::Ctrl_MoveTo(const Point3D<float>& pos) {
    if (IsRemotelyUpdated()) {
        return;
    }
    GameObject::PathTo(pos);
}

// 0x3ada6c _ZN9Character11Ctrl_HeadToEP10GameObject
// Character::Ctrl_HeadTo(GameObject*)
// Sets the destination to the target's position and raises event 0 with the target as its data.
void Character::Ctrl_HeadTo(GameObject* target) {
    if (IsRemotelyUpdated()) {
        return;
    }
    if (target) {
        GameObject::SetDestination(target->GetTargetPosition());
        RaiseEvent(0, target);
    }
}

// 0x3adac8 _ZN9Character11Ctrl_HeadToERK7Point3DIfE
// Character::Ctrl_HeadTo(Point3D<float> const&)
// Turns toward the point (the direction is the point minus m_position, +0x160, with heading), sets it as the
// destination and raises event 0 with no data.
void Character::Ctrl_HeadTo(const Point3D<float>& pos) {
    if (IsRemotelyUpdated()) {
        return;
    }
    const Point3D<float> direction = Between(m_position, pos);
    GameObject::SetHeadingDirection(direction, true);
    GameObject::SetDestination(pos);
    RaiseEvent(0, nullptr);
}

// 0x3adb60 _ZN9Character16Ctrl_HeadTowardsERK7Point3DIfE
// Character::Ctrl_HeadTowards(Point3D<float> const&)
// A direction longer than sqrt(0.0001): nothing while using a skill or casting; otherwise, when the AI has a target and the direction is more than 1.5708 radians from the
// direction to that target, the target is cleared (AI_SetTarget(nullptr, false), AI_SyncLastTarget); then the character turns to the direction (SetHeadingDirection with
// the heading flag) and event 0 is raised. A shorter direction with the heading flag set turns to it and stops (Ctrl_Stop, vtable slot +0xf4).
void Character::Ctrl_HeadTowards(const Point3D<float>& pos) {
    const float lengthSquared = (pos.X * pos.X + pos.Y * pos.Y) + pos.Z * pos.Z;
    if (lengthSquared > 0.0001f) {
        if (SM_IsUsingSkill() || SM_IsCasting()) {
            return;
        }
        if (GameObject* target = CharAI::m_target) {
            const Point3D<float>& targetPosition = target->GetTargetPosition();
            const Point3D<float>& ownPosition = GameObject::GetTargetPosition();
            const Point3D<float> toTarget = Between(ownPosition, targetPosition);
            if (pos.angle(toTarget) > 1.5708f) {
                CharAI::AI_SetTarget(nullptr, false);
                CharAI::AI_SyncLastTarget();
            }
        }
        GameObject::SetHeadingDirection(pos, true);
        RaiseEvent(0, nullptr);
    } else if (m_hasHeading) {
        GameObject::SetHeadingDirection(pos, true);
        Ctrl_Stop();
    }
}

// 0x3adcf4 _ZN9Character11Ctrl_WarpToERK7Point3DIfE
// Character::Ctrl_WarpTo(Point3D<float> const&)
// Does nothing while IsRemotelyUpdated() (ObjectBase slot +0x54) is set. Otherwise the point is validated by the PFWorld
// instance against m_pfObject. When it is valid: GameObject::SetPosition(point, true), the validated point is stored in
// m_pfObject.m_pos (PFObject +0x18, the words at GameObject +0x1e0..+0x1e8), Ctrl_Stop() runs through the vtable, and
// event 1 is raised. The RaiseEvent result is discarded by the void slot.
void Character::Ctrl_WarpTo(const Point3D<float>& pos) {
    if (IsRemotelyUpdated()) {
        return;
    }
    Point3D<float> validated = pos;
    if (!PFWorld::s_inst.ValidatePosition(validated, &m_pfObject)) {
        return;
    }
    GameObject::SetPosition(validated, true);
    m_pfObject.m_pos = validated;
    Ctrl_Stop();
    RaiseEvent(1, nullptr);
}

// 0x3addbc _ZNK9Character11Ctrl_LookAtERK7Point3DIfE
// Character::Ctrl_LookAt(Point3D<float> const&)
// Thunk: forwards to GameObject::LookAt(Point3D<float> const&) (0x393cec). Forwarded, not reimplemented.
void Character::Ctrl_LookAt(const Point3D<float>& pos) {
    GameObject::LookAt(pos);
}

// 0x3addc8 _ZN9Character10Ctrl_ClickERK7Point3DIfEb
// Character::Ctrl_Click(Point3D<float> const&, bool)
// Needs CTRLIsAllowed. While casting or using a skill, a held click clears the queued click and a released one queues the point (m_spotTargetPos and m_spotTargetValidPos)
// for the spot target. Otherwise the queued click is cleared and the interactive Character nearest to the click (ObjectManager's character list, the DPad only counts enemies,
// neutrals never) within DesignSettings m_w11 (enemies) or m_w20 becomes the target, flagged sticky. Without one, a held click without the DPad looks for the nearest interactive
// object that is not a Character (ObjectManager's id map) within DesignSettings m_w21 and targets it. If nothing is found, the debug switch UseClickToMove (or not using the
// DPad) clears the target and, held, paths to the point (Ctrl_MoveTo), else heads to it (Ctrl_HeadTo).
void Character::Ctrl_Click(const Point3D<float>& pos, bool held) {
    if (!CTRLIsAllowed()) {
        return;
    }
    const bool isUsingDPad = ApplicationGetInstance().IsUsingDPad();
    if (SM_IsCasting() || SM_IsUsingSkill()) {
        if (held) {
            m_spotTargetPending = 0;
            m_spotTargetFXId = -1;
        } else {
            m_spotTargetPending = 1;
            m_spotTargetPos = pos;
            m_spotTargetValidPos = pos;
            m_spotTargetFXId = -1;
        }
        return;
    }

    m_spotTargetPending = 0;
    m_spotTargetFXId = -1;
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);

    // The nearest interactive character to the click (ObjectManager m_characters, in list order).
    GameObject* target = nullptr;
    float bestDistanceSquared = 1000000.0f;
    for (Character* candidate : dword_99F764->m_characters) {
        const Point3D<float>& candidatePos = candidate->GetTargetPosition();
        if (candidate == this || !candidate->IsInteractive(this)) {
            continue;
        }
        if (isUsingDPad && !AI_IsEnemy(candidate)) {
            continue;
        }
        if (AI_IsNeutral(candidate)) {
            continue;
        }
        const float dx = pos.X - candidatePos.X;
        const float dy = pos.Y - candidatePos.Y;
        const float dz = pos.Z - candidatePos.Z;
        const float distanceSquared = (dx * dx + dy * dy) + dz * dz;
        if (bestDistanceSquared > distanceSquared) {
            const float radius = AI_IsEnemy(candidate) ? design->EnemyClickSensitivity : design->NPCClickSensitivity;
            if (candidate->IsNearby(pos, radius)) {
                bestDistanceSquared = distanceSquared;
                target = candidate;
            }
        }
    }

    if (target) {
        DebugSwitches::GetInstance()->load();
        DebugSwitches::GetInstance()->GetSwitch("isTracingChar_CTRL");
        CharAI::m_stickyTarget = true;
        CharAI::AI_SetTarget(target, false);
        return;
    }

    if (held && !isUsingDPad) {
        // The second search: the nearest interactive object that is not a Character, from ObjectManager's id map.
        GameObject* nearestObject = nullptr;
        float nearestDistanceSquared = 1000000.0f;
        for (const auto& entry : dword_99F764->m_objectMap) {
            ObjectBase* object = entry.second.m_object;
            if (object == nullptr) {
                continue;
            }
            ObjectHandle handle = object->GetHandle();
            GameObject* candidate = handle;
            if (candidate == nullptr || candidate == this || !candidate->IsInteractive(this)) {
                continue;
            }
            if (std::strcmp(candidate->m_gameType.c_str(), "Character") == 0) {
                continue;
            }
            const Point3D<float>& candidatePos = candidate->GetTargetPosition();
            const float dy = pos.Y - candidatePos.Y;
            const float distanceSquared = ((pos.X - candidatePos.X) * (pos.X - candidatePos.X) + dy * dy) +
                                          (pos.Z - candidatePos.Z) * (pos.Z - candidatePos.Z);
            if (nearestDistanceSquared > distanceSquared && candidate->IsNearby(pos, design->ObjectClickSensitivity)) {
                nearestObject = candidate;
                nearestDistanceSquared = distanceSquared;
            }
        }
        if (nearestObject != nullptr) {
            DebugSwitches::GetInstance()->load();
            DebugSwitches::GetInstance()->GetSwitch("isTracingChar_CTRL");
            CharAI::AI_SetTarget(nearestObject, false);
            return;
        }
    }

    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch("UseClickToMove") || !isUsingDPad) {
        DebugSwitches::GetInstance()->load();
        DebugSwitches::GetInstance()->GetSwitch("isTracingChar_CTRL");
        CharAI::AI_SetTarget(nullptr, false);
        CharAI::AI_SyncLastTarget();
        if (held) {
            Ctrl_MoveTo(pos);
        } else {
            Ctrl_HeadTo(pos);
        }
    }
}

// 0x3ae5a0 _ZNK9Character18GetCharFaeryListIdEv
// Character::GetCharFaeryListId() const
// The faery list index is the CharProperties m_props sheet word m_w30 (+0x78 of the sheet, Character +0x106c). Returns 0
// when the index is below 0 or not below Arrays::FaeryListTable::size.
int Character::GetCharFaeryListId() const {
    const int index = CharProperties::m_props.FaeryList;
    if (index < 0 || index >= static_cast<int>(Arrays::FaeryListTable::size)) {
        return 0;
    }
    return index;
}

// 0x3ae5dc _ZNK9Character16GetCharFaeryListEv
// Character::GetCharFaeryList() const
// The Structs::FaeryList row at the index, indexed as a host array from Arrays::FaeryListTable::members.
const void* Character::GetCharFaeryList() const {
    return reinterpret_cast<const Structs::FaeryList*>(Arrays::FaeryListTable::members) + GetCharFaeryListId();
}
