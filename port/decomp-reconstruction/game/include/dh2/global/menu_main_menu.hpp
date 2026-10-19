// Value tables, declarations and pure mappings used by the MenuMainMenu bodies (batch g1-game-ui-MenuMainMenu-3de27c-0).
// The bodies are in game-ui/src/g1-game-ui-MenuMainMenu-3de27c-0.cpp. This header holds only what a test can use without
// the engine: float constants named by the bit patterns of the original, two pure switch mappings, and declarations of
// globals and natives that other categories own. The float bit patterns are the Hex-Rays integer constants of the
// original; the comment after each constant gives the bits.
#pragma once

#include <cstdint>

// MenuMainMenu::CreateAvatarCamera. The camera sits at (0, -900, 150) and looks at (0, 0, 225).
inline constexpr float kAvatarCameraPositionY = -900.0f;        // 0xc4610000 (Hex-Rays int -1000275968)
inline constexpr float kAvatarCameraPositionZ = 150.0f;         // 0x43160000 (int 1125515264)
inline constexpr float kAvatarCameraTargetZ = 225.0f;           // 0x43610000 (int 1130430464)
inline constexpr float kAvatarCameraAspectRatio = 1.6677523851394653f;  // 0x3fd578e9 (int 1070954729)
inline constexpr float kAvatarCameraFov = 0.7088894844055176f;  // 0x3f3579c8 (int 1060469192)
inline constexpr float kAvatarCameraNear = 10.0f;               // 0x41200000 (int 1092616192)
inline constexpr float kAvatarCameraFar = 2000.0f;              // 0x44fa0000 (int 1157234688)

// MenuMainMenu::SetupCharacter. The model root is placed at (0, -200, -20) and rolled by 3.1416 * -0.125 (quaternion set
// with x = y = 0). Used only by the part of SetupCharacter that is still missing.
inline constexpr float kPreviewCharacterPositionY = -200.0f;    // 0xc3480000 (int -1018691584)
inline constexpr float kPreviewCharacterPositionZ = -20.0f;     // 0xc1a00000 (int -1046478848)
inline constexpr float kPreviewCharacterRoll = static_cast<float>(3.1416 * -0.125);  // 0xbec90ff9

// Globals read and written by MenuMainMenu::GotFocus, not declared anywhere else in the tree.
// Is_In_Multiplayer_Mode is also declared in core-platform/deps/application.hpp (same type, same symbol).
extern bool Is_In_Multiplayer_IGM;   // ELF 0x9a5b5a, .bss, 1 byte
extern bool Is_In_Multiplayer_Mode;  // ELF 0x9a5b59, .bss, 1 byte

// The unnamed byte at ELF 0x99f7d7 (.bss): set to 1 at the end of MenuMainMenu::Show, read by MenuManager::onEvent.
extern bool byte_99F7D7;

// nativeOpenIGP (0x532ad4): the JNI bridge that opens the in-game page. It is a C symbol (core-platform defines it with C linkage,
// void: the Java method returns nothing and the r0 left behind has no defined value). Declared with the same linkage and type
// here; it was a C++ declaration returning int, which asked for _Z13nativeOpenIGPi and linked to nothing (link-1).
extern "C" void nativeOpenIGP(int language);

// The language argument of nativeOpenIGP in MenuMainMenu::OnEvent. The original switch is the same table as
// GLLiveLanguageArg (dh2/global/native_app_hud_level.hpp): languages 4, 5, 6 and 7 become 5, 6, 7 and 4, every other value
// is passed through unchanged.
inline int IGPLanguageArg(int language) {
    switch (language) {
        case 4:
            return 5;
        case 5:
            return 6;
        case 6:
            return 7;
        case 7:
            return 4;
        default:
            return language;
    }
}

// The StrID constant name of the error message that MenuMainMenu::Show looks up for a GoToMainMenuEvent value. Events 1 to 6,
// 8 and 9 have a message. Events 0 and 7 show none, and every other value shows the callback with an empty message, so those
// give nullptr. The names are the constants of the StrID table of PyDataConstants.
inline const char* MainMenuErrorStrId(int event) {
    switch (event) {
        case 1:
            return "MENU_MULTIPLAYER_ERROR_KICKED";
        case 2:
            return "MENU_MULTIPLAYER_LOGIN_GENERAL_FAILURE";
        case 3:
            return "MENU_MULTIPLAYER_ERROR_CONNECTION_LOST";
        case 4:
            return "MENU_MULTIPLAYER_LOGIN_ANOTHER_DEVICE_ERROR";
        case 5:
            return "MENU_MULTIPLAYER_NO_CONNECTION";
        case 6:
            return "MENU_MULTIPLAYER_ERROR_GAME_ROOM_GONE";
        case 8:
            return "MENU_MULTIPLAYER_ERROR_CONNECTION_FAILED";
        case 9:
            return "MENU_MULTIPLAYER_TIMEOUT";
        default:
            return nullptr;
    }
}

// Whether MenuMainMenu::Show calls the "MainMenuError" callback of the root movie for a GoToMainMenuEvent value. Events 0 and
// 7 do not; every other value does (with the message from MainMenuErrorStrId, or an empty one).
inline bool MainMenuErrorShowsCallback(int event) {
    return event != 0 && event != 7;
}
