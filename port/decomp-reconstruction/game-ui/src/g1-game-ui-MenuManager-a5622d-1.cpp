// MenuManager bodies, batch g1-game-ui-MenuManager-a5622d-1 (part 2 of 3 of MenuManager).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original
// 32-bit ARM offsets. A function whose original returns a value that dh2/MenuManager.hpp declares void
// drops the result, as the MenuBase bodies do. The DebugSwitches reads are kept where the original
// makes them, because the first read of the switch file loads it. Partial functions say in their
// comment which part is missing and what it waits on.

#include <map>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/InfoHUDManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/MenuDebugHUD.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuFlash2DCamera.hpp"
#include "dh2/global/screen_size.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/Character.hpp"
#include "dh2/TouchScreenBase.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/c2d_driver.hpp"

#include <array>
#include <cstring>
#include <vector>

void fillLeaderBoard();  // 0x441dcc

// The profiling markers are declared in dh2/global/runtime_support.hpp (0x3136b4, 0x3136b8). The same
// two prototypes are repeated here because that header pulls in core-platform's glitch_core stand-in,
// which clashes with the shared glitch_core that FlashAnimManager.hpp includes.
void PushProfilingContext(const char* name);
void PopProfilingContext(const char* name);

namespace {

// The original calls DebugSwitches::load(&s_inst) and then GetSwitch(name) on DebugSwitches::s_inst.
// s_inst is private. DebugSwitches::GetInstance() (0x330740) performs that load and returns &s_inst, so
// one GetInstance() call followed by GetSwitch(name) is the same two steps.
bool ReadDebugSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

}  // namespace

// 0x42d234 _ZN11MenuManager7HideAllEv
void MenuManager::HideAll() {
    const int numMenus = GetNumMenus();
    for (int i = 0; i < numMenus; ++i) {
        MenuBase* menu = m_menus[i];
        if (menu->IsVisible()) {
            menu->SetVisible(false);
        }
    }
}

// 0x42d290 MenuManager::LoadSWFFile(char const*,int)
// The MenuFX goes into m_swfFiles[index] (+0x8c + 4*index) before Load, then text buffering is enabled, and the camera goes
// into m_cameras[index] (+0x9c + 4*index). The original allocates the MenuFX with an operator new hint of 8, which is not
// mapped to a swf::MemHint value here, so plain new is used.
MenuFX* MenuManager::LoadSWFFile(const char* file, int index) {
    MenuFX* fx = new MenuFX();
    m_swfFiles[index] = fx;
    fx->Load(file, nullptr);
    fx->SetTextBufferingEnabled(true);
    m_cameras[index] = new MenuFlash2DCamera(fx);
    return m_swfFiles[index];
}

// 0x42d30c _ZN11MenuManager19SwitchMenusToIngameEv
// The original returns the MenuFX* of the last LoadSWFFile; the void declaration drops it.
void MenuManager::SwitchMenusToIngame() {
    UnloadSWFFile(2);
    if (Width_Screen == 854) {
        LoadSWFFile("data/menus/dqcharmenu_droid.swf", 1);
        LoadSWFFile("data/menus/dqhud_droid.swf", 3);
    } else if (Width_Screen == 800) {
        LoadSWFFile("data/menus/dqcharmenu_i9000.swf", 1);
        LoadSWFFile("data/menus/dqhud_i9000.swf", 3);
    } else {
        LoadSWFFile("data/menus/dqcharmenu.swf", 1);
        LoadSWFFile("data/menus/dqhud.swf", 3);
    }
}

// 0x42d4bc _ZN11MenuManager10UnloadMenuEi
// Index 1 first clears the MenuCharMenu_Map icons. The movie in MultiMenuManager slot index (m_menuFX[index]; an index
// outside 0..3 has no movie, which is the original's unsigned test) is then detached: every menu whose m_menu is that
// movie has m_menu cleared, is deleted when m_deleteOnUnload is set, and leaves m_menus. FlashAnimManager::ResetScanForAnims
// is called with that movie (null when there is none), and MultiMenuManager::UnloadSWFFile(index) finishes the unload.
void MenuManager::UnloadMenu(int index) {
    if (index == 1) {
        MenuCharMenu_Map::GetInstance()->ClearAllIcons();
    }
    MenuFX* movie = nullptr;
    if (index >= 0 && index <= 3) {
        movie = m_multiMenuManager->m_menuFX[index];
    }
    if (movie != nullptr) {
        for (auto it = m_menus.begin(); it != m_menus.end();) {
            MenuBase* menu = *it;
            if (menu->m_menu == movie) {
                menu->m_menu = nullptr;
                if (menu->m_deleteOnUnload) {
                    delete menu;
                }
                it = m_menus.erase(it);
            } else {
                ++it;
            }
        }
    }
    FlashAnimManager::GetInstance()->ResetScanForAnims(movie);
    m_multiMenuManager->UnloadSWFFile(index);
}

