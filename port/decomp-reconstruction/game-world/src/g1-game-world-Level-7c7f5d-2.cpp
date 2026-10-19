// Batch g1-game-world-Level-7c7f5d-2: 20 Level entries (part 3 of 4). Declarations come from dh2/Level.hpp.
// The two Level constructor addresses share one body.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/device.hpp"  // Device::IsHighPerformance (static)
#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"        // ApplicationGetInstance (GetCurrentLevel)
#include "dh2/Character.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraOverview.hpp"
#include "dh2/Level.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "tinyxml.h"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "glitch-video/batch_driver.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/Module.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/batch/BatchNodeCompiler.hpp"
#include "dh2/batch/GOBatchSceneNode.hpp"          // the batch node of _LoadBatching (setVisible, addChild)
#include "dh2/global/IsMultiplayerGame.hpp"      // dword_99F76C (PlayerManager*)
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764 (ObjectManager*)
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/Tile.hpp"
#include "pydata-accessors/member_names.hpp"              // Arrays::GetMemberIDByString (SetLevelConfig)
#include "pydata-accessors/name_table.hpp"                // pydata::FindMemberName (the CamAnimSetTable row of _LoadCamera)
#include "glitch-video/global_parameter_manager.hpp"      // CGlobalMaterialParameterManager (UpdateDynamicFog)
#include "glitch-video/material_parameters_bind_g.hpp"    // the typed setParameter members
#include "dh2/PFWorld.hpp"                                // Singleton<PFWorld>::s_inst.DBG_Draw (Draw)
#include "dh2/Singleton.hpp"                              // Singleton<PFWorld>::s_inst
#include "dh2/ZoomHandler.hpp"                            // ZoomHandler::setCamera (_LoadCamera)
#include "dh2/global/Vec3f_K.hpp"                         // Vec3f_K (the perpendicular of Draw)

// 0x3f07b0 _ZN5Level18SG_SaveLocalPlayerEb
// The local player's character is read as the original does, PlayerManager::GetLocalPlayer(dword_99F76C, 0, 1)->character_660 (PlayerInfo +0x660, declared as unk_660), and
// passed to SG_SavePlayer(Character*, levelChange).
void Level::SG_SaveLocalPlayer(bool levelChange) {
    Character* player = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
    SG_SavePlayer(player, levelChange);
}

// 0x3f07f8 _ZN5Level19GenerateRandomLevelER12StreamBufferj
// The previous generator is destroyed, a new one is built, LoadRuleFile gets the level name (+0x10c), the levels are
// generated with the seed, written to the stream, and the generator is destroyed again. The result is the count that
// Generate returns. operator new(400) and CustomFree become new and delete on the host.
int Level::GenerateRandomLevel(StreamBuffer& out, uint32_t seed) {
    if (m_randomGenerator) {
        delete m_randomGenerator;
        m_randomGenerator = nullptr;
    }
    m_randomGenerator = new rnd::RandomGenerator();
    m_randomGenerator->LoadRuleFile(m_levelName.c_str());
    int count = m_randomGenerator->Generate(static_cast<int>(seed));
    m_randomGenerator->SaveModularLevelToStream(out);
    delete m_randomGenerator;
    m_randomGenerator = nullptr;
    return count;
}

// 0x3f0898 _ZN5Level22PlaceFaeryAndFollowersEP9Character
// Every faerie and follower of ObjectManager::m_characters (+0x60) is placed in front of an anchor character: the given player, else the hosting player's character in an online game (and when
// this device does not host, the follower takes the host's player id as its owner id, +0x670, and restarts its owner timer), else the first local player's character; without an anchor the
// entry is skipped. The position is the anchor's target position plus its look-at vector (SetPosition(position, true), ForceUpdatePosition). A follower then has its zoning disabled. For a
// faerie, every player character (GetPlayer(i, false)) gets it as its faerie object (CharAI +0x58, Character +0x420); the faerie's AI master (+0x418) is set to the first local player's
// character (or to the anchor), the anchor changes to the faerie of its savegame (Character::ChangeFaery(SG_GetCurrentFaerieId(-1))), and the faerie's previous master is restored.
void Level::PlaceFaeryAndFollowers(Character* player) {
    for (Character* character : dword_99F764->m_characters) {
        if (character == nullptr) {
            continue;
        }
        if (!character->IsFaerie() && !character->IsFollower()) {
            continue;
        }
        Character* anchor = player;
        if (anchor == nullptr) {
            if (GetOnlineGameFlag()) {
                anchor = dword_99F76C->GetHostingPlayer()->unk_660;
                if (!dword_99F76C->IsLocalPlayerHosting()) {
                    const std::int32_t hostId = dword_99F76C->GetHostingPlayer()->unk_670;
                    character->unk_114 = 0.0f;
                    character->m_netOwnerId = hostId;
                }
            } else {
                anchor = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            }
            if (anchor == nullptr) {
                continue;
            }
        }
        Point3D<float> position{0.0f, 0.0f, 0.0f};
        anchor->GetLookAtVec(position);
        const Point3D<float>& target = anchor->GetTargetPosition();
        position.X += target.X;
        position.Y += target.Y;
        position.Z += target.Z;
        character->SetPosition(position, true);
        character->ForceUpdatePosition();
        if (!character->IsFaerie()) {
            character->DisableZoning();
            continue;
        }
        for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
            Character* owner = dword_99F76C->GetPlayer(i, false)->unk_660;
            if (owner != nullptr) {
                owner->CharAI::unk_58 = character;
            }
        }
        Character* previousMaster = character->CharAI::m_master;
        Character* local = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
        Character* faerieOwner = local != nullptr ? local : anchor;
        character->CharAI::AI_SetMaster(faerieOwner);
        anchor->ChangeFaery(static_cast<unsigned int>(faerieOwner->SG_GetCurrentFaerieId(-1)));
        character->CharAI::AI_SetMaster(previousMaster);
    }
}

