// Batch g1-game-character-Character-ee9946-5: the Character destructor, the script-process unload, the constructor,
// the equipment wrappers and requirement check, the skill reload, the property declaration, the object-of-interest
// update, the cached-OID insertion, the hit handler, the draw overlay and the skin refresh.
// Declarations come from dh2/Character.hpp.

#include <cstdint>
#include <cwchar>
#include <map>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/AssetManager.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/global/charai_ai.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/v2Controller.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/gui/CGUIStaticText.hpp"
#include "glitch-scene-collada-gui/gui/IGUIEnvironment.hpp"
#include "glitch-scene-collada-gui/gui/IGUIFont.hpp"
#include "glitch-scene-collada-gui/gui/gui_types.hpp"
#include "glitch-video/video_driver.hpp"
#include "net-transport/update_job_thread.hpp"
#include "net-session-online/c_message.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "pydata-accessors/w7_arrays27.hpp"

// 0x3a7b24 Character::UnLoadScriptProcess(std::priv::_Rb_tree_iterator<std::pair<int const, Character*>, ...>, bool)
// The original takes the iterator by value (the ELF symbol has no R). STLport's iterator has a user-provided copy
// constructor, so the ABI passes a pointer to the caller's temporary. When the iterator is end(), the original searches
// s_concurrentAI from the first entry for the one whose value is this, and writes the found entry (or end() when there
// is none) to that temporary. Every original caller passes a fresh end() copy and does not read it again, so the
// write-back is not visible to the caller. It erases the entry when the iterator is not end(), then unloads the CharAI
// script process with the flag.
void Character::UnLoadScriptProcess(std::map<int, Character*>::iterator it, bool force) {
    if (it == s_concurrentAI.end()) {
        auto found = s_concurrentAI.begin();
        while (found != s_concurrentAI.end() && found->second != this) {
            ++found;
        }
        it = found;
    }
    if (it != s_concurrentAI.end()) {
        s_concurrentAI.erase(it);
    }
    CharAI::AIUnLoadScriptProcess(force);
}

// 0x3a7c84 Character::~Character()
// 0x3a7dfc Character::~Character()  (same body: the listing types the Clean argument differently; defined once here)
// The original stores each base's vptr (off_965F38 at +0 ... off_966254 at +0x560), calls Clean(), then destroys
// m_netOut and m_netIn, the strings, CharProperties, CharStateMachine, CharAnimator, CharAI, CharTimers, ItemInventory,
// v2Controllable and GameObject. Members and bases of Character are destroyed by the compiler in reverse declaration
// order, which is that order, so the body is Clean() alone.
Character::~Character() {
    Clean();
}

// 0x3a9340 _ZN9CharacterC2EN10ObjectBase6GO_IDSE  Character::Character(ObjectBase::GO_IDS)  (C2, base-object constructor)
// 0x3aa1b4 _ZN9CharacterC1EN10ObjectBase6GO_IDSE  Character::Character(ObjectBase::GO_IDS)  (C1, complete-object constructor;
// same body, defined once here)
// Reconstructed. The stores at ObjectBase +0x104 (unk_104, the incoming NetStruct pointer, &m_netIn) and at +0x380
// (ItemInventory::m_character, the owner) are now declared in their headers and written here. The original's
// v2Controllable null check (a dead branch: the controllable is this + 0x374) is not reproduced.
Character::Character(GO_IDS id)
    : GameObject(id) {
    // Base constructors of v2Controllable, ItemInventory, CharTimers, CharAI, CharAnimator, CharStateMachine and
    // CharProperties run before this body, as they do in the original.
    unk_28 = 1;
    m_validateDirection = 1;
    unk_85 = 1;
    unk_f8 = 1;

    m_initPostDone = 0;
    m_initFinalDone = 0;
    m_needsNetPlacement = 1;
    unk_1397 = -1;
    m_charPropsId = -1;
    m_charPropsTemplateId = -1;
    m_aiStateVisible = 1;
    m_autoSpawn = 1;
    m_spawnDelay = Point2D<int>{0, 0};
    m_lowHpSoundArmed = 1;
    m_dead = 0;
    m_killer = nullptr;
    m_initialPosition = Point3D<float>{};
    m_initialRotation = Point3D<float>{};
    m_savedPoint = Point3D<float>{};
    m_revivePosition = Point3D<float>{};
    m_isDummy = 0;
    m_isSpawned = 0;
    m_selfFX = nullptr;
    m_selfFXBaseId = 0;
    m_stateFX = nullptr;
    m_stateFXId = 0;
    m_targetCircleFX = nullptr;
    m_targetCircleIndex = -1;
    m_cursorFX = nullptr;
    m_multiplayerHighlightFX = nullptr;
    m_objectOfInterest = nullptr;
    m_ooiInteractionType = -1;
    m_ooiRefreshTimer = 0;
    m_ooiPriority = 0;
    m_ooiChanged = 0;
    m_spotTargetPos = Point3D<float>{};
    m_spotTargetValidPos = Point3D<float>{};
    m_spotTargetPending = 0;
    m_spotTargetFXId = -1;
    m_spotTargetFX = nullptr;
    unk_14d0 = 0;
    m_aggroRedirect = nullptr;
    unk_14d8 = 0;
    unk_14dc = 0;
    m_timerUtil = nullptr;
    m_isNetSpawned = 0;
    m_netSpawnAcked = 0;
    m_savegame = nullptr;
    unk_14ec = nullptr;
    m_freeMana = 0;
    unk_14f4 = -1;
    unk_14f8 = -1;
    m_combatTextCooldown = -1.0f;
    m_pendingGoldText = -1;
    m_pendingXPText = -1;

    m_netStruct = &m_netOut;
    unk_104 = &m_netIn;
    m_targetList.SetRefObject(this);

    // The original allocates a 16-byte v2Controller (vptr, m_controllable, m_blocked, m_character = 0) and installs it.
    // Its null check on the controllable is dead: the address is this + 0x374 and cannot be null.
    v2Controller* controller = new v2Controller(this);
    v2Controllable::SetController(controller);
    m_controller->m_character = this;

    CharTimers::SetCharacter(this);
    CharAI::SetCharacter(this);
    CharAnimator::SetCharacter(this);
    CharStateMachine::SetCharacter(this);
    CharProperties::SetCharacter(this);
    ItemInventory::m_character = this;
    for (int state = 0; state != 20; ++state) {
        CharStateMachine::RegisterState(state);
    }
}