// 0x42d59c _ZN11MenuManager21SwitchMenusToMainMenuEv
// The original returns the MenuFX* of the last LoadSWFFile; the void declaration drops it.
void MenuManager::SwitchMenusToMainMenu() {
    UnloadSWFFile(3);
    UnloadSWFFile(1);
    switch (Width_Screen) {
        case 854:
            LoadSWFFile("data/menus/dqmenus_droid.swf", 2);
            return;
        case 960:
            LoadSWFFile("data/menus/dqmenus.swf", 2);
            return;
        case 800:
            if (HTC_DEVICES || !NO_IGP) {
                LoadSWFFile("data/menus/dqmenus_i9000.swf", 2);
            } else {
                LoadSWFFile("data/menus/dqmenus_i9000_lg.swf", 2);
            }
            return;
        default:
            if (dword_99F778->getLanguage() == 5) {
                LoadSWFFile("data/menus/dqmenus_Kor.swf", 2);
            } else if (dword_99F778->getLanguage() != 4) {
                LoadSWFFile("data/menus/dqmenus.swf", 2);
            } else {
                LoadSWFFile("data/menus/dqmenus_jp.swf", 2);
            }
            return;
    }
}

// 0x42d72c _ZN11MenuManager10ResetFontsEv
// Forwards to MultiMenuManager::ResetFonts() on m_multiMenuManager (+0xf4).
void MenuManager::ResetFonts() {
    m_multiMenuManager->ResetFonts();
}

// 0x42d73c _ZN11MenuManager5ResetEv
// Pops every page of the four movies in MultiMenuManager (MenuFX::PopAll on each m_menuFX[0..3] that is set). Then each
// visible menu gets Hide() (vtable +0x10), and m_resetListeners (+0x88) is set.
void MenuManager::Reset() {
    for (int i = 0; i != 4; ++i) {
        MenuFX* movie = m_multiMenuManager->m_menuFX[i];
        if (movie != nullptr) {
            movie->PopAll();
        }
    }
    const int numMenus = GetNumMenus();
    for (int i = 0; i < numMenus; ++i) {
        MenuBase* menu = m_menus[i];
        if (menu->IsVisible()) {
            menu->Hide();
        }
    }
    m_resetListeners = true;
}

// 0x42dbb4 _ZN11MenuManagerD1Ev
// 0x42dd38 _ZN11MenuManagerD2Ev (second emitted copy of the same body; one definition covers both)
// The three EventManager detaches (events 5, 4, 7), the delete of m_multiMenuManager, the deletion of the menus flagged
// m_deleteOnUnload, the clear of m_menus, RenderFX::Finalize() and CharProperties::UnLoadPropNames(). The members are destroyed
// after this body in the original's order (m_menuFXDeque, m_listeners, m_menus storage, then DebugCachedCharacter), which the C++
// member destruction order gives too.
MenuManager::~MenuManager() {
    if (dword_99F740 != nullptr) {
        dword_99F740->Detach(5, this);
        dword_99F740->Detach(4, this);
        dword_99F740->Detach(7, this);
    }
    delete m_multiMenuManager;
    for (MenuBase* menu : m_menus) {
        if (menu->m_deleteOnUnload) {
            delete menu;
        }
    }
    m_menus.clear();
    RenderFX::Finalize();
    CharProperties::UnLoadPropNames();
}

// 0x42dd1c _ZN11MenuManagerD0Ev
// SKIPPED (see the ledger): the compiler emits the deleting destructor for delete. It runs ~MenuManager()
// and then frees the object, so no body is written.

// 0x42dfd8 _ZN11MenuManager17RegisterDummyMenuEP6MenuFXP8MenuBase
void MenuManager::RegisterDummyMenu(MenuFX* fx, MenuBase* menu) {
    m_menus.push_back(menu);
    menu->m_menu = fx;             // +0x04 of the menu
    menu->m_registered = true;     // +0x7c of the menu
}