// 0x3f0ae0 _ZN5Level14UpdateListenerEv
// Places the audio listener. The row of Arrays::Listeners for m_listenerIndex is cached once in a function-local
// static. Row +0x04 picks the position (0 the level camera's absolute position, 1 the local player's target position
// projected to the screen and back at the render target's bottom, 2 the player's target position, 3 the screen centre
// unprojected), +0x0c the front vector (0 the camera look-at, 1 the player's look-at, 2 the camera look-at with z cleared),
// +0x18 the up vector (0 the camera up, 1 the front taken from the player's node matrix row 2). The listener is set only
// while the level camera has a camera node. Row +0x10, +0x08 and +0x14 are passed on to VoxSoundManager::SetListenerPos.
void Level::UpdateListener() {
    static const Structs::Listener* curListener =
        &reinterpret_cast<const Structs::Listener*>(Arrays::Listeners::members)[m_listenerIndex];  // +0xe4
    auto localPlayer = [] { return dword_99F76C->GetLocalPlayer(0, true)->unk_660; };

    glitch::core::vector3d<float> pos{};    // v34
    glitch::core::vector3d<float> front{};  // v31
    glitch::core::vector3d<float> up{};     // v28
    Point3D<float> tmp{};                  // v25, scratch that survives between the arms
    glitch::scene::ICameraSceneNode* cameraNode = m_camera->m_camera;  // Level +0x128, CameraBase +0x08

    switch (curListener->Anchor) {  // row +0x04
        case 0: {
            if (cameraNode == nullptr) {
                break;
            }
            pos = cameraNode->getAbsolutePosition();
            break;
        }
        case 1: {
            if (localPlayer() != nullptr) {
                const Point3D<float>& target = localPlayer()->GetTargetPosition();
                pos.X = target.X;
                pos.Y = target.Y;
                pos.Z = target.Z;
                // Bottom of the viewport of the render target on top of the driver's stack (driver +0xcc, last entry, +0x20).
                const int bottom = ApplicationGetInstance().m_device->videoDriver->m_renderTargets.back()->viewport().LowerRightCorner.Y;
                glitch::core::position2d<int> screen{};
                screen.X = 0;
                screen.Y = 0;
                GetScreenPosFromWorldPos(pos, screen);
                Point2D<float> point;
                point.X = static_cast<float>(screen.X);
                point.Y = static_cast<float>(bottom);
                GetWorldPosFromScreenPos(point, tmp, 0.0f);
                pos.X = tmp.X;
                pos.Y = tmp.Y;
                pos.Z = tmp.Z;
            }
            break;
        }
        case 2: {
            if (localPlayer() != nullptr) {
                const Point3D<float>& target = localPlayer()->GetTargetPosition();
                pos.X = target.X;
                pos.Y = target.Y;
                pos.Z = target.Z;
            }
            break;
        }
        case 3: {
            Point2D<float> centre;
            centre.X = static_cast<float>(Width_Screen / 2);
            centre.Y = static_cast<float>(Height_Screen / 2);
            GetWorldPosFromScreenPos(centre, tmp, 0.0f);
            pos.X = tmp.X;
            pos.Y = tmp.Y;
            pos.Z = tmp.Z;
            break;
        }
        default:
            break;
    }

    const int frontMode = curListener->Orientation;  // row +0x0c
    if (frontMode == 1) {
        if (localPlayer() != nullptr) {
            localPlayer()->GetLookAtVec(tmp);
        }
        front.X = tmp.X;
        front.Y = tmp.Y;
        front.Z = tmp.Z;
    } else if (frontMode == 2) {
        if (cameraNode != nullptr) {
            const Point3D<float> look = m_camera->GetCameraLookAtVec();
            front.X = look.X;
            front.Y = look.Y;
            front.Z = 0.0f;
        }
    } else if (frontMode == 0 && cameraNode != nullptr) {
        const Point3D<float> look = m_camera->GetCameraLookAtVec();
        front.X = look.X;
        front.Y = look.Y;
        front.Z = look.Z;
    }

    const int upMode = curListener->UpVector;  // row +0x18
    if (upMode != 0) {
        if (upMode == 1 && localPlayer() != nullptr) {
            const float* m = localPlayer()->m_visualObject->m_node->getAbsoluteTransformation().M;  // GameObject +0x2d8, VisualObject +0x08
            front.X = m[8];
            front.Y = m[9];
            front.Z = m[10];
        }
    } else {
        if (cameraNode == nullptr) {
            return;
        }
        const Point3D<float> camUp = m_camera->GetCameraUpVec();
        up.X = camUp.X;
        up.Y = camUp.Y;
        up.Z = camUp.Z;
    }
    if (cameraNode != nullptr) {
        VoxSoundManager::s_instance->SetListenerPos(pos, front, up, curListener->RefDistance, curListener->MaxDistance, curListener->RolloffFactor);  // row +0x10, +0x08, +0x14
    }
}

