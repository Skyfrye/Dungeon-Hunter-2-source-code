#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdio>

#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in_gl_live.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/game_center_info.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"

// Single definitions of the statics this slice owns. The other statics of the class
// (s_IsGameStarting, s_eventQueueGLLiveInternal, the observers) are defined by their own slice.
GLXPlayerMPLobby* CMatchingGLLive::s_GLXPlayerMPLobby = nullptr;
GameCenterInfo CMatchingGLLive::s_GameCenterInfo;
std::string CMatchingGLLive::m_GameVersion;

// 0x81ef7c _ZN15CMatchingGLLive19GetGLXPlayerMPLobbyEv
// Creates the lobby on first use: "socket://%s" from the login observer's server buffer (+0x06) into a 512-byte
// buffer, the lobby observer singleton (created on first use), and the 0x94-byte GLXPlayerMPLobby built from that
// observer and the URL. The original also copy-constructs a temporary lobby observer from the singleton and destroys it
// after the construction; it is never used and is not made here (its destructor would free the shared room records of a
// non-empty list; the list is empty when the lobby is created).
GLXPlayerMPLobby* CMatchingGLLive::GetGLXPlayerMPLobby() {
    if (s_GLXPlayerMPLobby == nullptr) {
        char url[512];
        std::snprintf(url, sizeof(url), "socket://%s", GetGLXPlayerLoginObserver()->Server());
        CMatchingGLLiveLobbyObserver* observer = GetGLXPlayerMPLobbyObserver();
        s_GLXPlayerMPLobby = new GLXPlayerMPLobby(observer, url);
    }
    return s_GLXPlayerMPLobby;
}

// 0x81f128 _ZN15CMatchingGLLive9StartGameEv
void CMatchingGLLive::StartGame() {
    if (s_IsGameStarting) {
        return;
    }
    s_eventQueueGLLiveInternal.AddEvent(11, nullptr, 0);
    GetGLXPlayerMPLobby()->mpSendLaunchLobbyGame();
}

// 0x81f178 _ZN15CMatchingGLLive10SetGCStateEi
// State 1 posts event 1 on the login queue (loginEvents_, +0x2c) of the sign-in object, which the original takes
// from CSignIn::Get() without a check (the port skips a sign-in that is not a CSignInGLLive); state 2 chooses 3 or
// 4 from the Game Center record, state 3 calls CMatching::CreateJoinRoom(true, a copy of the Game Center room
// attributes at +0x6840), and state 7 starts the game. Partial because the CreateJoinRoom callee is partial (its
// NetStruct SetEnabled loop is not ported).
void CMatchingGLLive::SetGCState(std::int32_t state) {
    if (!gameCenterActive_ || gcState_ == state) {
        return;
    }
    gcState_ = state;
    switch (state) {
        case 1:
            if (auto* signIn = dynamic_cast<CSignInGLLive*>(CSignIn::Get())) {
                signIn->LoginEvents().AddEvent(1, nullptr, 0);
            }
            break;
        case 2:
            SetGCState(s_GameCenterInfo.isHost_ != 0 ? 3 : 4);
            break;
        case 3:
            CreateJoinRoom(true, gcRoomAttributes_);  // by-value copy, as the original's CRoomAttributes copy
            break;
        case 7:
            StartGame();
            break;
        default:
            break;
    }
}

// 0x81f44c _ZN15CMatchingGLLive19SendSetPlayerStatusEc
// Calls mpSendSetPlayerStatus on the lobby (GetGLXPlayerMPLobby) and returns its result. That result is the leftover of the
// callee's last call (the trace function or the observer callback), not a value the source produces, so 0 is returned.
std::int32_t CMatchingGLLive::SendSetPlayerStatus(std::uint8_t status) {
    GetGLXPlayerMPLobby()->mpSendSetPlayerStatus(status);
    return 0;
}

// 0x81f464 _ZN15CMatchingGLLive9LeaveRoomEv
std::int32_t CMatchingGLLive::LeaveRoom() {
    GetGLXPlayerMPLobby()->mpSendLeaveLobby();
    roomOp_ = 5;
    return 0;
}

// 0x81f524 _ZN15CMatchingGLLive6IsHostEv
// Virtual slot 60 of GLXPlayerMPLobby is mpIsMaster (checked against the vtable dump).
bool CMatchingGLLive::IsHost() { return GetGLXPlayerMPLobby()->mpIsMaster(); }
