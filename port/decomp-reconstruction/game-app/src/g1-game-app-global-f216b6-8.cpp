#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include "core-platform/debug_out.hpp"
#endif
// Batch g1-game-app-global-f216b6-8 (<global>, part 9 of 22): the gameswf natives of the sound and music menu,
// the menu stack and the settings save and load, and IsNonDebugQuest. ELF 0x43acdc .. 0x43b4f0. Declarations:
// dh2/global/native_sound_menu.hpp.
//
// Facts shared by the bodies:
//   - Singleton<Application>::s_inst (ELF 0x99f72c) is the Application object. The fields the natives use are
//     +0x18 m_stateMachine, +0x40 m_playerManager, +0x4c m_savegameManager, +0x54 m_menuManager. The object is
//     reached through ApplicationGetInstance() (dh2/global/ctrl_camera.hpp).
//   - VoxSoundManager::s_instance (ELF 0x9a238c) is the sound manager. Its members used by the natives are not
//     declared in the tree (see the rows), so every native that drives it is PARTIAL.
//   - gameswf calls a native as void(const fn_call&). The natives return void; the Hex-Rays int return is the
//     leftover r0 of the last call.
//   - The gameswf argument and result API (fn_call::result, nargs, arg(0), as_value::to_xstring, to_number,
//     set_bool) is not in the tree. A native that reads an argument or writes its result keeps the logic that
//     does not depend on it, and its row is PARTIAL.

#include "dh2/global/native_sound_menu.hpp"

#include <cstring>

#include "core-platform/w7_global_rem.hpp"  // UpdateSavedValues (0x43a8f0)
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/Quest.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "core-platform/tb/app_lifecycle.hpp"
#include "dh2/GSFlashMenu.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/member_names.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// 0x43acdc NativePauseAllSounds(gameswf::fn_call const&)
// VoxSoundManager::PauseAllSounds on VoxSoundManager::s_instance when it exists.
void NativePauseAllSounds(const gameswf::fn_call& /*call*/) {
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->PauseAllSounds();
    }
}

// 0x43ad04 NativePauseMusic(gameswf::fn_call const&): VoxSoundManager::PauseMusic when the manager exists.
void NativePauseMusic(const gameswf::fn_call& /*call*/) {
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->PauseMusic();
    }
}

// 0x43ad2c NativeStopMusic(gameswf::fn_call const&): VoxSoundManager::StopMusic(500) when the manager exists.
void NativeStopMusic(const gameswf::fn_call& /*call*/) {
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->StopMusic(500);
    }
}

// 0x43ad58 NativePlayPreviousMusic(gameswf::fn_call const&): VoxSoundManager::RestartMusic(0) when the manager exists.
void NativePlayPreviousMusic(const gameswf::fn_call& /*call*/) {
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->RestartMusic(0);
    }
}

// 0x43ad84 NativePlayMusic(gameswf::fn_call const&)
// One string argument: the name is looked up in Arrays::Sounds (Arrays::GetMemberIDByString<Arrays::Sounds>) and, when found,
// the music plays looping with no stop-if-none and a fade of 2000 ms (VoxSoundManager::PlayMusic(id, true, false, 2000)). The
// original does not test the manager pointer.
void NativePlayMusic(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_string()) {
        const int sound = Arrays::GetMemberIDByString<Arrays::Sounds>(call.arg(0).to_xstring());
        if (sound != -1) {
            VoxSoundManager::s_instance->PlayMusic(sound, true, false, 2000);
        }
    }
}

// 0x43ae10 NativePlaySoundFX(gameswf::fn_call const&)
// One string argument naming an Arrays::Sounds entry: VoxSoundManager::PlayMenu(id, false, 0, 0) when it is found.
void NativePlaySoundFX(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_string()) {
        const int sound = Arrays::GetMemberIDByString<Arrays::Sounds>(call.arg(0).to_xstring());
        if (sound != -1) {
            VoxSoundManager::s_instance->PlayMenu(sound, false, 0, 0);
        }
    }
}

// 0x43ae9c NativeGoToMainMenu(gameswf::fn_call const&)
// asm: LDR R0 = &Singleton<Application>::s_inst; MOV R1,#0; B Application::GoToMainMenu. The event is 0 and the
// argument is ignored. The value of GoToMainMenuEvent 0 is not recovered (Application.hpp); it is passed as is.
void NativeGoToMainMenu(const gameswf::fn_call& call) {
    (void)call;
    ApplicationGetInstance().GoToMainMenu(static_cast<GoToMainMenuEvent>(0));
}

