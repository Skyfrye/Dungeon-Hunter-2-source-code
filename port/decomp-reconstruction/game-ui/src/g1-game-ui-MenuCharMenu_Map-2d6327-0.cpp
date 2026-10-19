// MenuCharMenu_Map bodies, batch g1-game-ui-MenuCharMenu_Map-2d6327-0 (part 1 of 2, 20 functions).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the ARM assembly
// (tools/decomp_asm.py) where the pseudocode is unclear. Offsets in comments are the original 32-bit offsets.
//
// Globals: the IDA names dword_99F73C, dword_99F76C and dword_99F77C are words of Singleton<Application>::s_inst
// (dh2/Application.hpp). They are read here as m_device (+0x10), m_playerManager (+0x40) and m_zoomHandler (+0x50)
// through ApplicationGetInstance(). The asm of DestroyMapCamera confirms the m_device read (LDR [s_inst+0x10]).
//
// Partial functions name each missing step where it sits in the code. The missing steps are declared elsewhere
// (see the ledger notes): the glitch::IDevice scene manager at +0x1c, the MenuManager +0x60 saved camera (declared
// as an integer), the CamAnimSetTable row fields, RenderFX::SetText and the matrix layout of gameswf::character.

#include <array>
#include <cstdio>
#include <cstdlib>
#include <list>
#include <utility>
#include <vector>

#include "dh2/MenuCharMenu_Map.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraTarget.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/item_instance.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel, 0x99f914). core-platform/memory.hpp declares it too, but
// that header redefines glitch::core types that glitch_core.hpp also defines, so it is declared here as AnimatedFX does.
extern int gAssertLevel;

namespace {

// The source path the original prints in its ASSERT messages.
constexpr char kMapSourcePath[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\CharacterMenu\\MenuCharMenu_Map.cpp";

// Float::TO_RADIAN_FACTOR (.rodata, bit pattern 0x3c8efa35): RenderIconType multiplies the room-exit angle by it.
constexpr float kToRadianFactor = 0.0174532924f;

// CSWTCH.6123 (.rodata, 16 bytes): the room-exit icon angles in degrees, indexed by iconType - 14 (types 14..17).
constexpr float kRoomExitAngles[4] = {135.0f, -45.0f, 225.0f, 45.0f};

// The ASSERT of an out-of-range icon type. gAssertLevel 2 aborts (the original stores through a null pointer to crash),
// level 1 prints the message to stderr and level 0 does nothing.
void ReportIconTypeAssert(int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "iconType < ICON_COUNT", kMapSourcePath, line);
    }
}

}  // namespace

// 0x45310c MenuCharMenu_Map::UpdateMapCamera()
// The camera's pan offset (CameraLevel +0x98..+0xa0) is applied to the player position (+0xec..+0xf4). The result is
// clamped to the map bounds one axis at a time (max first, min only when max did not apply), and the offset is stored
// back relative to the player. The camera is then updated (vtable +0x10).
void MenuCharMenu_Map::UpdateMapCamera() {
    CameraLevel* camera = m_mapCamera;
    if (camera == nullptr) {
        return;
    }
    const float playerX = m_playerPos.X;
    const float playerY = m_playerPos.Y;
    const float playerZ = m_playerPos.Z;
    float x = playerX + camera->m_panOffset.X;
    float y = playerY + camera->m_panOffset.Y;
    const float z = playerZ + camera->m_panOffset.Z;
    if (m_mapBoundsMax.X < x) {
        x = m_mapBoundsMax.X;
    } else if (m_mapBoundsMin.X > x) {
        x = m_mapBoundsMin.X;
    }
    if (m_mapBoundsMax.Y < y) {
        y = m_mapBoundsMax.Y;
    } else if (m_mapBoundsMin.Y > y) {
        y = m_mapBoundsMin.Y;
    }
    camera->m_panOffset.X = x - playerX;
    camera->m_panOffset.Y = y - playerY;
    camera->m_panOffset.Z = z - playerZ;
    camera->Update();
}

