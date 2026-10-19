// Batch g1-game-world-Level-7c7f5d-1: 20 Level methods (player save and lock queries, restart, the object-list scans
// of final init and skinning reset, character AI states, player spawn, the XML object loader, the load-data stream,
// the checkpoint load and save, quick save and unload). Declarations come from dh2/Level.hpp.

#include <cstdio>
#include <cstdlib>

#include "dh2/Character.hpp"
#include "core-platform/memory.hpp"               // gAssertLevel, CustomFree
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraOverview.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/SpawnPoint.hpp"
#include "dh2/VisualObject.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/GameEventManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"       // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp"   // dword_99F764, the ObjectManager instance
#include "dh2/global/ctrl_camera.hpp"             // ApplicationGetInstance()
#include "dh2/global/net_singletons.hpp"           // GetOnlineGameFlag
#include "glitch-core-io/os/logging.hpp"          // glitch::os::Timer::getRealTime

namespace {

// Source file named in the original's assert messages (Level.cpp of the VS2005 project).
constexpr const char* kLevelSourceFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp";

// The original ASSERT: level 2 faults (it stores to address 0), level 1 prints to stderr (the third standard stream,
// &__sF + 2). std::abort() ends the process the way the level-2 fault does.
void LevelAssertFailed(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kLevelSourceFile, line);
    }
}

// The original reads PlayerManager::GetPlayer(friendlyId, true)->character_660 (PlayerInfo +0x660, declared as unk_660).
// The record is not null-checked in the original, so none is made here.
Character* PlayerCharacterByFriendlyId(int friendlyId) {
    return dword_99F76C->GetPlayer(friendlyId, true)->unk_660;  // PlayerInfo +0x660
}

// The first local player's Character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660); null without one.
Character* LocalPlayerCharacter() {
    return dword_99F76C->GetLocalPlayer(0, true)->unk_660;
}

// The first object of the object map that is an enabled SpawnPoint (GO_IDS 13) for the level's entry point (ObjectBase +0xf4, +0x8a and GameObject +0x374), or null.
SpawnPoint* FindEntrySpawnPoint(int entryPointId) {
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr) {
            continue;
        }
        ObjectHandle handle = object->GetHandle();
        ObjectBase* resolved = handle.GetObject(false);
        if (resolved != nullptr && resolved->m_goId == 13 && resolved->m_enabled &&
            entryPointId == static_cast<SpawnPoint*>(resolved)->m_entrypointId) {  // SpawnPoint +0x374 (W2, see Level::GetSpawnPoint)
            return static_cast<SpawnPoint*>(resolved);
        }
    }
    return nullptr;
}

}  // namespace

// 0x3ef728 Level::SG_DBG_TraceDetailedQuestInformation(int) const
// For every player character (PlayerManager::GetPlayer(i, true), PlayerInfo +0x660, i below the player count) with a Character, calls Character::SG_DBG_TraceDetailedQuestInformation(stdout, questState, -1).
void Level::SG_DBG_TraceDetailedQuestInformation(int questState) const {
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        Character* character = dword_99F76C->GetPlayer(i, true)->unk_660;
        if (character != nullptr) {
            character->SG_DBG_TraceDetailedQuestInformation(reinterpret_cast<__sFILE*>(stdout), questState, -1);
        }
    }
}

// 0x3ef7ac Level::SG_IsMapLocSeen(int) const
// False with no players. Otherwise the players are visited in order; while the result is still false, the next player character that exists gives it Character::SG_IsMapLocSeen(location, -1).
bool Level::SG_IsMapLocSeen(int location) const {
    bool seen = false;
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        Character* character = dword_99F76C->GetPlayer(i, true)->unk_660;
        if (character != nullptr && !seen) {
            seen = character->SG_IsMapLocSeen(location, -1);
        }
    }
    return seen;
}

// 0x3ef850 Level::SG_IsMapLocLocked(int) const
// True with no players. Otherwise true while every player character that exists reports the location locked (Character::SG_IsMapLocLocked(location, -1)); the first one that does not ends the checks.
bool Level::SG_IsMapLocLocked(int location) const {
    bool locked = true;
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        Character* character = dword_99F76C->GetPlayer(i, true)->unk_660;
        if (character != nullptr && locked && !character->SG_IsMapLocLocked(location, -1)) {
            locked = false;
        }
    }
    return locked;
}