// 0x3f1008 _ZN5Level11_LoadCameraEv
// The level's two cameras are built, in this order: CameraOverview (m_cameraOverview, +0x12c, operator new(40)) and
// CameraLevel (m_camera, +0x128, operator new(168)), each through its constructor. The animation set row is looked up in
// Arrays::CamAnimSetTable by the config's camera_animset name (the +0x278 data word; -1 when the table is empty or no row
// matches, which is what CameraLevel::Load stores at +0x80), then CameraLevel::Load takes the camera_file name (+0x260),
// that row and the camera_name (+0x290). CameraBase::SetData takes the two constant floats 0x3edbf877 and 0x3fd578e9
// (0.42963 and 1.6677524, the vertical field of view and the aspect ratio) and the config's camera_znear (+0x294) and
// camera_zfar (+0x298) as floats. Then the camera is made active, the clip id of that CamAnimSetTable row (its +0x10 word)
// is played, the camera targets the local player's character (PlayerInfo +0x660) with transition 0, the zoom handler (the
// Application's +0x50, dword_99F77C) is bound to it, the zoom is reset (target +0x8c to 1.0, current +0x88 to 0.0) and the
// scene manager (the device's +0x1c) adds the sky box named by the config's skybox (+0x248 data word).
// Deviations: C++ new throws where the original tests the CameraLevel pointer (assert "m_camera", Level.cpp:2480) and goes
// on to dereference null; the original re-reads m_levelConfig and re-runs its assert before SetData and before the sky box,
// which cannot fire after the first read. The original reads the row of m_camTableIndex unconditionally, so a -1 row reads
// before the table there and here.
void Level::_LoadCamera() {
    m_cameraOverview = new CameraOverview();  // +0x12c, operator new(40) in the original
    m_camera = new CameraLevel();             // +0x128, operator new(168) in the original
    LevelConfig* config = GetLevelConfig();   // the m_levelConfig assert (Level.h:476) the original runs before the read
    const int camTableIndex = pydata::FindMemberName(Arrays::CamAnimSetTable::m_memberNames,
                                                    static_cast<int>(Arrays::CamAnimSetTable::size),
                                                    config->m_cameraAnimset.c_str());  // the +0x278 data word
    m_camera->Load(config->m_cameraFile.c_str(), camTableIndex, config->m_cameraName.c_str());  // +0x260, +0x290
    m_camera->SetData(0.42963f, 1.66775239f * ScreenAspectScale() /* port: undistorted 3D on non-16:9 surfaces */, static_cast<float>(config->m_cameraZnear),
                      static_cast<float>(config->m_cameraZfar), false);  // +0x294, +0x298
    m_camera->SetActive();
    // Clip id of the row CameraLevel::Load found (row +0x10; stride 28 in the original).
    const int clipId =
        reinterpret_cast<const Structs::CamAnimSet*>(Arrays::CamAnimSetTable::members)[m_camera->m_camTableIndex].Idle;
    m_camera->PlayAnim(clipId, 0, false);                                              // (clip, controller arg, keep zoom)
    m_camera->SetTarget(dword_99F76C->GetLocalPlayer(0, true)->unk_660, 0);            // PlayerInfo +0x660, transition 0
    ApplicationGetInstance().m_zoomHandler->setCamera(m_camera);                       // dword_99F77C is Application +0x50
    m_camera->m_zoomTarget = 1.0f;   // +0x8c
    m_camera->m_zoomCurrent = 0.0f;  // +0x88
    DeviceSceneManager()->AddSkyBoxSceneNode(config->m_skybox.c_str(), nullptr);       // config +0x248, device +0x1c
}

// 0x3f1394 _ZNK5Level15GetMPGameScriptEv
// The multiplayer game script name of the level config (LevelConfig +0x314, the data pointer of the m_mpScript string at +0x300). A missing config fails the m_levelConfig assert, as GetLevelConfig does.
const char* Level::GetMPGameScript() const {
    LevelConfig* config = GetLevelConfig();
    return config->m_mpScript.c_str();
}

// 0x3f1430 _ZN5Level9EnableFogEPN6glitch5scene10ISceneNodeE
// SceneManager::EnableFog(start, end, colour, node) on the device's scene manager, with the config's fog start (LevelConfig +0x1d8) and end (+0x1dc) as floats and its fog colour (+0x1e0).
// A missing config fails the m_levelConfig assert, as GetLevelConfig does.
void Level::EnableFog(glitch::scene::ISceneNode* node) {
    SceneManager* sceneManager = DeviceSceneManager();
    LevelConfig* config = GetLevelConfig();
    sceneManager->EnableFog(static_cast<float>(config->m_fogStart), static_cast<float>(config->m_fogEnd), config->m_fogColor, node);
}

// 0x3f150c _ZN5Level14SetLevelConfigEP11LevelConfig
// The config is stored (+0x38) and checked with the m_levelConfig assert. The music id (+0x11c) comes from the music name,
// the ambience id (+0x124) from the ambiant music name and the id at +0x120 from the safezone music name, each through
// Arrays::GetMemberIDByString<Arrays::Sounds>. The original reads the names' data words, which are the string members
// (the header's music, safezone_music and ambiant_music strings), and an empty ambient or safezone name leaves its id
// unchanged. The original reads the names of a null config after its assert and faults. Here a null config returns after the assert.
void Level::SetLevelConfig(LevelConfig* config) {
    m_levelConfig = config;                   // +0x38
    LevelConfig* checked = GetLevelConfig();  // the m_levelConfig assert (Level.h:476)
    if (!checked) {
        return;
    }
    m_musicSoundId = Arrays::GetMemberIDByString<Arrays::Sounds>(checked->m_music.c_str());  // +0x11c
    if (!checked->m_ambiantMusic.empty()) {
        m_ambienceSoundId = Arrays::GetMemberIDByString<Arrays::Sounds>(checked->m_ambiantMusic.c_str());  // +0x124
    }
    if (!checked->m_safezoneMusic.empty()) {
        unk_120 = Arrays::GetMemberIDByString<Arrays::Sounds>(checked->m_safezoneMusic.c_str());  // +0x120
    }
}

