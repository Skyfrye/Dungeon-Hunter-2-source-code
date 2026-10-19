// Batch g1-game-app-global-f216b6-6 (<global>, part 7 of 22): the gameswf natives of the online, Bluetooth,
// Wi-Fi, friends, leaderboard and Game Center menus, ELF 0x43a004 .. 0x43a6c4. Declarations:
// dh2/global/native_online_gc.hpp.
//
// Facts shared by the bodies:
//   - Application singleton (ApplicationGetInstance(), ELF Singleton<Application>::s_inst at 0x99f72c):
//     +0x40 m_playerManager, +0x4c m_savegameManager, +0x54 m_menuManager (dh2/Application.hpp).
//   - OnlineSingleton<OnlineGameState>::GetInstance() is the online game state. Its fields +0x14 (state
//     machine), +0x26, +0x28, +0x30 and +0x34 are not reachable from the tree yet (see the rows).
//   - GetOnline() (0x7fd794) is a thunk to COnline::GetInstance(). COnline::isOnlineGame_ (+0x05) is private
//     and has no getter.
//   - The gameswf value API (as_value::set_bool, to_string, to_tu_string, to_bool) and the fn_call argument
//     accessors are not in the tree. A native that writes its result or reads an argument is PARTIAL and its
//     body keeps only the part that does not depend on them.
//   - The natives return void. gameswf calls them as void(const fn_call&); the Hex-Rays int return is the
//     leftover r0 of the last call.

#include <cstring>
#include "net-transport/net_trace.hpp"  // DH2_NET_TRACE_LOG (host runner only)

#include "core-platform/debug_out.hpp"
#include "core-platform/device.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/native_app_hud_level.hpp"  // nativeOpenGLive (0x532b20)
#include "dh2/global/native_online_gc.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"

// 0x43a004 NativeIsBluetooth(gameswf::fn_call const&): the result is true for an online game in mode 2 (Bluetooth).
void NativeIsBluetooth(const gameswf::fn_call& call) {
    call.result->set_bool(GetOnlineGameFlag() && OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 2);
}

// 0x43a04c NativeIsOnlineMode(gameswf::fn_call const&): the result is true when the online state's flag at +0x28 and the online game flag
// are both set.
void NativeIsOnlineMode(const gameswf::fn_call& call) {
    call.result->set_bool(OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ && GetOnlineGameFlag());
}

// 0x43a094 NativeIsGLLiveMultiplayer(gameswf::fn_call const&): the result is true in online mode 3 (GL Live).
void NativeIsGLLiveMultiplayer(const gameswf::fn_call& call) {
    call.result->set_bool(OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3);
}

// 0x43a0cc NativeSendRoomSearchRequest(gameswf::fn_call const&): the online state machine is set to state 102 (room search).
void NativeSendRoomSearchRequest(const gameswf::fn_call& /*call*/) {
    DH2_NET_TRACE_LOG("[mp] NativeSendRoomSearchRequest\n");
    OnlineSingleton<OnlineGameState>::GetInstance()->SetState(102);
}

// 0x43a0e0 NativeGLXPlayerLoggedIn(gameswf::fn_call const&): the result is the GLX logged-in flag (OnlineGameState +0x26).
void NativeGLXPlayerLoggedIn(const gameswf::fn_call& call) {
    call.result->set_bool(OnlineSingleton<OnlineGameState>::GetInstance()->flag26_);
}

// 0x43a0fc NativeOnlineSanityCheck(gameswf::fn_call const&): clears the GLX logged-in flag (OnlineGameState +0x26).
void NativeOnlineSanityCheck(const gameswf::fn_call& /*call*/) {
    OnlineSingleton<OnlineGameState>::GetInstance()->flag26_ = false;
}

// 0x43a110 NativeCreateMultiplayerLobby(gameswf::fn_call const&): the online state machine is set to state 101 (create lobby).
void NativeCreateMultiplayerLobby(const gameswf::fn_call& /*call*/) {
    OnlineSingleton<OnlineGameState>::GetInstance()->SetState(101);
}

