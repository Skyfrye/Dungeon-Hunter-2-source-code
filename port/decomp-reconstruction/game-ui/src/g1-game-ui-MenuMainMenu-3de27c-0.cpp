// MenuMainMenu bodies, batch g1-game-ui-MenuMainMenu-3de27c-0 (the whole class, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. Offsets in comments are the original
// 32-bit ARM offsets. A function marked PARTIAL says in its comment which step is missing and why. The value tables and the
// declarations the bodies use are in dh2/global/menu_main_menu.hpp.
//
// Facts shared by the bodies:
//   - MenuMainMenu adds no instance members to MenuBase (0xc4 bytes). Its members are all static.
//   - Initial values of the statics, read from the binary: mSavegameSlot is -1, m_isDestroyed is true, and the camera,
//     the scene root and the preview character start null.
//   - The glitch device is Singleton<Application>::s_inst.m_device. It holds the video driver at +0x10 and the scene manager at
//     +0x1c (DeviceSceneManager()).
//   - The compiler emits the vptr stores and the base destructors of the constructors and destructors, so the bodies carry
//     only the calls the original makes. The deleting destructor (D0) is not rebuilt: delete emits it.
//   - Application members are read through Singleton<Application>::s_inst. dword_99F764 (ObjectManager), dword_99F770
//     (PhysicalWorld), dword_99F778 (SavegameManager), dword_99F780 (MenuManager), dword_99F758 (PyDataConstants) and
//     dword_99F760 (StringManager) are the members +0x38, +0x44, +0x4c, +0x54, +0x2c and +0x34 (dh2/global/Globals.hpp).

#include <cstdint>
#include <cstring>
#include <string>

#include "core-platform/debug_out.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/Application.hpp"
#include "dh2/ColladaFactory.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "core-platform/gc_singleton.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/video_driver.hpp"
#include "net-session-online/game_center.hpp"
#include "gameswf/gameswf_root.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuMainMenu.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/menu_main_menu.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Statics. Definitions are here (MenuMainMenu owns them). Initial values as the binary holds them (see the file comment).
glitch::scene::CCameraSceneNode* MenuMainMenu::m_mainmenuPaneCam = nullptr;               // the avatar camera
glitch::collada::CRootSceneNode* MenuMainMenu::m_characterPlaneSceneNode = nullptr;        // the scene of the bdae file
std::int32_t MenuMainMenu::mSavegameSlot = -1;                                            // slot shown, -1 when none
Character* MenuMainMenu::mCharacterToRender = nullptr;                                    // the preview character
bool MenuMainMenu::m_isDestroyed = true;                                                  // set by Hide, cleared by Show
bool byte_99F7D7 = false;                                                                  // ELF 0x99f7d7

namespace {

// The StrID text of a constant. The original reads the constant (PyDataConstants) and then the string (StringManager).
std::string StrIdText(const char* constantName) {
    Application& app = Singleton<Application>::s_inst;
    const int constant = app.m_pyDataConstants->getConstant("StrID", constantName);
    return std::string(app.m_stringManager->getString(constant));
}

}  // namespace

// 0x42ba98 _ZN12MenuMainMenu8GotFocusEv
// Stores 1 to lastOpenMenuID and clears the two multiplayer flags. The original returns the address of the IGM flag in r0;
// that is the leftover of the last store, not part of the void override, so it is dropped.
void MenuMainMenu::GotFocus() {
    lastOpenMenuID = 1;
    Is_In_Multiplayer_IGM = false;
    Is_In_Multiplayer_Mode = false;
}

// 0x42bae8 _ZN12MenuMainMenu9LostFocusEv
// Empty in the original (BX LR).
void MenuMainMenu::LostFocus() {}

// 0x42baec _ZN12MenuMainMenu19DestroyAvatarCameraEv
// Removes the avatar camera from its scene (the ISceneNode remove slot, vtable +0x68), drops the reference, and clears the
// static pointer. The original has no active-camera step here. The remove call goes to CCameraSceneNode::remove, which is
// PARTIAL in glitch-scene-collada-gui (its active-camera check is missing), so this body is exact but its callee is not.
void MenuMainMenu::DestroyAvatarCamera() {
    if (m_mainmenuPaneCam) {
        m_mainmenuPaneCam->remove();
        static_cast<glitch::IReferenceCounted*>(m_mainmenuPaneCam)->drop();
        m_mainmenuPaneCam = nullptr;
    }
}

// 0x42bb44 _ZN12MenuMainMenu19RenderCharacterPaneERN7gameswf12render_stateEPv
// Empty in the original (BX LR). It is the display callback of the "RenderedBG" movie.
void MenuMainMenu::RenderCharacterPane(gameswf::render_state&, void*) {}