// 0x3ef8f8 Level::SG_IsLevelLocked(int) const
// As SG_IsMapLocLocked, through Character::SG_IsLevelLocked(level, -1).
bool Level::SG_IsLevelLocked(int level) const {
    bool locked = true;
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        Character* character = dword_99F76C->GetPlayer(i, true)->unk_660;
        if (character != nullptr && locked && !character->SG_IsLevelLocked(level, -1)) {
            locked = false;
        }
    }
    return locked;
}

// 0x3ef9a0 Level::Restart()
// Application::LoadLevel with this level's own arguments: the name (the original reads the string's c_str at +0x10c),
// the entry point (+0x110), the savegame slot (+0x114), resume false, use spawn point true, and zero difficulty, remote
// flag, seed and synced seed.
void Level::Restart() {
    ApplicationGetInstance().LoadLevel(m_levelName.c_str(), m_entryPointId, m_savegameSlot, false, true, 0, false, 0, 0);
}

// 0x3efa54 Level::SG_SavePlayer(Character*,bool)
// Returns unless the character exists and IsPlayer. For a player the blocked flag is kept, lifted for a level change (SG_Block(false)), the savegame gets the player level (GetLevel), the save
// date and the level entry point (m_entryPointId, +0x110, with -1), is saved, and the kept block flag is put back.
void Level::SG_SavePlayer(Character* player, bool levelChange) {
    if (player == nullptr || !player->IsPlayer()) {
        return;
    }
    const bool blocked = player->SG_IsBlocked();
    if (levelChange) {
        player->SG_Block(false);
    }
    player->SG_SetPlayerLevel(player->GetLevel());
    player->SG_SetSaveDate();
    player->SG_SetLevelEntryPoint(m_entryPointId, -1);
    player->SG_Save();
    player->SG_Block(blocked);
}

// 0x3efaec Level::SG_SavePlayer(int,bool)
// Asserts 0 <= playerID < the player count (lines 2865 and 2866), and for an index in range saves that player's Character (PlayerManager::GetPlayer(id, true), PlayerInfo +0x660).
void Level::SG_SavePlayer(int playerIndex, bool levelChange) {
    if (playerIndex < 0) {
        LevelAssertFailed("playerID >= 0", 2865);
    }
    if (playerIndex >= dword_99F76C->m_numCharacters) {
        LevelAssertFailed("playerID < pMgr->GetNumPlayerCharacters()", 2866);
    }
    if (playerIndex >= 0 && playerIndex < dword_99F76C->m_numCharacters) {
        SG_SavePlayer(PlayerCharacterByFriendlyId(playerIndex), levelChange);
    }
}

// 0x3efc40 Level::SG_SaveAllPlayer(bool)
// Saves every player index in turn, re-reading the player count each time as the original does.
void Level::SG_SaveAllPlayer(bool levelChange) {
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        SG_SavePlayer(i, levelChange);
    }
}

// 0x3efca4 Level::_LoadFinalInit()
// Walks the object map in key order; every entry with an object resolves the object's handle to a GameObject and, when there is one, calls InitFinal (vtable +0x58).
void Level::_LoadFinalInit() {
    for (const auto& entry : dword_99F764->m_objectMap) {
        if (entry.second.m_object != nullptr) {
            ObjectHandle handle = entry.second.m_object->GetHandle();
            GameObject* object = handle;
            if (object != nullptr) {
                object->InitFinal();
            }
        }
    }
}

// 0x3efd74 Level::ResetSkinning()
// Walks the object map in key order; every GameObject with a visual object (GameObject +0x2d8) has its VisualObject reset (ResetSkinning) and given the shadow and x-ray materials again.
void Level::ResetSkinning() {
    for (const auto& entry : dword_99F764->m_objectMap) {
        if (entry.second.m_object != nullptr) {
            ObjectHandle handle = entry.second.m_object->GetHandle();
            GameObject* object = handle;
            if (object != nullptr && object->m_visualObject != nullptr) {
                object->m_visualObject->ResetSkinning();
                object->m_visualObject->ApplyShadowMaterial();
                object->m_visualObject->ApplyXrayMaterial();
            }
        }
    }
}

