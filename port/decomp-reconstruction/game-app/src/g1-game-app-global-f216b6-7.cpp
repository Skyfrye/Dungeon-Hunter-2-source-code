#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-app-global-f216b6-7 (<global>, part 8 of 22): gameswf natives 0x43a758 .. 0x43ac90 for the HUD,
// minimap, on-screen keyboard, zoom, orientation, iPod, save slot, level pause, menu pop and script skip.
// Declarations: dh2/global/native_app_hud_level.hpp. The natives return void: gameswf ignores the r0 left by the
// original, so no value is returned.
//
// Globals of the batch (Application is the singleton, Singleton<Application>::s_inst at 0x99f72c, ApplicationGetInstance()):
//   dword_99F73C = +0x10 m_device       dword_99F744 = +0x18 m_stateMachine   dword_99F76C = +0x40 m_playerManager
//   dword_99F778 = +0x4c m_savegameManager   dword_99F77C = +0x50 m_zoomHandler   dword_99F780 = +0x54 m_menuManager
//   byte_9A24D4  = GSKeyboard::s_inst +0x04 (GSKeyboard::m_querying)
//
// The as_value accessors of gameswf are not declared in this tree, so every native that reads an argument or stores a
// result is PARTIAL and keeps its body empty; the part that does not depend on them is written where it exists.
#include "dh2/global/native_app_hud_level.hpp"

#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance()
#include "dh2/Application.hpp"
#include "dh2/GSConsole.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/InfoHUDManager.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/GSKeyboard.hpp"
#include "dh2/HUDMinimap.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/OnScreenKeyboard.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/ZoomHandler.hpp"

// 0x43a758 NativeGLLive(gameswf::fn_call const&)
// Reconstructed. The language is SavegameManager::getLanguage() on Application::m_savegameManager, and the native
// passes GLLiveLanguageArg(language) to nativeOpenGLive. nativeOpenGLive is the Android JNI bridge (core-platform row
// 0x532b20), not defined in the tree yet.
void NativeGLLive(const gameswf::fn_call& /*call*/) {
    const int language = ApplicationGetInstance().m_savegameManager->getLanguage();
    nativeOpenGLive(GLLiveLanguageArg(language));
}

// 0x43a810 NativeRefreshHudManager(gameswf::fn_call const&)
// The HUD info manager forgets its cached characters (InfoHUDManager::GetInstance()->m_cachesReady = false) and the HUD controls
// are touched (HUDControls::GetInstance()->Touch()).
void NativeRefreshHudManager(const gameswf::fn_call& /*call*/) {
    InfoHUDManager::GetInstance()->m_cachesReady = false;
    HUDControls::GetInstance()->Touch();
}

// 0x43a82c NativeDoWeHaveInternet(gameswf::fn_call const&): the result is Application::IsInternetAccessEnabled().
void NativeDoWeHaveInternet(const gameswf::fn_call& call) {
    call.result->set_bool(ApplicationGetInstance().IsInternetAccessEnabled());
}

// 0x43a860 NativeCloseKeyboard(gameswf::fn_call const&)
// Reconstructed. While GSKeyboard::s_inst.m_querying is set (byte_9A24D4), the keyboard is released and the state
// machine (Application::m_stateMachine, dword_99F744) is updated with dt 0.0. The return value is not part of the
// contract. ReleaseKeyboard is static in dh2/OnScreenKeyboard.hpp. The receiver GSKeyboard::s_inst is defined by the
// GSKeyboard batch.
void NativeCloseKeyboard(const gameswf::fn_call& /*call*/) {
    if (GSKeyboard::s_inst.m_querying) {
        OnScreenKeyboard::ReleaseKeyboard();
        ApplicationGetInstance().m_stateMachine->Update(0.0);
    }
}

// 0x43a8b0 NativeUpdateOrientation(gameswf::fn_call const&)
// Reconstructed. ResetOrientation(GetSavedOption("AutoOrientation")) on the Application singleton. Application::ResetOrientation
// is an empty body in the Application batch (0x31f748).
void NativeUpdateOrientation(const gameswf::fn_call& /*call*/) {
    Application& app = ApplicationGetInstance();
    const int autoOrientation = app.GetSavedOption("AutoOrientation");
    app.ResetOrientation(autoOrientation);
}

// 0x43a930 NativeIPodControl(gameswf::fn_call const&): VoxSoundManager::IPodControl(argument 0 as a string) on the sound manager.
void NativeIPodControl(const gameswf::fn_call& call) {
    VoxSoundManager::s_instance->IPodControl(call.arg(0).to_string());
}

// 0x43a974 NativeUseIpodPlayer(gameswf::fn_call const&): the result is nativeIsSupportMM() == 1 (JNI bridge, declared).
void NativeUseIpodPlayer(const gameswf::fn_call& call) {
    call.result->set_bool(nativeIsSupportMM() == 1);
}

// 0x43a9a8 NativeResetZoom(gameswf::fn_call const&)
// Reconstructed. ZoomHandler::ResetZoom() on Application::m_zoomHandler (+0x50, dword_99F77C).
void NativeResetZoom(const gameswf::fn_call& /*call*/) {
    ApplicationGetInstance().m_zoomHandler->ResetZoom();
}

// 0x43aa18 NativeShowStatusBar(gameswf::fn_call const&): Application::ShowStatubBar(to_bool(argument 0)).
void NativeShowStatusBar(const gameswf::fn_call& call) {
    ApplicationGetInstance().ShowStatubBar(call.arg(0).to_bool());
}