// 0x42bb48 _ZN12MenuMainMenu7OnEventERN8RenderFX5EventE
// Event kind 6 (a button) whose name contains "btn_GLLive" opens the Game Center page; one containing "btn_MENU_MORE_GAMES"
// opens the in-game page. Both pass the savegame language through the same table (dh2/global headers). The name is tested
// with strstr, which the original reaches through LC_API_STRSTR_0 (the libc call).
void MenuMainMenu::OnEvent(RenderFX::Event& e) {
    if (static_cast<int>(e.type) == 6) {
        if (std::strstr(e.name, "btn_GLLive") != nullptr) {
            const int language = Singleton<Application>::s_inst.m_savegameManager->getLanguage();
            appDebugLog("****OpenGLive called****", "");
            nativeOpenGLive(GLLiveLanguageArg(language));
        } else if (std::strstr(e.name, "btn_MENU_MORE_GAMES") != nullptr) {
            const int language = Singleton<Application>::s_inst.m_savegameManager->getLanguage();
            appDebugLog("****OpenIGP called****", "");
            nativeOpenIGP(IGPLanguageArg(language));
        }
    }
    MenuBase::OnEvent(e);
}

// 0x42bcbc _ZN12MenuMainMenu16DestroyCharacterEv
// Flushes the object manager (dword_99F764, Application +0x38) and the animation set manager, then clears the preview character.
void MenuMainMenu::DestroyCharacter() {
    Singleton<Application>::s_inst.m_objectManager->Flush();
    Singleton<AnimSetManager>::s_inst.Flush();
    mCharacterToRender = nullptr;
}

// 0x42bd08 _ZN12MenuMainMenu14SetupCharacterEv
// With a shown slot and a scene: the preview player "PlayerCharacter_0" is created (from the save when it exists: CreatePlayer with
// (false, false) then SG_Load(4); otherwise (true, false)), the avatar camera becomes the active camera, and the model root is
// added to the scene root at (0, -200, -20), rolled by 3.1416 * -0.125 and its absolute position updated.
void MenuMainMenu::SetupCharacter() {
    if (mSavegameSlot == -1 || !m_characterPlaneSceneNode) {
        return;
    }
    const std::uint32_t slot = static_cast<std::uint32_t>(mSavegameSlot);
    if (PlayerSavegame::SG_Exists(slot)) {
        mCharacterToRender = Character::CreatePlayer(slot, 0, 0, "PlayerCharacter_0", false, false);
        mCharacterToRender->SG_Load(4);
    } else {
        mCharacterToRender = Character::CreatePlayer(slot, 0, 0, "PlayerCharacter_0", true, false);
    }
    DeviceSceneManager()->setActiveCamera(m_mainmenuPaneCam);
    RootSceneNode* node = mCharacterToRender->m_visualObject->m_node;  // VisualObject +0x08
    DeviceSceneManager()->rootNode->addChild(node);                    // scene +0x04, vtable +0x5c
    node->setPosition(glitch::core::vector3d<float>{0.0f, kPreviewCharacterPositionY, kPreviewCharacterPositionZ});
    glitch::core::quaternion rotation;
    rotation.set(0.0f, 0.0f, kPreviewCharacterRoll);
    node->setRotation(rotation);
    node->updateAbsolutePosition(true);
}

// 0x42bebc _ZN12MenuMainMenu12DestroySceneEv
// The scene root (when there is one) is removed from the scene and cleared, the scene manager is cleared, the preview character
// is destroyed, the 2D driver textures are freed and the glitch objects are cleaned.
void MenuMainMenu::DestroyScene() {
    if (m_characterPlaneSceneNode) {
        m_characterPlaneSceneNode->remove();  // ISceneNode vtable +0x68
        m_characterPlaneSceneNode = nullptr;
    }
    DeviceSceneManager()->clear();  // scene manager vtable +0x68
    DestroyCharacter();
    glitch::video::C2DDriver::freeTextures(Singleton<Application>::s_inst.m_device->videoDriver);
    Singleton<Application>::s_inst.CleanGlitch();
}

