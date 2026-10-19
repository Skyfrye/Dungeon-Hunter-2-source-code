// Batch g1-game-character-Character-ee9946-4: the model and class name queries, the foot positions, the initial position,
// the enable and disable hooks, the potion query, the revive, the loot drop, the kill, the serialization pair, the cleanup,
// the replicated-state constructor and its destructors, the concurrent-AI map clear and the net-struct population.
// Declarations come from dh2/Character.hpp.

#include <cstdint>
#include <cstdlib>
#include <cstdio>
#include <map>
#include <string>

#include "core-platform/device.hpp"
#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QE_ClearEnemies.hpp"
#include "dh2/QE_ClearEnemyTemplate.hpp"
#include "dh2/QE_KillEnemies.hpp"
#include "dh2/QE_KillEnemyTemplate.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/AnchorBase.hpp"
#include "dh2/v2Controller.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

// The name pointer (+8) of Arrays::ModelDict row `row` (Structs::ColladaFile, 12-byte records in the original).
const char* ModelDictName(int row) {
    return reinterpret_cast<const Structs::ColladaFile*>(Arrays::ModelDict::members)[row].Name;
}

// The id of a trophy by name (the first match in Arrays::TrophyTable's names, -1 when absent).
int TrophyId(const char* name) {
    return pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), name);
}

// The original's ASSERT at Character.cpp:line: level 2 stops the process, level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression,
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character.cpp", line);
    }
}

}  // namespace

// 0x3a54d4 Character::GetCharModelName() const
// The model id (GetCharModelId; -1 gives no name). A faerie takes the model of its master's current faery (the Faery row's +0xc word) when it has a master. A model id inside
// Arrays::ModelDict gives that row's name, otherwise none. A non-player, a character on a high-performance device and the local player use their own model id. Any other
// player (a remote one on a low-performance device) uses a fixed model row chosen by m_charPropsId: 290..292 row 75, 325..327 row 76, 263..265 row 77; any other
// class fails ASSERT(false) (Character.cpp:1191) and uses the model id.
const char* Character::GetCharModelName() const {
    int charModelId = GetCharModelId();
    if (charModelId == -1) {
        return nullptr;
    }
    auto byId = [](int row) -> const char* {
        if (row >= 0 && row < static_cast<int>(Arrays::ModelDict::size)) {
            return ModelDictName(row);
        }
        return nullptr;
    };
    if (IsFaerie()) {
        if (Character* master = CharAI::m_master) {
            const int faeryId = master->SG_GetCurrentFaerieId(-1);
            charModelId = static_cast<const Structs::Faery*>(master->GetCharFaery(faeryId))->ModelFile;
        }
        return byId(charModelId);
    }
    // The vtable call at +0x28 is IsPlayer(). Hex-Rays typed its result as Device*, which is a misreading of a bool.
    if (!IsPlayer() || Device::IsHighPerformance() || dword_99F76C->IsLocalPlayer(this)) {
        return byId(charModelId);
    }
    const int propsId = m_charPropsId;
    if (static_cast<unsigned int>(propsId - 290) <= 2u) {
        return ModelDictName(75);
    }
    if (static_cast<unsigned int>(propsId - 325) <= 2u) {
        return ModelDictName(76);
    }
    if (static_cast<unsigned int>(propsId - 263) <= 2u) {
        return ModelDictName(77);
    }
    ReportAssert("false", 1191);
    return byId(charModelId);
}

// 0x3a56a4 Character::GetClassName() const
// The string id is word 6 of the sheet (m_props.m_w6, Character +0x100c) when the player class is -1. Otherwise it is word 6
// (+24) of the Arrays::CharacterTable row for the player class, read as the host element (the 900-byte file stride is not
// applied, the same convention as GetCharAI).
const char* Character::GetClassName() const {
    StringManager* strings = ApplicationGetStringManager();
    const int playerClass = SG_GetPlayerClass();
    if (playerClass == -1) {
        return strings->getString(m_props.ClassString);
    }
    const auto* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
    return strings->getString(rows[playerClass].ClassString);
}