// 0x3f16c0 _ZN5Level16UpdateDynamicFogEv
// The guard (the config's dynamic-fog colour list, +0x204 m_dfogColors, must be non-empty) is followed by the whole body:
// the absolute position of the current level's camera scene node (Application::GetCurrentLevel, its m_camera at +0x128,
// that camera's glitch camera node at CameraBase +0x08) is passed to ObjectManager::GetDynamicFogColorAtPos with the
// blend distance (+0x214), the returned colour is packed into an SColor whose bytes are the truncated colour components
// (byte 0 is the low byte, alpha 0) and written to the driver's global material parameter m_fogColorIds[0] with index 0
// through the scene manager's driver (device +0x1c, CSceneManager +0x14, IVideoDriver +0xe4), and the colour is stored at
// the config's +0x1ec m_clearColor. The original re-reads m_levelConfig and re-runs its assert (Level.h:476) before that
// store; the top guard already proved the pointer non-null, so the assert cannot fire and is not repeated.
void Level::UpdateDynamicFog() {
    LevelConfig* config = m_levelConfig;
    if (config == nullptr || config->m_dfogColors.empty()) {  // +0x38, begin != end of +0x204
        return;
    }
    Level* current = ApplicationGetInstance().GetCurrentLevel();
    const glitch::core::vector3d<float> cameraPosition = current->m_camera->m_camera->getAbsolutePosition();
    const Point3D<float> position{cameraPosition.X, cameraPosition.Y, cameraPosition.Z};
    const Point3D<float> color = dword_99F764->GetDynamicFogColorAtPos(position, config->m_dfogBlendDist);  // +0x214
    glitch::video::IVideoDriver* driver = DeviceSceneManager()->driver;  // CSceneManager +0x14
    glitch::video::SColor packed;  // the four byte stores of the original: low byte c.X, then c.Y, c.Z, alpha 0
    packed.setComponent(0, static_cast<std::uint8_t>(color.X));
    packed.setComponent(1, static_cast<std::uint8_t>(color.Y));
    packed.setComponent(2, static_cast<std::uint8_t>(color.Z));
    packed.setComponent(3, 0);
    driver->m_globalParameters->setParameter(driver->m_fogColorIds[0], 0u, packed);  // 0x5c47fc, index form
    config->m_clearColor = color;  // +0x1ec
}

// 0x3f2304 _ZN5Level9UpdateFogEPN6glitch5scene10ISceneNodeE
// The choice reads LevelConfig +0x1dc (m_fogEnd): non-zero calls EnableFog(node), zero calls DisableFog(node). Both original branches first read the "isTracingLevel" debug switch; its result is unused.
void Level::UpdateFog(glitch::scene::ISceneNode* node) {
    if (!m_levelConfig) {
        return;
    }
    bool fogEnabled = m_levelConfig->m_fogEnd != 0;  // +0x1dc, tested before the debug switch is read
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingLevel"));
    if (fogEnabled) {
        EnableFog(node);
    } else {
        DisableFog(node);
    }
}

// 0x3f240c _ZN5Level14_LoadBatchInitEv
// The original first calls the scene manager's vtable +0x60 with (0, 0). The object is the device's +0x1c word and the
// slot is CSceneManager::update(float, bool) (0x58b9f0): the game SceneManager's vtable carries that function at the
// same offset (tools/decomp_vtable.py prints the address-point offset; the game override at listing slot 0x48 is this
// +0x3c, as GSViewer::Update 0x387270, which calls the same slot with (dt, false), records). SceneManager does not
// override update, so update(0.0f, false) is the call: elapsed 0 is added to the scene clock and the root node takes
// onAnimate. Then the switch test, the destruction of the old compiler and the allocation. The class has no constructor
// symbol (batch::BatchNodeCompiler writes its fields inline in the original), so value-initialising new matches the
// original's init.
void Level::_LoadBatchInit() {
    DeviceSceneManager()->update(0.0f, false);  // vtable +0x60 = CSceneManager::update(float, bool)
    DebugSwitches::GetInstance()->load();
    if (!DebugSwitches::GetInstance()->GetSwitch(std::string("IsDisablingCompiledBatching"))) {
        delete m_batchNodeCompiler;
        m_batchNodeCompiler = new batch::BatchNodeCompiler();
    }
}

// 0x3f254c _ZNK5Level4DrawEv
// The debug drawing of a loaded level. The floor-box switch is read and its result is discarded, as in the original.
// With isDisplayingPathNodes set and a local player, the path-node block runs: PFWorld::DBG_Draw at the local character's
// m_position (PlayerInfo +0x660, GameObject +0x160), then two lines through the video driver (the device's +0x10,
// IVideoDriver::draw3DLine at vtable +0x1c, SColor by value). The first goes from that position to position + 100 times
// the character's normalised look-at vector (the vector is normalised in place by Point3D::normalize, which returns
// *this) in 0xff0000ff. The second is the perpendicular: cross(look, Vec3f_K) with Vec3f_K = (0, 0, 1), drawn from
// position + perpendicular to position - perpendicular in 0xff0080ff.
void Level::Draw() const {
    if (m_loadStep != 38) {
        return;
    }
    dword_99F764->Draw3D();
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(std::string("isDisplayingFloorBoxes"));
    DebugSwitches::GetInstance()->load();
    if (!DebugSwitches::GetInstance()->GetSwitch(std::string("isDisplayingPathNodes"))) {
        return;
    }
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
    if (character == nullptr) {
        return;
    }
    Singleton<PFWorld>::s_inst.DBG_Draw(&character->m_position);  // GameObject +0x160
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;  // IDevice +0x10
    Point3D<float> look{0.0f, 0.0f, 0.0f};
    character->GetLookAtVec(look);
    look.normalize();
    look.X *= 100.0f;
    look.Y *= 100.0f;
    look.Z *= 100.0f;
    const Point3D<float>& position = character->m_position;
    driver->draw3DLine(glitch::core::vector3d<float>{position.X, position.Y, position.Z},
                       glitch::core::vector3d<float>{position.X + look.X, position.Y + look.Y, position.Z + look.Z},
                       glitch::video::SColor{0xFF0000FFu});
    // The perpendicular is cross(look, Vec3f_K) with the up vector K = (0, 0, 1) (Vec3f_K.Y and Vec3f_K.Z are the
    // original's dword_99F87C and dword_99F880).
    const float perpX = look.Y * Vec3f_K.Z - look.Z * Vec3f_K.Y;
    const float perpY = look.Z * Vec3f_K.X - look.X * Vec3f_K.Z;
    const float perpZ = look.X * Vec3f_K.Y - look.Y * Vec3f_K.X;
    driver->draw3DLine(glitch::core::vector3d<float>{position.X + perpX, position.Y + perpY, position.Z + perpZ},
                       glitch::core::vector3d<float>{position.X - perpX, position.Y - perpY, position.Z - perpZ},
                       glitch::video::SColor{0xFF0080FFu});
}

