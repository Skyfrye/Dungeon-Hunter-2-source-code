// Batch g1-game-character-Character-ee9946-6: Character::Update, the two CreatePlayer and the two CreateNPC overloads,
// the CSM_* state-machine callbacks, CTRLIsAllowed, the Ctrl_* controller entry points, and ForceUseOOI and UseOOI.
// Declarations come from dh2/Character.hpp.

#include <cstddef>
#include <cstdlib>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/global/runtime_support.hpp"  // before Character.hpp: its MemoryHintState use needs the unrenamed type
#include "dh2/AnimatedFX.hpp"
#include "dh2/Application.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/AnimationSet_GetAnimation.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/net_singletons.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// 0x3abe98 _ZN9Character6UpdateEv
// Character::Update(void)
// One frame of a character, inside the profiling scope "Character::Update".
//  - Debug switches. KillPlayerOne: for the first player's character, an HP above 0 drops by 200 each frame; at or below 0 the HP is set to 0 and a living character is killed through
//    its controller (Cmd_Kill(nullptr, false)). Give50Potions: a player's potion quantity is set to 50.
//  - The CanUpdate gate ends the update here when it is false.
//  - Script load, inside the scope "Character::LoadNInitScript". It is skipped in the states 0, 12 and 2, for a dummy and for a character that already has its AI script. Otherwise, when
//    s_concurrentAI holds more than 8 entries (24 in level 29), the oldest entry is killed through its controller (silent) and its script process unloaded. Then the script
//    process is loaded (LoadNInitScriptProcess(true)); a script loaded in stages by a plain monster (not mini boss or boss) in an offline game is entered in s_concurrentAI under the current real time.
//  - The object manager's frame counter (+0x5c) is raised and the controller updated. With the isABot switch, in an online game, a player whose PlayerInfo (+0x66c) is set and which follows a
//    leader (PlayerInfo +0x678, 1 based) acts as a bot: below 70 HP with a potion, every 100 calls it drinks one; it goes for its object of interest when that is an enemy (type 8, priority), or an
//    item reserved for it with room in the inventory while the leader is within 500; it uses the object within 300 and walks to it beyond; otherwise it follows the leader beyond 300 and
//    (every 1000 calls) auto-equips when it is close; the potion and equip counters are function-local statics.
//  - The timer array, then the per-frame updates of CharTimers, CharAI, CharStateMachine, CharAnimator and GameObject. The combat text cooldown counts down by the frame time.
//  - With LG_DEVICES or P1000TF a faerie copies its position to m_fairyPos_new (x, y, z, 0). A player updates its object of interest and spot target. A non-player: an enabled merchant
//    shows (unk_2fa clear: grabs effect 139, looped) or drops (unk_2fa set) its marker FX; otherwise, online, a net spawned character that has not acknowledged yet does so (and
//    clears unk_118), and a flagged one (unk_118 set, state flag 0x100, no owner id) has the flag cleared.
//  - Every 8th frame UpdateStateFX runs. A dummy or non-local character hides the current target circle (and the cursor). The local player shows the circle of its
//    target (m_lastTarget, else the object of interest) by interaction type (an item of type 1 first runs OnCollisionBegins), hides the circle with no target, and hides the cursor when the controller is
//    blocked, there is no heading, or the d-pad is used. A multiplayer game shows the highlight.
//  - Outside a cutscene the pending gold text and (for the local player) the pending xp text (xp >> 8, style "anim_reward_xp", colour ScrollingCombatText.QR_XP) are shown and reset to -1.
void Character::Update() {
    static int potionTimer = 0;  // Character::Update(void)::potionTimer
    static int equipTimer = 0;   // Character::Update(void)::equipTimer

    PushProfilingContext("Character::Update");

    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    if (switches->GetSwitch("KillPlayerOne") && this == dword_99F76C->GetPlayer(0, false)->unk_660) {
        const int hp = m_props.HP;
        if (hp <= 0) {
            PROPS_Set(36, 0);
            if (!IsDead()) {
                m_controller->Cmd_Kill(nullptr, false);
            }
        } else {
            PROPS_Set(36, hp - 200);
        }
    }

    switches->load();
    if (switches->GetSwitch("Give50Potions") && IsPlayer()) {
        ItemInventory::SetPotionQty(50);
    }

    if (!CanUpdate()) {
        PopProfilingContext("Character::Update");
        return;
    }

    PushProfilingContext("Character::LoadNInitScript");
    const int machineState = CharStateMachine::SM_GetState();
    if (machineState != 0 && machineState != 12 && machineState != 2 && m_isDummy == 0 && CharAI::m_script == nullptr) {
        const std::size_t limit = ApplicationGetInstance().GetCurrentLevel()->m_levelListIndex == 29 ? 0x18 : 8;
        if (s_concurrentAI.size() > limit) {
            std::map<int, Character*>::iterator oldest = s_concurrentAI.begin();
            if (oldest != s_concurrentAI.end()) {
                oldest->second->m_controller->Cmd_Kill(nullptr, true);
                oldest->second->UnLoadScriptProcess(oldest, true);
            }
        }
        if (CharAI::LoadNInitScriptProcess(true)) {
            if (IsMonster() && !IsMiniBoss() && !IsBoss() && !GetOnlineGameFlag() && CharAI::m_stagedLoad) {
                s_concurrentAI[static_cast<int>(glitch::os::Timer::getRealTime())] = this;
            }
        }
    }
    PopProfilingContext("Character::LoadNInitScript");

    ++dword_99F764->unk_5c;  // ObjectManager +0x5c; the counter's name is not recovered
    m_controller->Update();

    switches->load();
    if (switches->GetSwitch("isABot") && GetOnlineGameFlag() && IsPlayer() &&
        dword_99F76C->GetPlayerByCharacter(this, false)->unk_66c != 0) {
        const int leaderNumber = dword_99F76C->GetPlayerByCharacter(this, false)->unk_678;
        Character* leader = leaderNumber > 0 ? dword_99F76C->GetPlayer(leaderNumber - 1, false)->unk_660 : nullptr;
        if (leader != nullptr) {
            ++potionTimer;
            ++equipTimer;
            if (GetHP() <= 69 && HasPotion() && potionTimer > 100) {
                m_controller->Cmd_UsePotion();
                potionTimer = 0;
            } else {
                bool goToObject = false;
                if (m_objectOfInterest != nullptr) {
                    if (m_ooiPriority != 0) {
                        goToObject = (m_ooiInteractionType == 8);
                    } else if (m_ooiInteractionType != 1 && m_ooiInteractionType != -2) {
                        goToObject = true;
                    } else if (this == static_cast<ItemObject*>(m_objectOfInterest)->m_receiver && !ItemInventory::IsInventoryFull() &&
                               leader->m_position.distance(m_position) < 500.0f) {
                        goToObject = true;
                    }
                }
                if (goToObject) {
                    if (m_objectOfInterest->m_position.distance(m_position) <= 300.0f) {
                        m_controller->Cmd_UseOOI(nullptr);
                    } else {
                        m_controller->Cmd_HeadTowards(m_objectOfInterest);
                    }
                } else if (leader->m_position.distance(m_position) > 300.0f) {
                    m_controller->Cmd_HeadTowards(leader);
                } else {
                    if (equipTimer > 1000) {
                        equipTimer = 0;
                        EquipAllSlotsAuto();
                    }
                    m_controller->Cmd_HeadTowards(static_cast<GameObject*>(nullptr));
                }
            }
        }
    }

    if (m_timerUtil != nullptr) {
        m_timerUtil->Update();
    }
    CharTimers::Update();
    CharAI::Update();
    CharStateMachine::Update();
    CharAnimator::Update();
    GameObject::Update();

    if (m_combatTextCooldown > 0.0f) {
        m_combatTextCooldown =
            m_combatTextCooldown - static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt()));
    }

    if ((LG_DEVICES || P1000TF) && IsFaerie()) {
        m_fairyPos_new[0] = m_position.X;
        m_fairyPos_new[1] = m_position.Y;
        m_fairyPos_new[3] = 0.0f;
        m_fairyPos_new[2] = m_position.Z;
    }
    if (IsPlayer()) {
        UpdateObjectOfInterest();
        UpdateSpotTarget();
    } else if (IsMerchant() && m_enabled) {
        if (unk_2fa != 0) {
            if (m_selfFX != nullptr) {
                VisualFXManager::s_inst.DropAnimatedFX(m_selfFX);
            }
        } else if (m_selfFX == nullptr) {
            m_selfFX = VisualFXManager::s_inst.GrabAnimFX(139, this);
            if (m_selfFX != nullptr) {
                m_selfFX->GetAnimator()->getTimelineCtrl()->setLoop(true);
            }
        }
    } else if (m_isNetSpawned != 0 && GetOnlineGameFlag() && m_netSpawnAcked == 0) {
        m_netSpawnAcked = 1;
        unk_118 = 0;
    } else if (GetOnlineGameFlag() && unk_118 != 0 && (CharStateMachine::m_stateFlags & 0x100) != 0 && m_netOwnerId == -1) {
        unk_118 = 0;
    }

    if ((ApplicationGetInstance().m_frameCount & 7) == 0) {
        UpdateStateFX();
    }

    if (m_isDummy != 0 || !dword_99F76C->IsLocalPlayer(this)) {
        if (m_targetCircleFX != nullptr && m_targetCircleIndex >= 0) {
            m_targetCircleFX[m_targetCircleIndex]->SetVisible(false);
        }
        if (m_cursorFX != nullptr) {
            m_cursorFX->SetVisible(false);
        }
    } else {
        if (m_targetCircleFX != nullptr) {
            GameObject* target = CharAI::m_lastTarget;
            if (target == nullptr || target == this) {
                target = m_objectOfInterest;
            }
            if (target == nullptr || target == this) {
                if (m_targetCircleIndex >= 0 && m_targetCircleFX[m_targetCircleIndex] != nullptr) {
                    m_targetCircleFX[m_targetCircleIndex]->SetVisible(false);
                    m_targetCircleIndex = -1;
                }
            } else {
                if (m_cursorFX != nullptr) {
                    m_cursorFX->SetVisible(false);
                }
                const int type = target->GetInteractionType(this);
                if (type >= 0) {
                    if (type == 1) {
                        static_cast<ItemObject*>(target)->OnCollisionBegins(this);
                    }
                    AnimatedFX* circle = m_targetCircleFX[type];
                    if (circle != nullptr) {
                        circle->unk_28 = target;
                        circle->SyncIrrData(true);
                        if (type != m_targetCircleIndex) {
                            if (m_targetCircleIndex >= 0 && m_targetCircleFX[m_targetCircleIndex] != nullptr) {
                                m_targetCircleFX[m_targetCircleIndex]->SetVisible(false);
                            }
                            m_targetCircleFX[type]->SetVisible(true);
                            m_targetCircleIndex = type;
                        }
                    }
                }
            }
        }
        if (m_cursorFX != nullptr) {
            if ((m_controller->unk_009 == 0 && (v2Controller::s_blocked || m_controller->m_blocked)) || m_hasHeading == 0 ||
                ApplicationGetInstance().IsUsingDPad()) {
                m_cursorFX->SetVisible(false);
            }
        }
    }

    if (IsMultiplayerGame() && m_multiplayerHighlightFX != nullptr) {
        m_multiplayerHighlightFX->SetVisible(true);
    }

    if (!ScriptManager::s_inst.IsCutSceneRunning()) {
        if (m_pendingGoldText != -1) {
            F_ApplyScrollingCombatTextGold(m_pendingGoldText, 0);
            m_pendingGoldText = -1;
        }
        if (m_pendingXPText != -1 && dword_99F76C->IsLocalPlayer(this)) {
            const int styleId = FlashAnimManager::GetInstance()->GetStyleIdFromName("anim_reward_xp");
            const int colorId = ApplicationGetPyDataConstants()->getConstant("ScrollingCombatText", "QR_XP");
            F_ApplyScrollingCombatTextXP(m_pendingXPText >> 8, styleId, colorId, 0);
            m_pendingXPText = -1;
        }
    }

    PopProfilingContext("Character::Update");
}

