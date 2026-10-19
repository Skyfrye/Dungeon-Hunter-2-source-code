// gameswf natives of the application menus, HUD, zoom, device flags and online state, plus the zoom helper they
// share (batch g1-game-app-global-f216b6-5, ELF 0x439c60 .. 0x439fe8). Definitions:
// game-app/src/g1-game-app-global-f216b6-5.cpp.
//
// gameswf calls a native with one const fn_call&. The Hex-Rays int return is the leftover r0 of the last call,
// not part of the contract, so these return void (the same convention as dh2/global/native_online_gc.hpp).
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// 0x439c60 NativeSendReady
void NativeSendReady(const gameswf::fn_call& call);
// 0x439c64 NativeLaunchIGP
void NativeLaunchIGP(const gameswf::fn_call& call);
// 0x439c68 NativeSetLockZoom(bool): stores the flag in the bound camera, used by NativeLockZoom and NativeUnlockZoom
void NativeSetLockZoom(bool locked);
// 0x439c94 NativeUnlockZoom
void NativeUnlockZoom(const gameswf::fn_call& call);
// 0x439c9c NativeLockZoom
void NativeLockZoom(const gameswf::fn_call& call);
// 0x439ca4 NativeTouchToMove
void NativeTouchToMove(const gameswf::fn_call& call);
// 0x439ca8 NativeIPodSetShuffle
void NativeIPodSetShuffle(const gameswf::fn_call& call);
// 0x439cac NativeGCInvite
void NativeGCInvite(const gameswf::fn_call& call);
// 0x439dd8 NativePopAllMenus
void NativePopAllMenus(const gameswf::fn_call& call);
// 0x439dfc NativeBeginCustom
void NativeBeginCustom(const gameswf::fn_call& call);
// 0x439ebc NativeIsBluetoothWifiEnabled
void NativeIsBluetoothWifiEnabled(const gameswf::fn_call& call);
// 0x439ec8 NativeIsJapaneseVersion
void NativeIsJapaneseVersion(const gameswf::fn_call& call);
// 0x439f00 NativeEnableGameCenter
void NativeEnableGameCenter(const gameswf::fn_call& call);
// 0x439f0c NativeBluetoothCheck
void NativeBluetoothCheck(const gameswf::fn_call& call);
// 0x439f18 NativeIsMultiplayerEnabled
void NativeIsMultiplayerEnabled(const gameswf::fn_call& call);
// 0x439fa4 NativeScreenIsBlack
void NativeScreenIsBlack(const gameswf::fn_call& call);
// 0x439fe8 NativeIsMultiplayerGame
void NativeIsMultiplayerGame(const gameswf::fn_call& call);