// 0x42bf3c _ZN12MenuMainMenu18CreateAvatarCameraEv
// The avatar camera (CCameraSceneNode, id -1, position (0, -900, 150), target (0, 0, 225), far-to-infinity false) is added to the
// scene root, its creation reference dropped, and it becomes the active camera; then the up vector (0, 0, 1), the aspect ratio,
// the FOV, one extra reference, the near plane 10 and the far plane 2000 are set.
void MenuMainMenu::CreateAvatarCamera() {
    if (m_mainmenuPaneCam) {
        return;
    }
    const glitch::core::vector3d<float> position{0.0f, kAvatarCameraPositionY, kAvatarCameraPositionZ};
    const glitch::core::vector3d<float> target{0.0f, 0.0f, kAvatarCameraTargetZ};
    m_mainmenuPaneCam = new glitch::scene::CCameraSceneNode(-1, position, target, false);
    DeviceSceneManager()->rootNode->addChild(m_mainmenuPaneCam);  // scene +0x04, vtable +0x5c
    static_cast<glitch::IReferenceCounted*>(m_mainmenuPaneCam)->drop();
    DeviceSceneManager()->setActiveCamera(m_mainmenuPaneCam);
    m_mainmenuPaneCam->setUpVector(glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f});  // vtable +0x114
    m_mainmenuPaneCam->setAspectRatio(kAvatarCameraAspectRatio * ScreenAspectScale());                      // vtable +0x138
    m_mainmenuPaneCam->setFOV(kAvatarCameraFov);                                      // vtable +0x13c
    ++static_cast<glitch::IReferenceCounted*>(m_mainmenuPaneCam)->referenceCounter;   // one extra reference
    m_mainmenuPaneCam->setNearValue(kAvatarCameraNear);                               // vtable +0x130
    m_mainmenuPaneCam->setFarValue(kAvatarCameraFar);                                 // vtable +0x134
}

// 0x42c0d0 _ZN12MenuMainMenu24ChangeCharacterToDisplayEib
// The first register is the slot and the second the force flag; the third register of the listing is unused. When the slot
// changes (or the flag is set), the old character is destroyed if a slot was shown, the new slot is stored, the character is
// set up and the avatar camera is created.
void MenuMainMenu::ChangeCharacterToDisplay(int savegameSlot, bool force) {
    if (savegameSlot != mSavegameSlot || force) {
        if (mSavegameSlot != -1) {
            DestroyCharacter();
        }
        mSavegameSlot = savegameSlot;
        SetupCharacter();
        CreateAvatarCamera();
    }
}

// 0x42c128 _ZN12MenuMainMenu4HideEv
// The IsValidMenu test, MenuBase::Hide, the Hide of the "menu_bg" menu, DestroyScene, DestroyAvatarCamera, m_isDestroyed = true,
// mSavegameSlot = -1, then VoxSoundManager::StopMusic(s_instance, 1000). (DestroyScene has its own partial row.)
void MenuMainMenu::Hide() {
    if (!IsValidMenu()) {
        return;
    }
    MenuBase::Hide();
    MenuBase* background = MenuManager::GetInstance()->GetMenuByName("menu_bg");
    background->Hide();
    DestroyScene();
    DestroyAvatarCamera();
    m_isDestroyed = true;
    mSavegameSlot = -1;
    VoxSoundManager::s_instance->StopMusic(1000);
}

// 0x42c1c8 _ZN12MenuMainMenu6UpdateEv
// With a valid menu: the preview character animator is updated (CharAnimator at +0x49c, a base of Character) and the scene is
// updated with a zero step (scene manager vtable +0x60, update(0.0f, false)).
void MenuMainMenu::Update() {
    if (!IsValidMenu()) {
        return;
    }
    if (mCharacterToRender) {
        mCharacterToRender->CharAnimator::Update();
    }
    DeviceSceneManager()->update(0.0f, false);
}

// 0x42c240 _ZN12MenuMainMenuD1Ev (complete-object destructor)
// 0x42c290 _ZN12MenuMainMenuD2Ev (base-object destructor, the same bytes)
// The vptr store and the MenuBase base destructor are the implicit ones of an empty body. Chain note: MenuBase::~MenuBase is
// PARTIAL in this tree (the weak_ptr proxy releases in MenuFX::State::~State are missing), so the chain is partial too.
MenuMainMenu::~MenuMainMenu() {}

// 0x42c274 _ZN12MenuMainMenuD0Ev (deleting destructor) is not rebuilt: the C++ delete expression emits it.

// 0x42c2c4 _ZN12MenuMainMenuC1Ev (complete-object constructor)
// 0x42c310 _ZN12MenuMainMenuC2Ev (base-object constructor, the same bytes)
// MenuBase("menu_MainMenu"), then the vptr store (compiler), then the registration with the MenuManager singleton. Chain note:
// MenuManager::RegisterMenu (0x42ee94) has an empty body in this tree, so the menu is not yet put in the manager's list.
MenuMainMenu::MenuMainMenu() : MenuBase("menu_MainMenu") {
    MenuManager::GetInstance()->RegisterMenu(this);
}