// 0x3a7de0 Character::~Character()
// Deleting destructor (D0): the compiler generates it for delete. The original calls the destructor above and frees
// the object with CustomFree. Not rebuilt.

// 0x3a7dfc Character::~Character()
// Same body as 0x3a7c84 (see above).

// 0x3a7f10 Character::InterpretIncomingNetStruct(bool)
// Applies the incoming replicated state (m_netIn, +0x1a48). A dummy ignores it. A forced update of a monster first removes its buffs. The position (x, y, z values of the incoming
// position members) is set with SetPosition(point, true) and the direction (dirX, dirY, 0) is pushed through the controller's controllable (Ctrl_HeadTowards). The first time (m_needsNetPlacement,
// +0x1396), a player is moved (ForceUpdatePosition) and, when it shares the hosting player's matching member id, the level places its faery and followers; the flag is cleared.
// HP: a non-zero incoming HP + 1 sets property 36 to HP; a dead character is brought back (visible, initial position, Revive(nullptr, true), idle) and the incoming state is
// reset to -1; MP + 1 sets property 41. A zero incoming HP sets property 36 to 0 and, for a living character, kills it: the killer is found by the network id (or the local player when
// the killer is a player and not found); forced updates mark it dead (AI_SetDead), others Cmd_Kill it; a player asks the owner to resend (AskNetResendByObjectId), anything else is
// flagged (unk_118) and, in an online game mode 3 or 4, a net spawned or summoned one sends a CMsgSpawnObject request. The incoming state is then reset to -1.
// The incoming state + 1 steers the state machine: states 0, 2 and 12 (limbus; dead flag set), 1 and 17 (pre-spawn), -1 (nothing) or any other (a dead character goes dead and HP 0;
// a living one gets its physics object if missing and goes idle). With force the incoming enabled and visible flags are applied and the visual's visibility synced.
void Character::InterpretIncomingNetStruct(bool force) {
    if (m_isDummy) {
        return;
    }
    if (force && IsMonster()) {
        CharProperties::PROPS_RemoveAllBuffs();
    }
    const Point3D<float> position{m_netIn.m_posX.GetValue(), m_netIn.m_posY.GetValue(), m_netIn.m_posZ.GetValue()};
    const Point3D<float> direction{m_netIn.m_dirX.GetValue(), m_netIn.m_dirY.GetValue(), 0.0f};
    GameObject::SetPosition(position, true);
    m_controller->m_controllable->Ctrl_HeadTowards(direction);
    if (m_needsNetPlacement != 0) {
        if (IsPlayer()) {
            GameObject::ForceUpdatePosition();
            if (dword_99F76C->GetHostingPlayer()->matching_member_id_.GetValue() ==
                dword_99F76C->GetPlayerByCharacter(this, false)->matching_member_id_.GetValue()) {
                ApplicationGetInstance().GetCurrentLevel()->PlaceFaeryAndFollowers(this);
            }
        }
    }
    m_needsNetPlacement = 0;
    const int incomingHp = m_netIn.m_hp.GetValue();
    if (incomingHp != 0) {
        PROPS_Set(36, incomingHp - 1);
        if (IsDead()) {
            SetVisible(true);
            GameObject::SetPosition(m_initialPosition, true);
            Revive(nullptr, true);
            CharStateMachine::SM_SetIdleState(false);
            m_netIn.m_state.SetValue(-1);
        }
        int mp = m_netIn.m_mpOrKillerId.GetValue();
        if (mp != 0) {
            --mp;
        }
        PROPS_Set(41, mp);
    } else {
        PROPS_Set(36, 0);
        if (!IsDead()) {
            ObjectHandle killerHandle = dword_99F764->GetObjectHandleByNetworkId(m_netIn.m_mpOrKillerId.GetValue());
            GameObject* killer = killerHandle;
            if (killer == nullptr && m_netIn.m_killerIsPlayer.GetValue()) {
                killer = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            }
            if (force) {
                m_dead = 1;
                PROPS_Set(36, 0);
                CharAI::AI_SetDead();
            } else {
                m_controller->Cmd_Kill(killer, false);
            }
            if (IsPlayer()) {
                dword_99F764->AskNetResendByObjectId(unk_108);
            } else {
                unk_118 = 1;
                const std::int32_t mode = OnlineSingleton<OnlineGameState>::GetInstance()->mode_;
                if ((mode == 3 || mode == 4) && (m_isNetSpawned != 0 || IsSummoned())) {
                    CMessaging* messaging = CMessaging::GetInstance();
                    CMsgSpawnObject* request = dynamic_cast<CMsgSpawnObject*>(CMessage::CreateMessage("CMsgSpawnObject", true));
                    request->objectId_ = unk_108;
                    request->unk_54 = 0;
                    request->unk_58 = 0;
                    request->unk_5c = 0;
                    request->unk_60 = 0;
                    request->unk_64 = 0;
                    request->unk_68 = 1;
                    messaging->SendMsg(request);
                }
            }
            m_netIn.m_state.SetValue(-1);
        }
    }
    const unsigned int state = static_cast<unsigned int>(m_netIn.m_state.GetValue() + 1);
    bool applyFlags = force;
    if (state <= 0x12 && ((1u << state) & 0x200Au) != 0) {
        if (!CharStateMachine::SM_IsInLimbus()) {
            CharStateMachine::SM_SetLimbusState(false);
        }
        m_dead = 1;
    } else if (state <= 0x12 && ((1u << state) & 0x40004u) != 0) {
        if (!CharStateMachine::SM_IsInPreSpawn()) {
            CharStateMachine::SM_SetPreSpawnState();
        }
    } else if (state <= 0x12 && state == 0) {
        // state -1: nothing to do
    } else if (m_dead != 0) {
        m_dead = 1;
        PROPS_Set(36, 0);
        CharAI::AI_SetDead();
    } else {
        if (m_physicalObject == nullptr) {
            InitPhysicalObject();
        }
        CharStateMachine::SM_SetIdleState(false);
    }
    if (applyFlags) {
        SetEnable(m_netIn.m_enabled.GetValue());
        SetVisible(m_netIn.m_visible.GetValue());
        if (m_visualObject != nullptr) {
            m_visualObject->SyncVisibility();
        }
    }
}

