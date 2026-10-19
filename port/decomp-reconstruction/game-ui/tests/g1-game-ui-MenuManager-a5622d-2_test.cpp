// Checks the two value tables that MenuManager's bodies (batch g1-game-ui-MenuManager-a5622d-2) use: the button names of
// the onEvent key switch and the main-menu SWF choice of LoadMainMenu. Both are header-only, so this test needs no engine
// sources and is run without the MenuManager translation unit (its other functions depend on engine classes).
#include <cstdio>
#include <cstring>

#include "dh2/global/menu_manager_events_load.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool Same(const char* a, const char* b) {
    return std::strcmp(a, b) == 0;
}

}  // namespace

int main() {
    // Button names: every named code, the gaps and the out-of-range values.
    Check(Same(MenuManagerButtonName(0), "BTN_1"), "button 0 is BTN_1");
    Check(Same(MenuManagerButtonName(5), "BTN_6"), "button 5 is BTN_6");
    Check(Same(MenuManagerButtonName(6), "BTN_L1"), "button 6 is BTN_L1");
    Check(Same(MenuManagerButtonName(9), "BTN_R2"), "button 9 is BTN_R2");
    Check(Same(MenuManagerButtonName(10), "BTN_UP"), "button 10 is BTN_UP");
    Check(Same(MenuManagerButtonName(13), "BTN_RIGHT"), "button 13 is BTN_RIGHT");
    Check(Same(MenuManagerButtonName(15), "BTN_SELECT"), "button 15 is BTN_SELECT");
    Check(Same(MenuManagerButtonName(16), ""), "button 16 has no name");
    Check(Same(MenuManagerButtonName(18), ""), "button 18 has no name");
    Check(Same(MenuManagerButtonName(19), "BTN_LEFT_CLICK"), "button 19 is BTN_LEFT_CLICK");
    Check(Same(MenuManagerButtonName(22), "BTN_RIGHT_CLICK"), "button 22 is BTN_RIGHT_CLICK");
    Check(Same(MenuManagerButtonName(36), ""), "button 36 has no name");
    Check(Same(MenuManagerButtonName(37), "BTN_AL_UP"), "button 37 is BTN_AL_UP");
    Check(Same(MenuManagerButtonName(40), "BTN_AL_RIGHT"), "button 40 is BTN_AL_RIGHT");
    Check(Same(MenuManagerButtonName(41), "BTN_AR_UP"), "button 41 is BTN_AR_UP");
    Check(Same(MenuManagerButtonName(44), "BTN_AR_RIGHT"), "button 44 is BTN_AR_RIGHT");
    Check(Same(MenuManagerButtonName(45), ""), "button 45 has no name");
    Check(Same(MenuManagerButtonName(-1), ""), "button -1 has no name");

    // Main-menu SWF: the width cases, the 800 device split and the language cases of the default branch.
    Check(Same(MenuManagerMainMenuSwf(854, false, false, 0), "data/menus/dqmenus_droid.swf"), "854 uses the droid file");
    Check(Same(MenuManagerMainMenuSwf(854, true, true, 5), "data/menus/dqmenus_droid.swf"), "854 ignores device and language");
    Check(Same(MenuManagerMainMenuSwf(960, false, false, 4), "data/menus/dqmenus.swf"), "960 ignores language");
    Check(Same(MenuManagerMainMenuSwf(800, true, true, 0), "data/menus/dqmenus_i9000.swf"), "800 HTC uses i9000");
    Check(Same(MenuManagerMainMenuSwf(800, false, false, 0), "data/menus/dqmenus_i9000.swf"), "800 non-IGP uses i9000");
    Check(Same(MenuManagerMainMenuSwf(800, false, true, 0), "data/menus/dqmenus_i9000_lg.swf"), "800 IGP uses the lg file");
    Check(Same(MenuManagerMainMenuSwf(1024, false, false, 5), "data/menus/dqmenus_Kor.swf"), "default language 5 is Korean");
    Check(Same(MenuManagerMainMenuSwf(1024, false, false, 4), "data/menus/dqmenus_jp.swf"), "default language 4 is Japanese");
    Check(Same(MenuManagerMainMenuSwf(1024, false, false, 0), "data/menus/dqmenus.swf"), "default other language");
    Check(Same(MenuManagerMainMenuSwf(1024, false, false, 3), "data/menus/dqmenus.swf"), "default language 3 falls back");

    if (g_failures == 0) {
        std::printf("MenuManager value tables: all checks passed\n");
        return 0;
    }
    return 1;
}
