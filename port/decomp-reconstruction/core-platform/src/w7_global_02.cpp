// global_02 slice: reconstructed functions. Rows without a body here are
// recorded in the ledger as skipped or partial with the reason.

#include "core-platform/w7_global_02.hpp"

#include "core-platform/debug_out.hpp"
#include "core-platform/tb/android_jni_app_events.hpp"
#include "dh2/Application.hpp"
#include "dh2/GS_InterruptLoading.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/TouchScreenBase.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/menu_main_menu.hpp"
#include "dh2/global/multi_menu_manager.hpp"
#include "dh2/global/screen_size.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// 0x50f778 _Z18disableCullingModePN6glitch5scene10ISceneNodeE
// Thunk: a single tail branch to setCullingMode(node, 0).
int disableCullingMode(glitch::scene::ISceneNode* node) {
    return setCullingMode(node, 0);
}

// 0x50f744 _Z14setCullingModePN6glitch5scene10ISceneNodeEi
// A null node is ignored. Otherwise the node's automatic-culling mode is set (ISceneNode::setAutomaticCulling, 0x59719c) and
// every child, recursively through disableCullingMode, gets mode 0. The int result is the last call's register in the
// original (not meaningful); 0 here.
int setCullingMode(glitch::scene::ISceneNode* node, int mode) {
    if (node != nullptr) {
        node->setAutomaticCulling(mode);
        for (glitch::scene::ISceneNode* child : node->getChildren()) {
            disableCullingMode(child);
        }
    }
    return 0;
}

// 0x52f0e8 getState
// Returns the constant 1.
extern "C" int getState() {
    return 1;
}

// ---- app* UI handlers and press* menu handlers ----
// The press* functions synthesize touch input: each one calls appOnTouch(1, x, y, ...) (phase 1, touch began) and then
// appOnTouch(0, x, y, ...) (phase 0, touch ended) at the position of a menu button. The positions are in landscape
// coordinates; when isScreenOriented is clear the screen is mirrored (x = Width_Screen - x, y = Height_Screen - y). The
// extra appOnTouch arguments Hex-Rays shows (the isScreenOriented byte) are always zero on the paths that pass them.
// The Hex-Rays int results of the void paths are register leftovers; they are returned as 0 here.

namespace {

// appOnTouch phase 1 (began) and phase 0 (ended) at one point, the other five words zero.
void Press(int x, int y) { appOnTouch(1, x, y, 0, 0, 0, 0, 0); }
int Release(int x, int y) { return appOnTouch(0, x, y, 0, 0, 0, 0, 0); }

}  // namespace

// 0x52f0dc appTrackBall
extern "C" void appTrackBall() {}

// 0x52f0f0 appKeyPressed
extern "C" int appKeyPressed() {
    _DEBUG_OUT("keypresseddddddddddddddddddddddddd %d", lastOpenMenuID);
    return 0;
}

// 0x52f11c appOnTouch(phase, x, y, ...). Forwards the touch to the touch screen when the game is running and not in an
// interrupt load. phase 1 -> vtable +0x20 (touchBegan), 2 -> +0x24 (touchMoved), 0 -> +0x28 (touchEnded); the point is
// two shorts and the last argument (a8, the Java time word) is the slot. Touches with x 301..500 and y 251..399 also
// clear Back_key_Glive.
extern "C" int appOnTouch(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8) {
    (void)a4;
    (void)a5;
    (void)a6;
    (void)a7;
    _DEBUG_OUT("Toucxhhhhhhhhhhhhhhhh %d---- %d", a2, a3);
    const bool inBox = static_cast<unsigned>(a2 - 301) <= 0xC6u && a3 > 250;
    if (inBox && a3 < 400) {
        Back_key_Glive = false;
    }
    if (app != nullptr && !InterLoad) {
        const Point2D<short> p{static_cast<short>(a2), static_cast<short>(a3)};
        TouchScreenBase* touch = app->m_touchScreen;
        // Deviation (CHAOS-BUGS M1): nativeOnTouch runs on the Java UI thread while the GL thread can be inside Application's
        // teardown (m_touchScreen deleted and zeroed); the listing dereferences it unchecked and crashes in that window.
        if (touch == nullptr) {
            return 0;
        }
        switch (a1) {
            case 1:
                touch->touchBegan(p, a8);
                break;
            case 2:
                touch->touchMoved(p, a8);
                break;
            case 0:
                touch->touchEnded(p, a8);
                break;
            default:
                break;
        }
    }
    return 0;
}