// 0x3a84f4 Character::Draw() const
// The debug overlay, after GameObject::Draw. Each of the three switches reloads the switch file first, in the original
// order: isDisplayingMeleeRadius draws the melee radius box of this character, isDisplayingPath draws the path-finding
// object's path, and isDisplayingPositions draws two screen texts (the target position, and the absolute position of the
// visual object's scene node) plus the world AABB in a colour that depends on whether this character is a player.
// The texts use the two function-local caches m_postext and m_postext2; each is created once through the GUI environment
// (device +0x18: getSkin, getFont, getDimension, addStaticText) and updated with setText afterwards, and both are
// released when the positions switch is off.
// The original's text format is the wide string "<" with the three coordinates as arguments.
void Character::Draw() const {
    // The two static text caches of this function (m_postext, m_postext2).
    static glitch::gui::IGUIStaticText* m_postext = nullptr;
    static glitch::gui::IGUIStaticText* m_postext2 = nullptr;

    GameObject::Draw();

    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch("isDisplayingMeleeRadius")) {
        const float meleeRadius = AI_GetMeleeRadius();
        const Point3D<float> position = GetTargetPosition();
        glitch::core::aabbox3d<float> box;
        box.MinEdge.X = position.X - meleeRadius;
        box.MinEdge.Y = position.Y - meleeRadius;
        box.MinEdge.Z = position.Z - meleeRadius;
        box.MaxEdge.X = position.X + meleeRadius;
        box.MaxEdge.Y = position.Y + meleeRadius;
        box.MaxEdge.Z = position.Z + meleeRadius;
        glitch::video::SColor color;
        color.color = 0xFF00FF00;  // green, alpha 255
        ApplicationGetInstance().m_device->videoDriver->draw3DBox(box, color);  // device +0x10, vtable +0x28
    }

    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch("isDisplayingPath")) {
        m_pfObject.DBG_DrawPath();  // GameObject +0x1c8
    }

    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch("isDisplayingPositions")) {
        if (!IsPlayer()) {
            glitch::core::aabbox3d<float> box;
            box.MinEdge.X = m_absAabb[0];
            box.MinEdge.Y = m_absAabb[1];
            box.MinEdge.Z = m_absAabb[2];
            box.MaxEdge.X = m_absAabb[3];
            box.MaxEdge.Y = m_absAabb[4];
            box.MaxEdge.Z = m_absAabb[5];
            // The sleeping-box colour: 100 in the two middle channels, 255 in the other two.
            const unsigned char shade = 100;
            glitch::video::SColor color;
            color.color = 0xFF0000FF | (static_cast<unsigned int>(shade) << 8) | (static_cast<unsigned int>(shade) << 16);
            ApplicationGetInstance().m_device->videoDriver->draw3DBox(box, color);  // device +0x10, vtable +0x28
        }

        glitch::gui::IGUIEnvironment* gui = ApplicationGetInstance().m_device->guiEnvironment;  // +0x18, typed in device.hpp now
        wchar_t text[256];

        const Point3D<float> position = GetTargetPosition();
        std::swprintf(text, 256, L"<", static_cast<double>(position.X), static_cast<double>(position.Y), static_cast<double>(position.Z));
        if (m_postext != nullptr) {
            m_postext->setText(text);
        } else {
            glitch::gui::IGUISkin* skin = gui->getSkin();       // K 0x38
            glitch::gui::IGUIFont* font = skin->getFont();      // K 0x28
            const glitch::core::dimension2d<int> extent = font->getDimension(text);  // K 0x1c
            glitch::core::rect<int> rectangle;
            rectangle.UpperLeftCorner.X = 0;
            rectangle.UpperLeftCorner.Y = Height_Screen - 60;
            rectangle.LowerRightCorner.X = Width_Screen;
            rectangle.LowerRightCorner.Y = Height_Screen - 60 + extent.Height;
            // (text, rectangle, border, wordWrap, parent, id, fillBackground)
            m_postext = gui->addStaticText(text, rectangle, false, true, nullptr, -1, false);  // K 0xa8
            m_postext->setTextAlignment(glitch::gui::EGUIA_UPPERLEFT, glitch::gui::EGUIA_CENTER);  // K 0xa0
            glitch::video::SColor color;
            color.color = 0xFF00FF00;  // green, alpha 255
            m_postext->setOverrideColor(color);  // K 0x98
            m_postext->setDrawBorder(false);     // K 0x9c
            m_postext->setText(text);            // K 0x44
        }

        if (m_visualObject != nullptr && m_visualObject->m_node != nullptr) {
            const glitch::core::vector3d<float> absolute = m_visualObject->m_node->getAbsolutePosition();
            std::swprintf(text, 256, L"<", static_cast<double>(absolute.X), static_cast<double>(absolute.Y), static_cast<double>(absolute.Z));
            if (m_postext2 != nullptr) {
                m_postext2->setText(text);
            } else {
                glitch::gui::IGUISkin* skin = gui->getSkin();       // K 0x38
                glitch::gui::IGUIFont* font = skin->getFont();      // K 0x28
                const glitch::core::dimension2d<int> extent = font->getDimension(text);  // K 0x1c
                // The second text sits under the first one: its top is the first text's height, its height the measured
                // height of the second string.
                glitch::core::rect<int> rectangle;
                rectangle.UpperLeftCorner.X = 0;
                rectangle.UpperLeftCorner.Y = m_postext->getRelativePosition().LowerRightCorner.Y - m_postext->getRelativePosition().UpperLeftCorner.Y;
                rectangle.LowerRightCorner.X = Width_Screen;
                rectangle.LowerRightCorner.Y = rectangle.UpperLeftCorner.Y + extent.Height;
                m_postext2 = gui->addStaticText(text, rectangle, false, true, nullptr, -1, false);  // K 0xa8
                m_postext2->setTextAlignment(glitch::gui::EGUIA_UPPERLEFT, glitch::gui::EGUIA_CENTER);  // K 0xa0
                glitch::video::SColor color;
                color.color = 0xFFFF0000;  // blue, alpha 255
                m_postext2->setOverrideColor(color);  // K 0x98                m_postext2->setDrawBorder(false);     // K 0x9c
                m_postext2->setText(text);            // K 0x44
            }
        }
    } else {
        if (m_postext != nullptr) {
            m_postext->remove();  // K 0x1c
            m_postext = nullptr;
        }
        if (m_postext2 != nullptr) {
            m_postext2->remove();
            m_postext2 = nullptr;
        }
    }
}

