// MenuMinimap bodies, batch g1-game-ui-MenuMinimap-b3671b-0 (13 rows: the whole class).
// The "menu_MapSheet" map page is a HUDMinimap that adds no members. It overrides Show, RegisterDisplayCallback,
// RegisterToMenuManager, InitAll, CreateMapCamera and DisableMapCamera. Its RenderMap is the display callback that
// RegisterDisplayCallback registers as "RenderMap".
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets
// and are never used for addressing.
//
// The device (driver at +0x10, scene manager at +0x1c) is reached through ApplicationGetInstance().m_device and
// DeviceSceneManager().
//
// Destructor D0 (0x435088) and the scalar deleting form are compiler-generated and have no body here (row skipped).

#include <array>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/global/screen_size.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraBase.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMinimap.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/ZoomHandler.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel). Declared the same way as in the HUDMinimap bodies.
extern int gAssertLevel;

namespace {

// The "IsDisablingMinimap" debug switch, read the same way as in HUDMinimap. Hex-Rays prints the name passed by Show and
// RenderMap as an empty string, but the assembly loads the literal "IsDisablingMinimap" (18 bytes, end at +0x12 of the
// string), so both functions read the same switch as HUDMinimap.
bool IsMinimapDisabled() {
    DebugSwitches::s_inst.load();
    std::string name("IsDisablingMinimap");
    return DebugSwitches::s_inst.GetSwitch(name);
}

}  // namespace

// 0x434dc0 _ZN11MenuMinimap7InitAllEv
// The same steps as HUDMinimap::InitAll, but each one is a virtual call through this object, so the MenuMinimap overrides
// are reached: RegisterToMenuManager (vtable +0x7c), InitAllIcons (+0x70), InitAllObjects (+0x5c).
void MenuMinimap::InitAll() {
    RegisterToMenuManager();  // vtable +0x7c
    InitAllIcons();           // vtable +0x70
    InitAllObjects();         // vtable +0x5c
}

// 0x434df8 _ZN11MenuMinimap16DisableMapCameraEv
// The game camera is enabled again (EnableGameCamera, vtable +0x94). When it returns a camera, the zoom handler takes it
// (ZoomHandler::setCamera, the camera is a CameraLevel). The original returns the float that setCamera leaves in r0; the slot is
// typed CameraBase* (HUDMinimap::DisableMapCamera) and its only caller, HUDMinimap::Hide, discards the value, so nullptr is
// returned.
CameraBase* MenuMinimap::DisableMapCamera() {
    CameraBase* camera = EnableGameCamera();  // vtable +0x94
    if (camera == nullptr) {
        return nullptr;
    }
    Singleton<Application>::s_inst.m_zoomHandler->setCamera(static_cast<CameraLevel*>(camera));  // dword_99F77C = s_inst +0x50
    return nullptr;
}

// 0x434e38 _ZN11MenuMinimap15CreateMapCameraEv
// Creates the map camera once, loads it from the camera tests rig (anim set row "MiniMap" of CamAnimSetTable, -1 when absent),
// sets it up (aspect 1.7778; HUDMinimap uses 1.0) and plays the clip of that row. If it exists nothing else happens (the original
// returns this, or PlayAnim result; the slot is void). The null check after operator new (assert m_mapCam, line 179) is not
// written: C++ new throws instead of returning null.
void MenuMinimap::CreateMapCamera() {
    if (m_mapCam != nullptr) {
        return;
    }
    m_mapCam = new CameraLevel();  // operator new(0xa8) and the CameraLevel constructor
    const int camTableIndex =
        pydata::FindMemberName(Arrays::CamAnimSetTable::m_memberNames, static_cast<int>(Arrays::CamAnimSetTable::size), "MiniMap");
    m_mapCam->Load("data/3D/camera/CameraTests.bdae", camTableIndex, "PlayerCamera_Default");
    m_mapCam->m_useObjectPosition = true;                              // +0x85 (byte set to 1)
    m_mapCam->EnableDamping(false);                                    // CameraTarget::EnableDamping(m_mapCam, 0)
    m_mapCam->SetData(0.42963f, 1.7778f, 0.0f, 100000.0f, false);      // CameraBase::SetData; aspect 1.7778 (HUDMinimap uses 1.0)
    m_mapCam->m_zoomTarget = 1.0f;                                     // +0x8c
    m_mapCam->m_zoomCurrent = 0.0f;                                    // +0x88
    m_mapCam->PlayAnim(reinterpret_cast<const Structs::CamAnimSet*>(Arrays::CamAnimSetTable::members)[m_mapCam->m_camTableIndex].Idle, 0,
                       false);
}

// 0x435054 _ZN11MenuMinimapD1Ev
// 0x4350a4 _ZN11MenuMinimapD2Ev
// Identical bodies (Hex-Rays and asm agree), so one definition serves both. The original sets the vptr to the MenuMinimap
// vtable and calls ~HUDMinimap. The compiler emits both for an empty body.
MenuMinimap::~MenuMinimap() {}

// 0x4350d8 _ZN11MenuMinimapC1Ev
// 0x43519c _ZN11MenuMinimapC2Ev
// Identical bodies, so one definition serves both. The base is HUDMinimap("menu_MapSheet"); the compiler stores the
// MenuMinimap vptr after the base constructor, as the original does. MenuMinimap adds no members.
MenuMinimap::MenuMinimap() : HUDMinimap("menu_MapSheet") {}

