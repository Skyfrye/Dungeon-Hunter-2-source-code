// Batch g1-game-app-global-f216b6-5 (<global>, part 6 of 22): the MenuBase name order, the dialog message list,
// IsPlayableClassID and the gameswf natives of the menus, HUD, zoom, device flags and online state.
// Declarations: dh2/global/app_helpers.hpp and dh2/global/native_app.hpp.
//
// Facts shared by the bodies (checked against the ARM assembly where the pseudocode passes an extra argument):
//   - Singleton<Application>::s_inst (0x99f72c) is ApplicationGetInstance(). Its +0x34 is m_stringManager,
//     +0x40 m_playerManager, +0x50 m_zoomHandler and +0x54 m_menuManager (dh2/Application.hpp).
//   - MenuManager::GetInstance(), HUDControls::GetInstance() and Device::IsHighPerformance() are static and take no
//     argument in the assembly. The pseudocode passes the native's fn_call pointer through r0 by accident.
//     MenuManager::GetHUDRoot() is a member call on the instance.
//   - Application::IsOnlineGame() (0x320668) is *(GetOnline() + 5), the byte that the natives read as GetOnline()+5.
//   - gameswf::as_value::set_bool is declared in vendor-gameswf, but the full fn_call (gameswf_environment.h) does not
//     build in the tree, so every native that sets its result through fn_call is PARTIAL.
//   - The natives return void (see dh2/global/native_app.hpp).
//   - The globals SHARP_DEVICES, HTC_DEVICES, NO_IGP and JAPANESE_BUILD are declared extern here. Their definitions
//     belong to the globals batch.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "core-platform/device.hpp"
#include "dh2/Application.hpp"
#include "dh2/HUDControls.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/app_helpers.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_app.hpp"
#include "gameswf/gameswf_environment.h"
#include "core-platform/w7_global_rem.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vendor-gameswf/as_value.hpp"

// Globals of the original. The .bss addresses are HTC_DEVICES 0x9f6403, SHARP_DEVICES 0x9f6404, NO_IGP 0x9f6405
// and JAPANESE_BUILD 0x9f640c.
extern bool HTC_DEVICES;
extern bool SHARP_DEVICES;
extern bool NO_IGP;
extern bool JAPANESE_BUILD;

// The original's ASSERT(expr) in MenuMessageManager.cpp. gAssertLevel 2 stops the program (the original writes to address 0), 1 prints the
// line, 0 is silent. (core-platform/memory.hpp is not included here: its declarations clash with the game headers.)
extern int gAssertLevel;
static void ReportDialogAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr,
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuMessageManager.cpp", line);
    }
}

// 0x41f548 MenuBaseStar_sortlessthen(MenuBase const*, MenuBase const*)
// A null first operand returns false and a null second operand returns true. Otherwise the menu names
// (MenuFX::State::m_name, +0x08) are compared with strcmp.
bool MenuBaseStar_sortlessthen(const MenuBase* a, const MenuBase* b) {
    if (a == nullptr) {
        return false;
    }
    if (b == nullptr) {
        return true;
    }
    return std::strcmp(a->m_name, b->m_name) < 0;
}

