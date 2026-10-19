// Batch g1-game-world-TriggerZone-8e2902-0: every TriggerZone method of the batch (setUpdating, IsDoorClosedActivated,
// SafeStartScriptOnlyOnce, HideMarker, ShowMarker, Update, the destructors, the constructors, Draw, DeclareProperties,
// InitPost). Declarations come from dh2/TriggerZone.hpp.
//
// Layout facts used here (original 32-bit offsets, named in dh2/TriggerZone.hpp, dh2/Trigger.hpp and their bases):
//   TriggerZone +0x718 m_scope, +0x71c m_triggerType, +0x720 m_cineId, +0x724 m_script (+0x73c m_scriptId),
//               +0x740 m_scriptMoveOut (+0x758 m_scriptMoveOutId), +0x75c m_scriptAllPlayer (+0x774 m_scriptAllPlayerId),
//               +0x778 m_scriptAllPlayerMoveOut (+0x790 m_scriptAllPlayerMoveOutId), +0x794 m_effectOnePlayer
//               (+0x7ac m_effectOnePlayerIndex), +0x7b0 m_effectOnePlayerFX, +0x7b4 m_entered, +0x7b5 m_markerShown,
//               +0x7b8 m_doorObject, +0x7bc m_doorName
//   Trigger     +0x3a8 m_triggerCount, +0x3ac m_triggerDelay, +0x3b4 m_numActivations, +0x3b8 m_timer,
//               +0x3bc unk_3bc (TriggerZone's touch mode flag), +0x3c0 unk_3c0 (players activating, replicated)
//   ObjectBase  +0x64 unk_64 (script module handed to StartScript), +0x85 unk_85 (updating), +0xf4 m_goId
//   AnimatedFX  +0x28 unk_28 (owner)
//   Door        +0x3a8 m_state
//   Character   +0x1480 m_isDummy;  PlayerInfo +0x660 unk_660 (the local player's Character)
//   PlayerManager +0x6c4 m_numCharacters
//   ScriptManager::s_inst.m_cmds (the vector at ScriptManager +0x18) holds 12-byte ScriptCmds; its unk_04 byte is read in InitPost.
//
// Original ASSERT: "m_effectOnePlayerFX == 0" at TriggerZone.cpp line 298 (ShowMarker). Level 2 aborts, level 1 prints.

#include "dh2/TriggerZone.hpp"
#include <cstdint>
#include "glitch-video/video_driver.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-core-io/os/device.hpp"

#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Door.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"     // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp" // dword_99F764, the ObjectManager instance
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel at 0x99f914). Declared the same way as in CameraLevel.cpp and
// AnimatedFX.cpp: the core-platform header is not included here.
extern int gAssertLevel;

namespace {

// The source path the original's ASSERT messages print (TriggerZone.cpp in the Visual Studio project).
constexpr const char kTriggerZoneSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Triggers\\TriggerZone.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash), level 1 prints the
// message and the function goes on, level 0 does nothing.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kTriggerZoneSource, line);
    }
}

}  // namespace

// 0x39b26c TriggerZone::setUpdating(bool)
// Stores the flag in ObjectBase::unk_85 (the updating flag). When it is cleared, m_entered is cleared too.
void TriggerZone::setUpdating(bool updating) {
    unk_85 = static_cast<std::uint8_t>(updating);  // ObjectBase +0x85
    if (!updating) {
        m_entered = false;                          // +0x7b4
    }
}

// 0x39b27c TriggerZone::IsDoorClosedActivated() const
// False when no door is bound (m_doorObject, +0x7b8). With a door, true while its m_state (Door +0x3a8) is DOOR_OPENED
// (1) or DOOR_OPENING (3).
bool TriggerZone::IsDoorClosedActivated() const {
    if (m_doorObject == nullptr) {
        return false;
    }
    const Door::DoorStates state = static_cast<Door*>(m_doorObject)->m_state;  // Door +0x3a8
    return state == Door::DOOR_OPENED || state == Door::DOOR_OPENING;
}

// 0x39b2a0 TriggerZone::SafeStartScriptOnlyOnce(int) const
// Does nothing for script id -1. Otherwise starts the script unless ScriptManager reports it already running. The module
// passed to StartScript is ObjectBase +0x64 (unk_64). The original's return value is leftover register state; no caller
// reads it, so the declaration is void.
void TriggerZone::SafeStartScriptOnlyOnce(int scriptId) const {
    if (scriptId == -1) {
        return;
    }
    if (!ScriptManager::s_inst.IsScriptRunning(scriptId)) {
        ScriptManager::s_inst.StartScript(scriptId, unk_64, false);  // *(this + 0x64), fromRemote 0
    }
}