// 0x3acd58 _ZN9Character12CreatePlayerEPS_jjPKc
// Character::CreatePlayer(Character*, unsigned int, unsigned int, char const*)
// With a null source and gAssertLevel 2 the original stores 0 to address 0 (a deliberate crash), which is std::abort() here; gAssertLevel 1 prints the assert message to stderr and returns
// nullptr. The slot and a parameters are not read by the body (Hex-Rays types the slot as Character*).
Character* Character::CreatePlayer(Character* source, unsigned int slot, unsigned int a, const char* name) {
    (void)slot;
    (void)a;
    if (!source) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "tpl",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Creators.cpp",
                         58);
        }
        return nullptr;
    }

    // The argument order is the one the original passes ("Character", then the object name). The header names the
    // Spawn parameters (name, type) and game-world's Level note records that the header does not match its call.
    ObjectHandle handle = dword_99F764->Spawn("Character", name, true, true);
    Character* target = handle;
    if (target) {
        static_cast<PropertyMap&>(static_cast<ObjectBase&>(*target))
            .CloneProperties(static_cast<PropertyMap&>(static_cast<ObjectBase&>(*source)));
        target->ObjectBase::m_name.assign(name);
        target->SG_SetSlot(static_cast<unsigned int>(source->SG_GetSlot()));
        target->InitPost();
        target->InitFinal();
        target->CharStateMachine::SM_SetIdleState(false);
    }
    return target;
}

