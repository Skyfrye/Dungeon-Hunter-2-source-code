// Value tables of two MenuManager switches (batch g1-game-ui-MenuManager-a5622d-2). The original repeats them inline
// in MenuManager::onEvent (0x430ad4) and MenuManager::LoadMainMenu (0x4324dc). They are factored out here so the
// mapping can be tested without the engine. Neither function is a symbol of libDungeonHunter2.so.
#pragma once

// The button name that onEvent passes to onInputEvent for a key event (the switch on the event's button code).
// Codes with no name give the empty string, as the original's default branch does.
inline const char* MenuManagerButtonName(int button) {
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

// The main-menu SWF that LoadMainMenu loads for the screen. screenWidth is Width_Screen, htcDevice is HTC_DEVICES,
// noIgp is NO_IGP and language is SavegameManager::getLanguage(). The width 800 case is the only one that reads the
// device flags, and it reads htcDevice first, as the original does.
inline const char* MenuManagerMainMenuSwf(int screenWidth, bool htcDevice, bool noIgp, int language) {
    switch (screenWidth) {
        case 854: return "data/menus/dqmenus_droid.swf";
        case 960: return "data/menus/dqmenus.swf";
        case 800:
            if (htcDevice || !noIgp) return "data/menus/dqmenus_i9000.swf";
            return "data/menus/dqmenus_i9000_lg.swf";
        default:
            if (language == 5) return "data/menus/dqmenus_Kor.swf";
            if (language == 4) return "data/menus/dqmenus_jp.swf";
            return "data/menus/dqmenus.swf";
    }
}
