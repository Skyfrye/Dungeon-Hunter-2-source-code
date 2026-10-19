// gameswf natives of the app HUD, minimap, on-screen keyboard, zoom, orientation, iPod, save slot, level pause,
// menu pop and script skip (batch g1-game-app-global-f216b6-7, ELF 0x43a758 .. 0x43ac90). Definitions:
// game-app/src/g1-game-app-global-f216b6-7.cpp.
//
// gameswf calls a native with one const fn_call&. The Hex-Rays int return is the leftover r0 of the last call, not part
// of the contract, so these return void (the same convention as dh2/global/native_app.hpp). The vendored gameswf 1.714
// fn_call (port/engine-ui/vendor/gameswf1714/gameswf/gameswf_environment.h) has result +0x00, this_ptr +0x04,
// this_value +0x08, env +0x0c, nargs +0x10 and first_arg_bottom_index +0x14. The as_value accessors are not in the tree,
// so a native that reads an argument or stores its result is PARTIAL.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

class PlayerInfo;

// Android JNI bridges, queued to core-platform (0x532b20 returns the JNI result, 0x533570 logs and returns it).
// Not defined in the tree yet.
extern "C" void nativeOpenGLive(int language);  // 0x532b20, a C symbol; core-platform defines it with C linkage and void (link-1)
extern "C" int nativeIsSupportMM();  // 0x533570, a C symbol (core-platform tb/android_jni_app_events.hpp, link-1)

// The switch of NativeGLLive (0x43a758): languages 4, 5, 6 and 7 are passed to nativeOpenGLive as 5, 6, 7 and 4;
// every other language is passed through unchanged.
inline int GLLiveLanguageArg(int language) {
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

// 0x43a758 NativeGLLive(gameswf::fn_call const&)
void NativeGLLive(const gameswf::fn_call& call);
// 0x43a810 NativeRefreshHudManager(gameswf::fn_call const&)
void NativeRefreshHudManager(const gameswf::fn_call& call);
// 0x43a82c NativeDoWeHaveInternet(gameswf::fn_call const&)
void NativeDoWeHaveInternet(const gameswf::fn_call& call);
// 0x43a860 NativeCloseKeyboard(gameswf::fn_call const&)
void NativeCloseKeyboard(const gameswf::fn_call& call);
// 0x43a8b0 NativeUpdateOrientation(gameswf::fn_call const&)
void NativeUpdateOrientation(const gameswf::fn_call& call);
// 0x43a930 NativeIPodControl(gameswf::fn_call const&)
void NativeIPodControl(const gameswf::fn_call& call);
// 0x43a974 NativeUseIpodPlayer(gameswf::fn_call const&)
void NativeUseIpodPlayer(const gameswf::fn_call& call);
// 0x43a9a8 NativeResetZoom(gameswf::fn_call const&)
void NativeResetZoom(const gameswf::fn_call& call);
// 0x43aa18 NativeShowStatusBar(gameswf::fn_call const&)
void NativeShowStatusBar(const gameswf::fn_call& call);
// 0x43aa58 NativeShowMinimapLegend(gameswf::fn_call const&)
void NativeShowMinimapLegend(const gameswf::fn_call& call);
// 0x43aa84 NativeResetMapZoom(gameswf::fn_call const&)
void NativeResetMapZoom(const gameswf::fn_call& call);
// 0x43aa94 NativeHideMinimap(gameswf::fn_call const&)
void NativeHideMinimap(const gameswf::fn_call& call);
// 0x43aaac NativeShowMinimap(gameswf::fn_call const&)
void NativeShowMinimap(const gameswf::fn_call& call);
// 0x43aac4 AssignSaveSlotToPlayer(int,int). The slot is stored as the last save slot and the local player id selects the
// player. NativeAssignSaveSlotToPlayer (0x43cf50) passes argument 0 as slot and argument 1 as the local player id.
PlayerInfo* AssignSaveSlotToPlayer(int slot, int localPlayerId);
// 0x43ab00 NativeEndLoading(gameswf::fn_call const&)
void NativeEndLoading(const gameswf::fn_call& call);
// 0x43ab40 NativeSetLevelPause(gameswf::fn_call const&)
void NativeSetLevelPause(const gameswf::fn_call& call);
// 0x43ab98 NativeAwayFromHud(gameswf::fn_call const&)
void NativeAwayFromHud(const gameswf::fn_call& call);
// 0x43abe8 NativeDebugConsole(gameswf::fn_call const&)
void NativeDebugConsole(const gameswf::fn_call& call);
// 0x43ac28 NativePopAllAbove(gameswf::fn_call const&)
void NativePopAllAbove(const gameswf::fn_call& call);
// 0x43ac90 NativeSkipScript(gameswf::fn_call const&)
void NativeSkipScript(const gameswf::fn_call& call);