// 0x3eff98 Level::_LoadCharStates()
// Walks ObjectManager::m_characters (+0x60) in list order. A character whose pre-set AI state (Character::GetPreSetAIState) is 0 (Limbus) or 17 (PreSpawn) goes to the pre-spawn state
// (SM_SetPreSpawnState); any other state sends it to idle (SM_SetIdleState(false)).
void Level::_LoadCharStates() {
    for (Character* character : dword_99F764->m_characters) {
        if (character == nullptr) {
            continue;
        }
        const int state = character->GetPreSetAIState();
        if (state == 0 || state == 17) {
            character->CharStateMachine::SM_SetPreSpawnState();
        } else {
            character->CharStateMachine::SM_SetIdleState(false);
        }
    }
}

// 0x3f0018 Level::_LoadPlayer()
// For every local player (PlayerManager::GetLocalPlayer(i, true), below the player count) that has a Character: the first enabled SpawnPoint (GO_IDS 13) of the object map whose entry point id
// (GameObject +0x374) equals m_entryPointId is looked for. When one is found and PlayerManager::m_initialSetupDone (+0x6d0) is clear, it places the character (SpawnPoint::PlaceObject), the
// character's initial position becomes its position, and its savegame level entry point becomes m_entryPointId (with -1).
void Level::_LoadPlayer() {
    for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
        Character* character = dword_99F76C->GetLocalPlayer(i, true)->unk_660;
        if (character == nullptr) {
            continue;
        }
        SpawnPoint* spawn = FindEntrySpawnPoint(m_entryPointId);
        if (spawn != nullptr && !dword_99F76C->m_initialSetupDone) {
            spawn->PlaceObject(character);
            character->SetInitialPosition(character->m_position);
            character->SG_SetLevelEntryPoint(m_entryPointId, -1);
        }
    }
}

// 0x3f01c8 Level::_LoadFromXML(TiXmlElement*)
// A null element fails ASSERT(element) at line 2270 and the function goes on. An element whose "gametype" is not "Player" is created by ObjectManager::LoadFromXML(element, nullptr, m_moduleOffset
// (+0x160), m_objectModuleId (+0x18c)); a "Player" element is skipped. The original returns the strcmp result or the load's leftover int; the header's bool is that value as a truth
// value: false for a "Player" element (strcmp 0), true otherwise.
bool Level::_LoadFromXML(TiXmlElement* element) {
    if (!element) {
        LevelAssertFailed("element", 2270);
    }
    const char* gameType = element->Attribute("gametype");
    if (std::strcmp(gameType, "Player") != 0) {
        dword_99F764->LoadFromXML(element, nullptr, m_moduleOffset, m_objectModuleId);
        return true;
    }
    return false;
}

// Level::LoadFileData constructor. It is the body of 0x3f02ac below, which allocates it (operator new(80) in the
// original) and stores it in m_loadFileData. The vtable pointer is set by the compiler. The StreamBuffer is built from
// the IStreamBase, since the StreamBuffer copy constructor is deleted in net-transport.
Level::LoadFileData::LoadFileData(IStreamBase* source)
    : m_stream(source),
      m_document(nullptr),
      m_root(nullptr),
      m_currentModule(nullptr),
      m_currentElement(nullptr),
      unk_48(false) {}

// 0x3f02ac Level::AssignSteamToLoadDataFile(StreamBuffer&)
void Level::AssignSteamToLoadDataFile(StreamBuffer& stream) {
    m_loadFileData = new LoadFileData(&stream);  // +0x140
}

// 0x3f0310 Level::LoadFileData::~LoadFileData() (D1)
// The original sets the vtable and destroys the StreamBuffer at +0x08. The member destructor does the second step.
Level::LoadFileData::~LoadFileData() {
}

// The deleting destructor (D0) of LoadFileData is compiler-generated from ~LoadFileData above, so it has no body here.
// The original's tail after the D1 body is CustomFree(this); this build frees through the default operator delete.

