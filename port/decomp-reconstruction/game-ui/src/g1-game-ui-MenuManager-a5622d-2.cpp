// MenuManager bodies, batch g1-game-ui-MenuManager-a5622d-2 (part 3 of 3 of MenuManager). Rebuilt from the Hex-Rays
// pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets.
//
// Rebuilt in full: RegisterListener, PushMenu(const char*), and Init steps 4 (HUD caches), 5 (property names), 24
// (drag-and-drop pass) and 25 (the 174 native registrations of kMenuNatives).
// The tail of LoadMenu and LoadMainMenu (PostLoad, then the drag-and-drop pass for the menus added since) is kept.
//
// PARTIAL: the statements that need declarations the tree does not have are left out, and the rest is kept.
//   - dh2/MultiMenuManager.hpp is in the tree. m_multiMenuManager (+0xf4) is used for m_menuFX[0..3] (+0x134 .. +0x143),
//     LoadSWFFile and the vtable slots +0x34 (push), +0x38 (pop) and +0x40 (IsStateInStack). The constructor allocates it.
//   - Menu classes with no header in the tree yet (each waits on its dh2/<Class>.hpp): MenuMainMenu,
//     MenuCharacterSelect, MenuEnterName, MenuMultiplayerLobbyMulti, MenuCharMenu_InvMain, MenuCharMenu_Map, MenuWorldMap,
//     MenuDebug, MenuDebugHUD, MenuMerchant, MenuConfirm, MenuHUDConfirm, MenuLeaderboard.
//   - RenderFX (dh2/RenderFX.hpp is a placeholder): GetFlashRoot, FindCharacters, GetContext, Find, GetRoot's
//     display callback, RegisterDisplayCallback, SetInputBehavior, SetEventListener, InvokeASCallback and the
//     Initialize parameter block.
//   - gameswf: register_log_callback, as_value, smart_ptr_proxy and weak_ptr proxies, the character name (a tu_string
//     at character +0x44).
//   - IEvent (the type and payload accessors), TouchScreenBase, OnlineSingleton<OnlineGameState>, Level::m_isInGameView.
//   - Binary globals with no declaration in the tree: Singleton<Application>::s_inst, byte_99F7D7, Width_Screen,
//     HTC_DEVICES, NO_IGP, s_SWFfileToLoad and GameSWFUtils::CACHE_CHARS_*. The four globals used here are Application
//     members (s_inst at 0x99f72c): dword_99F73C = +0x10 m_device, dword_99F740 = +0x14 m_eventManager,
//     dword_99F74C = +0x20 m_touchScreen, dword_99F778 = +0x4c m_savegameManager (Application.hpp offsets).

#include "dh2/MenuManager.hpp"

#include <cstdio>
#include <cstring>
#include "dh2/GameSWFUtils.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/EvGamepad.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuCharMenu_InvMain.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/MenuCharacterSelect.hpp"
#include "dh2/MenuConfirm.hpp"
#include "dh2/MenuDebug.hpp"
#include "dh2/MenuDebugHUD.hpp"
#include "dh2/MenuEnterName.hpp"
#include "dh2/MenuHUDConfirm.hpp"
#include "dh2/MenuLeaderboard.hpp"
#include "dh2/MenuMainMenu.hpp"
#include "dh2/MenuMerchant.hpp"
#include "dh2/MenuMultiplayerLobbyMulti.hpp"
#include "dh2/MenuWorldMap.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TouchScreenBase.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/net_singletons.hpp"
#include "glitch-core-io/os/device.hpp"
#include "core-platform/filesystem_win32.hpp"
#include "core-platform/filesystem_base.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"

#include <cstddef>
#include <string>
#include <vector>

#include "dh2/CharProperties.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/InfoHUDManager.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/menu_manager_events_load.hpp"
#include "dh2/global/native_app.hpp"
#include "dh2/global/native_app_bindings.hpp"
#include "dh2/global/native_app_hud_level.hpp"
#include "dh2/global/native_gameswf_menus.hpp"
#include "dh2/global/native_get.hpp"
#include "dh2/global/native_online_gc.hpp"
#include "dh2/global/native_player_actions.hpp"
#include "dh2/global/native_player_info_options.hpp"
#include "dh2/global/native_sound_menu.hpp"
#include "dh2/global/native_stats_inventory_merchant.hpp"

// These three declarations repeat the prototypes of dh2/global/runtime_support.hpp (PushProfilingContext 0x3136b4,
// PopProfilingContext 0x3136b8) and of core-platform/w7_global_rem.hpp (NatvieResumeAllSounds 0x43acb4). Those headers
// are not included here: they pull in core-platform's glitch core, which clashes with the glitch-shared core that
// FlashAnimManager.hpp and HUDControls.hpp need in the same unit. The signatures are identical.
void PushProfilingContext(const char* name);
void PopProfilingContext(const char* name);
int NatvieResumeAllSounds(const gameswf::fn_call& call);

namespace gameswf {
// The native registration gameswf offers the Flash script (lib-gameswf, 0x76ef5c, signature from the binary's symbol).
// The vendored gameswf r1714 does not define it, so the integrator must provide it.
void register_as_native_function(const char* name, void (*fn)(const fn_call&));
}  // namespace gameswf