// 0x42e098 _ZNK11MenuManager11GetMenuNameEi
// The original builds the name from the menu's inline m_name (+0x08) when the index is in range, and
// otherwise returns "unknown". The range test is 0 <= index < GetNumMenus().
std::string MenuManager::GetMenuName(int id) const {
    if (id >= 0 && id < GetNumMenus()) {
        return std::string(m_menus[id]->m_name);
    }
    return "unknown";
}

// 0x42e110 _ZN11MenuManager18UnRegisterListenerEP8MenuBase
// The tracing switch is read and its result discarded, as in the original. The original finds the
// listener's map node (the lower bound of the key) and sets its bool to false only when the key is
// exactly present, which is what find() does here.
void MenuManager::UnRegisterListener(MenuBase* menu) {
    (void)ReadDebugSwitch("isTracingMenuManager");
    const auto it = m_listeners.find(menu);
    if (it != m_listeners.end()) {
        it->second = false;  // +0x14 of the node, the pair's bool
    }
}

// 0x42e208 _ZN11MenuManager7PopMenuEP8MenuBase
// When the menu has a MenuFX (+0x04) and the MultiMenuManager reports its state in a movie stack (vtable +0x40, IsStateInStack;
// the original passes the menu in r1, which is still the argument on entry), the touch state is reset (Application::ResetTouch,
// TouchScreenBase::ProcessEvents on m_touchScreen) and the MultiMenuManager pops (vtable +0x38 with false). If the menu movie is
// the HUD root the menu is unregistered as a listener. A null menu is undefined in the original (it reads address 4); this port
// returns without action.
void MenuManager::PopMenu(MenuBase* menu) {
    if (menu == nullptr) {
        return;
    }
    if (menu->m_menu != nullptr && m_multiMenuManager->IsStateInStack(menu)) {
        ApplicationGetInstance().ResetTouch();
        ApplicationGetInstance().m_touchScreen->ProcessEvents();
        m_multiMenuManager->PopMenu(false);
    }
    if (menu->m_menu == GetHUDRoot()) {
        UnRegisterListener(menu);
    }
}

// 0x42e2b0 _ZN11MenuManager7PopMenuEPKc
void MenuManager::PopMenu(const char* name) {
    if (MenuBase* menu = GetMenuByName(name)) {
        PopMenu(menu);
    }
}

// 0x42e2d4 _ZNK11MenuManager8DBG_DrawEv
// The dead-zone overlay (switch isDisplayingDeadZones) and the bounding box overlay (isDisplayingMenuBoundingBoxes): with the
// plain material of the video driver set, every visible edit text (class id 32) that is visible and not fully transparent below
// the current context of each visible menu gets its absolute bounding rectangle drawn as four 2D lines (colour 0x3200ffff).
void MenuManager::DBG_Draw() const {
    if (ReadDebugSwitch("isDisplayingDeadZones")) {
        DBG_Draw2DDeadZones();
    }
    if (ReadDebugSwitch("isDisplayingMenuBoundingBoxes")) {
        glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
        glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;
        const uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
        boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
        const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 255;
        driver->setMaterial(material, technique, nullptr);
        const int numMenus = GetNumMenus();
        for (int i = 0; i < numMenus; ++i) {
            MenuBase* menu = m_menus[i];
            if (!menu->IsVisible()) {
                continue;
            }
            gameswf::character* context = menu->GetCurrentMenuContext();
            if (context == nullptr) {
                continue;
            }
            RenderFX* movie = menu->m_menu;
            RenderFX::CharacterArray* found = movie->FindCharacters(context, "", 4);
            std::vector<gameswf::character*> characters(found->data, found->data + found->count);
            for (gameswf::character* character : characters) {
                if (!character->is(32)) {
                    continue;
                }
                const int alphaBits = movie->GetAlpha(character);
                float alpha;
                std::memcpy(&alpha, &alphaBits, sizeof(alpha));
                if (!character->get_visible() || alpha == 0.0f) {
                    continue;
                }
                const std::array<float, 4> box = GameSWFUtils::GetAbsoluteBoundingRect(character);
                const glitch::core::position2d<int32_t> topLeft = {static_cast<int>(box[0]), static_cast<int>(box[2])};
                const glitch::core::position2d<int32_t> topRight = {static_cast<int>(box[1]), static_cast<int>(box[2])};
                const glitch::core::position2d<int32_t> bottomRight = {static_cast<int>(box[1]), static_cast<int>(box[3])};
                const glitch::core::position2d<int32_t> bottomLeft = {static_cast<int>(box[0]), static_cast<int>(box[3])};
                glitch::video::SColor color;
                color.color = 0x3200ffffu;
                driver->draw2DLine(topLeft, topRight, color);
                driver->draw2DLine(topRight, bottomRight, color);
                driver->draw2DLine(bottomRight, bottomLeft, color);
                driver->draw2DLine(bottomLeft, topLeft, color);
            }
        }
    }
}