// 0x39b2f4 TriggerZone::HideMarker()
// When the marker effect exists: clears its owner (AnimatedFX +0x28), syncs it with the push flag, hides it, releases it
// to VisualFXManager and clears m_effectOnePlayerFX.
void TriggerZone::HideMarker() {
    if (m_effectOnePlayerFX != nullptr) {                                // +0x7b0
        m_effectOnePlayerFX->unk_28 = nullptr;                           // AnimatedFX +0x28
        m_effectOnePlayerFX->SyncIrrData(true);
        m_effectOnePlayerFX->SetVisible(false);
        VisualFXManager::s_inst.DropAnimatedFX(m_effectOnePlayerFX);     // clears the pointer through the reference
        m_effectOnePlayerFX = nullptr;
    }
}

// 0x39b354 TriggerZone::ShowMarker()
// For a valid effect index (+0x7ac, not -1), grabs an instance of that effect into m_effectOnePlayerFX (the original
// asserts that the slot was empty first), makes this zone its owner, syncs and shows it, and turns its timeline loop on.
// The index is passed to GrabAnimFX as the effect id, as the original does.
void TriggerZone::ShowMarker() {
    int effectIndex = m_effectOnePlayerIndex;  // +0x7ac
    if (effectIndex == -1) {
        return;
    }
    if (m_effectOnePlayerFX != nullptr) {
        ReportAssert("m_effectOnePlayerFX == 0", 298);
    }
    m_effectOnePlayerFX = VisualFXManager::s_inst.GrabAnimFX(effectIndex, nullptr);
    if (m_effectOnePlayerFX != nullptr) {
        m_effectOnePlayerFX->unk_28 = this;                              // AnimatedFX +0x28, the owner
        m_effectOnePlayerFX->SyncIrrData(true);
        m_effectOnePlayerFX->SetVisible(true);
        glitch::collada::ISceneNodeAnimator* animator = m_effectOnePlayerFX->GetAnimator();
        animator->getTimelineCtrl()->setLoop(true);                      // vtable +0x44 then +0x40
    }
}

// 0x39b458 TriggerZone::Update()
// Nothing happens while the local player's Character is a dummy, the door named by is_door_closed is closed and activated, the zone cannot activate, its condition fails, or (online) it is remotely updated.
// Then Trigger::Update runs. The activating player count is the replicated one (unk_3c0) for a remotely updated zone online, otherwise GetNumPlayerActivating(), stored in unk_3c0. The player count is
// the number of owned characters (PlayerManager +0x6c4).
//   enter  = all-player enter id is -1 ? (activating > 0) : (activating == characters)
//   leave  = activating == 0
// In touch mode (unk_3bc) the local Character decides as well: an enter needs a local character that touches the zone (without one nothing happens; if it does not touch, there is no enter and a leave),
// and when no enter is due a leave holds exactly when the local character exists and does not touch the zone. The enter and move-out scripts follow, then the marker.
void TriggerZone::Update() {
    Character* local = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (local != nullptr && local->m_isDummy) {
        return;
    }
    if (IsDoorClosedActivated()) {
        return;
    }
    if (!CanActivate()) {
        return;
    }
    if (!MeetCondition()) {
        return;
    }
    if (GetOnlineGameFlag() && IsRemotelyUpdated()) {
        return;
    }
    Trigger::Update();
    const int numCharacters = dword_99F76C->m_numCharacters;  // PlayerManager +0x6c4

    int numActivating;
    if (GetOnlineGameFlag() && IsRemotelyUpdated()) {
        numActivating = unk_3c0;
    } else {
        numActivating = GetNumPlayerActivating();
        unk_3c0 = numActivating;
    }

    // The enter and move-out scripts. The all-player variants replace the one-player ones when they are set.
    const int enterScriptId = (m_scriptAllPlayerId == -1) ? m_scriptId : m_scriptAllPlayerId;
    const int leaveScriptId = (m_scriptAllPlayerMoveOutId == -1) ? m_scriptMoveOutId : m_scriptAllPlayerMoveOutId;

    const bool enter = (m_scriptAllPlayerId == -1) ? (numActivating > 0) : (numActivating == numCharacters);
    bool leave = (numActivating == 0);
    bool allowEnter = enter;

    if (unk_3bc) {  // +0x3bc, touch mode
        if (enter) {
            if (local == nullptr) {
                allowEnter = false;
                leave = false;
            } else if (!IsTouching(local)) {
                allowEnter = false;
                leave = true;
            }
        } else {
            leave = (local != nullptr && !IsTouching(local));
        }
    }

    if (allowEnter && !m_entered) {                                      // +0x7b4
        m_entered = true;
        SafeStartScriptOnlyOnce(enterScriptId);
        m_timer = m_triggerDelay;                                        // +0x3ac -> +0x3b8
        HideMarker();
        if (leaveScriptId == -1) {
            Activate();
        }
    }
    if (m_entered && leave) {
        m_entered = false;
        if (leaveScriptId != -1) {
            SafeStartScriptOnlyOnce(leaveScriptId);
            Activate();
        }
    }

    // The marker: shown while one player stands inside, for a zone that has a one-player script and an all-player script.
    if (numCharacters > 1 && !unk_3bc && m_scriptAllPlayerId != -1) {
        if (m_scriptId != -1) {
            const bool anyActivating = numActivating > 0;
            if (m_markerShown) {                                         // +0x7b5
                if (!anyActivating) {
                    m_markerShown = false;
                    SafeStartScriptOnlyOnce(m_scriptMoveOutId);
                    HideMarker();
                }
            } else if (anyActivating) {
                SafeStartScriptOnlyOnce(m_scriptId);
                m_markerShown = true;
                ShowMarker();
            }
        }
    }
}