// 0x43aebc NativePushState(gameswf::fn_call const&)
// One string argument (the menu name). The menu is pushed on the application's state machine as the Flash menu state when the name is
// neither "menu_CharacterMenu" nor "menu_Ingame", or when the state on top of the stack is the level state (GSLevel::s_gsLevel):
// the pending menu of GSFlashMenu::s_inst becomes MenuManager::GetMenuByName(name) and StateMachine::PushState(&GSFlashMenu::s_inst,
// false) is queued.
void NativePushState(const gameswf::fn_call& call) {
    if (call.nargs == 1 && call.arg(0).is_string()) {
        const char* name = call.arg(0).to_xstring();
        StateMachine* machine = ApplicationGetInstance().m_stateMachine;
        const bool otherName = std::strcmp("menu_CharacterMenu", name) != 0 && std::strcmp("menu_Ingame", name) != 0;
        const bool levelOnTop = !machine->m_stack.empty() && machine->m_stack.back().state == &GSLevel::s_gsLevel;
        if (otherName || levelOnTop) {
            GSFlashMenu::s_inst.m_pendingMenu = MenuManager::GetInstance()->GetMenuByName(name);
            machine->PushState(&GSFlashMenu::s_inst, false);
        }
    }
}

// 0x43afb8 NativeHUDInteract(gameswf::fn_call const&)
// Argument 0 (read as a string without an argument-count check) is the command: "quit" asks for the exit confirmation, "no"
// withdraws it, and any other command ends the application (appDestroy, a tail call in the original).
void NativeHUDInteract(const gameswf::fn_call& call) {
    switch (DecideHudInteract(call.arg(0).to_xstring())) {
        case HudInteractDecision::kSetExitConfirmation:
            InExitConfirmation = true;
            break;
        case HudInteractDecision::kClearExitConfirmation:
            InExitConfirmation = false;
            break;
        case HudInteractDecision::kAppDestroy:
            appDestroy();
            break;
    }
}

// 0x43b04c NativeIsMultiplayerLoadCompleted(gameswf::fn_call const&)
// The result is true offline; online it needs both PlayerManager::AllLoadingDone and AllReadyToRoll.
void NativeIsMultiplayerLoadCompleted(const gameswf::fn_call& call) {
    PlayerManager* players = ApplicationGetInstance().m_playerManager;
    bool completed = true;
    if (GetOnlineGameFlag()) {
        completed = players->AllLoadingDone() && players->AllReadyToRoll();
    }
    call.result->set_bool(completed);
}

// 0x43b0b8 NativeMustWaitForHost(gameswf::fn_call const&)
// True for an online client (not the local host) when the hosting player is not in the game yet (its "ingame" value, PlayerInfo
// +0x4e5), or when the manager flag +0x71a is set and the hosting player is in the game and in a cut scene (+0x505).
void NativeMustWaitForHost(const gameswf::fn_call& call) {
    PlayerManager* players = ApplicationGetInstance().m_playerManager;
    bool wait = false;
    if (GetOnlineGameFlag() && !players->IsLocalPlayerHosting()) {
        PlayerInfo* host = players->GetHostingPlayer();
        wait = !host->m_ingame.GetValue() ||
               (players->unk_71a && players->GetHostingPlayer()->m_ingame.GetValue() && players->GetHostingPlayer()->m_inCutscene.GetValue());
    }
    call.result->set_bool(wait);
}

// 0x43b158 NativePopMenu(gameswf::fn_call const&): with no argument, pops the multi-menu stack (the virtual PopMenu(bool)
// of MenuManager::m_multiMenuManager, +0xf4, with false). With an argument, pops the named menu.
void NativePopMenu(const gameswf::fn_call& call) {
    MenuManager* manager = MenuManager::GetInstance();
    if (call.nargs == 0) {
        manager->m_multiMenuManager->PopMenu(false);
        return;
    }
    manager->PopMenu(call.arg(0).to_xstring());
}

// 0x43b1b4 NativePushMenu(gameswf::fn_call const&): MenuManager::GetInstance()->PushMenu(name) for argument 0 (no
// argument-count check in the original).
void NativePushMenu(const gameswf::fn_call& call) {
    MenuManager::GetInstance()->PushMenu(call.arg(0).to_xstring());
}

// 0x43b1e4 NativeReviveAllPlayers(gameswf::fn_call const&)
// With a loaded level (m_loadStep 38): online it sets the PlayerManager revive flag (PlayerManager +0x718); offline it pops the
// fade-to-black menu, pushes the fade-from-black menu and revives the local players (ReviveLocalPlayers, passed the online flag byte
// which is 0 here).
void NativeReviveAllPlayers(const gameswf::fn_call& /*call*/) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (!level || level->m_loadStep != 38) {
        return;
    }
    Application& app = ApplicationGetInstance();
    if (GetOnlineGameFlag()) {
        app.m_playerManager->unk_718 = true;
    } else {
        app.m_menuManager->PopMenu("menu_FadeToBlackScreen");
        app.m_menuManager->PushMenu("menu_FadeFromBlackScreen");
        app.m_playerManager->ReviveLocalPlayers(false);
    }
}

