// Batch g1-game-world-Level-7c7f5d-3: 11 Level entries (part 4 of 4): the load-step helpers _LoadLightSet, _FlushMeshes,
// _LoadBatchMap and _LoadProcess, the per-frame Update, the destructor (D1 and D2 share one body, D0 is skipped), the co-op
// camera functions CanMoveTowards and UpdateCameraZoom, and GetRimLightFile. Declarations come from dh2/Level.hpp.
// A PARTIAL body names what it waits on. A "SEAM" comment marks one step of the original that is left out, with its owner.
//
// The COnline online flag (COnline::isOnlineGame_ at +0x05) is protected and has no accessor, so every test on it is a SEAM.
// The earlier note that PFWorld and HUDControls cannot share this translation unit with core-platform/memory.hpp was wrong:
// both headers are included below next to it and the file compiles, so the destructor and Update use them.

#include <algorithm>
#include <cmath>
#include <cstdio>
#ifdef DH2_HOST_RUNNER
namespace dh2host { void recordMissing(const char* kind, const char* name, void* caller); }
#endif
#include <cstdlib>
#include <set>
#include <string>

#include "core-platform/device.hpp"               // Device::IsFixedPipeline (static)
#include "core-platform/memory.hpp"              // gAssertLevel
#include "dh2/global/runtime_support.hpp"        // PushProfilingContext, PopProfilingContext (before Character.hpp: see below)
#include "dh2/Application.hpp"
// Character.hpp renames MemoryHintState (net-transport stand-in), so it follows runtime_support.hpp and comes before the rest.
#include "dh2/Character.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/CameraOverview.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameEventManager.hpp"
#include "dh2/InfoHUDManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/structs_records.hpp"
#include <cstring>
#include "vendor-gameswf/smart_ptr_proxy.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-session-online/a_license_check.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/PlayerLightTweaker.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/CRoomAttributes.hpp"
#include "dh2/CameraTarget.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuDebugHUD.hpp"
#include "dh2/MenuWorldMap.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ProjectileManager.hpp"
#include "dh2/ItemManager.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/debug_trace.hpp"
#include "dh2/global/Globals.hpp"
#include "core-platform/debug_out.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuDebug.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/RootSceneNode.hpp"                 // RootSceneNode complete: the VisualObject::m_node upcast of _LoadBatchMap
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/SpawnGroupManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/batch/BatchNodeCompiler.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"      // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/ctrl_camera.hpp"            // ApplicationGetInstance()
#include "dh2/global/runtime_support.hpp"        // PushProfilingContext, PopProfilingContext (included above)
#include "dh2/global/net_singletons.hpp"         // GetOnlineGameFlag (COnline +0x05)
#include "pydata-accessors/arrays.hpp"           // Arrays::DesignSettingsTable
#include "pydata-accessors/structs_records.hpp"  // Structs::DesignSettings

namespace {

// Source file named in the original's assert messages for the m_levelConfig check (Level.h, line 476).
constexpr const char* kLevelHeaderFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Level/Level.h";

// The original ASSERT: level 2 faults (it stores to address 0), level 1 prints to stderr. std::abort() ends the process
// the way the level-2 fault does.
void LevelAssertFailed(const char* expression, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, file, line);
    }
}

// The m_levelConfig != 0 check that the original inlines in front of each read of the config. The original goes on to
// dereference null, which faults; here the process ends after the assert.
LevelConfig* RequireLevelConfig(const Level* level) {
    if (!level->m_levelConfig) {
        LevelAssertFailed("m_levelConfig != 0", kLevelHeaderFile, 476);
        std::abort();
    }
    return level->m_levelConfig;
}

// DebugSwitches::load() on the singleton, then GetSwitch(name). The original addresses DebugSwitches::s_inst directly,
// which is private in dh2/DebugSwitches.hpp; GetInstance() is the same singleton.
bool ReadDebugSwitch(const char* name) {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    return switches->GetSwitch(name);
}

// The discarded "isTracingLevel_Loading" read that most _LoadProcess arms make before their work. GetInstance() then
// GetSwitch(), with no load() and no use of the result, as in the original.
void TraceLoadingStep() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingLevel_Loading");
}

}  // namespace

// 0x3f459c Level::_LoadLightSet()
// Loads the light-set file named by the level config, retrying until LoadFile reports a result. The fixed-pipeline build
// reads m_fixedLightSet, the programmable build reads m_lightSet. The original's "data != finish" test on each string is
// !empty(). The string offsets it reads are the header's members (+0x2b8 and +0x2d0) at STLport's +0x10 and +0x14.
void Level::_LoadLightSet() {
    if (Device::IsFixedPipeline()) {
        LevelConfig* config = RequireLevelConfig(this);
        if (!config->m_fixedLightSet.empty()) {
            int loaded = 0;
            do {
                config = RequireLevelConfig(this);
                const std::string file(config->m_fixedLightSet.c_str());
                loaded = LoadFile(file, "Module");
            } while (!loaded);
        }
    } else {
        LevelConfig* config = RequireLevelConfig(this);
        if (!config->m_lightSet.empty()) {
            int loaded = 0;
            do {
                config = RequireLevelConfig(this);
                const std::string file(config->m_lightSet.c_str());
                loaded = LoadFile(file, "Module");
            } while (!loaded);
        }
    }
}