// 0x42e75c _ZN11MenuManager11OnFSCommandEPKcS1_
// The original returns the bool of the HUD menu's MyFSCommand (vtable +0x38), and this void override drops
// it. There is no null check: the original calls through the result of GetMenuByName("menu_HUD_0") directly.
void MenuManager::OnFSCommand(const char* command, const char* args) {
    (void)ReadDebugSwitch("isTracingMenuManager");
    MenuBase* hud = GetMenuByName("menu_HUD_0");
    hud->MyFSCommand(command, args);
}

// 0x42e818 _ZN11MenuManager4DrawEb
// Unless a switch deactivates the menus (IsDeactivatingFlashMenus, IsDeactivatingFlashMenusRender), the movies are drawn from the
// HUD (index 3) down to index 0. The HUD movie only draws while the root movie (index 2) has no state; it then also draws the
// info HUD, the HUD controls and the flash animations first. Each movie updates its camera and renders when it has a current state
// (the HUD always). The three per-frame counters of the video driver are noted before (+0x08, +0x0c, +0x10) and after
// (+0x14, +0x18, +0x1c). The argument is never read by the original.
void MenuManager::Draw(bool /*hudOnly*/) {
    if (ReadDebugSwitch("IsDeactivatingFlashMenus")) {
        return;
    }
    if (ReadDebugSwitch("IsDeactivatingFlashMenusRender")) {
        return;
    }
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    unk_08 = driver->m_frameDrawCalls;       // driver word [31]
    unk_0c = driver->m_frameDrawCalls2D;     // driver word [32]
    unk_10 = driver->m_framePrimitives;      // driver word [30]
    for (int index = 3; index >= 0; --index) {
        MenuFX* movie = m_multiMenuManager->m_menuFX[index];
        if (movie == nullptr) {
            continue;
        }
        if (index == 3) {
            MenuFX* root = m_multiMenuManager->m_menuFX[2];
            if (root != nullptr && root->m_stack.m_size != 0) {
                continue;
            }
            InfoHUDManager::GetInstance()->Draw();
            HUDControls::GetInstance()->Draw();
            FlashAnimManager::GetInstance()->Draw();
        }
        MenuFlash2DCamera* camera = m_multiMenuManager->m_cameras[index];
        if (camera != nullptr) {
            camera->Update();
        }
        if (index == 3) {
            HudAnchorUpdate(movie, false);  // Port deviation (UI4; TRACK-B.md decision 15): HUD corners at the real screen edges
        }
        // Port deviation (UI12; TRACK-B.md decision 15): the hand-written shape rules of ui_layouts.txt for the screen's ratio.
        MenuPageLayoutUpdate(movie, index == 3);
        if (movie->GetCurrentState() != nullptr || index == 3) {
            movie->Render();
            if (index == 3) {
                HudCustomizeOverlayDraw();  // Port addition (UI6): size medallions of the HUD customise page
            }
        }
    }
    unk_14 = driver->m_frameDrawCalls;
    unk_18 = driver->m_frameDrawCalls2D;
    unk_1c = driver->m_framePrimitives;
}