// 0x3f2ae4 _ZN5Level13_LoadBatchingEv
// Unless the IsDisablingCompiledBatching switch is on: clearRenderLists on the device's scene manager (+0x1c), the clear flag unk_43c
// (+0x43c) raised, and the LevelConfig batch sizes of the device class (high performance: +0x2a0 vertex, +0x2a4 index, +0x2a8 quantize;
// otherwise +0x2ac, +0x2b0, +0x2b4) printed ("*** BUFFER SIZE"), stored in the scene manager's batch driver (CSceneManager +0x1c) as
// (unsigned)((double)size * 1.02) at +0x22c (vertex) and +0x230 (index), and BatchNodeCompiler::Compile run with the quantize flag. The
// flag is then cleared; when the compiler set m_compiled the batch node joins the scene root (vtable +0x5c); the batch node is made visible
// (vtable +0x48).
void Level::_LoadBatching() {
    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch(std::string("IsDisablingCompiledBatching"))) {
        return;
    }
    SceneManager* sceneManager = DeviceSceneManager();
    sceneManager->clearRenderLists();
    sceneManager->unk_43c = true;  // +0x43c
    LevelConfig* config = GetLevelConfig();  // the original reads this+0x38 directly; a null config faults there too
    glitch::video::CBatchDriver* batchDriver = sceneManager->batchDriver;   // +0x1c
    if (Device::IsHighPerformance()) {
        std::printf("*** BUFFER SIZE: %d %d %d\n", config->m_progVertexBufferSize, config->m_progIndexBufferSize,
                    static_cast<int>(config->m_progQuantize));
        batchDriver->defaultIndexBufferCapacityBytes = static_cast<std::uint32_t>(static_cast<double>(config->m_progIndexBufferSize) * 1.02);
        batchDriver->defaultVertexBufferCapacityBytes = static_cast<std::uint32_t>(static_cast<double>(config->m_progVertexBufferSize) * 1.02);
        m_batchNodeCompiler->Compile(config->m_progQuantize);
    } else {
        std::printf("*** BUFFER SIZE: %d %d %d\n", config->m_fixVertexBufferSize, config->m_fixIndexBufferSize,
                    static_cast<int>(config->m_fixQuantize));
        batchDriver->defaultIndexBufferCapacityBytes = static_cast<std::uint32_t>(static_cast<double>(config->m_fixIndexBufferSize) * 1.02);
        batchDriver->defaultVertexBufferCapacityBytes = static_cast<std::uint32_t>(static_cast<double>(config->m_fixVertexBufferSize) * 1.02);
        m_batchNodeCompiler->Compile(config->m_fixQuantize);
    }
    sceneManager->unk_43c = false;
    batch::BatchNodeCompiler* compiler = m_batchNodeCompiler;  // the original re-reads this+0x158 here and after addChild
    if (compiler->m_compiled) {                                // +0x00
        sceneManager->rootNode->addChild(compiler->m_batchNode);
    }
    compiler->m_batchNode->setVisible(true);  // +0x34, vtable +0x48
}

// 0x3f2d38 _ZN5Level14_LoadBatchListEv
// Unless IsDisablingCompiledBatching is set, ObjectManager's object map is walked in key order and the batch compiler's object list (BatchNodeCompiler::m_gameObjects) receives the GameObjects
// that qualify: an object that is not a GameObject or is an underlay (ObjectBase +0x83) is skipped. By its game type: "Module" and "Decor" are always added; "Player" (and any object whose name
// contains "Player") never; "Character" when MeetCondition holds and it is not a faerie; DestructibleContainer, OpenableContainer, Door, TimerTrap, TriggerTrap and AnimatedDecor when
// MeetCondition holds; any other type is left out. Each decision reads the isTracingBatchingCompiler switch first.
void Level::_LoadBatchList() {
    DebugSwitches::GetInstance()->load();
    if (DebugSwitches::GetInstance()->GetSwitch(std::string("IsDisablingCompiledBatching"))) {
        return;
    }
    auto trace = []() {
        DebugSwitches::GetInstance()->load();
        DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingBatchingCompiler"));
    };
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectHandle handle(entry.second.m_object);
        GameObject* object = handle;
        if (object == nullptr || object->m_isUnderlay) {
            continue;
        }
        const char* type = object->m_gameType.c_str();
        bool add = false;
        if (std::strcmp(type, "Module") == 0 || std::strcmp(type, "Decor") == 0) {
            add = true;
        } else if (std::strcmp(type, "Player") == 0 || std::strstr(object->m_name.c_str(), "Player") != nullptr) {
            add = false;
        } else if (std::strcmp(type, "Character") == 0) {
            add = object->MeetCondition() && !static_cast<Character*>(object)->IsFaerie();
        } else if (std::strcmp(type, "DestructibleContainer") == 0 || std::strcmp(type, "OpenableContainer") == 0 ||
                   std::strcmp(type, "Door") == 0 || std::strcmp(type, "TimerTrap") == 0 ||
                   std::strcmp(type, "TriggerTrap") == 0 || std::strcmp(type, "AnimatedDecor") == 0) {
            add = object->MeetCondition();
        }
        trace();
        if (add) {
            m_batchNodeCompiler->m_gameObjects.push_back(object);
        }
    }
}