// 0x3f55a4 Level::_FlushMeshes()
// For each entry of ObjectManager::m_objectMap (in key order) whose object (ObjectListItem +0x18, node +0x2c) is set,
// the handle is resolved to a GameObject, and when that GameObject's m_visualObject (+0x2d8) is set,
// VisualObject::FlushMeshes is called on it and the returned model name is inserted into a set. Then, in set order,
// CResFileManager::Inst->get(name, false) and releaseRemovableBuffer(1) run on each non-null result. The set is
// destroyed at the end. The disassembly walks the two trees in order; that is std::map and std::set iteration here.
void Level::_FlushMeshes() {
    std::set<std::string> names;
    for (const auto& entry : dword_99F764->m_objectMap) {
        if (entry.second.m_object == nullptr) {
            continue;
        }
        ObjectHandle handle(entry.second.m_object);
        GameObject* object = handle;
        if (object != nullptr && object->m_visualObject != nullptr) {
            names.insert(object->m_visualObject->FlushMeshes());
        }
    }
    for (const std::string& name : names) {
        glitch::collada::CResFile* file = glitch::collada::CResFileManager::Inst->get(name.c_str(), false);
        if (file != nullptr) {
            file->releaseRemovableBuffer(1);
        }
    }
}

// 0x3f5ea0 Level::_LoadBatchMap()
// The IsDisablingCompiledBatching gate, then the object walk: BatchNodeCompiler::m_gameObjects (+0x10 .. +0x14) is walked
// in order and each GameObject whose m_visualObject (+0x2d8) has a scene node at VisualObject +0x08 is mapped with
// BatchNodeCompiler::_MapMeshNode (0x3f5dcc). The original tests neither the object nor the compiler list for null beyond
// what is written here (the compiler test is the only one). RootSceneNode is an ISceneNode through
// glitch::collada::CRootSceneNode, glitch::scene::CSceneNode and CEmptySceneNode, so m_node upcasts to the ISceneNode*
// _MapMeshNode takes.
void Level::_LoadBatchMap() {
    if (ReadDebugSwitch("IsDisablingCompiledBatching")) {
        return;
    }
    batch::BatchNodeCompiler* compiler = m_batchNodeCompiler;  // +0x158
    if (compiler == nullptr) {
        return;
    }
    for (GameObject* object : compiler->m_gameObjects) {
        VisualObject* visual = object->m_visualObject;  // GameObject +0x2d8
        if (visual == nullptr) {
            continue;
        }
        glitch::scene::ISceneNode* node = visual->m_node;  // VisualObject +0x08
        if (node != nullptr) {
            compiler->_MapMeshNode(object, node);
        }
    }
}