// 0x42c35c _ZN12MenuMainMenu11GetInstanceEv
// Function-local static, constructed on first use. The guard and the atexit registration are what the compiler emits for a
// static local with a non-trivial constructor and destructor, as the original does.
MenuMainMenu* MenuMainMenu::GetInstance() {
    static MenuMainMenu menu;
    return &menu;
}

// 0x42c510 _ZN12MenuMainMenu10SetupSceneEv
// Without a scene: the physical world is loaded (0, 0, 1, 1), the collada database of "data/3d/menu/main_menu_charactere_swamp.bdae"
// (game ColladaFactory::s_factory) builds the scene root, which is added to the scene manager root and its creation reference dropped.
void MenuMainMenu::SetupScene() {
    if (m_characterPlaneSceneNode) {
        return;
    }
    Singleton<Application>::s_inst.m_physicalWorld->load(0.0f, 0.0f, 1.0f, 1.0f);
    const std::string path = "data/3d/menu/main_menu_charactere_swamp.bdae";
    glitch::scene::ISceneNode* sceneRoot = DeviceSceneManager()->rootNode;  // scene +0x04
    glitch::collada::CColladaDatabase database(path.c_str(), &ColladaFactory::s_factory);
    m_characterPlaneSceneNode = database.constructScene(Singleton<Application>::s_inst.m_device->videoDriver);
    sceneRoot->addChild(m_characterPlaneSceneNode);  // vtable +0x5c
    static_cast<glitch::IReferenceCounted*>(m_characterPlaneSceneNode)->drop();
}

// 0x42c62c _ZN12MenuMainMenu4ShowEv
// With a valid menu: the Game Center flag (+0x13) is set and its player list reset when it is enabled; the "menu_bg" menu is shown,
// MenuBase::Show runs, the debug switches are read (the "MenuMainMenu" switch traces the menu context), the debug buttons are made
// transparent, the avatar camera, scene and preview character are set up, the "RenderedBG" display callback is registered, and
// the pending GoToMainMenu event picks the "MainMenuError" message shown on the root movie. Every path ends by clearing the Game
// Center flag (+0x14) and setting the byte at 0x99f7d7; event 7 first marks the Game Center result flags.
void MenuMainMenu::Show() {
    if (!IsValidMenu()) {
        return;
    }
    GCSingleton<GameCenter>::GetInstance()->unk_13 = true;  // +0x13
    if (GCSingleton<GameCenter>::GetInstance()->gateFlag_) {  // +0x05
        if (GCSingleton<GameCenter>::GetInstance()->featuresEnabled_) {  // +0x07
            GCSingleton<GameCenter>::GetInstance()->ResetPlayerList();
        }
    }
    MenuBase* background = MenuManager::GetInstance()->GetMenuByName("menu_bg");
    background->Show();
    MenuBase::Show();
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingMenuMainMenu");
    DebugSwitches::s_inst.load();
    const bool tracing = DebugSwitches::s_inst.GetSwitch("MenuMainMenu");
    if (tracing) {
        m_menu->DBG_TraceContextInformation(GetCurrentMenuContext());
    }
    m_menu->SetAlpha("btn_Debug1", 0.0f);
    m_menu->SetAlpha("btn_debug2", 0.0f);
    CreateAvatarCamera();
    SetupScene();
    if (!mCharacterToRender) {
        SetupCharacter();
    }
    m_isDestroyed = false;
    m_menu->RegisterDisplayCallback("RenderedBG", RenderCharacterPane, this);

    // GetGoToMainMenuEvent(true) clears the stored event.
    const int event = static_cast<int>(Singleton<Application>::s_inst.GetGoToMainMenuEvent(true));
    std::string message;
    if (const char* constant = MainMenuErrorStrId(event)) {
        message = StrIdText(constant);
    }
    if (event == 7) {
        GameCenter* gameCenter = GCSingleton<GameCenter>::GetInstance();
        if (!gameCenter->resultFlag_) {  // +0x0e
            GCSingleton<GameCenter>::GetInstance()->resultFlag_ = true;
            GCSingleton<GameCenter>::GetInstance()->unk_0a = true;  // +0x0a
        }
    } else if (MainMenuErrorShowsCallback(event)) {
        gameswf::as_value value;
        value.set_string(message.c_str());
        MenuFX* root = MenuManager::GetInstance()->GetRoot();
        gameswf::character* rootMovie = root->RenderFX::GetRoot()->get_root_movie();
        root->InvokeASCallback(rootMovie, "MainMenuError", &value, 1);
    }
    GCSingleton<GameCenter>::GetInstance()->unk_14 = false;  // +0x14
    byte_99F7D7 = true;
}