// 0x43b278 NativeSaveSettings(gameswf::fn_call const&)
// Reconstructed. The SavegameManager at Application +0x4c is read first. When its byte +0x37 (m_saveBlocked, public in
// dh2/SavegameManager.hpp) is set, the byte is cleared and MenuManager::ResetFonts() runs on MenuManager::GetInstance().
// Then saveSettings(), and setLanguage(getLanguage()). The argument is not read.
void NativeSaveSettings(const gameswf::fn_call& call) {
    (void)call;
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    if (savegame->m_saveBlocked) {
        savegame->m_saveBlocked = false;
        MenuManager::GetInstance()->ResetFonts();
    }
    savegame->saveSettings();
    savegame->setLanguage(savegame->getLanguage());
}

// 0x43b2d8 NativeLoadSettings(gameswf::fn_call const&)
// SavegameManager::loadSettings(false) and UpdateSavedValues(); when the sound manager exists its initial volumes are set from the
// "VolumeMusic" and "VolumeFX" options (SetInitialVolume(music, fx, 0.0)); then the language is applied again (setLanguage(getLanguage())).
void NativeLoadSettings(const gameswf::fn_call& /*call*/) {
    SavegameManager* savegame = ApplicationGetInstance().m_savegameManager;
    savegame->loadSettings(false);
    UpdateSavedValues();
    if (VoxSoundManager::s_instance) {
        Application& app = ApplicationGetInstance();
        const float music = static_cast<float>(app.GetSavedOption("VolumeMusic"));
        const float effects = static_cast<float>(app.GetSavedOption("VolumeFX"));
        VoxSoundManager::s_instance->SetInitialVolume(music, effects, 0.0f);
    }
    savegame->setLanguage(savegame->getLanguage());
}

// 0x43b390 NativeOptionMusic(gameswf::fn_call const&)
// Argument 0 is the new music volume. When the sound manager exists, channel 2 is set to it and the "VolumeMusic" option stores its
// integer part.
void NativeOptionMusic(const gameswf::fn_call& call) {
    const float volume = static_cast<float>(call.arg(0).to_number());
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->SetSoundVolume(2, volume);
        ApplicationGetInstance().m_savegameManager->setOption("VolumeMusic", static_cast<int>(volume));
    }
}

// 0x43b424 NativeOptionFX(gameswf::fn_call const&): as NativeOptionMusic for channel 1 and the "VolumeFX" option.
void NativeOptionFX(const gameswf::fn_call& call) {
    const float volume = static_cast<float>(call.arg(0).to_number());
    if (VoxSoundManager::s_instance) {
        VoxSoundManager::s_instance->SetSoundVolume(1, volume);
        ApplicationGetInstance().m_savegameManager->setOption("VolumeFX", static_cast<int>(volume));
    }
}

// 0x43b4b8 NativeEnterOptionMenu(gameswf::fn_call const&): VoxSoundManager::ResumeMusic(0); the original does not test the pointer.
void NativeEnterOptionMenu(const gameswf::fn_call& /*call*/) {
    VoxSoundManager::s_instance->ResumeMusic(0);
}

// 0x43b4dc IsNonDebugQuest(Quest const*)
// asm: PUSH {R4,LR}; BL Quest::IsDebug; EOR R0,R0,#1; UXTB. The result is the logical negation of IsDebug.
bool IsNonDebugQuest(const Quest* quest) {
    return !quest->IsDebug();
}

// ---- decision helpers (not original symbols; see the header) ----

// asm of NativeHUDInteract: strcmp("quit", s) == 0 sets InExitConfirmation to 1; otherwise strcmp("no", s) == 0
// clears it to 0; otherwise appDestroy is tail-called.
HudInteractDecision DecideHudInteract(const char* command) {
    if (std::strcmp("quit", command) == 0) {
        return HudInteractDecision::kSetExitConfirmation;
    }
    if (std::strcmp("no", command) == 0) {
        return HudInteractDecision::kClearExitConfirmation;
    }
    return HudInteractDecision::kAppDestroy;
}

// NativeIsMultiplayerLoadCompleted: when online, both the loading check and the ready-to-roll check must pass.
bool MultiplayerLoadCompleteFromFlags(bool online, bool allLoadingDone, bool allReadyToRoll) {
    return !online || (allLoadingDone && allReadyToRoll);
}

// NativeMustWaitForHost: online && !IsLocalPlayerHosting && (!hostWord1394 || (localFlag71a && hostWord1394 &&
// hostWord1414)).
bool MustWaitForHostFromFlags(bool online, bool localPlayerHosting, bool hostWord1394, bool hostWord1414,
                              bool localFlag71a) {
    return online && !localPlayerHosting && (!hostWord1394 || (localFlag71a && hostWord1394 && hostWord1414));
}