// 0x3f6990 Level::_LoadProcess()
// One loading step per call. m_loadStep (+0x130) selects the arm, and 38 means loaded. The cheat block unlocks every fast
// travel and the world-map unlock flag, the step name is shown in the debug HUD when asked for, and each arm follows the
// switch of the original, with the case labels in their original order. Most arms first read the "isTracingLevel_Loading"
// switch and discard it. Arm 36 has no step increment on the offline path in the original (the branch over the online block
// goes straight to the common tail, and the assembly agrees). Step 36 is the progress-100 state, so something outside this
// function advances it. This is reproduced as written.
void Level::_LoadProcess() {
    if (handle_cheats_inGame) {
        if (ApplicationGetInstance().GetCurrentLevel() != nullptr) {
            Character* cheater = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            if (cheater != nullptr) {
                cheater->SG_UnlockAllFastTravels();
                MenuWorldMap::GetInstance()->unk_12c = true;  // +300
            }
        }
    }
    if (ReadDebugSwitch("IsDisplayLoadingStepName")) {
        MenuDebug::GetInstance()->SetText(DBG_GetLoadingStepName(m_loadStep));
    }
    _DEBUG_OUT("**************************************m_loadStep %d", m_loadStep);

    switch (m_loadStep) {
        case 0:
            g_bigI = 0;
            g_bigV = 0;
            ApplicationGetInstance().CleanGlitch();
            ShowMemoryStats("Before Level Loading");
            VoxSoundManager::s_instance->StopAllSounds(500);
            ApplicationGetInstance().unk_b4 = true;  // Application +0xb4 (STRB [s_inst, #0xb4]; Hex-Rays byte_99F7E0)
            m_loadWorkDone = 0;
            m_loadWorkTotal = 0;
            m_loadFileCount = 0;
            m_isLoaded = false;
            ++m_loadStep;
            break;

        case 2:
            TraceLoadingStep();
            MenuManager::GetInstance()->UnloadMenu(2);
            MenuManager::GetInstance()->UnloadMenu(1);
            MenuManager::GetInstance()->UnloadMenu(3);
            ++m_loadStep;
            break;

        case 3:
            TraceLoadingStep();
            ++m_loadStep;
            break;

        case 4:
            TraceLoadingStep();
            VisualFXManager::s_inst.BuildLibraries();
            ++m_loadStep;
            break;

        case 5:
            TraceLoadingStep();
            ApplicationGetInstance().m_physicalWorld->load(-2000.0f, -2000.0f, 2000.0f, 2000.0f);
            ++m_loadStep;
            break;

        case 6:
            TraceLoadingStep();
            dword_99F76C->unk_6c9 = 1;
            dword_99F76C->Update();
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
            _DEBUG_OUT("LoadStep6 after PlayerManager::Update: numPlayers %d numLocal %d netGate %d", dword_99F76C->GetNumPlayers(), dword_99F76C->GetNumLocalPlayers(true), (int)NetGateOpen());
#endif
            m_gameEventManager = new GameEventManager();
            m_gameEventManager->Load();
            ++m_loadStep;
            break;

        case 7: {
            Random::s_seed = m_seed;
            Random::s_syncedSeed = m_syncedSeed;
            if (m_isRandomLevel) {
                const uint32_t randomSeed = GetOnlineGameFlag() ? Random::s_syncedSeed : Random::s_seed;
                StreamBuffer stream;
                const int generated = GenerateRandomLevel(stream, randomSeed);
#ifdef DH2_HOST_RUNNER
                { char buf[200]; std::snprintf(buf, sizeof buf, "Level step 7: %s generated=%d seed=%u", m_levelName.c_str(), generated, randomSeed); dh2host::recordMissing("rnd", buf, nullptr); }
#endif
                if (generated) {
                    AssignSteamToLoadDataFile(stream);
                } else {
                    // The generator failed: the first character of the name is overwritten with 'x' and the name is cut at its
                    // first '.' and given the backup suffix.
                    if (!m_levelName.empty()) {
                        m_levelName[0] = 'x';
                        const std::string::size_type dot = m_levelName.find('.');
                        if (dot != std::string::npos) {
                            m_levelName = m_levelName.substr(0, dot);
                            m_levelName.append("_BACKUP.mlx");
                        }
                    }
                }
            }
            TraceLoadingStep();
            m_loadWorkTotal = 500;
            int loaded = 0;
            do {
                loaded = LoadFile(m_levelName, "Level");
            } while (!loaded);
            ++m_loadStep;
            ++m_loadFileCount;
            break;
        }

        case 8: {
            TraceLoadingStep();
            if (m_levelConfig == nullptr) {
                Application& application = ApplicationGetInstance();
                bool spawnDefault = true;
                if (!application.m_uncompiledData.empty()) {  // +0xbc, the words at +0xcc and +0xd0 are its finish and start
                    std::string path(application.unk_d4.c_str());  // +0xd4: dword_99F814 is the start pointer of this string
                    path.append("LevelConfig.xml");
                    int loaded = 0;
                    do {
                        loaded = LoadFile(path, "Level");
                    } while (!loaded);
                    spawnDefault = (m_levelConfig == nullptr);
                }
                if (spawnDefault) {
                    ObjectHandle handle = dword_99F764->Spawn("LevelConfig", "RuntimeDefaultLevelConfig", false, true);
                    // 0x3f816c: the original casts the ObjectBase* straight to LevelConfig*. LevelConfig and
                    // GameObject are siblings under ObjectBase, so that is a cross-cast here; the +0xf4 m_goId == 4
                    // test (0x3f8180, *((_DWORD*)Object + 61) != 4) is what makes it safe.
                    ObjectBase* object = handle.GetObject(false);
                    LevelConfig* created = dynamic_cast<LevelConfig*>(object);
                    if (object == nullptr || object->m_goId != static_cast<ObjectBase::GO_IDS>(4)) {
                        created = nullptr;
                    }
                    SetLevelConfig(created);
                }
            }
            LevelConfig* config = m_levelConfig;
            if (!config->m_dfogColors.empty()) {
                dword_99F764->InitModulesFogColor(config->m_dfogColors, static_cast<int>(config->m_dfogChangeMinDist));
            }
            _LoadScripts();
            ++m_loadStep;
            break;
        }

        case 9:
            TraceLoadingStep();
            _LoadLightSet();
            ++m_loadStep;
            break;

        case 10:
            TraceLoadingStep();
            m_loadWorkTotal = static_cast<int>(dword_99F764->m_objectMap.size());
            while (!dword_99F764->InitPost()) {
            }
            ++m_loadStep;
            break;

        case 11:
            TraceLoadingStep();
            Singleton<PFWorld>::s_inst.PostLoad();
            ++m_loadStep;
            break;

        case 12:
            MenuManager::GetInstance()->LoadMenu(1);
            ++m_loadStep;
            break;

        case 13:
            TraceLoadingStep();
            ScriptManager::s_inst.InitCommands();
            ++m_loadStep;
            break;

        case 14:
            TraceLoadingStep();
            _LoadPlayer();
            if (GetOnlineGameFlag()) {
                PlayerInfo* local = dword_99F76C->GetLocalPlayer(0, false);
                if (!local->IsActive()) {  // vtable +0x5c
                    CMatching::Get()->LeaveRoom();  // vtable +0x3c
                    GetConnectionMgr()->DisconnectAll();
                    ApplicationGetInstance().GoToMainMenu(static_cast<GoToMainMenuEvent>(3));
                }
            }
            ++m_loadStep;
            break;

        case 15:
            TraceLoadingStep();
            VoxSoundManager::s_instance->SetLevelRouting(m_levelListIndex);
            ++m_loadStep;
            break;

        case 16:
            TraceLoadingStep();
            ++m_loadStep;
            break;

        case 17:
            TraceLoadingStep();
            _LoadFinalInit();
            ++m_loadStep;
            break;

        case 18:
            TraceLoadingStep();
            _LoadCharStates();
            ++m_loadStep;
            break;

        case 19:
            TraceLoadingStep();
            ++m_loadStep;
            break;

        case 20:
            TraceLoadingStep();
            _LoadCamera();
            ++m_loadStep;
            break;

        case 21:
            TraceLoadingStep();
            _LoadBatchInit();
            ++m_loadStep;
            break;

        case 22:
            TraceLoadingStep();
            _LoadBatchList();
            ++m_loadStep;
            break;

        case 23:
            TraceLoadingStep();
            _LoadBatchMap();
            ++m_loadStep;
            break;

        case 24:
            TraceLoadingStep();
            _LoadBatching();
            ++m_loadStep;
            break;

        case 25:
            TraceLoadingStep();
            ApplicationGetInstance().CleanGlitch();
            ++m_loadStep;
            break;

        case 26:
            MenuManager::GetInstance()->LoadMenu(3);
            DialogMsg::s_NodeCachedChar.RefreshCache(static_cast<gameswf::character*>(nullptr), nullptr, nullptr);
            AchievementMsg::s_NodeCachedChar.RefreshCache(static_cast<gameswf::character*>(nullptr), nullptr, nullptr);
            DialogMsg::s_NodeCachedChar.RefreshCache(static_cast<gameswf::character*>(nullptr), nullptr, nullptr);
            StatusMsg::s_NodeCachedChar.RefreshCache(static_cast<gameswf::character*>(nullptr), nullptr, nullptr);
            OnlineStatusMsg::s_NodeCachedChar.RefreshCache(static_cast<gameswf::character*>(nullptr), nullptr, nullptr);
            dword_99F76C->PostInitCharacters();
            MenuManager::GetInstance()->GetHUDRoot()->InvokeASCallback("menu_HUD_0", "completeRefresh", nullptr, 0);
            ++m_loadStep;
            break;

        case 27:
        case 28:
            ++m_loadStep;
            break;

        case 29:
            TraceLoadingStep();
            Singleton<ItemManager>::s_inst.PreCache();
            Singleton<ProjectileManager>::s_inst.PreCache();
            ++m_loadStep;
            break;

        case 30:
            TraceLoadingStep();
            VisualFXManager::s_inst.PreCacheLibraries();
            ++m_loadStep;
            break;

        case 31:
            m_gameEventManager->Compile();
            ++m_loadStep;
            break;

        case 32: {
            LevelConfig* config = GetLevelConfig();
            glitch::video::SColorf ambient;
            ambient.r = config->m_ambientColor.X;  // +0x1cc
            ambient.g = GetLevelConfig()->m_ambientColor.Y;
            ambient.b = GetLevelConfig()->m_ambientColor.Z;
            ambient.a = 1.0f;
            DeviceSceneManager()->setAmbientLight(ambient);
            Singleton<PFWorld>::s_inst.unk_94 = true;  // byte_9A276C
            dword_99F764->Update(1.0f);
            CharAI::IncUpdateQueue();
            ApplicationGetInstance().m_physicalWorld->update();
            Singleton<PFWorld>::s_inst.unk_94 = false;
            // The camera update (vtable slot +0x10, CameraLevel::Update) runs last, after the physics update.
            m_camera->Update();
            ++m_loadStep;
            break;
        }

        case 33: {
            TraceLoadingStep();
            if (m_resume) {
                m_levelSavegame->Load();
                if (GetOnlineGameFlag()) {
                    if (dword_99F76C->IsLocalPlayerHosting()) {
                        Character* host = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
                        if (host != nullptr) {
                            Point3D<float> position = host->m_position;  // +0x160
                            float height = 0.0f;
                            if (Singleton<PFWorld>::s_inst.GetFloorHeightAt(position, &height, nullptr, nullptr, nullptr, false)) {
                                position.Z = height;
                                host->SetPosition(position, true);
                            }
                            for (int i = 0; i < dword_99F76C->GetNumLocalPlayers(true); ++i) {
                                dword_99F76C->GetLocalPlayer(i, true)->unk_660->SetPosition(host->m_position, true);
                            }
                        }
                    } else if (dword_99F76C->m_initialSetupDone) {  // +0x6d0
                        for (int j = 0; j < dword_99F76C->GetNumLocalPlayers(true); ++j) {
                            // The initial position the host sent is the three floats at PlayerManager +0x6d4.
                            dword_99F76C->GetLocalPlayer(j, true)->unk_660->SetPosition(
                                *reinterpret_cast<const Point3D<float>*>(&dword_99F76C->unk_6d4), true);
                        }
                    }
                }
            }
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
            { PlayerInfo* pi = dword_99F76C->GetLocalPlayer(0, false); _DEBUG_OUT("LoadStep33 local player %p slot %d local %d class %d character %p numChars %d numLocal %d", (void*)pi, pi ? pi->unk_664 : -99, pi ? (int)pi->unk_66c : -99, pi ? pi->m_characterClass.GetValue() : -99, pi ? (void*)pi->unk_660 : nullptr, dword_99F76C->m_numCharacters, dword_99F76C->GetNumLocalPlayers(true)); }
#endif
            dword_99F76C->GetLocalPlayer(0, true)->unk_660->SG_SetUseSpawnPoint(false);
            m_cameFromOtherLevel = false;
            ++m_loadStep;
            break;
        }

        case 34: {
            TraceLoadingStep();
            CameraLevel* camera = m_camera;
            Character* player = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            if (player != nullptr) {
                player->SG_SetLevelId(m_levelListIndex, -1);
                camera->SetTarget(player, 0);
            }
            if (GetOnlineGameFlag()) {
                CMatching::Get()->GetRoomAttributes()->SetAttributeInt(static_cast<tROOM_ATTRIBUTES_INT>(3), m_levelListIndex);
            }
            camera->SetActive();
            DeviceSceneManager()->update(0.0f, false);
            camera->Update();
            for (int i = 0; i < dword_99F76C->GetNumLocalPlayers(true); ++i) {
                Character* local = dword_99F76C->GetLocalPlayer(i, true)->unk_660;
                if (local != nullptr) {
                    local->m_controller->m_blocked = true;  // Character +0x378 (v2Controllable::m_controller), +0x08
                }
            }
            // The camera's offset from its parent, kept for the fog distance in Update.
            glitch::scene::ICameraSceneNode* cameraNode = m_camera->m_camera;
            const glitch::core::vector3d<float> nodePosition = cameraNode->getAbsolutePosition();
            const glitch::core::vector3d<float> parentPosition = cameraNode->getParent()->getAbsolutePosition();
            m_cameraBaseOffset.X = nodePosition.X - parentPosition.X;  // +0x19c
            m_cameraBaseOffset.Y = nodePosition.Y - parentPosition.Y;
            m_cameraBaseOffset.Z = nodePosition.Z - parentPosition.Z;
            // The fog of the first light tweaker (Application +0x58) and of the scene manager come from the level config.
            PlayerLightTweaker* tweaker = ApplicationGetInstance().m_playerLightTweakers[0];
            LevelConfig* config = GetLevelConfig();
            tweaker->m_fogColor.setComponent(3, 0xff);
            tweaker->m_fogColor.setComponent(2, static_cast<uint8_t>(static_cast<unsigned int>(config->m_fogColor.Z)));  // +0x1e0..
            tweaker->m_fogColor.setComponent(0, static_cast<uint8_t>(static_cast<unsigned int>(config->m_fogColor.X)));
            tweaker->m_fogColor.setComponent(1, static_cast<uint8_t>(static_cast<unsigned int>(config->m_fogColor.Y)));
            tweaker->m_fogStart = static_cast<float>(GetLevelConfig()->m_fogStart);  // +0x110
            tweaker->m_fogEnd = static_cast<float>(GetLevelConfig()->m_fogEnd);      // +0x114
            // The tweaker member is a glitch::core::vector3d<float> while the level config's is a Point3D<float>;
            // the binary copies the three words (0x3f...: X, Y, Z).
            const Point3D<float>& fogMask = config->m_fogDirectionMask;  // +0x1f8
            tweaker->m_fogDirectionMask.X = fogMask.X;                   // +0x11c
            tweaker->m_fogDirectionMask.Y = fogMask.Y;
            tweaker->m_fogDirectionMask.Z = fogMask.Z;
            SceneManager* sceneManager = DeviceSceneManager();
            const Point3D<float> mask = GetLevelConfig()->m_fogDirectionMask;
            sceneManager->unk_458 = mask.X;
            sceneManager->unk_45c = mask.Y;
            sceneManager->unk_460 = mask.Z;
            sceneManager->m_lightSetManager.m_lightingEnabled = !DebugSwitches::GetInstance()->GetSwitch("RENDERING_DisableAllLighting");
            dword_99F764->HandleNoRoomObjects();
            UpdateFog(nullptr);
            UpdateLightSet(true, 4);
            UpdateMaterial(false, true);
            // Online (as a client, or as the host once the setup changed), or no valid checkpoint, or a new level entered from
            // another: save a checkpoint at the spawn point (or the player, or the origin).
            if ((GetOnlineGameFlag() && (!dword_99F76C->IsLocalPlayerHosting() || dword_99F76C->m_hostChanged)) ||
                (m_levelSavegame != nullptr && !m_levelSavegame->ValidateCheckpoint(static_cast<int>(m_savegameSlot), m_levelListSubId, m_levelListIndex)) ||
                m_hasPreviousLevel) {
                GameObject* spawnPoint = GetSpawnPoint();
                Character* first = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
                const Point3D<float>* checkpoint;
                if (spawnPoint != nullptr) {
                    checkpoint = &spawnPoint->m_position;  // +0x160
                } else if (first != nullptr) {
                    checkpoint = &first->m_position;
                } else {
                    checkpoint = &Vec3f_Origin;
                }
                const Point3D<float> position = *checkpoint;
                CheckpointSave(position, m_hasPreviousLevel);
                m_hasPreviousLevel = false;
            }
            ++m_loadStep;
            break;
        }

        case 36: {
            TraceLoadingStep();
            // The online wait. The original leaves m_loadStep unchanged here (see the notes above).
            if (GetOnlineGameFlag()) {
                PlayerInfo* local = dword_99F76C->GetLocalPlayer(0, false);
                if (!local->m_readyToRoll.GetValue() ||
                    (dword_99F76C->IsLocalPlayerHosting() && dword_99F76C->AllLoadingDone() && !dword_99F76C->AllClientsReadyToRoll())) {
                    if (!dword_99F764->m_initialized) {  // +0x1ac
                        dword_99F764->NetworkInitLevel();
                    }
                    dword_99F764->Update(1.0f);
                    PlayerInfo* host = dword_99F76C->GetLocalPlayer(0, false);
                    if (host->IsHost()) {
                        Character* character = host->unk_660;  // +0x660
                        if (character != nullptr && character->m_savegame != nullptr) {  // +0x14e8
                            character->m_savegame->SG_TryQuestSync();
                        }
                    }
                }
            }
            break;
        }

        case 37: {
            TraceLoadingStep();
            MenuManager* menus = MenuManager::GetInstance();
            MenuBase* loading = menus->GetMenuByName("menu_Loading");
            // The original calls IsVisible on this result with no null test. A missing menu faults there. This tests for null.
            if (loading != nullptr && loading->IsVisible()) {
                menus->PopMenu(loading);
            }
            menus->GetMenuByName("menu_HUD_0");
            ShowMemoryStats("After Level Loading");
            if (ReadDebugSwitch("IsDisplayLoadingStepName")) {
                MenuDebug::GetInstance()->SetText(nullptr);
            }
            for (int k = 0; k < dword_99F76C->GetNumLocalPlayers(false); ++k) {
                Character* local = dword_99F76C->GetLocalPlayer(k, false)->unk_660;
                if (local != nullptr && local->m_controller != nullptr) {
                    local->m_controller->m_blocked = false;  // +0x378, +0x08
                }
            }
            if (GetOnlineGameFlag() && !dword_99F764->m_initialized) {
                dword_99F764->NetworkInitLevel();
            }
            PlaceFaeryAndFollowers(nullptr);
            ++m_loadStep;
            break;
        }

        default:
            m_loadStep = (m_loadStep <= 37) ? m_loadStep + 1 : 38;
            break;
    }

    if (m_loadStep == 38) {
        m_loadProgressPercent = 100;
        if (USE_NATIVE_DRM_GAME) {
            ALicenseCheck::ValidateServer(true);  // ALicenseCheck_ValidateLicense(1), a thunk to this
        }
        MenuManager* menus = MenuManager::GetInstance();
        menus->PushMenu(menus->GetMenuByName("menu_FadeFromBlackScreen"));
    } else {
        m_loadWorkDone = std::min(m_loadWorkDone, m_loadWorkTotal);
        int percent;
        if (m_loadStep == 36) {
            percent = 100;
        } else {
            percent = 100 * m_loadStep / 38;
            if (percent > 99) {
                percent = 100;
            }
        }
        m_loadProgressPercent = percent;
    }

    MenuBase* loading = MenuManager::GetInstance()->GetMenuByName("menu_Loading");
    if (loading) {
        // gameswf::weak_ptr<character>::check_proxy on the menu's character: a dead proxy clears the proxy and the pointer.
        gameswf::smart_ptr_proxy* proxy = reinterpret_cast<gameswf::smart_ptr_proxy*>(&loading->m_characterProxy);  // +0x48
        if (proxy->get_proxy() != nullptr && !proxy->get_proxy()->is_alive()) {
            *proxy = nullptr;
            loading->m_character = nullptr;  // +0x4c
        }
        loading->m_menu->InvokeASCallback(loading->m_character, "onProgress", nullptr, 0);
    }
}