// 0x3acea4 _ZN9Character12CreatePlayerEjjjPKcbb
// Character::CreatePlayer(unsigned int, unsigned int, unsigned int, char const*, bool, bool)
// The first parameter is the savegame slot, used when c is false; c true selects slot -1. The second and third
// parameters are not read by the body. d true skips the idle state. The Spawn argument order is the original's (see
// the other CreatePlayer).
Character* Character::CreatePlayer(unsigned int slot, unsigned int a, unsigned int b, const char* name, bool c, bool d) {
    (void)a;
    (void)b;
    ObjectHandle handle = dword_99F764->Spawn("Character", name, true, true);
    Character* player = handle;
    if (player) {
        if (player->IsPlayer()) {
            player->InitializePlayerSavegame();
        }
        player->SG_SetSlot(c ? 0xffffffffu : slot);
        player->InitPost();
        player->InitFinal();
        if (!d) {
            player->CharStateMachine::SM_SetIdleState(false);
        }
    }
    return player;
}

// 0x3ad064 _ZN9Character9CreateNPCEPKcS1_bb
// Character::CreateNPC(char const*, char const*, bool, bool)
// The second bool of ObjectManager::Spawn is the fourth parameter c. The Hex-Rays listing drops that sixth argument; the
// assembly at 0x3ad064 stores the register that held c at [sp, #4] of the Spawn call (the first bool is the constant 1).
// b selects m_charTemplate (true) or m_charPropsName (false).
Character* Character::CreateNPC(const char* name, const char* a, bool b, bool c) {
    static unsigned int counter = 0;  // Character::CreateNPC(char const*,char const*,bool,bool)::counter
    char generated[20];
    if (!a) {
        a = generated;
        std::snprintf(generated, sizeof generated, "NPC_%04u", ++counter);
    }
    ObjectHandle handle = dword_99F764->Spawn("Character", a, true, c);
    Character* npc = handle;
    if (npc) {
        const std::size_t length = std::strlen(name);
        if (b) {
            npc->m_charTemplate.assign(name, length);
        } else {
            npc->m_charPropsName.assign(name, length);
        }
        npc->InitPost();
        npc->InitFinal();
        npc->CharStateMachine::SM_SetIdleState(false);
    }
    return npc;
}