namespace {

// The original calls DebugSwitches::load(&s_inst) and then GetSwitch(name) on DebugSwitches::s_inst; GetInstance() does the load.
bool ReadDebugSwitch(const char* name) {
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

using NativeFn = void (*)(const gameswf::fn_call&);

struct NativeBinding {
    const char* name;  // the name the Flash script calls: the binary's string, misspellings included
    NativeFn fn;       // the handler
};

// The natives Init registers in step 25, in the original order. NatvieResumeAllSounds is declared with an int return
// in core-platform (its return is the leftover r0 of the last call), so it is taken through a void-returning pointer,
// as the gameswf registration expects.
const NativeBinding kMenuNatives[] = {
    {"NativeGetSkillDetails", NativeGetSkillDetails},
    {"NativeEquipSkill", NativeEquipSkill},
    {"NativeGetPlayerInfos", NativeGetPlayerInfos},
    {"NativeGetPlayerRanking", NativeGetPlayerRanking},
    {"NativeGetPlayerStats", NativeGetPlayerStats},
    {"NativeGetSaveSlotDetails", NativeGetSaveSlotDetails},
    {"NativeEraseSaveSlot", NativeEraseSaveSlot},
    {"NativeFindFreeSaveSlot", NativeFindFreeSaveSlot},
    {"NativeGetSaveIDsListSize", NativeGetSaveIDsListSize},
    {"NativeGetSaveIDsList", NativeGetSaveIDsList},
    {"NativeSetSaveSlotIDToMainMenu", NativeSetSaveSlotIDToMainMenu},
    {"NativeInvAutoEquipSlot", NativeInvAutoEquipSlot},
    {"NativeInvGetHasTwoHandedWeapon", NativeInvGetHasTwoHandedWeapon},
    {"NativeInvGetHasOffHandWeapon", NativeInvGetHasOffHandWeapon},
    {"NativeInvGetEquipedItem", NativeInvGetEquipedItem},
    {"NativeGetMultiplayerGameRooms", NativeGetMultiplayerGameRooms},
    {"NativeGetMultiplayerRoomInfo", NativeGetMultiplayerRoomInfo},
    {"NativeGetMultiplayerQuestInfo", NativeGetMultiplayerQuestInfo},
    {"NativeConnectToServer", NativeConnectToServer},
    {"NativeSendReady", NativeSendReady},
    {"NativeCreateMultiplayerLobby", NativeCreateMultiplayerLobby},
    {"NativeOnlineSanityCheck", NativeOnlineSanityCheck},
    {"NativeConectionType", NativeConectionType},
    {"NativeGetNextStatusMessage", NativeGetNextStatusMessage},
    {"NativeGetNextOnlineStatusMessage", NativeGetNextOnlineStatusMessage},
    {"NativeStatsReset", NativeStatsReset},
    {"NativeStatsRemoveAssign", NativeStatsRemoveAssign},
    {"NativeInvTransmuteItem", NativeInvTransmuteItem},
    {"NativeInvGetItemsListForSlot", NativeInvGetItemsListForSlot},
    {"NativeInvGetItemDetails", NativeInvGetItemDetails},
    {"NativeInvEquipItem", NativeInvEquipItem},
    {"NativeInvUnequipItem", NativeInvUnequipItem},
    {"NativeHUDSetActiveFaery", NativeHUDSetActiveFaery},
    {"NativeHUDGetIsFaeryUnlocked", NativeHUDGetIsFaeryUnlocked},
    {"NativeHUDGetActiveFaery", NativeHUDGetActiveFaery},
    {"NativeSkillsGetSkillPointsLeft", NativeSkillsGetSkillPointsLeft},
    {"NativeSkillsTrainSkill", NativeSkillsTrainSkill},
    {"NativeStatsAssignPoint", NativeStatsAssignPoint},
    {"NativeInvGetPlayerGold", NativeInvGetPlayerGold},
    {"NativeSkillGetEquipedSkillsIDs", NativeSkillGetEquipedSkillsIDs},
    {"NativeLockCharacter", NativeLockCharacter},
    {"NativeUnlockCharacter", NativeUnlockCharacter},
    {"NativeGetNextTutorialMessage", NativeGetNextTutorialMessage},
    {"NativeGetCharMenuTutorialMessage", NativeGetCharMenuTutorialMessage},
    {"NativeSkipCharMenuTutorialMessage", NativeSkipCharMenuTutorialMessage},
    {"NativeGetNextDialogMessage", NativeGetNextDialogMessage},
    {"NativeGetNextQuestMessage", NativeGetNextQuestMessage},
    {"NativeGetNextAchievementMessage", NativeGetNextAchievementMessage},
    {"NativeSkipAchievementMessage", NativeSkipAchievementMessage},
    {"NativeOnHUDOpenEvent", NativeOnHUDOpenEvent},
    {"NativeSetLevelPause", NativeSetLevelPause},
    {"NativeGetQuestCount", NativeGetQuestCount},
    {"NativeGetQuestIDsInRange", NativeGetQuestIDsInRange},
    {"NativeGetQuestDetails", NativeGetQuestDetails},
    {"NativeSetCurrentQuest", NativeSetCurrentQuest},
    {"NativeGetLoadingProgress", NativeGetLoadingProgress},
    {"NativeGetLoadingTipStrID", NativeGetLoadingTipStrID},
    {"NativeGetStringFromID", NativeGetStringFromID},
    {"NativeGetStringFromSymbol", NativeGetStringFromSymbol},
    {"NativeEnterOptionMenu", NativeEnterOptionMenu},
    {"NativeOptionFX", NativeOptionFX},
    {"NativeOptionMusic", NativeOptionMusic},
    {"NativeGetOptionParameters", NativeGetOptionParameters},
    {"NativeSetOptions", NativeSetOptions},
    {"NativeGetMapIcons", NativeGetMapIcons},
    {"NativeLoadSettings", NativeLoadSettings},
    {"NativeSaveSettings", NativeSaveSettings},
    {"NativeCreateSaveSlot", NativeCreateSaveSlot},
    {"NativeAssignSaveSlotToPlayer", NativeAssignSaveSlotToPlayer},
    {"NativeStartGame", NativeStartGame},
    {"NativeGetStringNumPotions", NativeGetStringNumPotions},
    {"NativeGetNumPotions", NativeGetNumPotions},
    {"NativeUsePotion", NativeUsePotion},
    {"NativePushMenu", NativePushMenu},
    {"NativePopMenu", NativePopMenu},
    {"NativePopAllMenus", NativePopAllMenus},
    {"NativePopAllAbove", NativePopAllAbove},
    {"NativeReviveAllPlayers", NativeReviveAllPlayers},
    {"NativeEndLoading", NativeEndLoading},
    {"NativeMustWaitForHost", NativeMustWaitForHost},
    {"NativeIsMultiplayerLoadCompleted", NativeIsMultiplayerLoadCompleted},
    {"NativeHUDInteract", NativeHUDInteract},
    {"NativeHUDSpell", NativeHUDSpell},
    {"NativeHUDSkill", NativeHUDSkill},
    {"NativePushState", NativePushState},
    {"NativeGoToMainMenu", NativeGoToMainMenu},
    {"NativePlaySoundFX", NativePlaySoundFX},
    {"NativePlayMusic", NativePlayMusic},
    {"NativePlayPreviousMusic", NativePlayPreviousMusic},
    {"NativeStopMusic", NativeStopMusic},
    {"NativePauseMusic", NativePauseMusic},
    {"NativePauseAllSounds", NativePauseAllSounds},
    {"NatvieResumeAllSounds", reinterpret_cast<NativeFn>(NatvieResumeAllSounds)},
    {"NativeSkipScript", NativeSkipScript},
    {"NativeStopMessage", NativeStopMessage},
    {"NativeStartMultiplayerGame", NativeStartMultiplayerGame},
    {"NativeGetParsedString", NativeGetParsedString},
    {"NativeSelectClassSpec", NativeSelectClassSpec},
    {"NativeGetPossibleClassSpec", NativeGetPossibleClassSpec},
    {"NativeGetMonsterHUDHP", NativeGetMonsterHUDHP},
    {"NativeDebugConsole", NativeDebugConsole},
    {"NativeBackToHud", NativeBackToHud},
    {"NativeAwayFromHud", NativeAwayFromHud},
    {"NativeGLLive", NativeGLLive},
    {"NativeLaunchIGP", NativeLaunchIGP},
    {"NativeLaunchTwitter", NativeLaunchTwitter},
    {"NativeSwapEquipment", NativeSwapEquipment},
    {"NativeMerchantGetItemsListForSlot", NativeMerchantGetItemsListForSlot},
    {"NativeMerchantBuyItem", NativeMerchantBuyItem},
    {"NativeMerchantSellItem", NativeMerchantSellItem},
    {"NativeGoToZone", NativeGoToZone},
    {"NativeGetWorldMapLocations", NativeGetWorldMapLocations},
    {"NativeInvDropItem", NativeInvDropItem},
    {"NativeGetBuffs", NativeGetBuffs},
    {"NativeLockZoom", NativeLockZoom},
    {"NativeUnlockZoom", NativeUnlockZoom},
    {"NativeShowMinimap", NativeShowMinimap},
    {"NativeHideMinimap", NativeHideMinimap},
    {"NativeShowMinimapLegend", NativeShowMinimapLegend},
    {"NativeResetMapZoom", NativeResetMapZoom},
    {"getCursorState", NativeGetCursorState},
    {"NativePinchZoom", NativePinchZoom},
    {"NativeResetZoom", NativeResetZoom},
    {"NativeShowStatusBar", NativeShowStatusBar},
    {"NativeMultiplayerBack", NativeMultiplayerBack},
    {"NativeTouchToMove", NativeTouchToMove},
    {"NativeIPodControl", NativeIPodControl},
    {"NativeGLXPlayerLoggedIn", NativeGLXPlayerLoggedIn},
    {"NativeLoginInfos", NativeLoginInfos},
    {"NativeGLXPlayerSignin", NativeGLXPlayerSignin},
    {"NativeSendRoomSearchRequest", NativeSendRoomSearchRequest},
    {"NativeOpenKeyboard", NativeOpenKeyboard},
    {"NativeGetKeyboardLastString", NativeGetKeyboardLastString},
    {"NativeCloseKeyboard", NativeCloseKeyboard},
    {"NativeChangeRolloverInputBehavior", NativeChangeRolloverInputBehavior},
    {"NativeWiFiCheck", NativeWiFiCheck},
    {"NativeBluetoothCheck", NativeBluetoothCheck},
    {"NativeIsMultiplayerGame", NativeIsMultiplayerGame},
    {"NativeRefreshHudManager", NativeRefreshHudManager},
    {"NativeKickPlayerOut", NativeKickPlayerOut},
    {"NativeIsMultiplayerHost", NativeIsMultiplayerHost},
    {"NativeIsGLLiveMultiplayer", NativeIsGLLiveMultiplayer},
    {"NativeSetCurrentDifficulty", NativeSetCurrentDifficulty},
    {"NativeShowLeaderboard", NativeShowLeaderboard},
    {"NativeEnableGameCenter", NativeEnableGameCenter},
    {"NativeGCAchievements", NativeGCAchievements},
    {"NativeGCInvite", NativeGCInvite},
    {"NativeGCLeaderboards", NativeGCLeaderboards},
    {"NativeGCAutoMatch", NativeGCAutoMatch},
    {"NativeStartFromGCInvite", NativeStartFromGCInvite},
    {"NativeInvitePlayer", NativeInvitePlayer},
    {"NativeSendGLInvite", NativeSendGLInvite},
    {"NativeAddFriend", NativeAddFriend},
    {"NativeUseIpodPlayer", NativeUseIpodPlayer},
    {"NativeIPodSetShuffle", NativeIPodSetShuffle},
    {"NativeIPodSetPlaylist", NativeIPodSetPlaylist},
    {"NativeGetIPodPlaylistName", NativeGetIPodPlaylistName},
    {"NativeGetIPodPlaylistCount", NativeGetIPodPlaylistCount},
    {"NativeUpdateOrientation", NativeUpdateOrientation},
    {"NativeEnableBluetooth", NativeEnableBluetooth},
    {"NativeGetCreditMovement", NativeGetCreditMovement},
    {"NativeSaveGame", NativeSaveGame},
    {"NativeReloadSkills", NativeReloadSkills},
    {"NativeIsKorean", NativeIsKorean},
    {"NativeIsOnlineMode", NativeIsOnlineMode},
    {"NativeSetMultitouch", NativeSetMultitouch},
    {"NativeIsMultiplayerEnabled", NativeIsMultiplayerEnabled},
    {"NativeScreenIsBlack", NativeScreenIsBlack},
    {"NativeIsBluetooth", NativeIsBluetooth},
    {"NativeIsJapaneseVersion", NativeIsJapaneseVersion},
    {"NativeHasPushNotification", NativeHasPushNotification},
    {"NativeDoWeHaveInternet", NativeDoWeHaveInternet},
    {"NativeIsBluetoothWifiEnabled", NativeIsBluetoothWifiEnabled},
    {"NativeBeginCustom", NativeBeginCustom},
};

// The movie files of Init and LoadMenu (s_SWFfileToLoad, 0x956a64 .. 0x956ad4): seven groups of four files (shared, charmenu,
// menus, HUD) indexed by the movie slot. Group 0 is the default, 1 the HTC set, 2 the LG set, 3 the I9000 set, 4 the Droid set,
// 5 the Korean and 6 the Japanese menus.
const char* const kSwfFiles[7][4] = {
    {"data/menus/dqshared.swf", "data/menus/dqcharmenu.swf", "data/menus/dqmenus.swf", "data/menus/dqhud.swf"},
    {"data/menus/dqshared_i9000.swf", "data/menus/dqcharmenu_i9000.swf", "data/menus/dqmenus_i9000.swf", "data/menus/dqhud_i9000.swf"},
    {"data/menus/dqshared_i9000.swf", "data/menus/dqcharmenu_i9000.swf", "data/menus/dqmenus_i9000_lg.swf", "data/menus/dqhud_i9000.swf"},
    {"data/menus/dqshared_i9000.swf", "data/menus/dqcharmenu_i9000.swf", "data/menus/dqmenus_i9000.swf", "data/menus/dqhud_i9000.swf"},
    {"data/menus/dqshared_droid.swf", "data/menus/dqcharmenu_droid.swf", "data/menus/dqmenus_droid.swf", "data/menus/dqhud_droid.swf"},
    {"data/menus/dqshared.swf", "data/menus/dqcharmenu.swf", "data/menus/dqmenus_Kor.swf", "data/menus/dqhud.swf"},
    {"data/menus/dqshared.swf", "data/menus/dqcharmenu.swf", "data/menus/dqmenus_jp.swf", "data/menus/dqhud.swf"},
};

// The name the Flash script gets for a gamepad button code (the switch of MenuManager::onEvent); an unknown code gives "".
const char* GamepadButtonName(int button) {
    switch (button) {
        case 0: return "BTN_1";
        case 1: return "BTN_2";
        case 2: return "BTN_3";
        case 3: return "BTN_4";
        case 4: return "BTN_5";
        case 5: return "BTN_6";
        case 6: return "BTN_L1";
        case 7: return "BTN_L2";
        case 8: return "BTN_R1";
        case 9: return "BTN_R2";
        case 10: return "BTN_UP";
        case 11: return "BTN_LEFT";
        case 12: return "BTN_DOWN";
        case 13: return "BTN_RIGHT";
        case 14: return "BTN_START";
        case 15: return "BTN_SELECT";
        case 19: return "BTN_LEFT_CLICK";
        case 22: return "BTN_RIGHT_CLICK";
        case 37: return "BTN_AL_UP";
        case 38: return "BTN_AL_LEFT";
        case 39: return "BTN_AL_DOWN";
        case 40: return "BTN_AL_RIGHT";
        case 41: return "BTN_AR_UP";
        case 42: return "BTN_AR_LEFT";
        case 43: return "BTN_AR_DOWN";
        case 44: return "BTN_AR_RIGHT";
        default: return "";
    }
}

// 0x42d734 FlushTextCallback(gameswf::render_state&, void*): the display callback of the flush_text characters; the user data is
// the root, whose buffered text is drawn.
void FlushTextCallbackImpl(gameswf::render_state&, void* root) {
    static_cast<gameswf::root*>(root)->flush_buffered_text();
}

// The HUD bring-up that Init step 4 and LoadMenu(3) both run, in the original order: the InfoHUDManager and the
// HUDControls caches are pointed at the HUD movie and rebuilt, then the HUD movie is scanned for FlashAnim clips.
// (The original's InfoHUDManager +0x57c and HUDControls +0x658 are both set to the HUD root, which is multi->m_menuFX[3].)
void InitHudCaches(MenuFX* hudRoot) {
    InfoHUDManager* hud = InfoHUDManager::GetInstance();
    hud->m_menu = hudRoot;
    hud->initCachedChars();
    HUDControls* controls = HUDControls::GetInstance();
    controls->m_menu = hudRoot;
    controls->initCachedChars();
    FlashAnimManager::GetInstance()->ScanForAnims(hudRoot);
}

// The drag-and-drop pass of LoadMenu and LoadMainMenu: for each menu from index first on, its drag and drop is registered
// with no filter and then it is hidden (the original re-reads the list bounds on every pass).
void RegisterDragAndHideFrom(const std::vector<MenuBase*>& menus, std::size_t first) {
    for (std::size_t i = first; i < menus.size(); ++i) {
        MenuBase* menu = menus[i];
        menu->RegisterDragAndDrops(nullptr);
        menu->Hide();
    }
}

}  // namespace

// 0x42efb8 _ZN11MenuManager8PostLoadEv
// For each of the four movies: every "menu_" character without a registered MenuBase gets one (operator new(0xc4), the
// m_deleteOnUnload flag set, RegisterMenu on the singleton), and every "flush_text" character gets the text flush display callback
// with the root as user data. The isTracingMenuManager switch is read around each lookup, as in the original.
void MenuManager::PostLoad() {
    for (int index = 0; index != 4; ++index) {
        MenuFX* movie = m_multiMenuManager->m_menuFX[index];
        if (movie == nullptr) {
            continue;
        }
        RenderFX::CharacterArray* found = movie->FindCharacters(movie->GetFlashRoot(), "menu_", 0);
        std::vector<gameswf::character*> menuCharacters(found->data, found->data + found->count);
        for (std::size_t i = 0; i < menuCharacters.size();) {
            gameswf::character* character = menuCharacters[i];
            (void)ReadDebugSwitch("isTracingMenuManager");
            if (GetMenuByName(character->get_name().c_str()) != nullptr) {
                ++i;
                (void)ReadDebugSwitch("isTracingMenuManager");
                continue;
            }
            ++i;
            MenuBase* menu = new MenuBase(character->get_name().c_str());
            menu->m_deleteOnUnload = true;   // +0x7d
            MenuManager::GetInstance()->RegisterMenu(menu);
        }
        found = movie->FindCharacters(movie->GetFlashRoot(), "flush_text", 0);
        for (int i = 0; i < found->count; ++i) {
            movie->RegisterDisplayCallback(found->data[i], FlushTextCallbackImpl, movie->GetRoot());
        }
    }
}

// 0x42f304 _ZN11MenuManager4InitEv
// One step per call: the step counter m_initStep (+0xbc) selects the case, and the counter advances after each step.
// Steps 0, 2 and 3 load the movies of the shared, menus and HUD files (the file name depends on the screen width, the device and
// the language); 4 binds the HUD caches; 5 loads the property names; 7 to 20 create the menu singletons; 23 registers the pages,
// unloads the names, hooks this as the HUD event listener and preloads the glyphs of the six preload_font clips; 24 runs the
// drag-and-drop pass; 25 registers the 174 natives; 26 attaches the event receivers and returns true.
bool MenuManager::Init() {
    switch (m_initStep) {
        case 0:
        case 2:
        case 3: {
            const int index = m_initStep;
            m_multiMenuManager->m_menuFX[index] = nullptr;       // +0x134 + 4 * index
            m_multiMenuManager->m_cameras[index] = nullptr;      // +0x144 + 4 * index
            const char* file = kSwfFiles[0][index];
            if (static_cast<FileSystemBase*>(ApplicationGetInstance().m_device->fileSystem)->doesFileExists(file)   /* FileSystemBase::doesFileExists, vtable +0xa8; core-platform keeps FileSystemWin32 separate from FileSystemBase and the body reads no member */) {
                if (Width_Screen == 854) {
                    m_multiMenuManager->LoadSWFFile(kSwfFiles[4][index], index);
                } else {
                    bool loaded = false;
                    if (Width_Screen != 960) {
                        if (Width_Screen == 800) {
                            if (HTC_DEVICES) {
                                m_multiMenuManager->LoadSWFFile(kSwfFiles[1][index], index);
                            } else if (NO_IGP) {
                                m_multiMenuManager->LoadSWFFile(kSwfFiles[2][index], index);
                            } else {
                                m_multiMenuManager->LoadSWFFile(kSwfFiles[3][index], index);
                            }
                            loaded = true;
                        } else if (dword_99F778->getLanguage() == 5) {
                            m_multiMenuManager->LoadSWFFile(kSwfFiles[5][index], index);
                            loaded = true;
                        } else if (dword_99F778->getLanguage() == 4) {
                            m_multiMenuManager->LoadSWFFile(kSwfFiles[6][index], index);
                            loaded = true;
                        }
                    }
                    if (!loaded) {
                        m_multiMenuManager->LoadSWFFile(file, index);
                    }
                }
                if (index == 3) {
                    m_multiMenuManager->m_menuFX[3]->SetInputBehavior(4);
                } else {
                    m_multiMenuManager->m_menuFX[index]->SetInputBehavior(132);
                }
            }
            break;
        }
        case 1:
            m_multiMenuManager->m_menuFX[1] = nullptr;           // +0x138
            m_multiMenuManager->m_cameras[1] = nullptr;          // +0x148
            break;
        case 4:
            InitHudCaches(GetHUDRoot());
            break;
        case 5:
            CharProperties::LoadPropNames("PyData/character_properties_pystructnames.bin");
            break;
        case 7:
            MenuMainMenu::GetInstance();
            break;
        case 9:
            MenuCharacterSelect::GetInstance();
            break;
        case 11:
            MenuCharMenu_InvMain::GetInstance();
            MenuCharMenu_Map::GetInstance();
            MenuWorldMap::GetInstance();
            break;
        case 13:
            MenuEnterName::GetInstance();
            break;
        case 14:
            MenuMultiplayerLobbyMulti::GetInstance();
            break;
        case 17:
            MenuDebug::GetInstance();
            MenuDebugHUD::GetInstance();
            break;
        case 18:
            MenuMerchant::GetInstance();
            break;
        case 19:
            MenuConfirm::GetInstance();
            break;
        case 20:
            MenuHUDConfirm::GetInstance();
            break;
        case 23: {
            PostLoad();
            CharProperties::UnLoadPropNames();
            if (GetHUDRoot() != nullptr) {
                GetHUDRoot()->SetEventListener(static_cast<RenderFX::EventListener*>(this));
            }
            MenuFX* rootMenu = m_multiMenuManager->m_menuFX[2];   // +0x13c
            static char buffer[64];
            for (int i = 1; i <= 6; ++i) {
                std::sprintf(buffer, "preload_font.preload_font%1d", i);
                gameswf::character* found = static_cast<gameswf::character*>(rootMenu->Find(buffer, rootMenu->GetContext()));
                if (found != nullptr) {
                    GameSWFUtils::PreloadGlyph(GameSWFUtils::CACHE_CHARS_NUMBERS, found, rootMenu);
                    GameSWFUtils::PreloadGlyph(GameSWFUtils::CACHE_CHARS_A_TO_Z, found, rootMenu);
                    GameSWFUtils::PreloadGlyph(GameSWFUtils::CACHE_CHARS_a_TO_z, found, rootMenu);
                }
            }
            break;
        }
        case 24: {
            // Drag-and-drop pass over the menus that exist when the step starts (the original captures the list bounds once).
            const std::size_t count = m_menus.size();
            for (std::size_t i = 0; i < count; ++i) {
                MenuBase* menu = m_menus[i];
                menu->RegisterDragAndDrops(nullptr);
                menu->Hide();
            }
            break;
        }
        case 25:
            for (const NativeBinding& binding : kMenuNatives) {
                gameswf::register_as_native_function(binding.name, binding.fn);
            }
            break;
        case 26:
            dword_99F740->Attach(5, this, 10);
            dword_99F740->Attach(4, this, 10);
            dword_99F740->Attach(7, this, 10);
            return true;
        default:
            break;
    }
    ++m_initStep;
    return false;
}

// 0x430ad4 _ZN11MenuManager7onEventEPK6IEventPK12EventManager
// Touch press and move events (ids 4 and 5) carry a touch id (above 3, or any finger but the first without multitouch, is
// consumed here). A gamepad event (id 7) is turned into the button name and sent to every movie root as onInputEvent (name,
// pressed, pad). Then the movies get their UpdateCursor with the raw position and the pressed state, in order 0 to 3: the
// movies other than the HUD only outside the game view, the root (2) not while the multiplayer gate is closed, the HUD only while
// the level shows the game view and the root movie has no state. The result is whether an event was consumed.
bool MenuManager::onEvent(const IEvent* event, const EventManager* manager) {
    static_cast<void>(manager);
    PushProfilingContext("MenuManager::onEvent");
    if (ReadDebugSwitch("IsDeactivatingFlashMenus")) {
        PopProfilingContext("MenuManager::onEvent");
        return false;
    }
    const bool updateDeactivated = ReadDebugSwitch("IsDeactivatingFlashMenusUpdate");
    if (updateDeactivated || (m_eventConsumed = 0, (m_currentEvent = event) == nullptr)) {
        PopProfilingContext("MenuManager::onEvent");
        return false;
    }
    RenderFX::Cursor cursor;
    cursor.angle = 0.0f;
    cursor.state = 0;
    int rawX = 0;
    int rawY = 0;
    GetRawCurrentEventPosition(rawX, rawY);
    cursor.x = static_cast<float>(rawX);
    cursor.y = static_cast<float>(rawY);
    int touchId = 0;
    bool dispatch = true;
    const std::uint32_t eventId = event->getEventID();
    if (eventId == EvTouchScreenPress::kEventId) {
        const EvTouchScreenPress* press = static_cast<const EvTouchScreenPress*>(event);
        touchId = press->id;
        cursor.state = press->pressed;
        dispatch = !(static_cast<unsigned int>(touchId) > 3 || (touchId != 0 && unk_110));
    } else if (eventId == EvTouchScreenMove::kEventId) {
        const EvTouchScreenMove* move = static_cast<const EvTouchScreenMove*>(event);
        cursor.state = 1;
        touchId = move->id;
        dispatch = !(static_cast<unsigned int>(touchId) > 3 || (touchId != 0 && unk_110));
    } else if (eventId == EvGamepad::kEventId) {
        const EvGamepad* gamepad = static_cast<const EvGamepad*>(event);
        gameswf::as_value arguments[3];
        arguments[0].set_string("");
        arguments[1] = gameswf::as_value(static_cast<double>(gamepad->pressed));
        arguments[2] = gameswf::as_value(static_cast<double>(gamepad->pad));
        arguments[0].set_string(GamepadButtonName(gamepad->button));
        (void)ReadDebugSwitch("isTracingMenuManager");
        PushProfilingContext("MenuManager::RefreshCache + onInputEvent");
        static DebugCachedCharacter s_cachedRoot[4];
        for (int i = 0; i != 4; ++i) {
            MenuFX* movie = m_multiMenuManager->m_menuFX[i];
            if (movie == nullptr) {
                continue;
            }
            DebugCachedCharacter& cache = s_cachedRoot[i];
            if (cache.m_character != nullptr && !cache.m_characterProxy.get_proxy()->is_alive()) {
                cache.m_characterProxy = nullptr;
                cache.m_character = nullptr;
            }
            if (cache.m_character == nullptr) {
                cache.RefreshCache("_root", movie, nullptr);
            }
            if (cache.m_character != nullptr && cache.m_characterProxy.get_proxy()->is_alive()) {
                movie->InvokeASCallback(cache.GetChar(), "onInputEvent", arguments, 3);
            } else if (cache.m_character != nullptr) {
                cache.m_characterProxy = nullptr;
                cache.m_character = nullptr;
            }
        }
        PopProfilingContext("MenuManager::RefreshCache + onInputEvent");
    }
    if (!dispatch) {
        m_currentEvent = nullptr;
        PopProfilingContext("MenuManager::onEvent");
        return true;
    }
    for (int index = 0; index != 4; ++index) {
        MenuFX* movie = m_multiMenuManager->m_menuFX[index];
        if (movie == nullptr) {
            continue;
        }
        bool isRoot = false;
        if (index != 3) {
            if (ApplicationGetInstance().IsCurrentlyInGameView()) {
                continue;
            }
            isRoot = index == 2;
            if (touchId > 0 && index == 2) {
                continue;
            }
        } else {
            MenuFX* rootMovie = m_multiMenuManager->m_menuFX[2];
            const Level* level = ApplicationGetInstance().GetCurrentLevel();
            if (!((rootMovie == nullptr || rootMovie->m_stack.m_size == 0) && level != nullptr && level->m_isInGameView)) {
                break;
            }
        }
        if (isRoot) {
            if (GetOnlineGameFlag()) {
                if (OnlineSingleton<OnlineGameState>::GetInstance()->flag28_) {
                    continue;
                }
            } else if (!ApplicationGetInstance().unk_ab) {
                continue;
            }
        }
        movie->UpdateCursor(cursor, touchId);
        if (m_eventConsumed == 1) {
            break;
        }
    }
    m_currentEvent = nullptr;
    const bool consumed = m_eventConsumed != 0;
    PopProfilingContext("MenuManager::onEvent");
    return consumed;
}

// 0x431750 _ZN11MenuManager16RegisterListenerEP8MenuBase
void MenuManager::RegisterListener(MenuBase* menu) {
    m_listeners[menu] = true;
}

// 0x4317e8 _ZN11MenuManager8PushMenuEP8MenuBase
// When the menu is not valid (IsValidMenu, vtable +0x3c) or its state is already in a movie stack (MultiMenuManager::IsStateInStack,
// vtable +0x40), nothing is pushed. Otherwise the touch state is reset (Application::ResetTouch, TouchScreenBase::ProcessEvents),
// the menu is pushed on the MultiMenuManager (vtable +0x34), and the isTracingMenuManager switch is read. The listener step then
// runs on both paths: the menu is registered when its MenuFX (+0x04) is the HUD root. A null menu returns early.
void MenuManager::PushMenu(MenuBase* menu) {
    if (menu == nullptr) {
        return;
    }
    if (menu->IsValidMenu() && !m_multiMenuManager->IsStateInStack(menu)) {
        ApplicationGetInstance().ResetTouch();
        ApplicationGetInstance().m_touchScreen->ProcessEvents();
        m_multiMenuManager->PushMenu(menu);
        (void)DebugSwitches::GetInstance()->GetSwitch("isTracingMenuManager");
    }
    if (menu->m_menu == GetHUDRoot()) {
        RegisterListener(menu);
    }
}

// 0x431924 _ZN11MenuManager8PushMenuEPKc
void MenuManager::PushMenu(const char* name) {
    MenuBase* menu = GetMenuByName(name);
    if (menu != nullptr) {
        PushMenu(menu);
    }
}

// 0x4319cc _ZN11MenuManagerC2Ev (complete-object copy)
// 0x431c38 _ZN11MenuManagerC1Ev (base-object copy). The two bodies match, so one definition serves both.
// The base classes and members that are constructed in place (IEventReceiver and EventListener vptrs, m_debugCachedCharacter
// at +0x20, m_menus at +0x64, m_listeners at +0x70, the m_menuFXDeque at +0xcc) are handled by the C++ constructors.
// The gameswf log callback is set, RenderFX::Initialize runs with a 512 x 512 glyph texture, the video driver of the device and
// GameSWFUtils::SwfTextureLoader, the three flash menu switches are cleared and the MultiMenuManager is allocated.
MenuManager::MenuManager() {
    unk_50 = 0;
    unk_54 = 0;
    unk_58 = 0;
    unk_5c = 0;
    m_savedCamera = nullptr;
    m_resetListeners = false;
    m_eventConsumed = 0;
    unk_b0 = 0;
    m_initStep = 0;
    unk_c0 = 0;
    unk_c4 = true;
    unk_f8 = 0;
    unk_fc = 0;
    unk_100 = 0;
    unk_104 = 0;
    m_actionIconType = -1;
    unk_10c = 0;
    unk_110 = false;

    gameswf::register_log_callback(reinterpret_cast<void (*)(bool, const char*)>(&GameSWFUtils::gameswf_logger));
    RenderFX::InitializationParameters parameters;
    std::memset(&parameters, 0, sizeof(parameters));
    parameters.videoDriver = ApplicationGetInstance().m_device->videoDriver;      // device +0x10
    parameters.textureLoader = reinterpret_cast<gameswf::texture_loader_callback>(&GameSWFUtils::SwfTextureLoader);
    parameters.glyphTextureWidth = 512;
    parameters.glyphTextureHeight = 512;
    parameters.glyphFlag = false;
    parameters.glyphScale = 1.0f;
    RenderFX::Initialize(parameters);

    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->SetSwitch("IsDeactivatingFlashMenus", false);
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->SetSwitch("IsDeactivatingFlashMenusUpdate", false);
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->SetSwitch("IsDeactivatingFlashMenusRender", false);

    m_multiMenuManager = new MultiMenuManager();
}

// 0x431ea4 _ZN11MenuManager8LoadMenuEi
// Loads the movie for index (the file chosen by the screen width and device), sets its input behaviour (132; the HUD gets 4, binds
// the HUD caches and takes this as event listener), updates the movie once (Update(1, false)), then creates and registers the menu
// singletons that have no character yet (MenuDebug hidden, MenuDebugHUD, MainMenu, Merchant, CharacterSelect, EnterName,
// MultiplayerLobbyMulti, CharMenu_InvMain, CharMenu_Map, WorldMap), runs PostLoad and registers drag-and-drop for the menus
// added since. An index above 3 calls through a null movie in the original; it returns here.
void MenuManager::LoadMenu(int index) {
    const unsigned int slot = static_cast<unsigned int>(index);
    if (Width_Screen == 854) {
        m_multiMenuManager->LoadSWFFile(kSwfFiles[4][slot], index);
    } else if (Width_Screen == 800) {
        if (HTC_DEVICES) {
            m_multiMenuManager->LoadSWFFile(kSwfFiles[1][slot], index);
        } else if (NO_IGP) {
            m_multiMenuManager->LoadSWFFile(kSwfFiles[2][slot], index);
        } else {
            m_multiMenuManager->LoadSWFFile(kSwfFiles[3][slot], index);
        }
    } else {
        m_multiMenuManager->LoadSWFFile(kSwfFiles[0][slot], index);
    }
    if (slot > 3) {
        return;
    }
    m_multiMenuManager->m_menuFX[slot]->SetInputBehavior(132);
    if (slot == 3) {
        m_multiMenuManager->m_menuFX[3]->SetInputBehavior(4);
        InitHudCaches(m_multiMenuManager->m_menuFX[3]);
        GetHUDRoot()->SetEventListener(static_cast<RenderFX::EventListener*>(this));
    }
    m_multiMenuManager->m_menuFX[slot]->Update(1, false);
    if (MenuDebug::GetInstance()->GetCharacter() == nullptr) {
        MenuDebug::GetInstance()->Init();
        gameswf::character* debugCharacter = MenuDebug::GetInstance()->GetCharacter();
        if (debugCharacter != nullptr) {
            debugCharacter->set_visible(false);
        }
    }
    if (MenuDebugHUD::GetInstance()->GetCharacter() == nullptr) {
        MenuDebugHUD::GetInstance()->Init();
    }
    if (MenuMainMenu::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuMainMenu::GetInstance());
    }
    if (MenuMerchant::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuMerchant::GetInstance());
    }
    if (MenuCharacterSelect::GetInstance()->GetCharacter() == nullptr) {
        MenuCharacterSelect::GetInstance()->Init();
    }
    if (MenuEnterName::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuEnterName::GetInstance());
    }
    if (MenuMultiplayerLobbyMulti::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuMultiplayerLobbyMulti::GetInstance());
    }
    if (MenuCharMenu_InvMain::GetInstance()->GetCharacter() == nullptr) {
        MenuCharMenu_InvMain::GetInstance()->Init();
    }
    if (MenuCharMenu_Map::GetInstance()->GetCharacter() == nullptr) {
        MenuCharMenu_Map::GetInstance()->Init();
    }
    if (MenuWorldMap::GetInstance()->GetCharacter() == nullptr) {
        MenuWorldMap::GetInstance()->Init();
    }
    const std::size_t before = m_menus.size();
    PostLoad();
    RegisterDragAndHideFrom(m_menus, before);
}