// 0x43a124 NativeSetMultitouch(gameswf::fn_call const&): with one argument, stores to_bool(argument 0) in
// MenuManager::unk_110 (+0x110); otherwise stores 1.
void NativeSetMultitouch(const gameswf::fn_call& call) {
    if (call.nargs == 1) {
        const bool multitouch = call.arg(0).to_bool();
        MenuManager::GetInstance()->unk_110 = multitouch;
    } else {
        MenuManager::GetInstance()->unk_110 = true;
    }
}

// 0x43a16c NativeIsKorean(gameswf::fn_call const&): the result is (SavegameManager::getOption("Language") == 5), 5
// being the Korean language index. The savegame manager is Application +0x4c (dword_99F778 is Singleton<Application>::s_inst + 0x4c).
void NativeIsKorean(const gameswf::fn_call& call) {
    call.result->set_bool(ApplicationGetInstance().m_savegameManager->getOption("Language") == 5);
}

// 0x43a1c8 NativeEnableBluetooth(gameswf::fn_call const&)
// The result is set to Device::IsBluetoothSupported(). (The Hex-Rays call passes a spurious argument; the function is
// static with no parameters.)
void NativeEnableBluetooth(const gameswf::fn_call& call) {
    call.result->set_bool(Device::IsBluetoothSupported());
}

// 0x43a1e4 NativeAddFriend(gameswf::fn_call const&)
// In an online game in mode 3 (GL Live) argument 0 (a string, the player name) gets a friend invitation
// (CMatchingGLLive::SendGLFriendInvite on CMatching::Get()).
void NativeAddFriend(const gameswf::fn_call& call) {
    if (GetOnlineGameFlag() && OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        const char* name = call.arg(0).to_tu_string().c_str();
        static_cast<CMatchingGLLive*>(CMatching::Get())->SendGLFriendInvite(name);
    }
}

// 0x43a248 NativeSendGLInvite(gameswf::fn_call const&): the same gate and name, but a game invitation
// (CMatchingGLLive::SendGLFriendsGameInvite).
void NativeSendGLInvite(const gameswf::fn_call& call) {
    if (GetOnlineGameFlag() && OnlineSingleton<OnlineGameState>::GetInstance()->mode_ == 3) {
        char* name = const_cast<char*>(call.arg(0).to_tu_string().c_str());
        static_cast<CMatchingGLLive*>(CMatching::Get())->SendGLFriendsGameInvite(name);
    }
}

// 0x43a2cc NativeIsMultiplayerHost(gameswf::fn_call const&)
// True offline. Online, in mode 3 or 4 the answer is CMatchingGLLive::IsHost() and in any other mode PlayerManager::IsLocalPlayerHosting().
void NativeIsMultiplayerHost(const gameswf::fn_call& call) {
    if (!GetOnlineGameFlag()) {
        call.result->set_bool(true);
        return;
    }
    const std::int32_t mode = OnlineSingleton<OnlineGameState>::GetInstance()->mode_;
    if (mode == 3 || mode == 4) {
        call.result->set_bool(static_cast<CMatchingGLLive*>(CMatching::Get())->IsHost());
    } else {
        call.result->set_bool(ApplicationGetInstance().m_playerManager->IsLocalPlayerHosting() != 0);
    }
}

// 0x43a358 NativeWiFiCheck(gameswf::fn_call const&): the result is Application::IsWifiEnabled() on the singleton.
void NativeWiFiCheck(const gameswf::fn_call& call) {
    call.result->set_bool(ApplicationGetInstance().IsWifiEnabled());
}

// 0x43a38c NativeGCAutoMatch(gameswf::fn_call const&)
// Calls OnlineGameState::Init(4) on the online game state. The original returns the Init result, which the
// void native drops. OnlineGameState::Init is PARTIAL in its own row (its matching switch and the Game Center
// branches are not reconstructed), so this call inherits that gap.
void NativeGCAutoMatch(const gameswf::fn_call& call) {
    (void)call;
    OnlineSingleton<OnlineGameState>::GetInstance()->Init(4);
}

// 0x43a3a0 NativeGCLeaderboards(gameswf::fn_call const&): converts argument 0 with to_string and discards it, then
// evaluates Application::IsWifiEnabled() and discards that too (the void native has no result slot).
void NativeGCLeaderboards(const gameswf::fn_call& call) {
    (void)call.arg(0).to_string();
    (void)ApplicationGetInstance().IsWifiEnabled();
}