// 0x3a5784 Character::GetPreSetAIState() const
// The original's first test compares the finish and start-of-storage words of the m_aiState string (+0x13dc and +0x13e0), which is the empty test. An empty state gives 3
// (idle); "Limbus" gives 0, "PreSpawn" 17, anything else 3.
int Character::GetPreSetAIState() const {
    if (m_aiState.empty()) {
        return 3;
    }
    if (m_aiState.compare("Limbus") == 0) {
        return 0;
    }
    if (m_aiState.compare("PreSpawn") != 0) {
        return 3;
    }
    return 17;
}

// 0x3a57f4 Character::GetLeftFootPosition() const
// The original copies the target position, then replaces it with the absolute position of the "Bip01_L_Foot" scene node
// when the visual object has one.
Point3D<float> Character::GetLeftFootPosition() const {
    Point3D<float> position = GetTargetPosition();
    if (m_visualObject != nullptr) {
        glitch::scene::ISceneNode* node = m_visualObject->GetSpecificNode("Bip01_L_Foot");
        if (node != nullptr) {
            const glitch::core::vector3d<float> absolute = node->getAbsolutePosition();
            position = Point3D<float>{absolute.X, absolute.Y, absolute.Z};
        }
    }
    return position;
}

// 0x3a5874 Character::GetRightFootPosition() const
// Same as GetLeftFootPosition with the "Bip01_R_Foot" scene node.
Point3D<float> Character::GetRightFootPosition() const {
    Point3D<float> position = GetTargetPosition();
    if (m_visualObject != nullptr) {
        glitch::scene::ISceneNode* node = m_visualObject->GetSpecificNode("Bip01_R_Foot");
        if (node != nullptr) {
            const glitch::core::vector3d<float> absolute = node->getAbsolutePosition();
            position = Point3D<float>{absolute.X, absolute.Y, absolute.Z};
        }
    }
    return position;
}

// 0x3a58f4 Character::SetInitialPosition(Point3D<float> const&)
// Stores the position in m_initialPosition (+0x1450). When PFWorld::GetFloorHeightAt finds a floor under it, the floor
// height becomes z (+0x1458). The original's int result is dropped (the header returns void).
void Character::SetInitialPosition(const Point3D<float>& pos) {
    m_initialPosition = pos;
    float floorHeight = 0.0f;
    if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(m_initialPosition, &floorHeight, nullptr, nullptr, nullptr, false)) {
        m_initialPosition.Z = floorHeight;
    }
}

// 0x3a5974 Character::Disabled()
void Character::Disabled() {
    GameObject::Disabled();
    DisableSelfFX();
}

// 0x3a598c Character::Enabled()
// Forward thunk: the original tail-calls GameObject::Enabled.
void Character::Enabled() {
    GameObject::Enabled();
}

// 0x3a5990 Character::HasPotion() const
bool Character::HasPotion() const {
    return ItemInventory::GetNumPotions() > 0;
}

// 0x3a59ac Character::Revive(GameObject*, bool)
// A dead character raises event 3 first. The low-HP sound is re-armed, the dead flag cleared, HP and MP filled and unk_118 cleared; online, the net owner becomes -1 (and
// +0x114 is cleared). With resetPhysics the physics object is rebuilt. An offline player is put at its revive position (+0x1474), with the floor height found there by
// the path-finding world. The AI skills are updated. The reviver argument is not read by the original body.
void Character::Revive(GameObject* reviver, bool resetPhysics) {
    (void)reviver;
    if (m_dead != 0) {
        RaiseEvent(3, nullptr);
    }
    m_lowHpSoundArmed = 1;
    m_dead = 0;
    _InitHpMp();
    unk_118 = 0;
    if (GetOnlineGameFlag()) {
        m_netOwnerId = -1;
        unk_114 = 0;
    }
    if (resetPhysics) {
        InitPhysicalObject();
    }
    if (IsPlayer() && !GetOnlineGameFlag()) {
        Point3D<float> position = m_revivePosition;
        float floorHeight = position.Z;
        Singleton<PFWorld>::s_inst.GetFloorHeightAt(position, &floorHeight, nullptr, nullptr, nullptr, false);
        position.Z = floorHeight;
        SetPosition(position, true);
    }
    CharAI::UpdateAllSkills();
}

// 0x3a5ae4 Character::DropLoot(GameObject*) const
// The original passes the loot id, this as the dropper, the killer, -1 as the fixed power count and 0 as the flag. Its sixth
// argument word is an unset stack local that the five-argument callee never reads. The two DropLootTable overloads share the
// same argument registers, so the one taking an int fixed power count is used.
void Character::DropLoot(GameObject* killer) const {
    ItemObject::DropLootTable(GetLoot(), this, killer, -1, false);
}

