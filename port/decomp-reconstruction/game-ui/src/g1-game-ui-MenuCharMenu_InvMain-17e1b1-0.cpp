// MenuCharMenu_InvMain bodies, batch g1-game-ui-MenuCharMenu_InvMain-17e1b1-0 (part 1 of 1 of this class).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ARM offsets. Partial functions say in their comment which part is missing.
//
// Facts shared by the bodies:
//   - The class has no members of its own (MenuBase layout). m_inventoryPaneCam is static and defined here.
//   - The compiler emits the vptr stores of the constructors and destructors, so no body writes them.
//   - The compiler-generated deleting destructor (D0, 0x452bcc) is not rebuilt: delete emits it.
//   - The scene manager (glitch::scene::CSceneManager) is the word at IDevice +0x1c, read through dword_99F73C
//     (the glitch device, Singleton<Application>::s_inst.m_device at +0x10). dh2 does not declare IDevice +0x1c, so
//     every access to the scene manager is missing and the bodies that need it are partial (layout request).
//   - RootSceneNode (the model root, VisualObject +0x08) is an ISceneNode in the original, but the dh2 class does not
//     declare that base yet. The ISceneNode calls on it (addChild, getRotation, setRotation, getPosition, setPosition)
//     are therefore missing, and the bodies that make them are partial (layout request).
//   - MenuManager +0x60 is MenuManager::m_savedCamera here: the camera saved by CreateAvatarCamera, restored by
//     DestroyAvatarCamera.
//   - PlayerInfo +0x660 is declared as PlayerInfo::unk_660 (Character*); the original name is character_660.

#include <array>

#include "dh2/AnchorBase.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuCharMenu_InvDetails.hpp"
#include "dh2/MenuCharMenu_InvMain.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-shared/glitch_core.hpp"

// Static avatar camera. Created by CreateAvatarCamera, dropped and cleared by DestroyAvatarCamera and the destructor.
glitch::scene::ICameraSceneNode* MenuCharMenu_InvMain::m_inventoryPaneCam = nullptr;

// 0x452e20 _ZN20MenuCharMenu_InvMainC1Ev (complete-object constructor)
// 0x452e68 _ZN20MenuCharMenu_InvMainC2Ev (base-object constructor, the same bytes)
// MenuBase("menu_InventorySheetMain"), then Init(). The vptr store is emitted by the compiler.
MenuCharMenu_InvMain::MenuCharMenu_InvMain() : MenuBase("menu_InventorySheetMain") {
    Init();
}

// 0x452b64 _ZN20MenuCharMenu_InvMainD1Ev (complete-object destructor)
// 0x452be8 _ZN20MenuCharMenu_InvMainD2Ev (base-object destructor, the same bytes)
// Drops the static avatar camera and clears the pointer. MenuBase::~MenuBase runs after it (implicit here).
MenuCharMenu_InvMain::~MenuCharMenu_InvMain() {
    if (m_inventoryPaneCam) {
        static_cast<glitch::IReferenceCounted*>(m_inventoryPaneCam)->drop();
        m_inventoryPaneCam = nullptr;
    }
}

// 0x452bcc _ZN20MenuCharMenu_InvMainD0Ev (deleting destructor)
// Compiler-generated: runs ~MenuCharMenu_InvMain and then CustomFree(this). The delete expression emits it, so no
// body is written here.

// 0x452e00 _ZN20MenuCharMenu_InvMain4InitEv
// Registers this menu with the MenuManager singleton, then initialises the details page
// (MenuCharMenu_InvDetails::Init). Both are tail calls in the original.
void MenuCharMenu_InvMain::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
    MenuCharMenu_InvDetails::GetInstance()->Init();
}

// 0x452eb0 _ZN20MenuCharMenu_InvMain11GetInstanceEv
// Function-local static, constructed on first use. The guard and the atexit registration of the original are what
// the compiler emits for a static local with a non-trivial constructor and destructor.
MenuCharMenu_InvMain* MenuCharMenu_InvMain::GetInstance() {
    static MenuCharMenu_InvMain instance;
    return &instance;
}

// 0x452b1c _ZN20MenuCharMenu_InvMain4ShowEv
// Registers the "avatarpane" display callback on the owning MenuFX (State +0x04, m_menu), with this menu as the user
// pointer, creates the avatar camera, then runs MenuBase::Show (non-virtual). The callback's return value is not used.
void MenuCharMenu_InvMain::Show() {
    m_menu->RegisterDisplayCallback("avatarpane", RenderCharacterPane, this);
    CreateAvatarCamera();
    MenuBase::Show();
}

