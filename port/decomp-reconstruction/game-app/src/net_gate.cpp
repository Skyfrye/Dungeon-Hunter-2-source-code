// The online gate (NetGateOpen), not a function of the binary: the compiler inlined the same four-term test into every caller
// (PlayerManager::GetNumPlayers 0x36d7a8, GetPlayer, GetRemotePlayer, GetLocalPlayer, the readiness checks, and others).
// From the asm of PlayerManager::GetNumPlayers (0x36d7a8 .. 0x36d7f0):
//   GetOnline()->isOnlineGame_ (byte +0x05)
//   && OnlineSingleton<OnlineGameState>::GetInstance()->flag24_ (byte +0x24)
//   && CMatching::Get()'s virtual at vtable +0x64, IsInRoom() in CMatchingLocal and CMatchingGLLive
//   && CNetPlayerManager::IsInitialized() (called on GetNetPlayerMgr()).
// Every term is evaluated in this order and the test stops at the first false one. The single-player branch of each caller is
// taken when the gate is closed.
#include "dh2/global/net_singletons.hpp"

#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"

// net-transport's c_net_player_manager.hpp carries an inline GetOnline stand-in that clashes with the thunk declared in
// dh2/global/net_singletons.hpp (see g1-game-app-global-f216b6-21.cpp).
#define GetOnline GetOnline_standin_net_player_manager
#include "net-transport/tb/c_net_player_manager.hpp"
#undef GetOnline

bool NetGateOpen() {
    if (!GetOnlineGameFlag()) {
        return false;
    }
    if (!OnlineSingleton<OnlineGameState>::GetInstance()->flag24_) {
        return false;
    }
    if (!CMatching::Get()->IsInRoom()) {  // vtable +0x64: IsInRoom()
        return false;
    }
    GetNetPlayerMgr();                       // the original calls it, then the static IsInitialized
    return CNetPlayerManager::IsInitialized();
}