// 0x3ad1f8 _ZN9Character9CreateNPCEiPKcb
// Character::CreateNPC(int, char const*, bool)
// The template name is the name of row a of Arrays::CharacterTable (m_memberNames[a], not range checked); the four-argument CreateNPC then runs with that name, the given name, false and b.
Character* Character::CreateNPC(int a, const char* name, bool b) {
    return CreateNPC(Arrays::CharacterTable::m_memberNames.names[a], name, false, b);
}

// 0x3ad22c _ZN9Character10CSM_AttackEiPviRi
// Character::CSM_Attack(int, void*, int, int&)
// Returns !(CharStateMachine m_statusFlags & 1). The listing reads the byte at Character +0x528, which is +0x2c of the
// CharStateMachine base, so the low byte of the word is the bit tested here.
bool Character::CSM_Attack(int, void*, int, int&) {
    return !(CharStateMachine::m_statusFlags & 1u);
}

// 0x3ad23c _ZN9Character11CSM_InjuredEiPviRi
// Character::CSM_Injured(int, void*, int, int&)
bool Character::CSM_Injured(int, void*, int, int&) {
    return true;
}

// 0x3ad244 _ZN9Character15CSM_InterruptedEiPviRi
// Character::CSM_Interrupted(int, void*, int, int&)
// Switch on stateId (the third parameter): 6 returns bit 16 of CharStateMachine m_stateFlags (HIWORD & 1); 10 returns the
// inverse of bit 5 of m_statusFlags; 5 returns CharAI m_attackLastStep. Every other id returns true.
bool Character::CSM_Interrupted(int, void*, int stateId, int&) {
    switch (stateId) {
        case 6:
            return ((CharStateMachine::m_stateFlags >> 16) & 1u) != 0;
        case 10:
            return (((CharStateMachine::m_statusFlags ^ 0x20u) >> 5) & 1u) != 0;
        case 5:
            return CharAI::m_attackLastStep;
        default:
            return true;
    }
}

