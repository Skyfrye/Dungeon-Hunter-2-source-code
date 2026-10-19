// gameswf natives of the online, Bluetooth, Wi-Fi, friends, leaderboard and Game Center menus
// (batch g1-game-app-global-f216b6-6, ELF 0x43a004 .. 0x43a6c4). Definitions:
// game-app/src/g1-game-app-global-f216b6-6.cpp.
//
// gameswf calls a native with one const fn_call& (mangled _Z..RKN7gameswf7fn_callE). The Hex-Rays
// return value is the leftover r0 of the last call, not part of the contract, so these return void.
#pragma once

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// 0x43a004 NativeIsBluetooth
void NativeIsBluetooth(const gameswf::fn_call& call);
// 0x43a04c NativeIsOnlineMode
void NativeIsOnlineMode(const gameswf::fn_call& call);
// 0x43a094 NativeIsGLLiveMultiplayer
void NativeIsGLLiveMultiplayer(const gameswf::fn_call& call);
// 0x43a0cc NativeSendRoomSearchRequest
void NativeSendRoomSearchRequest(const gameswf::fn_call& call);
// 0x43a0e0 NativeGLXPlayerLoggedIn
void NativeGLXPlayerLoggedIn(const gameswf::fn_call& call);
// 0x43a0fc NativeOnlineSanityCheck
void NativeOnlineSanityCheck(const gameswf::fn_call& call);
// 0x43a110 NativeCreateMultiplayerLobby
void NativeCreateMultiplayerLobby(const gameswf::fn_call& call);
// 0x43a124 NativeSetMultitouch
void NativeSetMultitouch(const gameswf::fn_call& call);
// 0x43a16c NativeIsKorean
void NativeIsKorean(const gameswf::fn_call& call);
// 0x43a1c8 NativeEnableBluetooth
void NativeEnableBluetooth(const gameswf::fn_call& call);
// 0x43a1e4 NativeAddFriend
void NativeAddFriend(const gameswf::fn_call& call);
// 0x43a248 NativeSendGLInvite
void NativeSendGLInvite(const gameswf::fn_call& call);
// 0x43a2cc NativeIsMultiplayerHost
void NativeIsMultiplayerHost(const gameswf::fn_call& call);
// 0x43a358 NativeWiFiCheck
void NativeWiFiCheck(const gameswf::fn_call& call);
// 0x43a38c NativeGCAutoMatch
void NativeGCAutoMatch(const gameswf::fn_call& call);
// 0x43a3a0 NativeGCLeaderboards
void NativeGCLeaderboards(const gameswf::fn_call& call);
// 0x43a3dc NativeMultiplayerBack
void NativeMultiplayerBack(const gameswf::fn_call& call);
// 0x43a450 NativeShowLeaderboard
void NativeShowLeaderboard(const gameswf::fn_call& call);
// 0x43a6a4 NativeLaunchTwitter (returns SavegameManager::getLanguage; the name is the only Twitter evidence)
void NativeLaunchTwitter(const gameswf::fn_call& call);
// 0x43a6c4 NativeGCAchievements
void NativeGCAchievements(const gameswf::fn_call& call);

// NativeGCAchievements maps the language index to the Game Center achievements region id that is passed
// to nativeOpenGLive (0x532b20): languages 4, 5, 6 and 7 map to 5, 6, 7 and 4; every other index is
// passed through unchanged. Pure mapping, no side effects.
inline int NativeGCAchievementsOpenGLiveId(int language) {
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
