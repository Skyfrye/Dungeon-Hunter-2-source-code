// gameswf natives of the cursor, HUD, save slot, dialog, tutorial and multiplayer info queries
// (batch g1-game-app-global-f216b6-14, ELF 0x44e270 .. 0x450b78). Definitions:
// game-app/src/g1-game-app-global-f216b6-14.cpp.
//
// gameswf calls a native with one const fn_call& (mangled _Z..RKN7gameswf7fn_callE). The natives return void;
// the Hex-Rays int return is the leftover r0 of the last call, not part of the contract.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// 0x44e270 NativeGetCursorState
void NativeGetCursorState(const gameswf::fn_call& call);
// 0x44e5cc NativeGetPlayerHUDInfos
void NativeGetPlayerHUDInfos(const gameswf::fn_call& call);
// 0x44f27c NativeGetSaveIDsList
void NativeGetSaveIDsList(const gameswf::fn_call& call);
// 0x44fce0 NativeGetNextQuestMessage
void NativeGetNextQuestMessage(const gameswf::fn_call& call);
// 0x44ff14 NativeGetNextDialogMessage
void NativeGetNextDialogMessage(const gameswf::fn_call& call);
// 0x450298 NativeGetNextTutorialMessage
void NativeGetNextTutorialMessage(const gameswf::fn_call& call);
// 0x4504a0 NativeGetMultiplayerQuestInfo
void NativeGetMultiplayerQuestInfo(const gameswf::fn_call& call);
// 0x450b78 NativeGetMultiplayerRoomInfo
void NativeGetMultiplayerRoomInfo(const gameswf::fn_call& call);