// 0x3ad280 _ZN9Character20CSM_StoppedAttackingEiPviRi
// Character::CSM_StoppedAttacking(int, void*, int, int&)
// stateId 5 returns CharAI m_attackCommitted; every other id returns false.
bool Character::CSM_StoppedAttacking(int, void*, int stateId, int&) {
    if (stateId == 5) {
        return CharAI::m_attackCommitted;
    }
    return false;
}

// 0x3ad290 _ZN9Character13CSM_StopSkillEiPviRi
// Character::CSM_StopSkill(int, void*, int, int&)
// Returns bit 15 of CharStateMachine m_stateFlags.
bool Character::CSM_StopSkill(int, void*, int, int&) {
    return ((CharStateMachine::m_stateFlags >> 15) & 1u) != 0;
}

// 0x3ad29c _ZN9Character22CSM_CanStopInteractionEiPviRi
// Character::CSM_CanStopInteraction(int, void*, int, int&)
// When CharStateMachine::m_interactKind (+0x48) is 4 or 5, the result is CSWTCH_5399[kind - 4]; otherwise 1. The table
// is four bytes at 0x8c3784, all zero (IDA get_bytes, 2026-10-13), so the result is 0 for kinds 4 and 5.
bool Character::CSM_CanStopInteraction(int, void*, int, int&) {
    static constexpr std::uint8_t kCSWTCH_5399[4] = {0, 0, 0, 0};
    const unsigned int kind = static_cast<unsigned int>(CharStateMachine::m_interactKind);
    if (kind - 4u <= 1u) {
        return kCSWTCH_5399[kind - 4u] != 0;
    }
    return true;
}

// 0x3ad2c8 _ZN9Character20CSM_AfterInteractionEiPviRi
// Character::CSM_AfterInteraction(int, void*, int, int&)
// nextState becomes 18 when m_interactKind (+0x48) is 4. The result is 1 in every case.
bool Character::CSM_AfterInteraction(int, void*, int, int& nextState) {
    if (CharStateMachine::m_interactKind == 4) {
        nextState = 18;
    }
    return true;
}