// 0x3a5b18 Character::Kill(GameObject*, bool)
// Does nothing when already dead. Sets the dead flag and HP to 0. A player that dies unsilenced counts the death (property 25); the local player unlocks quest_died_10_times /
// _50_times / _100_times at those counts; online, the local player record is fetched (as the original does); then it returns. Otherwise the loot drops (unless the level's unk_150 is
// set). Without a killer a silent kill ends here; with a killer a silent kill ends here and an unsilenced one records the killer (+0x144c) and walks the aggro list: each entry (or
// the character in its redirect field +0x14d4) is sent event 4 with this character; a player entry has its object of interest cleared when it is this character, counts a kill and a
// kill streak (properties 23 and 24) and, for the local player, unlocks killed_100 / _500 / _1000 / _2000 at those counts. When the killer is this character's aggro entry (or itself), the
// XP is distributed to the killer's Character (DistributeXP; null when the killer is not a Character). Then, unless remotely updated or net spawned, the level (asserting it exists,
// Character.cpp:723) is told the quest events KillXEnemies (killer, this unk_64, character row id), ClearEnemies, and, with a template, KillEnemyTemplate and ClearEnemyTemplate.
void Character::Kill(GameObject* killer, bool silent) {
    if (IsDead()) {
        return;
    }
    m_dead = 1;
    PROPS_Set(36, 0);
    if (IsPlayer() && !silent) {
        PROPS_AddInt(25, 1);
        if (dword_99F76C->IsLocalPlayer(this)) {
            TrophyManager* trophies = TrophyManager::s_instance;
            if (PROPS_GetInt(25, false) == 10) {
                trophies->UnlockTrophy(TrophyId("quest_died_10_times"));
            } else if (PROPS_GetInt(25, false) == 50) {
                trophies->UnlockTrophy(TrophyId("quest_died_50_times"));
            } else if (PROPS_GetInt(25, false) == 100) {
                trophies->UnlockTrophy(TrophyId("quest_died_100_times"));
            }
        }
        if (GetOnlineGameFlag()) {
            dword_99F76C->GetLocalPlayer(0, true);
        }
        return;
    }
    if (ApplicationGetInstance().GetCurrentLevel()->unk_150 == nullptr) {
        DropLoot(killer);
    }
    if (killer == nullptr) {
        if (silent) {
            return;
        }
    } else {
        if (silent) {
            return;
        }
        m_killer = killer;
        bool killerCounts = killer == this;
        for (int i = 0; i < AI_GetAggroCount(); ++i) {
            Character* entry = nullptr;
            float aggro = 0.0f;
            AI_GetAggroEntry(i, entry, aggro);
            if (entry == nullptr) {
                continue;
            }
            Character* const original = entry;
            Character* recipient = entry->m_aggroRedirect;
            if (recipient != nullptr) {
                entry = recipient;
            } else {
                recipient = entry;
            }
            recipient->RaiseEvent(4, this);
            if (entry == nullptr || !entry->IsPlayer()) {
                continue;
            }
            if (entry->m_objectOfInterest == this) {
                entry->m_objectOfInterest = nullptr;
            }
            entry->PROPS_AddInt(23, 1);
            entry->PROPS_AddInt(24, 1);
            if (killer == original) {
                killerCounts = true;
            }
            if (dword_99F76C->IsLocalPlayer(entry)) {
                TrophyManager* trophies = TrophyManager::s_instance;
                const int kills = entry->PROPS_GetInt(23, false);
                if (kills == 100) {
                    trophies->UnlockTrophy(TrophyId("killed_100"));
                } else if (kills == 500) {
                    trophies->UnlockTrophy(TrophyId("killed_500"));
                } else if (kills == 1000) {
                    trophies->UnlockTrophy(TrophyId("killed_1000"));
                } else if (kills == 2000) {
                    trophies->UnlockTrophy(TrophyId("killed_2000"));
                }
            }
        }
        if (killerCounts) {
            Character* killerCharacter = nullptr;
            if (m_killer->IsCharacter()) {
                ObjectHandle handle = m_killer->GetHandle();
                killerCharacter = handle;
            }
            DistributeXP(killerCharacter, this);
        }
    }
    if (IsRemotelyUpdated() || m_isNetSpawned != 0) {
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("level", 723);
    }
    PyDataConstants* constants = ApplicationGetPyDataConstants();
    {
        QE_KillEnemies event;
        event.eventId_ = static_cast<std::uint32_t>(constants->getConstant("v2QuestObjectiveType", "KillXEnemies"));
        event.m_character = killer;
        event.m_targetId = unk_64;
        event.m_flag0 = 0;
        event.m_flag1 = 0;
        event.m_value = -1;
        event.m_matchId = m_charPropsId;
        level->RaiseAsync(event);
    }
    {
        QE_ClearEnemies event;
        event.eventId_ = static_cast<std::uint32_t>(constants->getConstant("v2QuestObjectiveType", "ClearEnemies"));
        event.m_character = killer;
        event.m_targetId = unk_64;
        event.m_flag0 = 0;
        event.m_flag1 = 0;
        event.m_value = -1;
        event.m_matchId = m_charPropsId;
        level->RaiseAsync(event);
    }
    if (m_charPropsTemplateId != -1) {
        {
            QE_KillEnemyTemplate event;
            event.eventId_ = static_cast<std::uint32_t>(constants->getConstant("v2QuestObjectiveType", "KillEnemyTemplate"));
            event.m_character = killer;
            event.m_targetId = unk_64;
            event.m_flag0 = 0;
            event.m_flag1 = 0;
            event.m_value = -1;
            event.m_matchId = m_charPropsTemplateId;
            level->RaiseAsync(event);
        }
        {
            QE_ClearEnemyTemplate event;
            event.eventId_ = static_cast<std::uint32_t>(constants->getConstant("v2QuestObjectiveType", "ClearEnemyTemplate"));
            event.m_character = killer;
            event.m_targetId = unk_64;
            event.m_flag0 = 0;
            event.m_flag1 = 0;
            event.m_value = -1;
            event.m_matchId = m_charPropsTemplateId;
            level->RaiseAsync(event);
        }
    }
}