// 0x453224 MenuCharMenu_Map::ClearIconType(MenuCharMenu_Map::EIconType)
// Each icon is removed from its parent display list (gameswf character parent, remove_display_object at vtable +0xa8),
// then the vector is emptied. An out-of-range type reports the ASSERT and returns. The original goes on and reads past
// the end of m_icons (undefined behaviour), so this early return is the one deliberate deviation.
void MenuCharMenu_Map::ClearIconType(EIconType type) {
    const int index = static_cast<int>(type);
    if (index < 0 || index >= ICON_COUNT) {
        ReportIconTypeAssert(597);
        return;
    }
    for (auto& icon : m_icons[index]) {
        gameswf::character* parent = icon.first->get_parent();
        if (parent != nullptr) {
            parent->remove_display_object(icon.first);
        }
    }
    m_icons[index].clear();
}

// 0x453334 MenuCharMenu_Map::ClearAllIcons()
void MenuCharMenu_Map::ClearAllIcons() {
    for (int i = 0; i != ICON_COUNT; ++i) {
        ClearIconType(static_cast<EIconType>(i));
    }
}

// 0x45335c MenuCharMenu_Map::ShowLevelName()
// The level Arrays::LevelList row (Level +0x3c index; -1 means row 0) gives a string id (row +0x24) that the StringManager
// turns into the text of the m_mapName field.
void MenuCharMenu_Map::ShowLevelName() {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    if (m_mapName == nullptr) {
        return;
    }
    const int index = level->m_levelListIndex == -1 ? 0 : level->m_levelListIndex;
    const Structs::LevelDeclaration& row = reinterpret_cast<const Structs::LevelDeclaration*>(Arrays::LevelList::members)[index];
    m_menu->SetText(m_mapName, ApplicationGetStringManager()->getString(row.LevelName), false);
}

// 0x4533ec MenuCharMenu_Map::IsPointInsideRenderZone(int, int)
// Tests the point against the absolute bounds of m_renderMap (xmin, xmax, ymin, ymax), both edges inclusive.
bool MenuCharMenu_Map::IsPointInsideRenderZone(int x, int y) {
    const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(m_renderMap);
    const float fx = static_cast<float>(x);
    const float fy = static_cast<float>(y);
    return fx >= bounds[0] && fx <= bounds[1] && fy >= bounds[2] && fy <= bounds[3];
}

// 0x453488 MenuCharMenu_Map::DestroyMapCamera()
// The camera is freed (after the zoom handler forgets the map finger); when MenuManager has no saved camera the scene active
// camera is set to MenuManager saved camera (a null one, as in the original).
void MenuCharMenu_Map::DestroyMapCamera() {
    if (m_mapCamera == nullptr) {
        return;
    }
    ApplicationGetInstance().m_zoomHandler->ResetFingerMap();
    delete m_mapCamera;  // the original calls the deleting destructor through vtable +0x04
    m_mapCamera = nullptr;
    MenuManager* manager = MenuManager::GetInstance();
    if (manager->m_savedCamera == nullptr) {
        DeviceSceneManager()->setActiveCamera(MenuManager::GetInstance()->m_savedCamera);
    }
}

