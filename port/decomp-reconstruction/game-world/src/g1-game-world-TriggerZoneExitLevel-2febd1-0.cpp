// TriggerZoneExitLevel: a TriggerZone that offers a fast travel point to the level named by "levelName".
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. The layout is in dh2/TriggerZoneExitLevel.hpp.
// Offsets in the comments are the original 32-bit ones.
//

#include "dh2/TriggerZoneExitLevel.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "gameswf/gameswf_root.h"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance()

// 0x39c9a4 TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS)   (C1)
// 0x39ca40 TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS)   (C2, the same body)
TriggerZoneExitLevel::TriggerZoneExitLevel(ObjectBase::GO_IDS id)
    : TriggerZone(id),
      m_levelIndex(-1),             // +0x7d4, -1 until InitPost
      m_fastTravelUnlocked(false),  // +0x818
      m_fastTravelShown(false) {    // +0x819
    // The original also stores the three vtable pointers (C++ does this itself) and leaves m_levelName (+0x7dc) and
    // m_fastTravelId (+0x800) empty, which the std::string default constructor gives. It does not write m_levelID
    // (+0x7d8), m_entrypointID (+0x7f4), m_mapLoc (+0x7f8) or m_question (+0x7fc), so they have no initializer here.
}

// 0x39c68c TriggerZoneExitLevel::~TriggerZoneExitLevel()   (D1, complete object)
// 0x39c708 TriggerZoneExitLevel::~TriggerZoneExitLevel()   (D2, base object; the same body)
TriggerZoneExitLevel::~TriggerZoneExitLevel() {
    // The original stores the vtable pointers, releases m_fastTravelId (+0x800) and then m_levelName (+0x7dc), and
    // calls ~TriggerZone. Here the members are destroyed after this body in reverse declaration order, which frees
    // the two strings in the same order, and then the base destructor runs.
}

// 0x39c8c8 TriggerZoneExitLevel::InitPost()
// TriggerZone::InitPost, then a non-empty m_levelName (the original compares the string's start and end pointers) is searched in Arrays::LevelList and the index stored in m_levelIndex (+0x7d4).
void TriggerZoneExitLevel::InitPost() {
    TriggerZone::InitPost();
    if (!m_levelName.empty()) {
        m_levelIndex = pydata::FindMemberName(Arrays::LevelList::m_memberNames, static_cast<int>(Arrays::LevelList::size), m_levelName.c_str());
    }
}

// 0x39c8f8 TriggerZoneExitLevel::DeclareProperties()
void TriggerZoneExitLevel::DeclareProperties() {
    TriggerZone::DeclareProperties();
    // The int properties are the compiler clone PropertyMap::AddProperty<int>.clone.1 (0x39c83c). It is the
    // three-argument template with defaultValue -1 (it stores -1 at Property +0x20), so the call is written that way.
    AddProperty<int>("levelID", m_levelID, -1);
    AddProperty<std::string>("levelName", m_levelName);
    AddProperty<int>("entrypointID", m_entrypointID, -1);
    AddProperty<int>("maploc", m_mapLoc, -1);
    AddProperty<int>("question", m_question, -1);
    AddProperty<std::string>("fasttravel", m_fastTravelId);
}

// 0x39c33c TriggerZoneExitLevel::Update()
// The idle sound is updated when the object has one (m_idleSoundId, +0x370). The activating player count (unk_3c0) is refreshed unless the zone is remotely updated online. Nothing more happens while a
// current level exists but is not loaded. With a local player's Character: once the count is non-zero the fast travel point m_fastTravelId is unlocked for it (SG_SetFastTravelIdUnlocked(id, true, -1),
// once). When that character touches the zone, this device hosts and the condition holds: RequireOnlineUpdate runs and, with a level index and the panel not yet shown, the HUD root's
// DisplayFastTravel(true, localized level name, level name, entry point) callback is invoked. In every other case, a shown panel is hidden with DisplayFastTravel(false, ...).
// The localized name is StringManager::getString of Arrays::LevelList row +0x24 (Structs::LevelDeclaration m_w9) for the level m_levelName.
void TriggerZoneExitLevel::Update() {
    // GameObject +0x370 m_idleSoundId, -1 when the object has no idle sound.
    if (m_idleSoundId >= 0) {
        GameObject::UpdateIdleSound();
    }

    if (!GetOnlineGameFlag() || !IsRemotelyUpdated()) {
        unk_3c0 = Trigger::GetNumPlayerActivating();  // +0x3c0
    }

    // Level::m_isLoaded (+0x144). A null current level passes through, as in the original.
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && !level->m_isLoaded) {
        return;
    }

    auto displayFastTravel = [this](bool show) {
        const int row = pydata::FindMemberName(Arrays::LevelList::m_memberNames, static_cast<int>(Arrays::LevelList::size), m_levelName.c_str());
        const Structs::LevelDeclaration& declaration = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members)[row];
        const char* text = ApplicationGetStringManager()->getString(declaration.LevelName);
        gameswf::as_value arguments[4];
        arguments[0] = gameswf::as_value(show);
        arguments[1] = gameswf::as_value(text);
        arguments[2] = gameswf::as_value(m_levelName.c_str());
        arguments[3] = gameswf::as_value(static_cast<double>(m_entrypointID));
        MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
        hud->InvokeASCallback(hud->GetRoot()->get_root_movie(), "DisplayFastTravel", arguments, 4);
    };

    Character* local = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (local != nullptr) {
        if (unk_3c0 != 0 && !m_fastTravelUnlocked) {
            local->SG_SetFastTravelIdUnlocked(m_fastTravelId.c_str(), true, -1);
            m_fastTravelUnlocked = true;   // +0x818
        }
        if (IsTouching(local) && dword_99F76C->IsLocalPlayerHosting() && MeetCondition()) {
            RequireOnlineUpdate();
            if (m_levelIndex != -1 && !m_fastTravelShown) {
                displayFastTravel(true);
                m_fastTravelShown = true;  // +0x819
            }
            return;
        }
    }
    if (m_fastTravelShown) {
        displayFastTravel(false);
        m_fastTravelShown = false;
    }
}