// 0x3a8bc4 Character::HitFor(unsigned int, GameObject*)
// A dead character is ignored. The damage applied to HP (property 36) is the whole amount, except: none for a monster while the GOD_Monster switch is set; online, none unless the player
// manager is missing, idle or in global death step 5; offline, none unless the local player exists and is alive. OneShotKill (saved option or switch) sets HP to 0 for any
// non-player, or for a player whose master is not a player. With no HP left the character is killed through its controller (Cmd_Kill(attacker, false)); a locally updated one also gets
// unk_11c = 3, and the kill flag for the trophies is set. A player at or below half HP starts the potion-use tutorial once (offline, difficulty 0, tutorial flag 4: cinematic_Tuto_potionUse)
// and plays the low-HP sound (sfx_mc_low_hp for the local player, sfx_friend_low_hp otherwise) once until its HP is back to 75% of the total. When the attacker is a Character that is a player
// other than this one and is the local player, the damage unlocks the power_50dam / _100dam / _150dam / _200dam trophies (each larger tier also unlocks the smaller ones), and a hit that took a
// full-HP boss or mini boss down unlocks power_onehit. The original returns the hit target, which the void declaration drops.
void Character::HitFor(unsigned int damage, GameObject* attacker) {
    if (IsDead()) {
        return;
    }
    const int hpBefore = m_props.HP;
    const int totalHp = m_props.Max_HP;
    Character* localCharacter = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    int appliedDisplay = 0;
    int appliedHp = 0;
    DebugSwitches::GetInstance()->load();
    const bool godMonster = DebugSwitches::GetInstance()->GetSwitch("GOD_Monster") && IsMonster();
    if (!godMonster) {
        bool apply = false;
        if (GetOnlineGameFlag()) {
            if (dword_99F76C == nullptr) {
                apply = true;
            } else {
                const int step = dword_99F76C->m_globalDeathState;
                apply = (step == 0 || step == 5);
            }
        } else if (localCharacter != nullptr && !localCharacter->IsDead()) {
            apply = true;
        }
        if (apply) {
            appliedDisplay = static_cast<int>(damage) >> 8;
            appliedHp = -static_cast<int>(damage);
        }
    }
    CharProperties::PROPS_Add(36, appliedHp);
    bool oneShot = ApplicationGetInstance().IsSavedOptionOn("OneShotKill");
    if (!oneShot) {
        DebugSwitches::GetInstance()->load();
        oneShot = DebugSwitches::GetInstance()->GetSwitch("OneShotKill");
    }
    if (oneShot) {
        if (!IsPlayer() || (CharAI::m_master != nullptr && !CharAI::m_master->IsPlayer())) {
            CharProperties::PROPS_Set(36, 0);
        }
    }
    bool killed;
    if (m_props.HP <= 0) {
        CharProperties::PROPS_Set(36, 0);
        m_controller->Cmd_Kill(attacker, false);
        if (!IsRemotelyUpdated()) {
            unk_11c = 3;
        }
        killed = true;
    } else {
        killed = false;
    }
    if (IsPlayer() && m_props.HP <= m_props.Max_HP / 2) {
        if (!GetOnlineGameFlag() && SG_GetGameDifficulty() == 0 && dword_99F778->m_tutorials[4] != 0) {
            const int script = ScriptManager::s_inst.GetIDFromName("cinematic_Tuto_potionUse", true);
            if (script != -1) {
                ScriptManager::s_inst.StartScript(script, -1, false);
            }
            dword_99F778->m_tutorials[4] = 0;
            m_updateJobThread3->Start2();
        }
        if (m_lowHpSoundArmed != 0) {
            m_lowHpSoundArmed = 0;
            const char* soundName = this == localCharacter ? "sfx_mc_low_hp" : "sfx_friend_low_hp";
            const int sound = pydata::FindMemberName(Arrays::Sounds::m_memberNames, static_cast<int>(Arrays::Sounds::size), soundName);
            VoxSoundManager::s_instance->Play(sound, false, 0, 0, false);
        }
    } else if (IsPlayer() && m_lowHpSoundArmed == 0 &&
               static_cast<float>(m_props.HP) >= static_cast<float>(m_props.Max_HP) * 0.75f) {
        m_lowHpSoundArmed = 1;
    }
    ObjectHandle attackerHandle = attacker->GetHandle();
    Character* attackerCharacter = attackerHandle;
    TrophyManager* trophies = TrophyManager::s_instance;
    if (attackerCharacter == nullptr || !attackerCharacter->IsPlayer() || this == attackerCharacter ||
        !dword_99F76C->IsLocalPlayer(attackerCharacter)) {
        return;
    }
    auto unlock = [trophies](const char* name) {
        trophies->UnlockTrophy(pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), name));
    };
    if (appliedDisplay > 199) {
        unlock("power_200dam");
    }
    if (appliedDisplay > 149) {
        unlock("power_150dam");
    }
    if (appliedDisplay > 99) {
        unlock("power_100dam");
    }
    if (appliedDisplay > 49) {
        unlock("power_50dam");
    }
    if (hpBefore == totalHp && killed) {
        if (IsBoss() || IsMiniBoss()) {
            unlock("power_onehit");
        }
    }
}