// 0x3a6210 Character::Deserialize(IStreamBase*)
// A monster in a level entered from another level is not restored. Otherwise: buffs removed, the GameObject part, the state int, then (non-players) the saved and final property
// sheets (a player is made visible instead), the position, rotation, dead flag, saved point and revive position, and (with a group) the group's member state and its two flags.
// The dead flag then moves the character: dead -> alive revives it (Revive(nullptr, true), idle state, controller unblocked); alive -> dead sets HP 0. The AI script is
// cleaned and re-initialised, and the saved state steers the state machine: states 0, 2 and 12 enter limbus (as dead), 1 and 17 pre-spawn; any other (including a state above
// 17) either marks a dead character (HP 0, AI dead, limbus) or builds the physics object if missing and goes idle. The target is cleared. A monster, or a player in a level using
// the spawn point (Level +0xf2), goes to its initial position and rotation; everything else is set to its own target position and current rotation. Last the visual is synced and the
// camera anchor reset.
void Character::Deserialize(IStreamBase* stream) {
    if (IsMonster() && ApplicationGetInstance().GetCurrentLevel()->m_cameFromOtherLevel) {
        return;
    }
    PROPS_RemoveAllBuffs();
    GameObject::Deserialize(stream);
    int state = 0;
    stream->readAs(state);
    if (IsPlayer()) {
        SetVisible(true);
    } else {
        stream->readAs(CharProperties::m_savedProps);
        stream->readAs(CharProperties::m_props);
    }
    stream->readAs(m_position);
    stream->readAs(m_rotation);
    bool dead = false;
    stream->readAs(dead);
    stream->readAs(m_savedPoint);
    stream->readAs(m_revivePosition);
    if (CharAI::m_group != nullptr) {
        int memberState = 0;
        stream->readAs(memberState);
        CharAI::m_group->m_allMembersDead = memberState;
        stream->readAs(CharAI::m_group->m_leadersDead);
        stream->readAs(CharAI::m_group->m_triggered);
    }
    if (m_dead != 0) {
        if (!dead) {
            Revive(nullptr, true);
            CharStateMachine::SM_SetIdleState(false);
            m_controller->m_blocked = false;
        }
    } else if (dead) {
        PROPS_Set(36, m_dead);
    }
    m_dead = dead ? 1 : 0;
    CharAI::AI_ScriptCleanUp();
    CharAI::AI_ScriptInit();
    const unsigned int unsignedState = static_cast<unsigned int>(state);
    if (unsignedState <= 17 && ((1u << unsignedState) & 0x1005u) != 0) {
        if (!CharStateMachine::SM_IsInLimbus()) {
            CharStateMachine::SM_SetLimbusState(CanRespawn());
        }
        m_dead = 1;
    } else if (unsignedState <= 17 && ((1u << unsignedState) & 0x20002u) != 0) {
        if (!CharStateMachine::SM_IsInPreSpawn()) {
            CharStateMachine::SM_SetPreSpawnState();
        }
    } else if (m_dead != 0) {
        m_dead = 1;
        PROPS_Set(36, 0);
        CharAI::AI_SetDead();
        CharStateMachine::SM_SetLimbusState(CanRespawn());
    } else {
        if (m_physicalObject == nullptr) {
            InitPhysicalObject();
        }
        CharStateMachine::SM_SetIdleState(false);
    }
    CharAI::AI_SetTarget(nullptr, false);
    CharAI::AI_SyncLastTarget();
    if (IsMonster() || (IsPlayer() && ApplicationGetInstance().GetCurrentLevel()->m_useSpawnPoint)) {
        GameObject::SetPosition(m_initialPosition, true);
        GameObject::SetRotation(m_initialRotation);
    } else {
        GameObject::SetPosition(GameObject::GetTargetPosition(), true);
        GameObject::SetRotation(m_rotation);
    }
    if (m_visualObject != nullptr) {
        m_visualObject->Sync();
    }
    if (m_cameraAnchor != nullptr) {
        m_cameraAnchor->Reset();
    }
}

