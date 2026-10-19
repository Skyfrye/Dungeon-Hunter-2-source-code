// Batch g1-game-world-Level-7c7f5d-0: 20 Level methods (loading entry points and load-step flags, the
// object module id, the config and referee queries, the savegame flag, and the scene-manager forwarders).
// Declarations come from dh2/Level.hpp.

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Character.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/Level.hpp"
#include "dh2/SpawnPoint.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764 (ObjectManager*)

// 0x3ef200 Level::_SpawnLoadingThread()
void Level::_SpawnLoadingThread() {
}

// 0x3ef204 Level::_CheckLoadProcess()
void Level::_CheckLoadProcess() {
}

// 0x3ef208 Level::_ThreadLoadingProcess()
void Level::_ThreadLoadingProcess() {
}

// 0x3ef20c Level::LoadScriptFile()
bool Level::LoadScriptFile() {
    return true;
}

// 0x3ef214 Level::_LoadResumeBatching()
void Level::_LoadResumeBatching() {
}

// 0x3ef218 Level::Load()
void Level::Load() {
    m_loadStep = 0;  // +0x130
}

// 0x3ef224 Level::ResetIsLoaded()
void Level::ResetIsLoaded() {
    m_isLoaded = false;  // +0x144
    m_loadStep = 0;      // +0x130
}

// 0x3ef234 Level::UpdateMaterial(bool, bool)
void Level::UpdateMaterial(bool, bool) {
}

// 0x3ef238 Level::SG_BlockLevel(bool)
// The original stores the flag at LevelSavegame +0x39 (LevelSavegame::m_blocked) when m_levelSavegame (+0xec) is set.
void Level::SG_BlockLevel(bool blocked) {
    if (m_levelSavegame) {
        m_levelSavegame->m_blocked = blocked;  // LevelSavegame +0x39
    }
}

// 0x3ef248 Level::Draw2D() const
void Level::Draw2D() const {
}

// 0x3ef24c Level::hasActiveDialog() const
// The original compares the start and finish words of queue 0 of MenuMessageManager<DialogMsg,1>::s_inst (0x99fb8c
// and 0x99fb9c, the deque's +0x04 and +0x14). Those words are the deques' current-element pointers, so the test is
// the deque's non-empty state.
bool Level::hasActiveDialog() const {
    return !MenuMessageManager<DialogMsg, 1>::s_inst.m_queues[0].empty();
}

// 0x3ef278 Level::SetObjectModuleId(int)
void Level::SetObjectModuleId(int id) {
    m_objectModuleId = id;  // +0x18c
}

// 0x3ef280 Level::UpdateLightSet(bool, int)
void Level::UpdateLightSet(bool, int) {
}

// 0x3ef3fc Level::CleanUpAllSkills()
// Walks ObjectManager m_characters (+0x60) in list order and calls Character::UnLoadScriptProcess(element, it, true) for each, where the iterator is the value &Character::s_concurrentAI,
// which is the map's end() sentinel. The call's result is unused.
void Level::CleanUpAllSkills() {
    for (Character* character : dword_99F764->m_characters) {
        character->UnLoadScriptProcess(Character::s_concurrentAI.end(), true);
    }
}

// 0x3ef460 Level::UnlockAllObjects()
// For each element of ObjectManager m_characters (+0x60) whose ObjectBase::m_lockCount (+0x29) is non-zero, the count is cleared.
void Level::UnlockAllObjects() {
    for (Character* character : dword_99F764->m_characters) {
        if (character->m_lockCount) {
            character->m_lockCount = 0;  // ObjectBase +0x29
        }
    }
}

// 0x3ef4a8 Level::GetLevelConfig() const
// The original assert at level 2 stores 0 to address 0, which faults. std::abort() ends the process the same way.
// The level-1 message goes to stderr (the original's &__sF + 2, the third standard stream).
LevelConfig* Level::GetLevelConfig() const {
    LevelConfig* result = m_levelConfig;  // +0x38
    if (!result) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_levelConfig != 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h", 476);
        }
    }
    return result;
}

// 0x3ef540 Level::GetMPReferee() const
// The cached m_mpReferee (+0x154) is returned when set. Otherwise the original scans ObjectManager m_characters (+0x60)
// for the first element whose name starts with "referee" (strncmp over 7 bytes), caches it and returns it. The name is
// ObjectBase::m_name (std::string at +0x30). The original reads its data pointer at element +0x44, which is the string's
// data word (+0x14 of the string), so the host m_name.c_str() is the same name.
GameObject* Level::GetMPReferee() const {
    if (!m_mpReferee) {  // +0x154
        for (Character* character : dword_99F764->m_characters) {
            if (character && std::strncmp(character->m_name.c_str(), "referee", 7) == 0) {
                m_mpReferee = character;
                return character;
            }
        }
    }
    return m_mpReferee;
}

// 0x3ef5cc Level::DisableFog(glitch::scene::ISceneNode*)
// Tail call of SceneManager::DisableFog on the device's scene manager (Application::m_device +0x10, then its +0x1c word).
void Level::DisableFog(glitch::scene::ISceneNode* node) {
    DeviceSceneManager()->DisableFog(node);
}

// 0x3ef5f0 Level::UpdateLightSet(int, std::vector<bool>&, glitch::scene::ISceneNode*)
// Tail call of SceneManager::UpdateLightSet(index, visited, node) on the device's scene manager.
void Level::UpdateLightSet(int index, std::vector<bool>& visited, glitch::scene::ISceneNode* node) {
    DeviceSceneManager()->UpdateLightSet(index, visited, node);
}

// 0x3ef614 Level::GetSpawnPoint()
// Walks ObjectManager's object map (m_objectMap) in key order and returns the first object that exists, is of GO_IDS 13 (a SpawnPoint), is enabled (ObjectBase +0x8a) and whose
// entry point id (GameObject +0x374) equals Level::m_entryPointId (+0x110). When none matches, the original does not return null: its
// result register (R0) keeps the value of the last iteration that touched it. A visited type-13 object sets it to that object (enabled or
// not, matching or not); an unresolvable object or another type clears it; an entry with a null m_object leaves it alone. The walk's
// last such object is therefore returned (0x3ef680 clears, 0x3ef6bc sets).
GameObject* Level::GetSpawnPoint() {
    ObjectBase* result = nullptr;
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr) {
            continue;
        }
        ObjectHandle handle = object->GetHandle();
        ObjectBase* resolved = handle.GetObject(false);
        if (resolved == nullptr || resolved->m_goId != 13) {
            result = nullptr;
            continue;
        }
        result = resolved;
        // W2: the id at +0x374 of a type-13 object is SpawnPoint::m_entrypointId (the "entrypointID" property); GameObject ends at +0x374 in the
        // original, and the separate GameObject::m_entryPointId field of the port is never written (garbage), so no spawn point ever matched.
        if (resolved->m_enabled && m_entryPointId == static_cast<SpawnPoint*>(resolved)->m_entrypointId) {
            return static_cast<GameObject*>(resolved);
        }
    }
    return static_cast<GameObject*>(result);
}