// 0x3a999c Character::INV_UpdateSkin()
// With a visual object, the nine equipment slots are walked. A slot with a modular category name takes its look from the equipped item (the string at Structs::Item +0x50) or, empty,
// from "<category>__naked". Slots 1 and 2 are weapon slots: the weapon skin is set from the name (kind = the slot; the second index is 0 for a shield, 2 for a bow, for a claw
// in slot 2 (whose "RWeapon" becomes "LWeapon") and for a naked shield, else the slot); a naked non-shield weapon slot clears the skin. The other slots set the modular skin of the
// category: the item's module, or "<category>__placeholder" when the visual has no such module, or "<category>__naked" when empty. Each modular change reads the isTracingChar_Modular switch.
void Character::INV_UpdateSkin() {
    if (m_visualObject == nullptr) {
        return;
    }
    std::string name;
    for (unsigned int slot = 0; slot < 9; ++slot) {
        ItemInstance* equipped = ItemInventory::GetEquippedItem(slot);
        const char* category = ItemInventory::GetModularCategoryName(slot);
        if (category == nullptr) {
            continue;
        }
        // W2 (finding 8, the missing weapons/mc_torso_default_warrior.bdae): the listing counts a second index from -1 beside the slot and takes
        // the weapon branch when it is <= 1 unsigned, i.e. slots 1 (MC_RWeapon) and 2 (MC_LWeapon). Slot 0 is MC_Torso, a modular skin; the port
        // sent it to SetWeaponSkin, which looked for the torso module as a weapon file and left the torso skin unset.
        const bool weaponSlot = slot - 1u <= 1u;
        if (equipped == nullptr) {
            name = category;
            name += "__naked";
            if (weaponSlot) {
                m_visualObject->SetWeaponSkin(nullptr, static_cast<int>(slot), std::strstr(name.c_str(), "Shield") != nullptr ? 0 : static_cast<int>(slot));
                continue;
            }
            const int categoryId = m_visualObject->GetModularCategoryId(category);
            const int moduleId = m_visualObject->GetModularModuleId(categoryId, name.c_str());
            DebugSwitches::GetInstance()->load();
            DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Modular");
            m_visualObject->SetModularSkin(categoryId, moduleId);
            continue;
        }
        name = static_cast<const char*>(equipped->GetItem()->ModularModule);
        if (!weaponSlot) {
            const int categoryId = m_visualObject->GetModularCategoryId(category);
            int moduleId = m_visualObject->GetModularModuleId(categoryId, name.c_str());
            if (moduleId == -1) {
                name = category;
                name += "__placeholder";
                moduleId = m_visualObject->GetModularModuleId(categoryId, name.c_str());
            }
            DebugSwitches::GetInstance()->load();
            DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Modular");
            m_visualObject->SetModularSkin(categoryId, moduleId);
            continue;
        }
        int second;
        if (std::strstr(name.c_str(), "Shield") != nullptr) {
            second = 0;
        } else {
            second = 2;
            if (std::strstr(name.c_str(), "Bow") == nullptr) {
                const bool claw = std::strstr(name.c_str(), "Claw") != nullptr && slot == 2;
                if (!claw) {
                    second = static_cast<int>(slot);
                } else if (char* right = std::strstr(&name[0], "RWeapon")) {
                    *right = 'L';
                }
            }
        }
        m_visualObject->SetWeaponSkin(name.c_str(), static_cast<int>(slot), second);
    }
}