// 0x4324dc _ZN11MenuManager12LoadMainMenuEv
// Loads the main menu movie (index 2; the file depends on the screen width, the device and the language), sets the root input
// behaviour (132), updates it once, creates and registers the menu singletons that have no character yet (MenuDebug is hidden
// whether or not it was just initialised), PostLoad, then drag-and-drop for the menus added since.
void MenuManager::LoadMainMenu() {
    switch (Width_Screen) {
        case 854:
            m_multiMenuManager->LoadSWFFile("data/menus/dqmenus_droid.swf", 2);
            break;
        case 960:
            m_multiMenuManager->LoadSWFFile("data/menus/dqmenus.swf", 2);
            break;
        case 800:
            if (HTC_DEVICES || !NO_IGP) {
                m_multiMenuManager->LoadSWFFile("data/menus/dqmenus_i9000.swf", 2);
            } else {
                m_multiMenuManager->LoadSWFFile("data/menus/dqmenus_i9000_lg.swf", 2);
            }
            break;
        default:
            if (dword_99F778->getLanguage() == 5) {
                m_multiMenuManager->LoadSWFFile("data/menus/dqmenus_Kor.swf", 2);
            } else if (dword_99F778->getLanguage() == 4) {
                m_multiMenuManager->LoadSWFFile("data/menus/dqmenus_jp.swf", 2);
            } else {
                m_multiMenuManager->LoadSWFFile("data/menus/dqmenus.swf", 2);
            }
            break;
    }
    m_multiMenuManager->m_menuFX[2]->SetInputBehavior(132);
    GetRoot()->Update(1, false);
    if (MenuDebug::GetInstance()->GetCharacter() == nullptr) {
        MenuDebug::GetInstance()->Init();
    }
    gameswf::character* debugCharacter = MenuDebug::GetInstance()->GetCharacter();
    if (debugCharacter != nullptr) {
        debugCharacter->set_visible(false);
    }
    if (MenuMainMenu::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuMainMenu::GetInstance());
    }
    if (MenuCharacterSelect::GetInstance()->GetCharacter() == nullptr) {
        MenuCharacterSelect::GetInstance()->Init();
    }
    if (MenuEnterName::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuEnterName::GetInstance());
    }
    if (MenuMultiplayerLobbyMulti::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuMultiplayerLobbyMulti::GetInstance());
    }
    if (MenuLeaderboard::GetInstance()->GetCharacter() == nullptr) {
        MenuManager::GetInstance()->RegisterMenu(MenuLeaderboard::GetInstance());
    }
    const std::size_t before = m_menus.size();
    PostLoad();
    RegisterDragAndHideFrom(m_menus, before);
}