// 0x43aa58 NativeShowMinimapLegend(gameswf::fn_call const&): stores to_bool(argument 0) in MenuCharMenu_Map::unk_1e4 (+0x1e4).
void NativeShowMinimapLegend(const gameswf::fn_call& call) {
    const bool show = call.arg(0).to_bool();
    MenuCharMenu_Map::GetInstance()->unk_1e4 = show;
}

// 0x43aa84 NativeResetMapZoom(gameswf::fn_call const&)
// Reconstructed. MenuCharMenu_Map::ResetZoom() on MenuCharMenu_Map::GetInstance(), a static getter that takes no
// argument (the Hex-Rays argument is the leftover r0).
void NativeResetMapZoom(const gameswf::fn_call& /*call*/) {
    MenuCharMenu_Map::GetInstance()->ResetZoom();
}

// 0x43aa94 NativeHideMinimap(gameswf::fn_call const&)
// Reconstructed. HUDMinimap::GetInstance() (static), then the virtual Hide() (vtable +0x10, dh2/HUDMinimap.hpp).
void NativeHideMinimap(const gameswf::fn_call& /*call*/) {
    HUDMinimap::GetInstance()->Hide();
}

// 0x43aaac NativeShowMinimap(gameswf::fn_call const&)
// Reconstructed. HUDMinimap::GetInstance() (static), then the virtual Show() (vtable +0x0c, dh2/HUDMinimap.hpp).
void NativeShowMinimap(const gameswf::fn_call& /*call*/) {
    HUDMinimap::GetInstance()->Show();
}

// 0x43aac4 AssignSaveSlotToPlayer(int,int)
// Reconstructed (asm 0x43aac4 checked). Stores slot in SavegameManager::m_lastSlot (+0x08 of the SavegameManager at
// Application +0x4c), gets the local player with PlayerManager::GetLocalPlayer(localPlayerId, false) (Application +0x40),
// then stores slot in that player's PlayerInfo +0x664 (unk_664; asm "STR R4, [R0,#0x664]"). The Hex-Rays element
// DH2_PlayerInfoCharacterPrefix[1].unknown_000 is this same word. The return is the player, as GetLocalPlayer returns it.
PlayerInfo* AssignSaveSlotToPlayer(int slot, int localPlayerId) {
    Application& app = ApplicationGetInstance();
    app.m_savegameManager->m_lastSlot = slot;
    PlayerInfo* player = app.m_playerManager->GetLocalPlayer(localPlayerId, false);
    player->unk_664 = slot;
    return player;
}

// 0x43ab00 NativeEndLoading(gameswf::fn_call const&)
// Reconstructed. When a current level exists and its m_loadStep (+0x130) is 36, the step is advanced to 37.
// Depends on Application::GetCurrentLevel(), which is a partial stub in the Application batch (returns null).
void NativeEndLoading(const gameswf::fn_call& /*call*/) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_loadStep == 36) {
        ++level->m_loadStep;
    }
}

// 0x43ab40 NativeSetLevelPause(gameswf::fn_call const&): with one argument, stores to_bool(argument 0) in
// Level::unk_1a8 (+0x1a8) when the current level is non-null.
void NativeSetLevelPause(const gameswf::fn_call& call) {
    if (call.nargs == 1) {
        const bool pause = call.arg(0).to_bool();
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (level != nullptr) {
            level->unk_1a8 = pause;
        }
    }
}

// 0x43ab98 NativeAwayFromHud(gameswf::fn_call const&)
// Reconstructed (asm 0x43ab98 checked: the last call is a tail call). When a current level exists, its in-game view
// flag (Level +0x198, m_isInGameView) is cleared, the zoom finger map is reset (Application +0x50), and
// MultiMenuManager::ResetUpdateCursor() runs on the MenuManager's MultiMenuManager (MenuManager +0xf4). The level comes
// from Application::GetCurrentLevel(), which has its own row.
void NativeAwayFromHud(const gameswf::fn_call& /*call*/) {
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    if (level != nullptr) {
        level->m_isInGameView = false;
        app.m_zoomHandler->ResetFingerMap();
        app.m_menuManager->m_multiMenuManager->ResetUpdateCursor();
    }
}

// 0x43abe8 NativeDebugConsole(gameswf::fn_call const&)
// The multi-menu manager of the menu manager pops its top menu (the virtual PopMenu(false), vtable +0x38), then the debug console
// state is toggled (GSConsole::Toggle, which does not read its this pointer: the listing passes the virtual call's leftover r0).
void NativeDebugConsole(const gameswf::fn_call& /*call*/) {
    MenuManager::GetInstance()->m_multiMenuManager->PopMenu(false);
    GSConsole::s_inst.Toggle();
}

// 0x43ac28 NativePopAllAbove(gameswf::fn_call const&)
// One string argument: the multi-menu manager pops every menu above the named one (the virtual PopMenu(name, true), vtable +0x3c).
void NativePopAllAbove(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_string()) {
        MenuManager::GetInstance()->m_multiMenuManager->PopMenu(call.arg(0).to_xstring(), true);
    }
}

// 0x43ac90 NativeSkipScript(gameswf::fn_call const&)
// Reconstructed. ScriptManager::SkipScript(-2, false) on ScriptManager::s_inst, declared in dh2/ScriptManager.hpp by
// this batch. The definition of s_inst belongs to the ScriptManager batch.
void NativeSkipScript(const gameswf::fn_call& /*call*/) {
    ScriptManager::s_inst.SkipScript(-2, false);
}