// 0x3a65c4 Character::Serialize(IStreamBase*)
// The GameObject part, the state machine's state (int), the saved and final property sheets for a non-player, the position, rotation, dead flag, saved point and revive position,
// and, with a group, the group's member state (int) and its two flags.
void Character::Serialize(IStreamBase* stream) {
    GameObject::Serialize(stream);
    const int state = CharStateMachine::SM_GetState();
    stream->writeAs(state);
    if (!IsPlayer()) {
        stream->writeAs(CharProperties::m_savedProps);
        stream->writeAs(CharProperties::m_props);
    }
    stream->writeAs(m_position);
    stream->writeAs(m_rotation);
    stream->writeAs(static_cast<bool>(m_dead != 0));
    stream->writeAs(m_savedPoint);
    stream->writeAs(m_revivePosition);
    if (CharAI::m_group != nullptr) {
        stream->writeAs(CharAI::m_group->m_allMembersDead);
        stream->writeAs(CharAI::m_group->m_leadersDead);
        stream->writeAs(CharAI::m_group->m_triggered);
    }
}

// 0x3a66f8 Character::Clean()
// In the original order: the DropAnimatedFX calls for m_selfFX and m_stateFX, the nine m_targetCircleFX entries (then the array is freed and cleared), DropAnimatedFX for
// m_cursorFX, RemoveMultiplayerHighlight, the free of the timer array (m_timerUtil, not cleared, as in the original), CharAnimator::DecAnimSetUsers when CharAnimator m_usersAdded
// (+0x5c, the byte at Character +0x4f8) is set, and the delete of m_savegame (PlayerSavegame has a virtual destructor). The original then calls a release slot (+0x1c) of the
// object at +0x14ec; that word is only ever written as 0 (by the constructors), so the call can never run and is not written.
void Character::Clean() {
    VisualFXManager& fx = VisualFXManager::s_inst;
    fx.DropAnimatedFX(m_selfFX);
    fx.DropAnimatedFX(m_stateFX);
    if (m_targetCircleFX != nullptr) {
        for (int i = 0; i < 9; ++i) {
            fx.DropAnimatedFX(m_targetCircleFX[i]);
        }
        CustomFree(m_targetCircleFX);
        m_targetCircleFX = nullptr;
    }
    fx.DropAnimatedFX(m_cursorFX);
    RemoveMultiplayerHighlight();
    if (m_timerUtil != nullptr) {
        CustomFree(m_timerUtil);
    }
    if (CharAnimator::m_usersAdded) {
        CharAnimator::DecAnimSetUsers();
    }
    if (m_savegame != nullptr) {
        delete m_savegame;
        m_savegame = nullptr;
    }
}