// 0x3f82d8 Level::Update(bool)
// Runs one loading step until m_loadStep reaches 38, unless forceUpdate is set. After that the frame update runs: the debug
// HUD's pending text map is emptied, the toggle and pause switches end the frame, the start script and the local player's
// savegame update run, the ambient light, physics, spawn groups, object manager, camera zoom and visual FX are updated, the
// camera (and its node) next, the fog distance follows the camera, the lighting switches reach the scene manager, the first
// update starts the level music and ambience, and the listener and dynamic fog are refreshed. With "IsAutoLoadingLevels" set
// the level reloads a random other level every five seconds.
void Level::Update(bool forceUpdate) {
    PushProfilingContext("Level::Update");
    if (m_loadStep != 38 && !forceUpdate) {
        _LoadProcess();
        PopProfilingContext("Level::Update");
        return;
    }
    MenuDebugHUD* debugHud = MenuDebugHUD::GetInstance();
    if (!debugHud->unk_c8.empty()) {  // +0xc8 map, count at +0xd8
        debugHud->unk_c8.clear();
    }
    if (ReadDebugSwitch("IsUsingToggleDisplayMode")) {
        PopProfilingContext("Level::Update");
        return;
    }
    if (ReadDebugSwitch("IsLevelUpdatePaused")) {
        PopProfilingContext("Level::Update");
        return;
    }
    if (m_startScriptId != -1 && ApplicationGetInstance().IsCurrentlyInGameView()) {
        ScriptManager::s_inst.StartScript(m_startScriptId, -1, false);
    }
    // The savegame update runs on the local player's character (PlayerInfo +0x660, PlayerInfo::unk_660), when there is one.
    if (Character* localCharacter = dword_99F76C->GetLocalPlayer(0, true)->unk_660) {
        localCharacter->SG_Update(false);
    }
    if (!m_isLoaded) {
        dword_99F76C->Update();
    }
    if (dword_99F76C->m_globalDeathState == 0) {
        ScriptManager::s_inst.ExecuteAllScripts();
    }
    m_gameEventManager->Update();
    SceneManager* sceneManager = DeviceSceneManager();
    {
        LevelConfig* config = RequireLevelConfig(this);
        glitch::video::SColorf ambient;
        ambient.r = config->m_ambientColor.X;  // +0x1cc
        ambient.g = config->m_ambientColor.Y;
        ambient.b = config->m_ambientColor.Z;
        ambient.a = 1.0f;
        sceneManager->setAmbientLight(ambient);
    }
    ApplicationGetInstance().m_physicalWorld->update();
    SpawnGroupManager::GetInstance()->update(0.0);
    CharAI::HandleGroups();
    dword_99F764->Update(1.0f);
    CharAI::IncUpdateQueue();
    UpdateCameraZoom();
    VisualFXManager::s_inst.Update();
    if (m_cameraOverview != nullptr && m_cameraOverview == CameraBase::s_activeCamera) {
        m_cameraOverview->Update();
    }
    m_camera->Update();
    m_camera->m_camera->updateAbsolutePosition(false);  // camera node, ISceneNode vtable +0xb8
    // The fog moves with the camera: its distance is the camera's offset from its parent (less the offset kept at load), scaled
    // per axis by the level's fog direction mask, signed by the z offset.
    {
        const glitch::core::vector3d<float> nodePosition = m_camera->m_camera->getAbsolutePosition();
        const glitch::core::vector3d<float> parentPosition = m_camera->m_camera->getParent()->getAbsolutePosition();
        const float z = (nodePosition.Z - parentPosition.Z) - m_cameraBaseOffset.Z;  // +0x1a4
        SceneManager* fogManager = DeviceSceneManager();
        const float x = ((nodePosition.X - parentPosition.X) - m_cameraBaseOffset.X) * fogManager->unk_458;  // +0x458
        const float y = ((nodePosition.Y - parentPosition.Y) - m_cameraBaseOffset.Y) * fogManager->unk_45c;
        float distance = std::sqrt(x * x + y * y + (z * fogManager->unk_460) * (z * fogManager->unk_460));
        if (z < 0.0f) {
            distance = -distance;
        }
        LevelConfig* config = RequireLevelConfig(this);
        fogManager->UpdateFog(static_cast<float>(config->m_fogStart) + distance, static_cast<float>(config->m_fogEnd) + distance,
                              config->m_fogColor);
    }
    {
        LightSetManager& lights = DeviceSceneManager()->m_lightSetManager;  // dh2/LightSetManager.hpp is in the global namespace
        if (ReadDebugSwitch("RENDERING_DisableAllLighting") == lights.m_lightingEnabled) {
            lights.m_lightingEnabled = !DebugSwitches::GetInstance()->GetSwitch("RENDERING_DisableAllLighting");
        }
        if (ReadDebugSwitch("RENDERING_DisableAllSpecular") == lights.m_specularEnabled) {
            lights.m_specularEnabled = !DebugSwitches::GetInstance()->GetSwitch("RENDERING_DisableAllSpecular");
        }
    }
    if (!m_isLoaded) {
        VoxSoundManager* sound = VoxSoundManager::s_instance;
        if (sound->in_safe_zone_) {
            sound->SetInSafeZoneMusic(m_isLoaded);
        } else {
            sound->PlayMusic(m_musicSoundId, true, sound->in_safe_zone_, 2000);
        }
        sound->Play(m_ambienceSoundId, false, 0, 0, false);
        sound->music_slot_ = true;  // +0x31
    }
    m_isLoaded = true;
    UpdateListener();
    UpdateDynamicFog();
    MenuDebugHUD* hud = MenuDebugHUD::GetInstance();
    if (ReadDebugSwitch("IsAutoLoadingLevels")) {
        static int s_autoLevelLoadWaitTime = 5000;  // .data 0x999764 = 0x1388; Level::Update(bool)::s_autoLevelLoadWaitTime
        hud->DisplayHugeNumber(s_dbgLevelLoadCount);
        hud->SetDisplaySealOfFreshness(s_dbgLevelLoadCount > 15);
        s_autoLevelLoadWaitTime -= ApplicationGetInstance().GetDt();
        if (s_autoLevelLoadWaitTime <= 0) {
            const char* picked = nullptr;
            const unsigned int count = Arrays::LevelList::size - 1;
            const Structs::LevelDeclaration* levels = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
            while (picked == nullptr || std::strcmp(picked, m_levelName.c_str()) == 0) {
                const unsigned int row = count != 0 ? Random::GetRandom(static_cast<int>(count), false) : 0;
                if (levels[row].Dbg_IsStable) {  // row +0x04
                    picked = static_cast<const char*>(levels[row].LevelFile);  // row +0x20
                }
            }
            DBG_DisplayLoadLevelStats(picked);
            hud->HideHugeNumber();
            hud->SetDisplaySealOfFreshness(false);
            s_autoLevelLoadWaitTime = 5000;
            const int slot = dword_99F76C->GetPlayer(0, false)->unk_664;  // +0x664
            ApplicationGetInstance().LoadLevel(picked, 0, static_cast<uint32_t>(slot & ~(slot >> 31)), false, true, 0, false, 0, 0);
        }
    }
    PopProfilingContext("Level::Update");
}