// 0x3a9d10 Character::INV_CheckItemsRequirements()
// Walks the equipment slots. An equipped item that no longer meets its requirements is unequipped, which sets the
// changed flag. A changed pass updates the gear properties, runs the check again (the original calls itself), refreshes
// the skin and returns ValidateHPMP's result. An unchanged pass returns the last requirement result.
int Character::INV_CheckItemsRequirements() {
    int result = ItemInventory::GetNumEquipmentSlots();
    const unsigned int slotCount = static_cast<unsigned int>(result);
    if (result == 0) {
        return result;
    }
    unsigned int slot = 0;
    bool unequipped = false;
    do {
        bool reachedEnd = false;
        for (;;) {
            ItemInstance* item = ItemInventory::GetEquippedItem(slot);
            result = INV_DoesMeetRequirements(item);
            if (!result) {
                break;
            }
            if (++slot == slotCount) {
                reachedEnd = true;
                break;
            }
        }
        if (reachedEnd) {
            break;
        }
        const unsigned int failedSlot = slot++;
        ItemInventory::UnEquipItemFromSlot(failedSlot, -1);
        unequipped = true;
    } while (slot != slotCount);
    if (unequipped) {
        CharProperties::UpdateGearsProperties();
        INV_CheckItemsRequirements();
        INV_UpdateSkin();
        return ValidateHPMP();
    }
    return result;
}