// 0x3f3128 _ZN5LevelC1EPKcijjjbbii
// 0x3f34c0 _ZN5LevelC2EPKcijjjbbii
// The two addresses are the C1 and C2 copies of one body. The pseudocode differs only in how the decompiler types the savegame slot
// word (this+0x114), so one definition serves both. Field defaults, the LuaScript data directory and its two loads, Module::s_moduleId,
// the Arrays::LevelList scan (the first row whose lowercased name is a substring of the level name gives the list index, sub id and
// random flag), the online block (a client, or any player after a host change, does not resume) and the savegame creation.
Level::Level(const char* name, int entryPointId, uint32_t savegameSlot, uint32_t seed, uint32_t syncedSeed,
             bool resume, bool useSpawnPoint, int fromSubId, int difficulty)
    : EventManager(), m_script(false), m_levelName(name) {
    m_loadProgressPercent = 0;                 // +0x30
    m_levelConfig = nullptr;                   // +0x38
    m_levelListIndex = -1;                     // +0x3c
    m_levelListSubId = -1;                     // +0x40
    m_seed = seed;                             // +0xdc
    m_syncedSeed = syncedSeed;                 // +0xe0
    m_listenerIndex = 1;                       // +0xe4
    m_isRandomLevel = false;                   // +0xe8
    m_levelSavegame = nullptr;                 // +0xec
    m_levelChange = false;                     // +0xf0
    m_resume = resume;                         // +0xf1
    m_useSpawnPoint = useSpawnPoint;           // +0xf2
    m_cameFromOtherLevel = false;              // +0xf3
    m_loadingCheckpoint = false;               // +0xf4
    m_hasPreviousLevel = false;                // +0xf5
    m_entryPointId = entryPointId;             // +0x110
    m_savegameSlot = savegameSlot;             // +0x114
    m_difficulty = difficulty;                 // +0x118
    m_musicSoundId = -1;                       // +0x11c
    unk_120 = -1;                              // +0x120
    m_ambienceSoundId = -1;                    // +0x124
    m_camera = nullptr;                        // +0x128
    m_cameraOverview = nullptr;                // +0x12c
    m_loadStep = 0;                            // +0x130
    m_loadWorkDone = 0;                        // +0x134
    m_loadWorkTotal = 0;                       // +0x138
    m_loadFileCount = 0;                       // +0x13c
    m_loadFileData = nullptr;                  // +0x140
    m_isLoaded = false;                        // +0x144
    m_inTransition = false;                    // +0x145
    m_startScriptId = -1;                      // +0x148
    m_randomGenerator = nullptr;               // +0x14c
    unk_150 = nullptr;                         // +0x150
    m_mpReferee = nullptr;                     // +0x154
    m_batchNodeCompiler = nullptr;             // +0x158
    m_batchNodeCompiler2 = nullptr;            // +0x15c
    m_moduleOffset.X = 0.0f;                   // +0x160
    m_moduleOffset.Y = 0.0f;                   // +0x164
    m_moduleOffset.Z = 0.0f;                   // +0x168
    unk_16c = false;                           // +0x16c
    m_objectModuleId = -1;                     // +0x18c
    m_gameEventManager = nullptr;              // +0x194
    m_isInGameView = false;                    // +0x198
    m_cameraBaseOffset.X = 0.0f;               // +0x19c
    m_cameraBaseOffset.Y = 0.0f;               // +0x1a0
    m_cameraBaseOffset.Z = 0.0f;               // +0x1a4
    unk_1a8 = false;                           // +0x1a8

    ++s_dbgLevelLoadCount;
    m_script.m_scriptDirectory = "data/scripts/";  // LuaScript +0x68 (Level +0xac)
    m_script.Load("level/combat_formulas");
    m_script.Load("level/death_scripts");

    Module::s_moduleId = 0;

    // The level list scan: the first row whose lowercased name (Structs::LevelDeclaration m_w8, +0x20) is a substring of the level
    // name sets the list index, the random-level flag (m_w5, +0x14) and the sub id (m_w4, +0x10).
    if (Arrays::LevelList::size) {
        const auto* rows = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members);
        for (std::uint32_t row = 0; row < Arrays::LevelList::size; ++row) {
            char lowered[1024];
            std::strcpy(lowered, static_cast<const char*>(rows[row].LevelFile));
            ToLowerCase(lowered, 0, -1);
            if (std::strstr(m_levelName.c_str(), lowered)) {
                m_levelListIndex = static_cast<int>(row);          // +0x3c
                m_isRandomLevel = rows[row].IsRandom;                  // +0xe8
                m_levelListSubId = rows[row].Hub;                 // +0x40
                break;
            }
        }
    }

    // Online: a client (not hosting, and not the host of a mode 3 or 4 room), or any player after a host change, does not resume.
    if (GetOnlineGameFlag()) {                                    // COnline +0x05
        PlayerManager* playerManager = Singleton<Application>::s_inst.m_playerManager;
        if ((!playerManager->IsLocalPlayerHosting() &&
             (static_cast<unsigned>(OnlineSingleton<OnlineGameState>::GetInstance()->mode_ - 3) > 1 ||
              !static_cast<CMatchingGLLive*>(CMatching::Get())->IsHost())) ||
            playerManager->m_hostChanged) {                       // PlayerManager +0x719
            m_resume = false;                                     // +0xf1
        }
    }

    if (m_levelListIndex != -1) {
        if (fromSubId != -1) {
            m_hasPreviousLevel = true;
            if (!(fromSubId | m_levelListSubId) || (fromSubId != m_levelListSubId && m_levelListSubId)) {
                m_cameFromOtherLevel = true;
            }
        }
        m_levelSavegame = new LevelSavegame(this, m_savegameSlot, m_levelListSubId, m_levelListIndex, m_difficulty, false);
    }
}