// 0x52f24c pressNOInConfirmation
extern "C" int pressNOInConfirmation() {
    _DEBUG_OUT("kh pressNOInConfirmation %d", "");
    if (Width_Screen == 1280) {
        if (isScreenOriented) {
            Press(790, 390);
            return Release(790, 390);
        }
        Press(490, Height_Screen - 390);
        return Release(Width_Screen - 790, Height_Screen - 390);
    }
    if (isScreenOriented) {
        Press(500, 280);
        return Release(500, 280);
    }
    Press(Width_Screen - 500, Height_Screen - 280);
    return Release(Width_Screen - 500, Height_Screen - 280);
}

// 0x52f3ec pressNOInExitConfirmation
extern "C" int pressNOInExitConfirmation() {
    _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame7777777777777777");
    int dx = 0;
    int dy = 0;
    if (Height_Screen == 640) {
        dx = 107;
        dy = 60;
    } else if (Height_Screen == 600) {
        dx = 207;
        dy = 10;
    }
    if (Width_Screen == 1280) {
        if (!isScreenOriented) {
            Press(771, Height_Screen - 376);
            return Release(Width_Screen - 509, Height_Screen - 376);
        }
        Press(509, 328);
        return Release(509, 328);
    }
    if (!isScreenOriented) {
        Press(Width_Screen - 278 - dx, Height_Screen - 280 - dy);
        return Release(Width_Screen - 278 - dx, Height_Screen - 280 - dy);
    }
    Press(dx + 278, dy + 280);
    return Release(dx + 278, dy + 280);
}

// 0x52f5d4 pressMainMenuInMutiIGM
extern "C" int pressMainMenuInMutiIGM() {
    _DEBUG_OUT("pressMainMenuInMutiIGMpressMainMenuInMutiIGMpressMainMenuInMutiIGM666666666666661111111111111");
    const int dy = Height_Screen == 600 ? 55 : 0;
    if (isScreenOriented) {
        Press(400, dy + 355);
        return Release(400, dy + 355);
    }
    Press(Width_Screen - 400, Height_Screen - 355 - dy);
    return Release(Width_Screen - 400, Height_Screen - 355 - dy);
}

// 0x52f6e4 pressMainMenuInIGM
extern "C" int pressMainMenuInIGM() {
    _DEBUG_OUT("pressMainMenuInIGMpressMainMenuInIGMpressMainMenuInIGM66666666666666666666666");
    int dy = Height_Screen == 640 ? 85 : 0;
    if (Is_In_Multiplayer_Mode) {
        dy = 55;
    }
    if (Height_Screen == 768) {
        if (Is_In_Multiplayer_Mode) {
            if (!isScreenOriented) {
                Press(Width_Screen - 640, 248);
                return Release(Width_Screen - 640, Height_Screen - 520);
            }
            Press(640, 472);
            return Release(640, 472);
        }
        if (isScreenOriented) {
            Press(640, 434);
            return Release(640, 434);
        }
        Press(Width_Screen - 640, 286);
        return Release(Width_Screen - 640, Height_Screen - 482);
    }
    if (Height_Screen != 720) {
        if (!isScreenOriented) {
            Press(Width_Screen - 400, Height_Screen - 355 - dy);
            return Release(Width_Screen - 400, Height_Screen - 355 - dy);
        }
        Press(400, dy + 355);
        return Release(400, dy + 355);
    }
    _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720");
    if (Is_In_Multiplayer_Mode) {
        if (isScreenOriented) {
            _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 Multiplayer normal");
            Press(Width_Screen / 2, 472);
            return Release(Width_Screen / 2, 472);
        }
        _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 Multiplayer reverted");
        Press(Width_Screen / 2, Height_Screen - 472);
        return Release(Width_Screen / 2, Height_Screen - 472);
    }
    if (isScreenOriented) {
        _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 normal");
        Press(Width_Screen / 2, 434);
        return Release(Width_Screen / 2, 434);
    }
    _DEBUG_OUT("pressMainMenuInIGM Height_Screen == 720 reverted");
    Press(Width_Screen / 2, Height_Screen - 434);
    return Release(Width_Screen / 2, Height_Screen - 434);
}