// 0x3f90b0 _ZN5LevelD2Ev and 0x3f92c4 _ZN5LevelD1Ev (Level::~Level()). Both addresses hold the same body.
// The symbol table names them this way; dh2/Level.hpp's comment names them the other way round.
// The level is torn down in this order: skills and objects, AI aggro and groups, the cached character OIDs and concurrent AI,
// the message queues, scripts and HUD, items and projectiles, the visual FX libraries, the game-event manager, the two batch
// compilers, the object manager, the zoom handler's camera, the scene manager (cleared, its active camera dropped), physics,
// the PF world, the anim set manager, the base EventManager, the savegame, the Lua buffered files. The C++ member and base
// destructors that run after the body cover the last steps: m_levelName, then m_script (LuaScript), then the EventManager base.
Level::~Level() {
    CleanUpAllSkills();
    UnlockAllObjects();
    CharAI::ClearAllAggro();
    CharAI::ClearGroupInfo();
    Character::s_cachedCharOIDs.clear();
    Character::ClearConcurrentAI();
    MenuMessageManager<StatusMsg, 4>::s_inst.FlushEnqueuedMessages(0);
    MenuMessageManager<TutorialMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    MenuMessageManager<OnlineStatusMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    ScriptManager::s_inst.Flush();
    InfoHUDManager::GetInstance()->Flush();
    HUDControls::GetInstance()->Flush();
    Singleton<ItemManager>::s_inst.Flush();
    Singleton<ProjectileManager>::s_inst.Flush();
    VisualFXManager::s_inst.FlushLibraries();
    delete m_gameEventManager;
    m_gameEventManager = nullptr;
    delete m_batchNodeCompiler;
    m_batchNodeCompiler = nullptr;
    delete m_batchNodeCompiler2;
    m_batchNodeCompiler2 = nullptr;
    dword_99F764->Flush();
    ApplicationGetInstance().m_zoomHandler->setCamera(nullptr);
    DeviceSceneManager()->clear();  // virtual slot +104
    DeviceSceneManager()->setActiveCamera(nullptr);
    ApplicationGetInstance().m_physicalWorld->clear();
    Singleton<PFWorld>::s_inst.Flush();
    AnimSetManager::s_inst.Flush();
    EventManager::Flush();
    if (m_levelSavegame) {
        delete m_levelSavegame;
        m_levelSavegame = nullptr;
    }
    ApplicationGetInstance().CleanGlitch();
    ApplicationGetInstance().m_luaManager->FlushBufferedFiles();  // dword_99F768 is Application +0x3c (m_luaManager)
}