// 0x39b754 TriggerZone::~TriggerZone()   (complete object destructor, D1)
// 0x39b804 TriggerZone::~TriggerZone()   (base object destructor, D2, the same body)
// The original hides the marker, then frees the six std::string members (the compiler destroys them in reverse order,
// as the original does) and runs Trigger::~Trigger.
TriggerZone::~TriggerZone() {
    HideMarker();
}

// 0x39b7e8 TriggerZone::~TriggerZone()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (the complete destructor, then CustomFree(this)).

// 0x39b890 TriggerZone::TriggerZone(ObjectBase::GO_IDS)   (C1)
// 0x39b990 TriggerZone::TriggerZone(ObjectBase::GO_IDS)   (C2, the same body)
// Trigger(id, hasPhysics = false, playerOnly = true). The six string members are constructed empty by the compiler. The
// original writes -1 to the five script and effect ids, clears the marker effect and the flags, and leaves the door unbound.
// scope, triggertype and cineID are not written here; their values come from the property defaults (-1) at declaration.
TriggerZone::TriggerZone(ObjectBase::GO_IDS id) : Trigger(id, false, true) {
    m_scriptId = -1;                  // +0x73c
    m_scriptMoveOutId = -1;           // +0x758
    m_scriptAllPlayerId = -1;         // +0x774
    m_scriptAllPlayerMoveOutId = -1;  // +0x790
    m_effectOnePlayerIndex = -1;      // +0x7ac
    m_effectOnePlayerFX = nullptr;    // +0x7b0
    m_entered = false;                // +0x7b4
    m_markerShown = false;            // +0x7b5
    m_doorObject = nullptr;           // +0x7b8
}

// 0x39bd70 _ZNK11TriggerZone4DrawEv
// With the isDisplayingBoundingBox switch on, no activation yet (m_numActivations, +0x3b4) and the condition met, the plain material
// (built-in renderer type 1) of the device's driver is set with its first technique and the driver draws (vtable +0x28, draw3DBox)
// the absolute AABB (+0x12c) in the colour 0xFFFFFF00.
void TriggerZone::Draw() const {
    DebugSwitches::s_inst.load();
    const bool displayBox = DebugSwitches::s_inst.GetSwitch(std::string("isDisplayingBoundingBox"));
    if (displayBox && m_numActivations == 0 && MeetCondition()) {
        glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;   // device +0x10
        glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;  // driver +0xdc
        const std::uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
        boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
        const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
        driver->setMaterial(material, technique, nullptr);
        glitch::core::aabbox3d<float> box;
        box.MinEdge.X = m_absAabb[0];
        box.MinEdge.Y = m_absAabb[1];
        box.MinEdge.Z = m_absAabb[2];
        box.MaxEdge.X = m_absAabb[3];
        box.MaxEdge.Y = m_absAabb[4];
        box.MaxEdge.Z = m_absAabb[5];
        glitch::video::SColor color;
        color.color = 0xFFFFFF00u;
        driver->draw3DBox(box, color);
    }
}