// 0x3f38a0 _ZN5Level15_LoadScriptFileERSs
// Reconstructed. The original searches the file name backwards for ".pyscript" (the offset of 9 is its length). When the
// name is longer than 8 characters and the search finds it, it turns every backslash into a slash and then loads the two
// companion names: scripts through ScriptManager::LoadScriptFile and names through ScriptManager::LoadScriptFileNames,
// each with append false. Here rfind plays the role of the reversed std::search.
// The two names are not a plain prefix split. The original copies the file name twice:
//   scripts: copy of file, replace(pos, size - pos, "_pyscripts.bin", 14). That replaces [pos, end).
//   names:   copy of file, replace(pos, count, "_pyscriptnames.bin", 18), where count is read from the scripts copy after its
//            replace (size - pos == 14). So only 14 characters are replaced at pos, and a tail beyond pos + 14 is kept.
// For the shipped names, which end exactly in ".pyscript", this is <prefix>_pyscripts.bin and <prefix>_pyscriptnames.bin.
void Level::_LoadScriptFile(std::string& file) {
    if (file.size() <= 8) {
        return;
    }
    std::size_t pos = file.rfind(".pyscript");
    if (pos == std::string::npos) {
        return;
    }
    for (char& c : file) {
        if (c == '\\') {
            c = '/';
        }
    }
    std::string scripts = file;
    scripts.replace(pos, scripts.size() - pos, "_pyscripts.bin", 14);
    std::string names = file;
    names.replace(pos, scripts.size() - pos, "_pyscriptnames.bin", 18);
    ScriptManager::s_inst.LoadScriptFile(scripts.c_str(), false);
    ScriptManager::s_inst.LoadScriptFileNames(names.c_str(), false);
}

// 0x3f3a58 _ZN5Level12_LoadScriptsEv
// Reconstructed. The last step passes the level config's script file name (LevelConfig +0x150, m_scriptFile; the pseudocode's
// (std::string*)config + 14 with 24-byte strings) to _LoadScriptFile by reference, so _LoadScriptFile rewrites the config's
// string in place, as the original does. A null config asserts in GetLevelConfig; the original then passes null + 0x150 and
// faults, which std::abort reproduces here.
void Level::_LoadScripts() {
    ScriptManager::s_inst.UnLoadAllScripts();
    ScriptManager::s_inst.LoadScriptFile("data/pydata/scripts_pyscripts.bin", true);
    ScriptManager::s_inst.LoadScriptFileNames("data/pydata/scripts_pyscriptnames.bin", true);
    LevelConfig* config = GetLevelConfig();  // the same m_levelConfig assert as the original
    if (!config) {
        std::abort();
    }
    _LoadScriptFile(config->m_scriptFile);
}