// 0x433f04 GetDialogMsgListById(int, std::vector<DialogMsg, std::allocator<DialogMsg> >&)
// Appends the steps of Arrays::Dialogs row dialogId to out and returns true. The id is checked with two asserts (MenuMessageManager.cpp
// lines 126 "dialogId < (int)Arrays::Dialogs::size" and 127 "dialogId >= 0"; level 2 stops the program, level 1 prints) and a
// row outside the table, or one without steps (assert line 133 "...stepsSize > 0"), returns false. Each step (Structs::DialogStep:
// m_w1 the actor, m_w2 the style, m_w3 the text id, m_w4 the title id) becomes a DialogMsg: the title and the text are
// ParsePlayerName(StringManager::getString(id)), the style is kept, and the actor name is the one-character string made from the actor
// byte (the original builds it with no SetActorName call).
bool GetDialogMsgListById(int dialogId, std::vector<DialogMsg>& out) {
    const int size = static_cast<int>(Arrays::Dialogs::size);
    if (size <= dialogId) {
        ReportDialogAssert("dialogId < (int)Arrays::Dialogs::size", 126);
    }
    if (dialogId < 0) {
        ReportDialogAssert("dialogId >= 0", 127);
    }
    if (size <= dialogId || dialogId < 0) {
        return false;
    }
    const Structs::DialogStepList& row = reinterpret_cast<const Structs::DialogStepList*>(Arrays::Dialogs::members)[dialogId];
    if (row.stepsSize == 0) {
        ReportDialogAssert("Arrays::Dialogs::members[dialogId].stepsSize > 0", 133);
        return false;
    }
    StringManager* strings = ApplicationGetStringManager();
    DialogMsg message(std::string(), std::string(), -1, -1);
    const Structs::DialogStep* steps = static_cast<const Structs::DialogStep*>(row.steps);
    for (std::uint32_t i = 0; i < row.stepsSize; ++i) {
        static_cast<std::string&>(message) = ParsePlayerName(std::string(strings->getString(steps[i].TitleText)));
        message.m_text = ParsePlayerName(std::string(strings->getString(steps[i].Text)));
        message.m_style = steps[i].Style;
        message.m_actorName.assign(1, static_cast<char>(steps[i].Actor));
        out.push_back(message);
    }
    return true;
}

// 0x439c34 IsPlayableClassID(int)
bool IsPlayableClassID(int classId) {
    return classId == 263 || classId == 325 || classId == 290;
}

// 0x439c60 NativeSendReady(gameswf::fn_call const&)
// Empty (asm BX LR).
void NativeSendReady(const gameswf::fn_call& call) {
    (void)call;
}

// 0x439c64 NativeLaunchIGP(gameswf::fn_call const&)
// Empty (asm BX LR).
void NativeLaunchIGP(const gameswf::fn_call& call) {
    (void)call;
}

// 0x439c68 NativeSetLockZoom(bool)
// Stores the flag as one byte at +0x86 of the bound camera (CameraLevel::m_zoomLocked; asm STRBNE R0,[R3,#0x86]). The
// camera is ZoomHandler::m_camera (+0x20) of Singleton<Application>::s_inst.m_zoomHandler (+0x50, the global
// dword_99f77c). The original stores only when the camera is non-null. It reads the zoom handler without a test; the
// port also guards that read (the original would fault on a null zoom handler).
void NativeSetLockZoom(bool locked) {
    ZoomHandler* zoomHandler = ApplicationGetInstance().m_zoomHandler;
    CameraLevel* camera = zoomHandler != nullptr ? zoomHandler->m_camera : nullptr;
    if (camera != nullptr) {
        camera->m_zoomLocked = locked;
    }
}

// 0x439c94 NativeUnlockZoom(gameswf::fn_call const&)
// Forwards to NativeSetLockZoom(false) (asm: MOV R0,#0; B NativeSetLockZoom). Reconstructed.
void NativeUnlockZoom(const gameswf::fn_call& call) {
    (void)call;
    NativeSetLockZoom(false);
}

// 0x439c9c NativeLockZoom(gameswf::fn_call const&)
// Forwards to NativeSetLockZoom(true). Reconstructed.
void NativeLockZoom(const gameswf::fn_call& call) {
    (void)call;
    NativeSetLockZoom(true);
}

// 0x439ca4 NativeTouchToMove(gameswf::fn_call const&)
// Empty (asm BX LR).
void NativeTouchToMove(const gameswf::fn_call& call) {
    (void)call;
}

// 0x439ca8 NativeIPodSetShuffle(gameswf::fn_call const&)
// Empty (asm BX LR).
void NativeIPodSetShuffle(const gameswf::fn_call& call) {
    (void)call;
}

// 0x439cac NativeGCInvite(gameswf::fn_call const&)
// Empty (asm BX LR).
void NativeGCInvite(const gameswf::fn_call& call) {
    (void)call;
}

// 0x439dd8 NativePopAllMenus(gameswf::fn_call const&)
// Calls the virtual at vtable +0x38 (PopMenu(bool)) of MenuManager::GetInstance()->m_multiMenuManager (+0xf4 of
// MenuManager) with argument 1: MultiMenuManager::PopMenu(true). The int result is the leftover r0 and is not returned.
void NativePopAllMenus(const gameswf::fn_call& call) {
    (void)call;
    MenuManager::GetInstance()->m_multiMenuManager->PopMenu(true);
}