// 0x3a9db4 Character::ReloadSkills()
// The buffs are removed, the savegame skills are loaded, the AI and properties are recalculated, and the requirements are checked. The character menu is then told whether it
// is spec time (a player above level 11 of class 0x107, 0x145 or 0x122): the callback IsSpecTime on "_root.menu_CharacterMenu" of the movie at MultiMenuManager::m_menuFX[1].
void Character::ReloadSkills() {
    CharProperties::PROPS_RemoveAllBuffs();
    SG_Load(32);
    CharAI::AI_ReloadSkills();
    CharAI::UpdateAllSkills();
    CharProperties::RecalcProperties(true);
    INV_CheckItemsRequirements();
    bool specTime = false;
    if (SG_GetPlayerLevel() > 11) {
        const int playerClass = SG_GetPlayerClass();
        specTime = playerClass == 0x107 || playerClass == 0x145 || playerClass == 0x122;
    }
    const gameswf::as_value argument(specTime);
    MenuManager::GetInstance()->m_multiMenuManager->m_menuFX[1]->InvokeASCallback("_root.menu_CharacterMenu", "IsSpecTime", &argument, 1);
}

// 0x3a9eb0 Character::UnEquipItemFromSlot(unsigned int)
int Character::UnEquipItemFromSlot(unsigned int slot) {
    ItemInventory::UnEquipItemFromSlot(slot, -1);
    CharProperties::UpdateGearsProperties();
    INV_CheckItemsRequirements();
    INV_UpdateSkin();
    return ValidateHPMP();
}

// 0x3a9ee8 Character::EquipSlotAuto(unsigned int)
int Character::EquipSlotAuto(unsigned int slot) {
    const int result = ItemInventory::EquipSlotAuto(slot, this);
    CharProperties::UpdateGearsProperties();
    INV_CheckItemsRequirements();
    INV_UpdateSkin();
    ValidateHPMP();
    return result;
}

// 0x3a9f30 Character::EquipItemToSlot(unsigned int, unsigned int)
int Character::EquipItemToSlot(unsigned int item, unsigned int slot) {
    ItemInventory::EquipItemToSlot(item, slot);
    CharProperties::UpdateGearsProperties();
    INV_CheckItemsRequirements();
    INV_UpdateSkin();
    return ValidateHPMP();
}

// 0x3a9f6c Character::UnEquipItemAuto(unsigned int)
int Character::UnEquipItemAuto(unsigned int item) {
    ItemInventory::UnEquipItemAuto(item);
    CharProperties::UpdateGearsProperties();
    INV_CheckItemsRequirements();
    INV_UpdateSkin();
    return ValidateHPMP();
}

// 0x3a9fa8 Character::EquipItemAuto(unsigned int)
// Unlike the slot wrappers, this one does not run the requirement check.
int Character::EquipItemAuto(unsigned int item) {
    const int result = ItemInventory::EquipItemAuto(item);
    CharProperties::UpdateGearsProperties();
    INV_UpdateSkin();
    ValidateHPMP();
    return result;
}

// 0x3a9fe4 Character::DeclareProperties()
// In the original order: GameObject's properties, then the strings charpropsname, char_template and ai_state, the bool ai_state_visible (default true: the clone
// of AddProperty<bool> at 0x3a92b4 stores 1), the strings starting_waypoint, char_group and char_group_role, the bool auto_spawn (default true), and the two properties the
// original builds by hand: "spawn_delay" (a SimpleTypeProperty<Point2D<int>> on m_spawnDelay, default 0,0) and "spawn_view_radius" (a SimpleTypeProperty<float>, default 0).
// The original returns the PropertyMap slot of the last property, which the void override drops.
void Character::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty<std::string>("charpropsname", m_charPropsName);
    AddProperty<std::string>("char_template", m_charTemplate);
    AddProperty<std::string>("ai_state", m_aiState);
    AddProperty<bool>("ai_state_visible", m_aiStateVisible, true);
    AddProperty<std::string>("starting_waypoint", m_startingWaypoint);
    AddProperty<std::string>("char_group", m_charGroup);
    AddProperty<std::string>("char_group_role", m_charGroupRole);
    AddProperty<bool>("auto_spawn", m_autoSpawn, true);
    AddProperty<Point2D<int>>("spawn_delay", m_spawnDelay, Point2D<int>{0, 0});
    AddProperty<float>("spawn_view_radius", m_spawnViewRadius, 0.0f);
}