// 0x43a3dc NativeMultiplayerBack(gameswf::fn_call const&)
// Argument 0 (a string, the menu name) is stored in the online state (+0x30, OnlineGameState::menuName30_); then every handler
// registered for the back button (key 15) runs with the handler context, in list order.
void NativeMultiplayerBack(const gameswf::fn_call& call) {
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    state->menuName30_ = call.arg(0).to_string();
    OnlineSingleton<OnlineGameState>::GetInstance()->RunHandlers(15);
}

// 0x43a450 NativeShowLeaderboard(gameswf::fn_call const&)
// Traces the call; with Wi-Fi on, argument 0 (a string) selects what to request from the ranking service (the GLXPlayerLeaderboard of
// CMatching::Get()): "init" asks for the first page (rows 0..10) and resets the page counter, "next" and "prev" move the counter by 10
// (prev stops at 0 without a request below it) and ask for that page, "my_rank" asks for the page that holds the player's own
// position. Each request clears the score data count first and sets `leader`. The result of the last request is not used.
void NativeShowLeaderboard(const gameswf::fn_call& call) {
    _DEBUG_OUT("XSocket::Run(): Connecting... \n");
    if (!ApplicationGetInstance().IsWifiEnabled()) {
        return;
    }
    const char* command = call.arg(0).to_string();
    _DEBUG_OUT("+ Displaying GC Leaderboards [ %s] ...\n", command);
    auto leaderboard = []() { return static_cast<CMatchingGLLive*>(CMatching::Get())->Leaderboard(); };
    if (std::strcmp("init", command) == 0) {
        GLXPlayerLeaderboard* board = leaderboard();
        board->SetScoreDataCount(0);
        board->sendRankGet(0, 0, 10, 1, true);
        leaderboardcount = 0;
        leader = true;
    }
    if (std::strcmp("next", command) == 0) {
        leaderboardcount += 10;
        GLXPlayerLeaderboard* board = leaderboard();
        board->SetScoreDataCount(0);
        board->sendRankGet(0, leaderboardcount, leaderboardcount + 10, 1, true);
        leader = true;
    }
    if (std::strcmp("prev", command) == 0) {
        leaderboardcount -= 10;
        if (leaderboardcount >= 0) {
            GLXPlayerLeaderboard* board = leaderboard();
            board->SetScoreDataCount(0);
            board->sendRankGet(0, leaderboardcount, leaderboardcount + 10, 1, true);
            leader = true;
        } else {
            leaderboardcount = 0;
        }
    }
    if (std::strcmp("my_rank", command) == 0) {
        GLXPlayerLeaderboard* board = leaderboard();
        board->SetScoreDataCount(0);
        const int position = board->getCurrentPlayerLeaderboardPosition();
        leaderboardcount = position - position % 10;
        board->sendRankGet(0, leaderboardcount, leaderboardcount + 10, 1, true);
        leader = true;
    }
}

// 0x43a6a4 NativeLaunchTwitter(gameswf::fn_call const&)
// The original returns SavegameManager::getLanguage() of the savegame manager (Application +0x4c, the global
// dword_99F778). It does not launch Twitter; the name is the only evidence for that. getLanguage() is const and has no
// side effect. A native returns void, so the int result is dropped, as in the other natives.
void NativeLaunchTwitter(const gameswf::fn_call& call) {
    (void)call;
    (void)ApplicationGetInstance().m_savegameManager->getLanguage();
}

// 0x43a6c4 NativeGCAchievements(gameswf::fn_call const&): converts argument 0 with to_string and discards it, then
// opens the Game Center achievements for the language (SavegameManager::getLanguage() on Application +0x4c) through
// nativeOpenGLive(NativeGCAchievementsOpenGLiveId(language)) (dh2/global/native_online_gc.hpp). nativeOpenGLive
// (0x532b20) is the Android JNI bridge, declared in dh2/global/native_app_hud_level.hpp and not defined in the tree.
void NativeGCAchievements(const gameswf::fn_call& call) {
    (void)call.arg(0).to_string();
    const int language = ApplicationGetInstance().m_savegameManager->getLanguage();
    nativeOpenGLive(NativeGCAchievementsOpenGLiveId(language));
}