// 0x439dfc NativeBeginCustom(gameswf::fn_call const&)
// The HUD root gets "SetCustomText" on the HUD style character ("_root.menu_HUD_<HUDStyle>", RenderFX::Find) and the HUD controls start
// their customise mode (HUDControls::BeginCustom). GetInstance is static, so the r0 argument of the listing is a leftover.
void NativeBeginCustom(const gameswf::fn_call& /*call*/) {
    MenuFX* hudRoot = MenuManager::GetInstance()->GetHUDRoot();
    const int hudStyle = ApplicationGetInstance().GetSavedOption("HUDStyle");
    char hudMenuName[20];
    std::snprintf(hudMenuName, sizeof hudMenuName, "_root.menu_HUD_%d", hudStyle);
    auto* hudCharacter = reinterpret_cast<gameswf::character*>(hudRoot->Find(hudMenuName));  // Find returns as_object*; the listing passes the pointer unchanged
    hudRoot->InvokeASCallback(hudCharacter, "SetCustomText", nullptr, 0);
    HUDControls::GetInstance()->BeginCustom();
}

// 0x439ebc NativeIsBluetoothWifiEnabled(gameswf::fn_call const&)
// Asm: as_value::set_bool(result, 1).
void NativeIsBluetoothWifiEnabled(const gameswf::fn_call& call) {
    call.result->set_bool(true);
}

// 0x439ec8 NativeIsJapaneseVersion(gameswf::fn_call const&)
// Asm: as_value::set_bool(result, JAPANESE_BUILD ? 1 : 0).
void NativeIsJapaneseVersion(const gameswf::fn_call& call) {
    call.result->set_bool(JAPANESE_BUILD);
}

// 0x439f00 NativeEnableGameCenter(gameswf::fn_call const&)
// Asm: as_value::set_bool(result, 1).
void NativeEnableGameCenter(const gameswf::fn_call& call) {
    call.result->set_bool(true);
}

// 0x439f0c NativeBluetoothCheck(gameswf::fn_call const&)
// Asm: as_value::set_bool(result, 1).
void NativeBluetoothCheck(const gameswf::fn_call& call) {
    call.result->set_bool(true);
}

// 0x439f18 NativeIsMultiplayerEnabled(gameswf::fn_call const&)
// Asm: the result is SHARP_DEVICES || HTC_DEVICES || (!NO_IGP && Device::IsHighPerformance()). The flags are tested in
// that order, and IsHighPerformance is called only when the first two are clear and NO_IGP is clear.
void NativeIsMultiplayerEnabled(const gameswf::fn_call& call) {
    if (SHARP_DEVICES || HTC_DEVICES) {
        call.result->set_bool(true);
        return;
    }
    const bool highPerformance = !NO_IGP && Device::IsHighPerformance();
    call.result->set_bool(highPerformance);
}

// 0x439fa4 NativeScreenIsBlack(gameswf::fn_call const&)
// Asm: when the online flag (GetOnline()+5, Application::IsOnlineGame) is set and the global death state of the
// PlayerManager (dword_99F76C, which is Application +0x40, m_playerManager) is 1, it becomes 2. The original returns
// GetOnline(), a leftover of the last call, so the native returns void. The flag is read through IsOnlineGame, whose
// own row is partial (the Application batch).
void NativeScreenIsBlack(const gameswf::fn_call& call) {
    (void)call;
    Application& app = ApplicationGetInstance();
    if (app.IsOnlineGame()) {
        PlayerManager* playerManager = app.m_playerManager;
        if (playerManager->m_globalDeathState == 1) {
            playerManager->m_globalDeathState = 2;
        }
    }
}

// 0x439fe8 NativeIsMultiplayerGame(gameswf::fn_call const&)
// Asm: as_value::set_bool(result, *(GetOnline() + 5)), the online game flag. Application::IsOnlineGame() (0x320668) is
// that byte.
void NativeIsMultiplayerGame(const gameswf::fn_call& call) {
    call.result->set_bool(ApplicationGetInstance().IsOnlineGame());
}