// 0x42ea04 _ZN11MenuManager6UpdateEb
// The leader board refresh, the profiling scopes, the MenuDebugHUD update in a level, the action icon of the local player (the
// interaction type of the player character is mapped through a table into m_actionIconType and sent to the HUD root as
// FillActionIcon), the wire frame switch, the frame time, the IsDeactivatingFlashMenus and IsDeactivatingFlashMenusUpdate early
// returns, the listener reset, the Update of the movies (from index 3 when hudOnly; the loop stops at the HUD movie when the
// level is not in game view), the InfoHUDManager and HUDControls updates in game view, the FlashAnimManager update, and the
// Update() of every visible menu.
void MenuManager::Update(bool hudOnly) {
    if (leader) {
        fillLeaderBoard();
    }
    PushProfilingContext("MenuManager::Update");
    if (ApplicationGetInstance().GetCurrentLevel() != nullptr) {
        PushProfilingContext("MenuDebug::Update");
        MenuDebugHUD::GetInstance()->Update();
        PopProfilingContext("MenuDebug::Update");
    }

    PushProfilingContext("MenuManager::InteractionType");
    Character* player = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;   // PlayerInfo +0x660
    if (player != nullptr) {
        static const int kIconTypes[11] = {0, 1, 2, 3, 5, 5, 6, 7, 5, 5, 4};   // CSWTCH.6518
        const int interaction = player->m_ooiInteractionType;                  // +0x14a8
        const int iconType = static_cast<unsigned int>(interaction) <= 10 ? kIconTypes[interaction] : 5;
        if (m_actionIconType != iconType && GetHUDRoot() != nullptr) {
            m_actionIconType = iconType;
            MenuFX* hudRoot = GetHUDRoot();
            gameswf::character* rootMovie = GetHUDRoot()->GetRoot()->get_root_movie();
            const gameswf::as_value icon(static_cast<double>(m_actionIconType));
            hudRoot->InvokeASCallback(rootMovie, "FillActionIcon", &icon, 1);
        }
    }
    PopProfilingContext("MenuManager::InteractionType");

    RenderFX::SetWireFrame(false);
    if (ReadDebugSwitch("IsDisplayingMenuWireframe")) {
        RenderFX::SetWireFrame(true);
    }

    if (ReadDebugSwitch("IsDeactivatingFlashMenus")) {
        PopProfilingContext("MenuManager::Update");
        return;
    }
    if (ReadDebugSwitch("IsDeactivatingFlashMenusUpdate")) {
        PopProfilingContext("MenuManager::Update");
        return;
    }

    const int dt = ApplicationGetInstance().GetDt();
    if (m_resetListeners) {
        m_listeners.clear();
        m_resetListeners = false;
    }

    for (int movie = hudOnly ? 3 : 0; movie != 4; ++movie) {
        MenuFX* fx = m_multiMenuManager->m_menuFX[movie];
        if (fx == nullptr) {
            continue;
        }
        const Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (level != nullptr && movie == 3 && !level->m_isInGameView) {
            break;  // the original leaves its loop here, so no later movie is updated
        }
        PushProfilingContext("Menu Update");
        fx->Update(dt, false);
        PopProfilingContext("Menu Update");
    }

    PushProfilingContext("MenuManager::HUDManager");
    if (ApplicationGetInstance().IsCurrentlyInGameView()) {
        InfoHUDManager::GetInstance()->Update();
        HUDControls::GetInstance()->Update();
    }
    FlashAnimManager::GetInstance()->Update();
    PopProfilingContext("MenuManager::HUDManager");

    PushProfilingContext("MenuManager::RegisteredUpdate");
    const int numMenus = GetNumMenus();
    for (int i = 0; i < numMenus; ++i) {
        MenuBase* menu = m_menus[i];
        if (menu->IsVisible()) {
            menu->Update();
        }
    }
    PopProfilingContext("MenuManager::RegisteredUpdate");
    PopProfilingContext("MenuManager::Update");
}

// 0x42ee94 MenuManager::RegisterMenu(MenuBase*)
// The first of the four m_multiMenuManager->m_menuFX movies (+0x134) whose Find(menu->m_name) is non-null takes the menu:
// it is appended to m_menus, the movie's RegisterState(menu, nullptr) is called and m_registered (+0x7c) is set. When no
// movie has it, the debug switch file is loaded and isTracingMenuManager is read, and nothing is registered.
void MenuManager::RegisterMenu(MenuBase* menu) {
    MenuFX* owner = nullptr;
    for (int i = 0; i < 4; ++i) {
        MenuFX* fx = m_multiMenuManager->m_menuFX[i];
        if (fx != nullptr && fx->Find(menu->m_name) != nullptr) {
            owner = fx;
            break;
        }
    }
    if (owner == nullptr) {
        DebugSwitches::s_inst.load();
        (void)DebugSwitches::s_inst.GetSwitch("isTracingMenuManager");
        return;
    }
    m_menus.push_back(menu);
    owner->RegisterState(menu, nullptr);
    menu->m_registered = true;
}