// 0x435118 _ZN11MenuMinimap11GetInstanceEv
// Meyers singleton: the static local is a MenuMinimap built with "menu_MapSheet" (HUDMinimap::GetInstance has its own).
// The compiler emits the guard and the atexit registration of ~MenuMinimap that the original calls by hand.
MenuMinimap* MenuMinimap::GetInstance() {
    static MenuMinimap mdt;
    return &mdt;
}

// 0x43500c _ZN11MenuMinimap23RegisterDisplayCallbackEv
// Registers RenderMap as the display callback "RenderMap" of the owning MenuFX (+0x04), with this as the user pointer.
void MenuMinimap::RegisterDisplayCallback() {
    m_menu->RegisterDisplayCallback("RenderMap", &MenuMinimap::RenderMap, this);
}

// 0x43503c _ZN11MenuMinimap21RegisterToMenuManagerEv
void MenuMinimap::RegisterToMenuManager() {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x435308 _ZN11MenuMinimap4ShowEv
// With the IsDisablingMinimap switch set, only MenuBase::Show runs. Otherwise HUDMinimap::Show runs as a direct (non-virtual)
// call, then the zoom handler is bound to the map camera and its mouse pan flag (ZoomHandler +0x24) is set. The original
// returns the float from ZoomHandler::setCamera. The slot is void and no caller reads that value, so it is dropped.
void MenuMinimap::Show() {
    if (IsMinimapDisabled()) {
        MenuBase::Show();  // non-virtual call, as in the original
        return;
    }
    HUDMinimap::Show();  // non-virtual call, as in the original
    ZoomHandler* zoom = Singleton<Application>::s_inst.m_zoomHandler;  // dword_99F77C = s_inst +0x50
    static_cast<void>(zoom->setCamera(m_mapCam));  // m_mapCam is read after HUDMinimap::Show, which may create it
    zoom->m_mousePanEnabled = true;                // ZoomHandler +0x24
}

// 0x4353e4 _ZN11MenuMinimap9RenderMapERN7gameswf12render_stateEPv
// The display callback registered as RenderMap. The user pointer is the MenuMinimap. With the minimap enabled, a loaded level
// (step 38) and a shown map camera that is not in a zoom animation: the map root node is shown, the map camera enabled, the
// driver viewport set to the "RenderMap" clip bounds in pixels (the previous one is saved), the room and object visibility
// refreshed, the scene drawn from the map root when it has an active camera, the viewport restored, the map camera updated, the
// game camera enabled and the map root hidden.
void MenuMinimap::RenderMap(gameswf::render_state& /*render*/, void* menu) {
    MenuMinimap* map = static_cast<MenuMinimap*>(menu);
    if (IsMinimapDisabled()) {
        return;
    }
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr || level->m_loadStep != 38) {  // loaded level (38)
        return;
    }
    if (map == nullptr || map->m_mapCam == nullptr) {
        return;
    }
    if (!map->unk_c4 || map->m_mapCam->m_zoomAnimActive) {  // unk_c4 set and no zoom animation running
        return;
    }
    glitch::scene::CEmptySceneNode* node = DeviceSceneManager()->m_nodeMapRoot;
    if (node != nullptr) {
        node->setVisible(true);  // ISceneNode vtable +0x48
    }
    map->EnableMapCamera();  // (b) vtable +0x8c
    gameswf::character* clip = map->m_menu->Find("RenderMap", map->GetCurrentMenuContext());  // RenderFX::Find(menu, "RenderMap", context)
    const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(clip);       // xmin, xmax, ymin, ymax
    glitch::video::IRenderTarget* target = Singleton<Application>::s_inst.m_device->videoDriver->m_renderTargets.back().get();
    const glitch::core::rect<int> savedViewport = target->viewport();
    gameswf::root* root = map->m_menu->GetRoot();
    const float invScaleX = GameSWFUtils::GetInvPixelScaleX(root);
    const float invScaleY = GameSWFUtils::GetInvPixelScaleY(root);
    glitch::core::rect<int> viewport;
    viewport.UpperLeftCorner.X = FlashBoxOffsetX(root) + static_cast<int>(bounds[0] / invScaleX);
    viewport.UpperLeftCorner.Y = FlashBoxOffsetY(root) + static_cast<int>(bounds[2] / invScaleY);
    viewport.LowerRightCorner.X = FlashBoxOffsetX(root) + static_cast<int>(bounds[1] / invScaleX);
    viewport.LowerRightCorner.Y = FlashBoxOffsetY(root) + static_cast<int>(bounds[3] / invScaleY);
    target->setViewport(viewport);
    DeviceSceneManager()->cullingEnabled = false;  // +0x250
    map->SetRoomVisibility(node);                  // (h) vtable +0x64
    map->SetObjectsVisibility(level);              // (i) vtable +0x60
    SceneManager* scene = DeviceSceneManager();
    if (node != nullptr && scene->activeCamera != nullptr) {
        scene->drawAll(node);  // vtable +0x3c
        scene = DeviceSceneManager();
    }
    scene->cullingEnabled = true;
    target->setViewport(savedViewport);
    map->m_mapCam->Update();   // (m) CameraLevel::Update, vtable +0x10
    map->EnableGameCamera();   // (n) vtable +0x94, the result is discarded
    if (node != nullptr) {
        node->setVisible(false);
    }
}
