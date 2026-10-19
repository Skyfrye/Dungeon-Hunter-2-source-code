// appKeyReleased (0x5305cc): the Android back and menu keys. Ledger row of core-platform; the queue lists it under
// w7_global_03.cpp, but that unit cannot include the menu headers (vendored gameswf conflicts).

#include "core-platform/debug_out.hpp"
#include "core-platform/w7_global_02.hpp"
#include "dh2/Application.hpp"
#include "dh2/GS_InterruptLoading.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/multi_menu_manager.hpp"
#include "vox-audio/vox/sound_manager.hpp"

extern bool b_IsInCutScreen;  // game-ui/src/g1-game-ui-HUDControls-fd602c-0.cpp

extern "C" void nativeSendAppBackground();  // core-platform/tb/android_jni_platform.hpp
extern "C" MenuManager* appKeyReleased(int keyCode);


// 0x5305cc appKeyReleased(keyCode): the Android back (4) and menu (82) keys. The menu key pauses or resumes the game
// from the in-game menus. The back key walks lastOpenMenuID back one menu by replaying a touch on the matching back or
// confirm button (the press* functions). The MenuManager* result is a register leftover; 0 here.
extern "C" MenuManager* appKeyReleased(int keyCode) {
    _DEBUG_OUT("**********************lastOpenMenuID %d", lastOpenMenuID);
    _DEBUG_OUT("**********************keyCode %d", keyCode);
    if (keyCode != 4) {
        if (keyCode != 82) {
            return nullptr;
        }
        if (lastOpenMenuID == 9) {
            pressPauseButtonInGame();
        } else if (lastOpenMenuID == 10) {
            pressContinueInIGM();
        }
        return nullptr;
    }
    if (InterLoad) {
        return nullptr;
    }
    isBackKeyPressed = true;
    if (b_IsInCutScreen && lastOpenMenuID == 9) {
        b_IsInCutScreen = InterLoad;
        _DEBUG_OUT("\n\n Minimize the game in cut screen................\n\n");
        nativeSendAppBackground();
        return nullptr;
    }
    _DEBUG_OUT("\n\n lastOpenMenuID = %d   %d\n\n", lastOpenMenuID, static_cast<int>(InExitConfirmation));
    if (lastOpenMenuID == 1 || lastOpenMenuID == 19) {
        if (InExitConfirmation) {
            pressNOInExitConfirmation();
            return nullptr;
        }
        if (lastOpenMenuID == 19) {
            pressNOInConfirmation();
            lastOpenMenuID = 1;
            return nullptr;
        }
        MenuManager::GetInstance()->mySendEvent(const_cast<char*>("menu_MainMenu.btn_exit"), RenderFX::EVENT_PRESS);
        MenuManager::GetInstance()->mySendEvent(const_cast<char*>("menu_MainMenu.btn_exit"), RenderFX::EVENT_RELEASE);
        return nullptr;
    }
    switch (lastOpenMenuID) {
        case 2:
        case 4:
            lastOpenMenuID = 1;
            pressBackButtonInGame();
            return nullptr;
        case 13:
            if (Back_key_Glive) {
                Back_key_Glive = false;
                pressOKButtonInGLive();
            } else {
                pressBackButtonInGame();
            }
            return nullptr;
        case 6:
            if (!isInGameMenu) {
                lastOpenMenuID = 4;
                pressBackButtonInGame();
                return nullptr;
            }
            break;
        case 3:
            if (!isInGameMenu) {
                lastOpenMenuID = 1;
                pressBackButtonInGame();
                return nullptr;
            }
            break;
        case 14:
            lastOpenMenuID = isInGameMenu ? 5 : 6;
            pressBackButtonInGame();
            return nullptr;
        case 5:
            lastOpenMenuID = 10;
            pressBackButtonInGame();
            return nullptr;
        case 7:
            ApplicationGetInstance().GoToMainMenu(static_cast<GoToMainMenuEvent>(0));
            return nullptr;
        case 8:
            _DEBUG_OUT("\n\n Minimize the game from menu_Loading................\n\n");
            nativeSendAppBackground();
            return nullptr;
        case 11:
            nativeSendAppBackground();
            return nullptr;
        case 9:
            pressPauseButtonInGame();
            return nullptr;
        case 10:
            pressMainMenuInIGM();
            return nullptr;
        case 20:
            lastOpenMenuID = 12;
            pressBackButtonInGame();
            return nullptr;
        case 12:
            lastOpenMenuID = 9;
            pressBackButtonInGame();
            return nullptr;
        case 15:
            lastOpenMenuID = 4;
            pressBackButtonInGame();
            return nullptr;
        case 16:
            lastOpenMenuID = 1;
            pressBackButtonInGame();
            return nullptr;
        case 17:
            lastOpenMenuID = 16;
            pressBackButtonInGame();
            return nullptr;
        case 18:
            VoxSoundManager::s_instance->BackToMainMenu();
            return nullptr;
        case 50:
            pressMainMenuInMutiIGM();
            return nullptr;
        default:
            isBackKeyPressed = false;
            return nullptr;
    }
    // Menus 6 and 3 while the in-game menu is open: back goes to the in-game pause menu.
    lastOpenMenuID = 10;
    pressBackButtonInGame();
    return nullptr;
}
