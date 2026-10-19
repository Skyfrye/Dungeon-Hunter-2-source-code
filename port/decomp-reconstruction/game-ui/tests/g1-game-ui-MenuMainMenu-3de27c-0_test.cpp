// Checks the value tables that the MenuMainMenu bodies (batch g1-game-ui-MenuMainMenu-3de27c-0) use: the float constants of the
// avatar camera and the preview character against the bit patterns of the original, the language argument of nativeOpenIGP,
// and the StrID names and the callback rule of the error event. Header-only, so it needs no engine sources.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/global/menu_main_menu.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

std::uint32_t FloatBits(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

bool Same(const char* a, const char* b) {
    if (a == nullptr || b == nullptr) {
        return a == b;
    }
    return std::strcmp(a, b) == 0;
}

}  // namespace

int main() {
    // Float constants: each literal must equal the Hex-Rays integer constant of the original, bit for bit.
    Check(FloatBits(kAvatarCameraPositionY) == 0xC4610000u, "camera position y is -900 (0xc4610000)");
    Check(FloatBits(kAvatarCameraPositionZ) == 0x43160000u, "camera position z is 150 (0x43160000)");
    Check(FloatBits(kAvatarCameraTargetZ) == 0x43610000u, "camera target z is 225 (0x43610000)");
    Check(FloatBits(kAvatarCameraAspectRatio) == 0x3FD578E9u, "camera aspect ratio bits 0x3fd578e9");
    Check(FloatBits(kAvatarCameraFov) == 0x3F3579C8u, "camera FOV bits 0x3f3579c8");
    Check(FloatBits(kAvatarCameraNear) == 0x41200000u, "camera near plane is 10 (0x41200000)");
    Check(FloatBits(kAvatarCameraFar) == 0x44FA0000u, "camera far plane is 2000 (0x44fa0000)");
    Check(FloatBits(kPreviewCharacterPositionY) == 0xC3480000u, "preview position y is -200 (0xc3480000)");
    Check(FloatBits(kPreviewCharacterPositionZ) == 0xC1A00000u, "preview position z is -20 (0xc1a00000)");
    Check(FloatBits(kPreviewCharacterRoll) == 0xBEC90FF9u, "preview roll is 3.1416 * -0.125 (0xbec90ff9)");

    // nativeOpenIGP argument: 4, 5, 6 and 7 map to 5, 6, 7 and 4; other values pass through.
    Check(IGPLanguageArg(4) == 5, "IGP language 4 is passed as 5");
    Check(IGPLanguageArg(5) == 6, "IGP language 5 is passed as 6");
    Check(IGPLanguageArg(6) == 7, "IGP language 6 is passed as 7");
    Check(IGPLanguageArg(7) == 4, "IGP language 7 is passed as 4");
    Check(IGPLanguageArg(0) == 0, "IGP language 0 passes through");
    Check(IGPLanguageArg(3) == 3, "IGP language 3 passes through");
    Check(IGPLanguageArg(8) == 8, "IGP language 8 passes through");
    Check(IGPLanguageArg(-1) == -1, "IGP language -1 passes through");

    // Error event: the StrID name of each message event; events 0 and 7 and the default have none.
    Check(Same(MainMenuErrorStrId(1), "MENU_MULTIPLAYER_ERROR_KICKED"), "event 1 is ERROR_KICKED");
    Check(Same(MainMenuErrorStrId(2), "MENU_MULTIPLAYER_LOGIN_GENERAL_FAILURE"), "event 2 is LOGIN_GENERAL_FAILURE");
    Check(Same(MainMenuErrorStrId(3), "MENU_MULTIPLAYER_ERROR_CONNECTION_LOST"), "event 3 is CONNECTION_LOST");
    Check(Same(MainMenuErrorStrId(4), "MENU_MULTIPLAYER_LOGIN_ANOTHER_DEVICE_ERROR"), "event 4 is ANOTHER_DEVICE_ERROR");
    Check(Same(MainMenuErrorStrId(5), "MENU_MULTIPLAYER_NO_CONNECTION"), "event 5 is NO_CONNECTION");
    Check(Same(MainMenuErrorStrId(6), "MENU_MULTIPLAYER_ERROR_GAME_ROOM_GONE"), "event 6 is GAME_ROOM_GONE");
    Check(MainMenuErrorStrId(0) == nullptr, "event 0 has no message");
    Check(Same(MainMenuErrorStrId(8), "MENU_MULTIPLAYER_ERROR_CONNECTION_FAILED"), "event 8 is CONNECTION_FAILED");
    Check(Same(MainMenuErrorStrId(9), "MENU_MULTIPLAYER_TIMEOUT"), "event 9 is TIMEOUT");
    Check(MainMenuErrorStrId(7) == nullptr, "event 7 has no message");
    Check(MainMenuErrorStrId(10) == nullptr, "event 10 (default branch) has no message");
    Check(MainMenuErrorStrId(-1) == nullptr, "event -1 (default branch) has no message");

    // The callback is shown for every event except 0 and 7.
    Check(!MainMenuErrorShowsCallback(0), "event 0 shows no callback");
    Check(!MainMenuErrorShowsCallback(7), "event 7 shows no callback");
    Check(MainMenuErrorShowsCallback(1), "event 1 shows the callback");
    Check(MainMenuErrorShowsCallback(9), "event 9 shows the callback");
    Check(MainMenuErrorShowsCallback(10), "event 10 (default branch) shows the callback");
    Check(MainMenuErrorShowsCallback(-1), "event -1 (default branch) shows the callback");

    if (g_failures == 0) {
        std::printf("MenuMainMenu value tables: all checks passed\n");
        return 0;
    }
    std::printf("MenuMainMenu value tables: %d check(s) failed\n", g_failures);
    return 1;
}