// 0x52fb78 pressExitButtonInMainMenu
extern "C" int pressExitButtonInMainMenu() {
    _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame5555555555555");
    if (Width_Screen == 1024) {
        if (!isScreenOriented) {
            Press(979, Height_Screen - 575);
            Release(Width_Screen - 45, Height_Screen - 575);
            Press(Width_Screen - 370, Height_Screen - 300);
            return Release(Width_Screen - 370, Height_Screen - 300);
        }
        Press(45, 575);
        Release(45, 575);
        Press(370, 300);
        return Release(370, 300);
    }
    if (Width_Screen == 1280) {
        if (!isScreenOriented) {
            Press(1229, Height_Screen - 720);
            return Release(Width_Screen - 51, Height_Screen - 720);
        }
        Press(51, 672);
        return Release(51, 672);
    }
    int dy = 0;
    if (Height_Screen == 640) {
        dy = 85;
    } else if (Height_Screen == 600) {
        dy = 75;
    }
    if (!isScreenOriented) {
        Press(Width_Screen - 10, Height_Screen - 470 - dy);
        Release(Width_Screen - 10, Height_Screen - 470 - dy);
        Press(Width_Screen - 400, Height_Screen - 315 - dy);
        return Release(Width_Screen - 400, Height_Screen - 315 - dy);
    }
    Press(10, dy + 470);
    Release(10, dy + 470);
    Press(400, dy + 315);
    return Release(400, dy + 315);
}

// 0x52ff54 pressOKButtonInGLive
extern "C" int pressOKButtonInGLive() {
    _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame444444444444444444444444441");
    int dy = 0;
    if (Height_Screen == 640) {
        dy = 85;
    } else if (Height_Screen == 600) {
        dy = 75;
    }
    if (isScreenOriented) {
        Press(5, 5);
        Release(5, 5);
    } else {
        Press(Width_Screen - 5, Height_Screen - 5);
        Release(Width_Screen - 5, Height_Screen - 5);
    }
    if (isScreenOriented) {
        Press(400, dy + 315);
        return Release(400, dy + 315);
    }
    Press(Width_Screen - 400, Height_Screen - 315 - dy);
    return Release(Width_Screen - 400, Height_Screen - 315 - dy);
}

// 0x53013c pressContinueInIGM
extern "C" int pressContinueInIGM() {
    _DEBUG_OUT("pressContinueInIGMpressContinueInIGMpressContinueInIGM133333333333331 %d", Height_Screen);
    int dy;
    switch (Height_Screen) {
        case 720:
            dy = 115;
            break;
        case 640:
            dy = 85;
            break;
        case 600:
            dy = 75;
            break;
        default:
            dy = 0;
            break;
    }
    if (isScreenOriented) {
        Press(Width_Screen / 2, dy + 130);
        return Release(Width_Screen / 2, dy + 130);
    }
    Press(Width_Screen / 2, Height_Screen - 130 - dy);
    return Release(Width_Screen / 2, Height_Screen - 130 - dy);
}

// 0x530280 pressBackButtonInGame
extern "C" int pressBackButtonInGame() {
    _DEBUG_OUT("pressBackButtonInGamepressBackButtonInGamepressBackButtonInGame111111111111111111");
    const int dy = Width_Screen == 1280 ? 48 : 0;
    if (isScreenOriented) {
        Press(20, 20);
        return Release(20, 20);
    }
    Press(Width_Screen - 20, Height_Screen - 20 - dy);
    return Release(Width_Screen - 20, Height_Screen - 20 - dy);
}

// 0x530380 pressPauseButtonInGame. Does nothing while a cut scene runs (the int result is then the IsCutSceneRunning
// value, non-zero).
extern "C" int pressPauseButtonInGame() {
    _DEBUG_OUT("pressPauseButtonInGame aaa");
    const int cutScene = ScriptManager::s_inst.IsCutSceneRunning() ? 1 : 0;
    if (cutScene) {
        return cutScene;
    }
    if (Width_Screen == 1280) {
        if (!isScreenOriented) {
            Press(116, Height_Screen - 144);
            return Release(Width_Screen - 1164, Height_Screen - 144);
        }
        Press(84, 206);
        return Release(84, 206);
    }
    if (Width_Screen == 1024) {
        if (!isScreenOriented) {
            Press(64, Height_Screen - 80);
            return Release(Width_Screen - 960, Height_Screen - 80);
        }
        Press(960, 80);
        return Release(960, 80);
    }
    if (!isScreenOriented) {
        Press(Width_Screen - 70, Height_Screen - 155);
        return Release(Width_Screen - 70, Height_Screen - 155);
    }
    Press(70, 155);
    return Release(70, 155);
}