// 0x45351c MenuCharMenu_Map::CreateMapCamera()
// The scene active camera is saved in MenuManager (when none is saved), the map camera is created and loaded from the minimap
// rig (anim set row "Default" of CamAnimSetTable), set up and made active, its clip played, the local player targeted, the map
// root node gets the camera node as child, and the zoom handler takes the camera.
void MenuCharMenu_Map::CreateMapCamera() {
    if (m_mapCamera != nullptr) {
        return;
    }
    MenuManager* manager = MenuManager::GetInstance();
    SceneManager* scene = DeviceSceneManager();
    if (manager->m_savedCamera == nullptr) {
        MenuManager::GetInstance()->m_savedCamera = scene->activeCamera;  // CSceneManager +0xe4
    }
    CameraLevel* camera = new CameraLevel();
    m_mapCamera = camera;
    const int camTableIndex =
        pydata::FindMemberName(Arrays::CamAnimSetTable::m_memberNames, static_cast<int>(Arrays::CamAnimSetTable::size), "Default");
    camera->Load("data/3D/camera/minimapcameras.bdae", camTableIndex, "PlayerCamera_Default_minimap");
    camera->m_useObjectPosition = true;  // +0x85: target the object position (map mode)
    camera->m_zoomCurrent = 0.0f;        // +0x88
    camera->m_zoomTarget = 1.0f;         // +0x8c
    camera->EnableDamping(false);
    camera->SetData(0.42963f, 1.5f, 0.0f, 100000.0f, false);
    glitch::core::vector3d<float> upVector;
    upVector.X = -1.0f;
    upVector.Y = 1.0f;
    upVector.Z = 0.0f;
    camera->m_camera->setUpVector(upVector);
    camera->SetActive();
    camera->PlayAnim(reinterpret_cast<const Structs::CamAnimSet*>(Arrays::CamAnimSetTable::members)[camera->m_camTableIndex].Idle, 0,
                     false);
    PlayerInfo* localPlayer = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true);
    camera->SetTarget(localPlayer->unk_660, 0);
    DeviceSceneManager()->m_nodeMapRoot->addChild(camera->m_node);  // CEmptySceneNode vtable +0x5c
    ZoomHandler* zoom = ApplicationGetInstance().m_zoomHandler;
    zoom->setCamera(camera);
    zoom->m_mousePanEnabled = true;
    UpdateMapCamera();
}

// 0x4537c0 MenuCharMenu_Map::Hide()
// The level camera is pointed back at the local player and made active, the zoom handler takes it, the map camera is destroyed,
// MenuBase::Hide runs, and the map root node (when one exists) is hidden. When no level is loaded the original calls through a
// null camera too; the port keeps that order.
void MenuCharMenu_Map::Hide() {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    CameraLevel* levelCamera = nullptr;
    if (level != nullptr) {
        levelCamera = level->m_camera;  // Level +0x128
    }
    GameObject* target = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (target != nullptr) {
        levelCamera->SetTarget(target, 0);
        levelCamera->SetActive();
        levelCamera->Update();
    }
    ApplicationGetInstance().m_zoomHandler->setCamera(levelCamera);
    DestroyMapCamera();
    MenuBase::Hide();
    glitch::scene::CEmptySceneNode* root = DeviceSceneManager()->m_nodeMapRoot;
    if (root != nullptr) {
        root->setVisible(false);  // ISceneNode vtable +0x48
    }
}

// 0x45387c MenuCharMenu_Map::ResetZoom()
void MenuCharMenu_Map::ResetZoom() {
    ApplicationGetInstance().m_zoomHandler->ResetZoom();
}

// 0x45389c MenuCharMenu_Map::GetMapScreenCoord(Point3D<float> const&, float, float, float, float)
// The world position is projected by CameraBase::GetScreenCoord. The x coordinate scales by width, the y coordinate
// is negated and scales by height (screen y grows downward), each halved, and offset by the centre.
glitch::core::vector2d<float> MenuCharMenu_Map::GetMapScreenCoord(const Point3D<float>& pos, float width, float height,
                                                                  float centerX, float centerY) {
    Point2D<float> screen{0.0f, 0.0f};
    CameraBase::GetScreenCoord(pos, screen);
    const float x = (width * screen.X) * 0.5f + centerX;
    const float y = (-screen.Y * height) * 0.5f + centerY;
    glitch::core::vector2d<float> result;
    result.X = x;
    result.Y = y;
    return result;
}