// 0x3a6a24 Character::NetStructCharacter::NetStructCharacter()
// The replicated state of a character: the NetStruct base, then eleven members, each built with its own constructor (the three position members with the value 0) and declared to
// the NetStruct in this order (ids 0 to 10): x, y and z position, direction x and y, HP + 1, MP + 1 or killer id, state, enabled, killer-is-player and visible.
Character::NetStructCharacter::NetStructCharacter() : m_posX(0.0f), m_posY(0.0f), m_posZ(0.0f) {
    DeclareMember(&m_posX);
    DeclareMember(&m_posY);
    DeclareMember(&m_posZ);
    DeclareMember(&m_dirX);
    DeclareMember(&m_dirY);
    DeclareMember(&m_hp);
    DeclareMember(&m_mpOrKillerId);
    DeclareMember(&m_state);
    DeclareMember(&m_enabled);
    DeclareMember(&m_killerIsPlayer);
    DeclareMember(&m_visible);
}

// 0x3a799c Character::ClearConcurrentAI()
// A non-empty s_concurrentAI is erased and reset to empty (size, root, and the two ends). The original returns the register the erase leaves; the header is void.
void Character::ClearConcurrentAI() {
    if (!s_concurrentAI.empty()) {
        s_concurrentAI.clear();
    }
}

// 0x3a7a50 Character::NetStructCharacter::~NetStructCharacter()
// The original resets the vtables of the members and of the NetStruct base, then erases the packet history map (the
// std::map at NetStruct +0x10c). The compiler generates the same member and base destruction for this empty body.
// 0x3a7b08 (the deleting destructor: this destructor, then CustomFree(this)) is compiler generated and not rebuilt.
Character::NetStructCharacter::~NetStructCharacter() {
}

// 0x3a6f0c Character::PopulateOutgoingNetStruct(bool)
// Writes the live character into the outgoing replicated state (m_netOut, +0x1508); the original builds a temporary member of the same type for each value and hands it to the
// member's SetValue (vtable +0x1c), which is a SetValue on the member. Positions come from m_position. The direction is the heading (+0x1b8, +0x1bc), or zero when there is
// no heading or the level is paused for the local player. A character with no HP left, or dead, sends HP 0 and (with a killer) the killer's network id and whether the
// killer is a player; a living one sends HP + 1 (from the saved sheet) and MP + 1 (property 41 (word 42) of the sheets, 0 when not above zero). The state is the state machine's state when
// force is set, else -1; with force the enabled (+0x8a) and visible (+0x80) flags go out too.
void Character::PopulateOutgoingNetStruct(bool force) {
    m_netOut.m_posX.SetValue(m_position.X);
    m_netOut.m_posY.SetValue(m_position.Y);
    m_netOut.m_posZ.SetValue(m_position.Z);
    const float headingX = m_heading.X;
    const float headingY = m_heading.Y;
    if (!m_hasHeading || (ApplicationGetInstance().IsLevelPaused(false) && dword_99F76C->IsLocalPlayer(this))) {
        m_netOut.m_dirX.SetValue(0.0f);
        m_netOut.m_dirY.SetValue(0.0f);
    } else {
        m_netOut.m_dirX.SetValue(headingX);
        m_netOut.m_dirY.SetValue(headingY);
    }
    bool statePending = true;
    if (CharProperties::m_props.HP <= 0 || IsDead()) {
        m_netOut.m_hp.SetValue(0);
        if (m_killer != nullptr) {
            m_netOut.m_mpOrKillerId.SetValue(m_killer->unk_108);
            m_netOut.m_killerIsPlayer.SetValue(m_killer->IsCharacter() && m_killer->IsPlayer());
        }
    } else {
        m_netOut.m_hp.SetValue(CharProperties::m_savedProps.HP + 1);
        if (CharProperties::m_props.MP <= 0) {
            m_netOut.m_mpOrKillerId.SetValue(0);
        } else {
            m_netOut.m_mpOrKillerId.SetValue(CharProperties::m_savedProps.MP + 1);
        }
    }
    (void)statePending;
    m_netOut.m_state.SetValue(force ? CharStateMachine::SM_GetState() : -1);
    if (force) {
        m_netOut.m_enabled.SetValue(m_enabled != 0);
        m_netOut.m_visible.SetValue(m_visible != 0);
    }
}