// 0x3f94f4 Level::CanMoveTowards(Point3D<float> const&, Point3D<float> const&)
// Yes at once for a single player character (PlayerManager +0x6c4), for an online game, for a zero-length direction and when the camera has
// no node. Otherwise the angle between the direction and the vector from the point to the camera node's position (getPosition,
// vtable +0xa0) must be at least a quarter turn (1.5708) to go on; then every local player's character that is not dead has its
// screen position tested against the co-op limits of the first DesignSettings record (sides +0x1c, top +0x20, bottom +0x18, each
// asserted non-negative): a position outside any limit answers no, and when all four players pass the answer is yes.
bool Level::CanMoveTowards(const Point3D<float>& from, const Point3D<float>& direction) {
    PlayerManager* playerManager = dword_99F76C;
    if (playerManager->m_numCharacters == 1) {
        return true;
    }
    if (GetOnlineGameFlag()) {
        return true;
    }
    const float lengthSquared = direction.X * direction.X + direction.Y * direction.Y + direction.Z * direction.Z;
    if (std::fabs(lengthSquared) < 0.0001) {
        return true;
    }
    glitch::scene::ISceneNode* cameraNode = m_camera->m_node;     // CameraBase +0x04
    if (!cameraNode) {
        return true;
    }
    const glitch::core::vector3d<float>& cameraPosition = cameraNode->getPosition();
    Point3D<float> toCamera;
    toCamera.X = cameraPosition.X - from.X;
    toCamera.Y = cameraPosition.Y - from.Y;
    toCamera.Z = cameraPosition.Z - from.Z;
    if (std::fabs(direction.angle(toCamera)) < 1.5708f) {
        return true;
    }
    const Structs::DesignSettings& settings = *reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    auto assertNonNegative = [](float value, const char* expression, int line) {
        if (value < 0.0f) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression,
                             "..\..\project_vs2005\Game/..\..\sources\Game\Level\Level_Players.cpp", line);
            }
        }
    };
    assertNonNegative(settings.CoopCamLimits_Sides, "settings.CoopCamLimits_Sides >= 0.0f", 96);
    assertNonNegative(settings.CoopCamLimits_Top, "settings.CoopCamLimits_Top >= 0.0f", 97);
    assertNonNegative(settings.CoopCamLimits_Bottom, "settings.CoopCamLimits_Bottom >= 0.0f", 98);
    for (int index = 0; index < 4; ++index) {
        Character* character = playerManager->GetPlayer(index, false)->unk_660;      // PlayerInfo +0x660
        if (character && !character->IsDead()) {
            Point2D<float> screen{};
            CameraBase::GetScreenCoord(character->m_position, screen);                // Character +0x160
            if (-settings.CoopCamLimits_Sides >= screen.X || settings.CoopCamLimits_Sides <= screen.X || -settings.CoopCamLimits_Bottom >= screen.Y ||
                screen.Y >= settings.CoopCamLimits_Top) {
                return false;
            }
        }
    }
    return true;
}