// 0x4528a0 _ZN20MenuCharMenu_InvMain4HideEv
// Destroys the avatar camera, then runs MenuBase::Hide (non-virtual; the original branches to it).
void MenuCharMenu_InvMain::Hide() {
    DestroyAvatarCamera();
    MenuBase::Hide();
}

// 0x452810 _ZN20MenuCharMenu_InvMain19DestroyAvatarCameraEv
// The camera is removed from its scene (ISceneNode::remove, vtable +0x68), dropped, and the static pointer is cleared; when
// MenuManager has a saved camera it becomes the scene active camera again.
void MenuCharMenu_InvMain::DestroyAvatarCamera() {
    if (!m_inventoryPaneCam) {
        return;
    }
    m_inventoryPaneCam->remove();                                                   // ISceneNode vtable +0x68
    static_cast<glitch::IReferenceCounted*>(m_inventoryPaneCam)->drop();
    m_inventoryPaneCam = nullptr;
    MenuManager* manager = MenuManager::GetInstance();
    if (manager->m_savedCamera) {                                                   // MenuManager +0x60, the saved camera
        DeviceSceneManager()->setActiveCamera(MenuManager::GetInstance()->m_savedCamera);
    }
}

// 0x4528d0 _ZN20MenuCharMenu_InvMain18CreateAvatarCameraEv
// The scene active camera is saved in MenuManager (when none is saved). The camera (CCameraSceneNode, id -1, position
// (0, -800, 200), target (0, 0, 200)) is added to the scene root and to the local character model root, its creation
// reference dropped, and it becomes the active camera; then its up vector, aspect ratio, FOV, near and far planes are set, one
// extra reference is held, and the local character goes to its idle state.
void MenuCharMenu_InvMain::CreateAvatarCamera() {
    if (m_inventoryPaneCam) {
        return;
    }
    MenuManager* manager = MenuManager::GetInstance();
    SceneManager* scene = DeviceSceneManager();
    if (!manager->m_savedCamera) {                                                  // MenuManager +0x60
        MenuManager::GetInstance()->m_savedCamera = scene->activeCamera;            // CSceneManager +0xe4
    }
    const glitch::core::vector3d<float> position{0.0f, -800.0f, 200.0f};            // v10 in the original
    const glitch::core::vector3d<float> target{0.0f, 0.0f, 200.0f};                 // v9 in the original
    m_inventoryPaneCam = new glitch::scene::CCameraSceneNode(-1, position, target, false);
    DeviceSceneManager()->rootNode->addChild(m_inventoryPaneCam);                   // CSceneManager +0x04, vtable +0x5c

    PlayerInfo* player = dword_99F76C->GetLocalPlayer(0, true);
    Character* character = player->unk_660;                                         // PlayerInfo +0x660
    if (character) {
        VisualObject* visual = character->m_visualObject;                           // GameObject +0x2d8
        if (visual) {
            visual->m_node->addChild(m_inventoryPaneCam);                           // ISceneNode vtable +0x5c
        }
    }
    static_cast<glitch::IReferenceCounted*>(m_inventoryPaneCam)->drop();            // the creation reference
    DeviceSceneManager()->setActiveCamera(m_inventoryPaneCam);

    m_inventoryPaneCam->setUpVector(glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f});  // vtable +0x114
    m_inventoryPaneCam->setAspectRatio(1.66775239f);                                // vtable +0x138, bits 0x3fd578e9
    m_inventoryPaneCam->setFOV(0.558519006f);                                       // vtable +0x13c, bits 0x3f0efb1a
    ++static_cast<glitch::IReferenceCounted*>(m_inventoryPaneCam)->referenceCounter;  // one extra reference
    m_inventoryPaneCam->setNearValue(10.0f);                                        // vtable +0x130, bits 0x41200000
    m_inventoryPaneCam->setFarValue(1000.0f);                                       // vtable +0x134, bits 0x447a0000

    Character* local = dword_99F76C->GetLocalPlayer(0, true)->unk_660;              // PlayerInfo +0x660, read again
    if (local) {
        if (!local->SM_IsDead()) {                                                  // CharStateMachine at Character +0x4fc
            local->SM_SetIdleState(false);
        }
    }
}
// 0x452468 _ZN20MenuCharMenu_InvMain19RenderCharacterPaneERN7gameswf12render_stateEPv
// The pane rectangle ("avatarpane" in the current menu context) becomes the driver viewport (the previous one is kept), the pane
// camera gets the pane aspect ratio and becomes the active camera. With a local character: its animator is updated, the scene is
// updated, the model root is animated at the scene time, put at the origin and given a z rotation of -0.5 rad (the x/y Euler
// angles are kept), drawn when the scene has an active camera, and the viewport is restored; the character is re-placed and the
// level camera is pointed at it again.
void MenuCharMenu_InvMain::RenderCharacterPane(gameswf::render_state& render, void* user) {
    (void)render;  // a1 is not read by the original
    MenuCharMenu_InvMain* menu = static_cast<MenuCharMenu_InvMain*>(user);
    gameswf::character* pane = menu->m_menu->Find("avatarpane", menu->GetCurrentMenuContext());
    const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(pane);
    glitch::video::IRenderTarget* target = ApplicationGetInstance().m_device->videoDriver->m_renderTargets.back().get();
    const glitch::core::rect<int> savedViewport = target->viewport();
    gameswf::root* root = menu->m_menu->GetRoot();
    const float invX = GameSWFUtils::GetInvPixelScaleX(root);
    const float invY = GameSWFUtils::GetInvPixelScaleY(root);
    glitch::core::rect<int> viewport;
    viewport.UpperLeftCorner.X = static_cast<int>(bounds[0] / invX);
    viewport.UpperLeftCorner.Y = static_cast<int>(bounds[2] / invY);
    viewport.LowerRightCorner.X = static_cast<int>(bounds[1] / invX);
    viewport.LowerRightCorner.Y = static_cast<int>(bounds[3] / invY);
    target->setViewport(viewport);
    m_inventoryPaneCam->setAspectRatio(static_cast<float>(viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X) /
                                       static_cast<float>(viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y));  // vtable +0x138
    DeviceSceneManager()->setActiveCamera(m_inventoryPaneCam);
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    PlayerInfo* player = dword_99F76C->GetLocalPlayer(0, true);
    Character* character = player->unk_660;                                         // PlayerInfo +0x660
    if (!character) {
        return;
    }
    character->CharAnimator::Update();                                              // CharAnimator at +0x49c
    SceneManager* scene = DeviceSceneManager();
    scene->update(static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt())), false);
    RootSceneNode* modelRoot = character->m_visualObject->m_node;                   // VisualObject +0x08
    modelRoot->PlainOnAnimate(static_cast<std::uint32_t>(static_cast<int>(scene->time)));  // CSceneManager +0x254
    (void)modelRoot->getPosition();                                                 // vtable +0xa0, result discarded
    modelRoot->setPosition(glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f});        // +0xa4
    (void)modelRoot->getRotation();                                                 // vtable +0x98, result discarded
    glitch::core::vector3d<float> euler{0.0f, 0.0f, 0.0f};
    modelRoot->getRotation().toEulerDegree(euler);
    euler.X = euler.X * 0.017453f;
    euler.Y = euler.Y * 0.017453f;
    euler.Z = euler.Z * 0.017453f;
    glitch::core::quaternion rotation;
    rotation.set(euler.X, euler.Y, -0.5f);
    modelRoot->setRotation(rotation);                                               // +0x9c
    modelRoot->updateAbsolutePosition(true);                                        // vtable +0xb8
    scene = DeviceSceneManager();
    if (scene->activeCamera != nullptr) {
        scene->drawAll(modelRoot);
    }
    target->setViewport(savedViewport);
    character->GameObject::SetPosition(character->m_position, true);                // GameObject +0x160
    AnchorBase* anchor = character->m_cameraAnchor;                                 // GameObject +0x2e0
    if (anchor) {
        anchor->Reset();                                                            // vtable +0x08
        anchor->Update();                                                           // vtable +0x0c
    }
    CameraLevel* camera = level->m_camera;                                          // Level +0x128
    camera->SetTarget(character, 0);
    camera->CameraBase::SetActive();
    camera->Update();                                                               // vtable +0x10
    character->m_visualObject->SyncRotation();                                      // VisualObject::SyncRotation
}