// 0x39bfa4 TriggerZone::DeclareProperties()
// Trigger's properties first, then the int properties "scope", "triggertype" and "cineID" (default -1 in the original's
// int clone, PropertyMap::AddProperty<int>.clone.2, which stores -1 at SimpleTypeProperty +0x20), then the strings "script",
// "script_move_out", "script_all_player", "script_all_player_move_out", "effect_one_player" and "is_door_closed".
void TriggerZone::DeclareProperties() {
    Trigger::DeclareProperties();
    AddProperty<int>("scope", m_scope, -1);
    AddProperty<int>("triggertype", m_triggerType, -1);
    AddProperty<int>("cineID", m_cineId, -1);
    AddProperty<std::string>("script", m_script);
    AddProperty<std::string>("script_move_out", m_scriptMoveOut);
    AddProperty<std::string>("script_all_player", m_scriptAllPlayer);
    AddProperty<std::string>("script_all_player_move_out", m_scriptAllPlayerMoveOut);
    AddProperty<std::string>("effect_one_player", m_effectOnePlayer);
    AddProperty<std::string>("is_door_closed", m_doorName);
}

// 0x39c0a8 TriggerZone::InitPost()
// Trigger::InitPost, then each name is resolved once to its id: the script names through ScriptManager (-1 when the name is empty or unknown), the effect_one_player name through
// Arrays::AnimatedEffectTable (-1 when empty or not listed), and the door name through ObjectManager. m_timer takes the delay. unk_3bc (touch mode) is set when the zone has no all-player scripts and
// its ScriptManager command block has the unk_04 flag.
void TriggerZone::InitPost() {
    Trigger::InitPost();

    m_scriptId = -1;  // +0x73c
    if (!m_script.empty()) {
        m_scriptId = ScriptManager::s_inst.GetIDFromName(m_script.c_str(), false);
    }

    m_scriptMoveOutId = -1;  // +0x758
    if (!m_scriptMoveOut.empty()) {
        m_scriptMoveOutId = ScriptManager::s_inst.GetIDFromName(m_scriptMoveOut.c_str(), false);
    }

    m_scriptAllPlayerId = -1;  // +0x774
    if (!m_scriptAllPlayer.empty()) {
        m_scriptAllPlayerId = ScriptManager::s_inst.GetIDFromName(m_scriptAllPlayer.c_str(), false);
    }

    m_scriptAllPlayerMoveOutId = -1;  // +0x790
    if (!m_scriptAllPlayerMoveOut.empty()) {
        m_scriptAllPlayerMoveOutId = ScriptManager::s_inst.GetIDFromName(m_scriptAllPlayerMoveOut.c_str(), false);
    }

    m_effectOnePlayerIndex = -1;  // +0x7ac
    if (!m_effectOnePlayer.empty()) {
        m_effectOnePlayerIndex = pydata::FindMemberName(Arrays::AnimatedEffectTable::m_memberNames, static_cast<int>(Arrays::AnimatedEffectTable::size),
                                                         m_effectOnePlayer.c_str());
    }

    m_timer = m_triggerDelay;  // +0x3ac -> +0x3b8

    if (!m_doorName.empty()) {
        ObjectHandle handle = dword_99F764->GetObjectByName(m_doorName.c_str(), -1, false, nullptr);
        ObjectBase* door = handle.GetObject(false);
        if (door != nullptr) {
            // The original calls GetObject a second time here; the lookup is cached and returns the same object.
            if (door->m_goId != ObjectBase::GO_DOOR) {  // +0xf4 == 2
                door = nullptr;
            }
            m_doorObject = static_cast<GameObject*>(door);  // +0x7b8
        }
    }

    // unk_3bc (+0x3bc, read as the byte at +956 in the original): touch mode.
    unk_3bc = false;
    if (m_scriptAllPlayerId == -1 && m_scriptAllPlayerMoveOutId == -1 && m_scriptId >= 0) {
        unk_3bc = ScriptManager::s_inst.m_cmds[m_scriptId].unk_04;  // ScriptCmds +0x04 of script m_scriptId
    }
}