// 0x453974 MenuCharMenu_Map::RenderIconType(MenuCharMenu_Map::EIconType, gameswf::rect const&, float)
// The scale is the base icon scale plus the camera effective zoom (never below minScale); room-exit types (14..17) are rotated
// by CSWTCH.6123[type - 14] degrees. Each icon is moved to its projected screen position and, when the scale exceeds 0.1, rescaled
// and rotated through its matrix; its visible byte (+0x9b) follows scale > 0.1.
void MenuCharMenu_Map::RenderIconType(EIconType type, const gameswf::rect& rect, float minScale) {
    const int index = static_cast<int>(type);
    if (index < 0 || index >= ICON_COUNT) {
        ReportIconTypeAssert(659);
        return;
    }
    CameraLevel* camera = m_mapCamera;
    if (camera == nullptr) {
        return;
    }
    const float width = rect.m_x_max - rect.m_x_min;
    const float height = rect.m_y_max - rect.m_y_min;
    const float centerX = rect.m_x_min + width * 0.5f;
    const float centerY = rect.m_y_min + height * 0.5f;

    float scale = m_iconBaseScale + camera->m_zoomEffective;  // +0x1dc base scale, camera +0x90
    if (scale < minScale) {
        scale = minScale;
    }

    const unsigned angleIndex = static_cast<unsigned>(index - 14);
    const float angle = (angleIndex <= 3u) ? kRoomExitAngles[angleIndex] : 0.0f;
    const float rotation = angle * kToRadianFactor;

    for (const auto& icon : m_icons[index]) {
        if (scale > 0.1f) {
            Point3D<float> world{icon.second.X, icon.second.Y, icon.second.Z};
            const glitch::core::vector2d<float> screen = GetMapScreenCoord(world, width, height, centerX, centerY);
            m_menu->SetPosition(icon.first, static_cast<int>(screen.X), static_cast<int>(screen.Y));
            gameswf::matrix matrix = icon.first->get_matrix();
            matrix.set_scale_rotation(scale, scale, rotation);
            icon.first->set_matrix(matrix);
        }
        icon.first->set_visible(scale > 0.1f);  // byte +0x9b
    }
}

// 0x453be8 MenuCharMenu_Map::IsInsideRooms(Point3D<float> const&, bool) const
// visited selects m_visitedRooms, otherwise m_unvisitedRooms. True when a room of that list contains the position.
bool MenuCharMenu_Map::IsInsideRooms(const Point3D<float>& pos, bool visited) const {
    const std::list<RoomZone*>& rooms = visited ? m_visitedRooms : m_unvisitedRooms;
    for (RoomZone* room : rooms) {
        if (room->HasInside(pos)) {
            return true;
        }
    }
    return false;
}

// 0x453c3c MenuCharMenu_Map::Init()
// Registers the menu with MenuManager, then caches the three movie clips: MapIconsDummy, MapName and RenderMap (found from
// the current menu context).
void MenuCharMenu_Map::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
    MenuFX* menu = m_menu;
    m_mapIconsDummy = menu->Find("MapIconsDummy", GetCurrentMenuContext());
    m_mapName = menu->Find("MapName", GetCurrentMenuContext());
    m_renderMap = menu->Find("RenderMap", GetCurrentMenuContext());
}

// 0x453ccc MenuCharMenu_Map::MenuCharMenu_Map()  (C1, complete-object constructor)
// 0x453e28 MenuCharMenu_Map::MenuCharMenu_Map()  (C2, base-object constructor)
// The two emitted copies have the same body (both 1138 bytes); the C++ constructor below is that one body.
// Sets the map bounds (min -1, max 1, player position 0), the base icon scale 1.19921875 (0x3f998000) and the
// minimum scale 0.3984375 (0x3ecc0000), clears the camera and the flag at +0x1e4, and then calls Init.
// m_icons, the two room lists and the MenuBase part are built by their own constructors.
MenuCharMenu_Map::MenuCharMenu_Map() : MenuBase("menu_MapSheet") {
    m_mapBoundsMin.X = -1.0f;
    m_mapBoundsMin.Y = -1.0f;
    m_mapBoundsMin.Z = -1.0f;
    m_mapBoundsMax.X = 1.0f;
    m_mapBoundsMax.Y = 1.0f;
    m_mapBoundsMax.Z = 1.0f;
    m_playerPos.X = 0.0f;
    m_playerPos.Y = 0.0f;
    m_playerPos.Z = 0.0f;
    m_iconBaseScale = 1.19921875f;
    m_iconMinScale = 0.3984375f;
    m_mapCamera = nullptr;
    unk_1e4 = false;
    Init();
}