// 0x3f9870 Level::UpdateCameraZoom()
// PARTIAL. The co-op zoom sets the camera zoom ceiling (CameraLevel::m_zoomTarget, +0x8c) toward the value that keeps the
// local players' screen positions inside the co-op limits (Structs::DesignSettings m_w6, m_w7 and m_w8, with the zoom step in
// m_w3 and m_w4). Reconstructed: the early exit for a single player character. The rest waits on the online flag
// (COnline::isOnlineGame_, protected with no accessor), which is tested first. The per-player screen scan is declared
// (PlayerManager::GetPlayer, Character::IsDead, CameraBase::GetScreenCoord) but is not written behind that gate.
void Level::UpdateCameraZoom() {
    if (dword_99F76C->m_numCharacters == 1) {
        return;
    }
    if (GetOnlineGameFlag()) {  // COnline +0x05 (GetOnline()->isOnlineGame_)
        return;
    }
    const auto* settings = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    // Level_Players.cpp:36..38 asserts. gAssertLevel 2 traps in the original; only the message is reproduced here.
    if (settings->CoopCamLimits_Sides < 0.0f && gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "settings.CoopCamLimits_Sides >= 0.0f",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp", 36);
    }
    if (settings->CoopCamLimits_Top < 0.0f && gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "settings.CoopCamLimits_Top >= 0.0f",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp", 37);
    }
    if (settings->CoopCamLimits_Bottom < 0.0f && gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "settings.CoopCamLimits_Bottom >= 0.0f",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level_Players.cpp", 38);
    }
    // Lowest headroom over the living local players (the original starts at FLT_MAX).
    float headroom = 3.4028e38f;
    for (int i = 0; i != 4; ++i) {
        Character* character = dword_99F76C->GetPlayer(i, false)->unk_660;
        if (character && !character->IsDead()) {
            Point2D<float> screen;
            CameraBase::GetScreenCoord(character->m_position, screen);
            if (settings->CoopCamLimits_Sides - std::fabs(screen.X) < headroom) {
                headroom = settings->CoopCamLimits_Sides - std::fabs(screen.X);
            }
            if (headroom > settings->CoopCamLimits_Top - screen.Y) {
                headroom = settings->CoopCamLimits_Top - screen.Y;
            }
            if (headroom > screen.Y + settings->CoopCamLimits_Bottom) {
                headroom = screen.Y + settings->CoopCamLimits_Bottom;
            }
        }
    }
    const float current = settings->AutoZoomRefPoint;
    const float delta = std::fabs(current - headroom);
    if (current > headroom) {
        m_camera->m_zoomTarget -= delta * settings->AutoZoomStep;
    } else if (current < headroom) {
        m_camera->m_zoomTarget += delta * settings->AutoZoomStep;
    }
}

// 0x474260 Level::GetRimLightFile()
// Copies the rim-light file name of the level config. The original's string copy from the [c_str, finish) range is the
// std::string copy of m_rimLightFile.
std::string Level::GetRimLightFile() {
    return RequireLevelConfig(this)->m_rimLightFile;
}