// 0x3f0428 Level::LoadCheckpoint()
// With m_loadingCheckpoint (+0xf4) set: the level savegame loads its checkpoint file (slot +0x114, sub id +0x40, index +0x3c) and the game event manager re-initialises; then the first local
// player's Character, if any, loads its savegame checkpoint (SG_LoadCheckpoint(16)) and updates its savegame (SG_Update(true)). The flag is cleared at the end.
void Level::LoadCheckpoint() {
    m_loadingCheckpoint = true;  // +0xf4
    if (m_levelSavegame) {       // +0xec
        m_levelSavegame->LoadCheckPoint(static_cast<int>(m_savegameSlot), m_levelListSubId, m_levelListIndex);
        m_gameEventManager->ReInit();  // +0x194
    }
    Character* player = LocalPlayerCharacter();
    if (player != nullptr) {
        player->SG_LoadCheckpoint(16);
        player->SG_Update(true);
    }
    m_loadingCheckpoint = false;
}

// 0x3f04b4 Level::CheckpointSave(Point3D<float> const&,bool)
// For the first local player's Character, when the level has a savegame, the load step is 34 or more and the character is alive: m_savedPoint (+0x1468) takes the given position,
// m_revivePosition (+0x1474) takes the given position when usePosition is set and the character's own position (+0x160) otherwise, the character saves its checkpoint (SG_SaveCheckpoint) and the
// level savegame writes its checkpoint file (SaveCheckPoint with slot +0x114, sub id +0x40, index +0x3c).
void Level::CheckpointSave(const Point3D<float>& position, bool usePosition) {
    Character* player = LocalPlayerCharacter();
    if (m_levelSavegame != nullptr && m_loadStep > 33 && player != nullptr && !player->IsDead()) {
        player->m_savedPoint = position;
        player->m_revivePosition = usePosition ? position : player->m_position;
        player->SG_SaveCheckpoint();
        m_levelSavegame->SaveCheckPoint(static_cast<int>(m_savegameSlot), m_levelListSubId, m_levelListIndex);
    }
}

// 0x3f059c Level::QuickSave(bool)
// At load step 38, with a level savegame and a living first local player, and either offline or hosting with PlayerManager +0x719 (m_hostChanged) clear: m_savedPoint (+0x1468) takes the
// character's position (+0x160) and the level savegame is saved. For a level change the savegame's blocked flag (LevelSavegame +0x39) is cleared while Save runs and then restored.
void Level::QuickSave(bool levelChange) {
    Character* player = LocalPlayerCharacter();
    if (m_levelSavegame == nullptr || m_loadStep != 38 || player == nullptr || player->IsDead()) {
        return;
    }
    if (GetOnlineGameFlag() && !(dword_99F76C->IsLocalPlayerHosting() && !dword_99F76C->m_hostChanged)) {
        return;
    }
    player->m_savedPoint = player->m_position;
    const bool wasBlocked = m_levelSavegame->m_blocked;
    if (levelChange) {
        m_levelSavegame->m_blocked = false;
    }
    m_levelSavegame->Save();
    m_levelSavegame->m_blocked = wasBlocked;
}

// 0x3f0690 Level::Unload()
// QuickSave(m_levelChange); the menu_Loading menu is pushed; the main camera (+0x128) and the overview camera (+0x12c) are deleted through their virtual destructors and cleared;
// all players are saved (m_levelChange); every sound is stopped over 500 (VoxSoundManager::StopAllSounds); a visible loading menu is popped; the load step returns to 0, ObjectManager
// leaves the network level, PlayerManager +0x6c9 is cleared and PlayerManager::Update runs (its result is discarded), and the seeds restart (Random::s_seed from the real time, the synchronized
// seed 0).
void Level::Unload() {
    QuickSave(m_levelChange);  // +0xf0
    MenuManager* menus = MenuManager::GetInstance();
    MenuBase* loading = menus->GetMenuByName("menu_Loading");
    menus->PushMenu(loading);
    if (m_camera != nullptr) {
        delete m_camera;
        m_camera = nullptr;
    }
    if (m_cameraOverview != nullptr) {
        delete m_cameraOverview;
        m_cameraOverview = nullptr;
    }
    SG_SaveAllPlayer(m_levelChange);
    VoxSoundManager::s_instance->StopAllSounds(500);
    if (loading->IsVisible()) {
        menus->PopMenu(loading);
    }
    m_loadStep = 0;  // +0x130
    dword_99F764->NetworkUnInitLevel();
    dword_99F76C->unk_6c9 = 0;  // PlayerManager +0x6c9
    dword_99F76C->Update();
    Random::s_seed = glitch::os::Timer::getRealTime();
    Random::s_syncedSeed = 0;
}