// 0x453da4 MenuCharMenu_Map::GetInstance()
// The original builds a function-local static with the guard variable and registers its destructor with atexit. The
// C++ function-local static does the same.
MenuCharMenu_Map* MenuCharMenu_Map::GetInstance() {
    static MenuCharMenu_Map instance;
    return &instance;
}

// 0x454030 MenuCharMenu_Map::RenderAllIcons(gameswf::rect const&)
// Types 0..3 and 7..9 render with the minimum scale; every other type renders with 0.0. The order is 0..17.
void MenuCharMenu_Map::RenderAllIcons(const gameswf::rect& rect) {
    for (int i = 0; i != ICON_COUNT; ++i) {
        const bool useMinScale = i < 4 || i == 7 || i == 8 || i == 9;
        RenderIconType(static_cast<EIconType>(i), rect, useMinScale ? m_iconMinScale : 0.0f);
    }
}

// 0x454108 MenuCharMenu_Map::RenderMap(gameswf::render_state&, void*)
// Display callback of the m_renderMap clip. user is the menu. The driver viewport is set to the clip bounds in pixels (the
// previous one is saved), the map camera is updated, the scene is updated and, when it has an active camera, drawn from the map
// root node together with the icons; the viewport is then restored.
void MenuCharMenu_Map::RenderMap(gameswf::render_state& /*state*/, void* user) {
    MenuCharMenu_Map* menu = static_cast<MenuCharMenu_Map*>(user);
    const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(menu->m_renderMap);
    glitch::video::IRenderTarget* target = ApplicationGetInstance().m_device->videoDriver->m_renderTargets.back().get();
    const glitch::core::rect<int> savedViewport = target->viewport();
    gameswf::root* root = menu->m_menu->GetRoot();
    const float invX = GameSWFUtils::GetInvPixelScaleX(root);
    const float invY = GameSWFUtils::GetInvPixelScaleY(root);
    glitch::core::rect<int> viewport;
    viewport.UpperLeftCorner.X = static_cast<int>(bounds[0] / invX);   // xmin
    viewport.UpperLeftCorner.Y = static_cast<int>(bounds[2] / invY);   // ymin
    viewport.LowerRightCorner.X = static_cast<int>(bounds[1] / invX);  // xmax
    viewport.LowerRightCorner.Y = static_cast<int>(bounds[3] / invY);  // ymax
    target->setViewport(viewport);
    menu->UpdateMapCamera();
    SceneManager* scene = DeviceSceneManager();
    scene->update(static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt())), false);
    scene->cullingEnabled = false;  // +0x250
    scene = DeviceSceneManager();
    if (scene->activeCamera != nullptr) {
        if (scene->m_nodeMapRoot != nullptr) {
            scene->drawAll(scene->m_nodeMapRoot);
        }
        gameswf::rect iconRect;
        iconRect.m_x_min = bounds[0];
        iconRect.m_x_max = bounds[1];
        iconRect.m_y_min = bounds[2];
        iconRect.m_y_max = bounds[3];
        menu->RenderAllIcons(iconRect);
        scene = DeviceSceneManager();
    }
    scene->cullingEnabled = true;
    target->setViewport(savedViewport);
}

// 0x454368 MenuCharMenu_Map::~MenuCharMenu_Map()  (D1, complete-object destructor)
// The camera is deleted first. The members are then released by their own destructors in reverse order: the icon
// vectors (17 down to 0), the unvisited room list, the visited room list, and MenuBase, as the original clears them.
MenuCharMenu_Map::~MenuCharMenu_Map() {
    if (m_mapCamera != nullptr) {
        delete m_mapCamera;
        m_mapCamera = nullptr;
    }
}

// 0x4543f0 MenuCharMenu_Map::~MenuCharMenu_Map()  (D0, deleting destructor)
// Compiler-generated: the C++ delete of a MenuCharMenu_Map emits it. No body is written; see the ledger.