// 0x3ad2e4 _ZN9Character9CSM_SpawnEiPviRi
// Character::CSM_Spawn(int, void*, int, int&)
// stateId 0 returns CanRespawn(). Any state other than 17 returns true. For 17 (PreSpawn): with no group in CharAI m_group
// (+0x34) the result is the m_autoSpawn property (+0x1430). With a group, GroupInfo::CanSpawn(CharAI m_character) decides;
// when it allows the spawn the result is m_autoSpawn, otherwise 0.
bool Character::CSM_Spawn(int, void*, int stateId, int&) {
    if (stateId == 0) {
        return CanRespawn();
    }
    if (stateId != 17) {
        return true;
    }
    CharAI::GroupInfo* group = CharAI::m_group;
    if (!group) {
        return m_autoSpawn;
    }
    if (group->CanSpawn(CharAI::m_character)) {
        return m_autoSpawn;
    }
    return false;
}

// 0x3ad418 _ZN9Character13Ctrl_RotateByEf
// Character::Ctrl_RotateBy(float)
// The original also returns the new target yaw as a float. The base slot (v2Controllable::Ctrl_RotateBy) is void, so
// nothing is returned here.
void Character::Ctrl_RotateBy(float angle) {
    m_targetYaw = m_targetYaw + angle;
}

// 0x3ad430 _ZNK9Character13CTRLIsAllowedEv
// Character::CTRLIsAllowed() const
bool Character::CTRLIsAllowed() const {
    return !SM_IsScared(true) && !SM_IsStunned(true);
}

// 0x3ad478 _ZN9Character12Ctrl_OpenIGMEv
// Character::Ctrl_OpenIGM()
// When the in-game menu is open, pops the menu stack to menu_Ingame and then pops the menu; otherwise pushes menu_Ingame.
// The menu manager's OnFSCommand is its vtable slot +0x10.
void Character::Ctrl_OpenIGM() {
    if (MenuBase::s_igmOpened) {
        MenuManager::GetInstance()->OnFSCommand("PopAllAbove", "menu_Ingame");
        MenuManager::GetInstance()->OnFSCommand("PopMenu", "");
    } else {
        MenuManager::GetInstance()->OnFSCommand("PushMenu", "menu_Ingame");
    }
}

// 0x3ad528 _ZN9Character9Ctrl_KillEP10GameObjectb
// Character::Ctrl_Kill(GameObject*, bool)
void Character::Ctrl_Kill(GameObject* killer, bool silent) {
    if (!IsDead()) {
        Kill(killer, silent);
        RaiseEvent(2, killer);
    }
}

// 0x3ad57c _ZN9Character15Ctrl_DropObjectEv
// Character::Ctrl_DropObject()
void Character::Ctrl_DropObject() {
    if (!IsDead()) {
        RaiseEvent(6, nullptr);
    }
}

// 0x3ad5ac _ZN9Character11ForceUseOOIEP10GameObject
// Character::ForceUseOOI(GameObject*)
// With a target, and only when CharAI m_target (+0x40) is clear and the state machine is idle (SM_IsIdle(false)) or
// moving (SM_IsMoving(false)): CharAI::AI_SetTarget(target, false) and CharAI m_targetSeeking (+0x4a) set to true.
void Character::ForceUseOOI(GameObject* target) {
    if (target && !CharAI::m_target) {
        if (SM_IsIdle(false) || SM_IsMoving(false)) {
            CharAI::AI_SetTarget(target, false);
            CharAI::m_targetSeeking = true;
        }
    }
}

// 0x3ad614 _ZN9Character6UseOOIEv
// Character::UseOOI()
// The same as ForceUseOOI, with m_objectOfInterest (+0x14a4) as the target.
void Character::UseOOI() {
    if (m_objectOfInterest && !CharAI::m_target) {
        if (SM_IsIdle(false) || SM_IsMoving(false)) {
            CharAI::AI_SetTarget(m_objectOfInterest, false);
            CharAI::m_targetSeeking = true;
        }
    }
}