// 0x3ab674 Character::AddCharOIDToCache(int, unsigned int)
// An id outside the character table is ignored. An id already in s_cachedCharOIDs keeps the larger of its stored flags and the new flags and returns. A new id is inserted with the
// new flags, and its model (the model id at Structs::CharacterProperties +0x10 of the character's row, when inside Arrays::ModelDict) is preloaded: AssetManager::preloadSceneNode
// with the model name, no second name, flag 0 and the option 0x7FFFFFFF. The two std::string temporaries of the original have no effect.
void Character::AddCharOIDToCache(int oid, unsigned int flags) {
    if (oid < 0 || static_cast<std::uint32_t>(oid) >= Arrays::CharacterTable::size) {
        return;
    }
    auto found = s_cachedCharOIDs.find(oid);
    if (found != s_cachedCharOIDs.end()) {
        if (found->second < flags) {
            found->second = flags;
        }
        return;
    }
    s_cachedCharOIDs[oid] = flags;
    const auto* rows = reinterpret_cast<const Structs::CharacterProperties*>(Arrays::CharacterTable::members);
    const int modelId = rows[oid].ModelFile;
    if (modelId >= 0 && static_cast<std::uint32_t>(modelId) < Arrays::ModelDict::size) {
        const auto* models = reinterpret_cast<const Structs::ColladaFile*>(Arrays::ModelDict::members);
        AssetManager::GetAssetManager()->preloadSceneNode(models[modelId].Name, nullptr, false, 0x7FFFFFFF);
    }
}

// 0x3abb9c Character::UpdateObjectOfInterest()
// The changed flag is cleared. A current object of interest is kept only while it is still interactive for this character (virtual slot +0x8c, IsInteractiveEx) and not marked for
// deletion (ObjectBase +0x81). The refresh timer (16-bit, +0x14aa) is lowered by the frame time and, while it is still positive, nothing more happens. When it has run out the interaction type becomes
// -1, the timer is reset to 500, the priority flag cleared and the object dropped, and a target list (reference object this, filter mask 0x59, third argument 1, frontal sort) searches
// ObjectManager's room list around the character's target position with the radius CharacterDesign.OOI_Distance and a full circle (2 pi, the constant 0x40c90fdb).
// The hits are visited from the best one. This character itself is skipped; a hit is taken when no object has been taken yet, or it is a character (bit 0 of its flags),
// or its interaction type is 1. A taken hit sets the object, its interaction type (virtual slot +0x90) and the priority flag (bit 0 of the hit's flags). The scan stops at a priority hit, at type
// 0 or 2, and at a type 1 object whose +0x3bc member is this character (for the items that return type 1 this is ItemObject::m_receiver). The changed flag is set when a different
// object was found.
void Character::UpdateObjectOfInterest() {
    m_ooiChanged = 0;
    if (m_objectOfInterest != nullptr) {
        if (m_objectOfInterest->IsInteractiveEx(this)) {
            if (m_objectOfInterest->m_markedForDeletion != 0) {
                m_objectOfInterest = nullptr;
            }
        } else {
            m_objectOfInterest = nullptr;
        }
    }
    m_ooiRefreshTimer = static_cast<std::int16_t>(m_ooiRefreshTimer - ApplicationGetInstance().GetDt());
    if (m_ooiRefreshTimer > 0) {
        return;
    }
    m_ooiInteractionType = -1;
    m_ooiRefreshTimer = 500;
    m_ooiPriority = 0;
    GameObject* previous = m_objectOfInterest;
    m_objectOfInterest = nullptr;

    ObjectSearcher::TargetList found(this, 1, 0, 1);
    found.m_filterMask = 0x59;
    found.m_arg3 = 1;
    found.SetSortType(2);
    ObjectSearcher::RoomObjectList roomObjects;
    roomObjects.m_list = &dword_99F764->m_roomZones;
    roomObjects.m_node = dword_99F764->m_roomZones.begin();
    roomObjects.m_end = dword_99F764->m_roomZones.end();
    const float radius = static_cast<float>(ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "OOI_Distance"));
    found.Search(GameObject::GetTargetPosition(), radius, kCharAIFullCircle, roomObjects);
    while (!found.m_results.empty()) {
        const ObjectSearcher::TargetInfo top = found.m_results.top();
        GameObject* candidate = top.object;
        if (candidate != this) {
            if (m_objectOfInterest == nullptr || (top.isCharacter & 1) != 0 || candidate->GetInteractionType(this) == 1) {
                m_objectOfInterest = candidate;
                const int type = candidate->GetInteractionType(this);
                m_ooiInteractionType = static_cast<std::int8_t>(type);
                m_ooiPriority = static_cast<std::uint8_t>(top.isCharacter & 1);
                if (m_ooiPriority != 0 || type == 0 || type == 2) {
                    break;
                }
                if (type == 1 && this == static_cast<ItemObject*>(m_objectOfInterest)->m_receiver) {
                    break;
                }
            }
        }
        found.m_results.pop();
    }
    if (m_objectOfInterest != nullptr && previous != m_objectOfInterest) {
        m_ooiChanged = 1;
    }
}