// 0x3f3b40 _ZN5Level8LoadFileERKSsS1_
// Reads one level or module file incrementally; every call does one step and returns 0 until the file is finished (1; also 1 when
// the file cannot be found or parsed).
//  - With a file in progress (m_loadFileData) and a current element, that element is loaded (_LoadFromXML) and the cursor moves to its
//    next sibling.
//  - Without a current element but with a module, the cursor moves to the next child of the document; when that child's name equals
//    tag, the current element becomes the first child element of it.
//  - Without a module the document and the load data are freed and the answer is 1.
//  - A load data without a document parses its buffer (the stream must be sized; "Can't parse the level file" otherwise).
//  - With no load data the file is opened: for each folder of potentialFolders ("", data/, data/scene/, data/3d/modules/) the folder
//    and the file name are joined; when the application uses uncompiled data the joined name is tried first; then the first of
//    "old/", "debug/", "ps3/" and "iphone/" that the name contains is removed and the result is tried; the first name that opens
//    becomes the file (a StreamBuffer copy of it in a new load data) and the file is closed.
int Level::LoadFile(const std::string& file, const std::string& tag) {
    static const char* const potentialFolders[4] = {"", "data/", "data/scene/", "data/3d/modules/"};
    static const char* const hackToRemove[4] = {"old/", "debug/", "ps3/", "iphone/"};
    constexpr const char* kLevelSource = "..\..\project_vs2005\Game/..\..\sources\Game\Level\Level.cpp";

    LoadFileData* data = m_loadFileData;           // +0x140
    if (data == nullptr) {
        glitch::IDevice* device = ApplicationGetInstance().m_device;
        FileSystemWin32& fileSystem = SavefileFileSystem();   // device +0x34
        (void)device;
        std::string tried;                         // the names tried, one per line (the original builds it and never prints it)
        for (int folder = 0; folder < 4; ++folder) {
            std::string path(potentialFolders[folder]);
            path.append(file);
            if (ApplicationGetInstance().IsUsingUncompiledData(path.c_str())) {
                tried.append("\n\t");
                tried.append(path);
                IFileStream* stream = fileSystem.openFile(path.c_str(), false, false);   // vtable +0x88
                if (stream != nullptr) {
                    m_loadFileData = new LoadFileData(stream);
                    fileSystem.closeFile(stream);                                         // vtable +0x78
                    return 0;
                }
            }
            for (const char* hack : hackToRemove) {            // only the first match is removed
                const std::size_t length = std::strlen(hack);
                if (length > path.size()) {
                    continue;
                }
                const std::size_t position = path.find(hack);
                if (position == std::string::npos) {
                    continue;
                }
                path.erase(position, length);
                break;
            }
            tried.append("\n\t");
            tried.append(path);
            IFileStream* stream = fileSystem.openFile(path.c_str(), false, false);
            if (stream != nullptr) {
                m_loadFileData = new LoadFileData(stream);
                fileSystem.closeFile(stream);
                return 0;
            }
        }
        return 1;
    }

    TiXmlNode* previousModule = nullptr;
    if (data->m_document != nullptr) {
        if (data->m_currentElement != nullptr) {
            _LoadFromXML(data->m_currentElement);
            data = m_loadFileData;
            data->m_currentElement = data->m_currentElement->NextSiblingElement();
            return 0;
        }
        previousModule = data->m_currentModule;
        if (previousModule == nullptr) {
            delete data->m_document;
            delete m_loadFileData;
            m_loadFileData = nullptr;
            return 1;
        }
    } else {
        data->m_document = new TiXmlDocument();
        if (!data->m_stream.buffer_.sized() && gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "static_",
                         "..\..\project_vs2005\Game/..\..\sources/Utils/StreamBuffer.h", 130);
        } else if (!data->m_stream.buffer_.sized() && gAssertLevel == 2) {
            std::abort();
        }
        if (!data->m_document->LoadFromBuffer(data->m_stream.buffer_.FirstBlock(),
                                              static_cast<int>(data->m_stream.buffer_.size()), TIXML_DEFAULT_ENCODING)) {
            if (gAssertLevel == 2) {
                std::abort();
            }
            if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "!\"Can't parse the level file\"", kLevelSource, 2224);
            }
            return 1;
        }
        data->m_root = data->m_document;
    }
    // The next child of the document is the current module; it is the one to load when its name is the requested tag.
    data->m_currentModule = data->m_root->IterateChildren(previousModule);
    TiXmlNode* module = m_loadFileData->m_currentModule;
    if (module != nullptr && module->ValueStr() == tag) {
        TiXmlElement* element = module->ToElement();
        m_loadFileData->m_currentElement = element != nullptr ? element->FirstChildElement() : nullptr;
    }
    return 0;
}

// 0x3f4154 _ZN5Level8LoadTileEPN3rnd4TileEi
// The original starts with an unconditional ASSERT(false) at Level.cpp line 3269. That is reproduced: level 2 stops with a null
// store (here std::abort), and level 1 prints the assert text. Then: the grid position (the tile's m_x, m_y and m_z, scaled by the
// block's unit and block sizes; the y term is negated), the module id, the mvx, mgx, mgp and mvp paths (the block's gameplay folder,
// the block name for mvx and mgx, the tile's own gameplay and visual names for mgp and mvp), the module loads in that order (mgp and mvp
// only when the tile has that name), the zeroed module offset, and the recursion over the children.
int Level::LoadTile(rnd::Tile* tile, int moduleId) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Level\\Level.cpp", 3269);
    }
    rnd::Block* block = tile->m_block;
    // The original sets the grid position before SetObjectModuleId. X scales the cell column by the block width, with half a
    // cell for each extra cell; Y does the same with the cell row and the unit height, negated (the original flips the sign bit).
    m_moduleOffset.X = (static_cast<float>(tile->m_x) + static_cast<float>(block->m_blockWidth - 1) * 0.5f) * block->m_unitWidth;
    m_moduleOffset.Y = (static_cast<float>(tile->m_y) + static_cast<float>(block->m_blockHeight - 1) * 0.5f) * -block->m_unitHeight;
    m_moduleOffset.Z = tile->m_z;
    SetObjectModuleId(moduleId);

    std::string mvxPath = block->m_gameplay + "/mvx/" + block->m_name + ".mvx";
    std::string mgxPath = block->m_gameplay + "/mgx/" + block->m_name + ".mgx";
    // The tile's own gameplay and visual names (the ListElem copy at Tile +0x34: m_gameplay at +0x50, m_visual at +0x68) select the
    // mgp and mvp files of the block's gameplay folder.
    std::string mgpPath = block->m_gameplay + "/mgp/" + tile->m_listElem.m_gameplay;
    std::string mvpPath = block->m_gameplay + "/mvp/" + tile->m_listElem.m_visual;

    int loaded = 0;
    do {
        loaded = LoadFile(mvxPath, std::string("Module"));
    } while (!loaded);
    loaded = 0;
    do {
        loaded = LoadFile(mgxPath, std::string("Module"));
    } while (!loaded);
    if (!tile->m_listElem.m_gameplay.empty()) {
        loaded = 0;
        do {
            loaded = LoadFile(mgpPath, std::string("Module"));
        } while (!loaded);
    }
    if (!tile->m_listElem.m_visual.empty()) {
        loaded = 0;
        do {
            loaded = LoadFile(mvpPath, std::string("Module"));
        } while (!loaded);
    }

    unk_16c = false;                 // +0x16c
    m_moduleOffset.X = 0.0f;         // +0x160
    m_moduleOffset.Y = 0.0f;         // +0x164
    m_moduleOffset.Z = 0.0f;         // +0x168

    int id = moduleId;
    for (int i = 0; i < tile->m_childCount; ++i) {
        id = LoadTile(tile->m_children[i], id + 1);
    }
    return id;
}
