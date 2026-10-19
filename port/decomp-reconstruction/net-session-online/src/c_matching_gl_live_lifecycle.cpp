#include "net-session-online/c_matching_gl_live.hpp"

#include "net-session-online/c_lobby_parameter_and_query.hpp"
#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-session-online/c_sign_in_gl_live_observer.hpp"
#include "net-session-online/deps/platform_stand_ins.hpp"
#include "net-session-online/deps/stream_bytes.hpp"
#include "net-transport/connection_manager.hpp"  // CConnectionManager (real)
#include "net-session-online/deps/matching_queue.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_message.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/glx_player_user.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

// Singletons created on first use (the original keeps them as globals of the class).
GLXPlayerUserFriend* CMatchingGLLive::s_GLXPlayerUserFriend = nullptr;
GLXPlayerLogin* CMatchingGLLive::s_GLXPlayerLogin = nullptr;

// 0x81e7f0 _ZN15CMatchingGLLiveC2Eb (the C1 twin at 0x81e9dc has the same body).
// The original runs the CMatching constructor, sets the local member id (+0x3640) to -1, constructs the
// create-room attributes, the server map, the 32 member info elements, the GLX pointers (all null), the room
// attributes map, the search filter, the two mutexes, the Game Center flag from the argument (+0x67e8), the
// flags, the player parameter string, the room list and the other containers, then the Game Center
// attributes and the friend list, loads profile.sav, and sets the base byte +0x0f to 3. The port builds the
// same members through their default member initializers, in declaration order (the base first), so the
// body keeps only the explicit stores. Words the original leaves unset (the peer key counter at +0x363c,
// +0x3630) start at 0. The callee rows keep their own notes: the CMatching constructor and
// MemberInfoNetStruct constructor are partial.
CMatchingGLLive::CMatchingGLLive(bool gameCenterActive) {
    memberId_ = -1;                   // +0x3640
    gameCenterActive_ = gameCenterActive;  // +0x67e8
    LoadGLLiveProfile();
    unk_0f = 3;                       // +0x0f
}

// 0x81d2b4 _ZN15CMatchingGLLiveD1Ev (the D2 twin at 0x81d614 is the same body; the D0 thunk at 0x81d5f8 frees the object
// after this).
// In the original's order: the lobby query (+0x6808), the server config (+0x6710), the message service (+0x6708), the
// message observer (+0x670c), the friend service (+0x6700) and its observer (+0x6704) are deleted and cleared; then the
// GLXPlayerLogin, login observer, lobby and lobby observer singletons are deleted and reset to null, the started flag is
// cleared, the friend list is emptied, and the remaining members and the CMatching base are destroyed.
// Deviation: the original never frees the GLXPlayerUser (+0x6718) and the leaderboard (+0x671c); they are freed here.
CMatchingGLLive::~CMatchingGLLive() {
    delete lobbyQuery_;
    lobbyQuery_ = nullptr;
    delete glxServerConfig_;
    glxServerConfig_ = nullptr;
    delete glxMessage_;
    glxMessage_ = nullptr;
    delete messageObserver_;
    messageObserver_ = nullptr;
    delete glxUserFriend_;
    glxUserFriend_ = nullptr;
    delete friendObserver_;
    friendObserver_ = nullptr;
    delete s_GLXPlayerLogin;
    s_GLXPlayerLogin = nullptr;
    delete s_GLXPlayerLoginObserver;
    s_GLXPlayerLoginObserver = nullptr;
    delete s_GLXPlayerMPLobby;
    s_GLXPlayerMPLobby = nullptr;
    delete s_GLXPlayerMPLobbyObserver;
    s_GLXPlayerMPLobbyObserver = nullptr;
    s_IsGameStarting = false;
    glFriends_.clear();
    delete glxUser_;
    glxUser_ = nullptr;
    delete glxLeaderboard_;
    glxLeaderboard_ = nullptr;
}

// CMatching seams for CConnectionManager ((*CConnectionManager::GetInstance()) in the original). Not virtual slots of
// CMatching: CMatching::UpdateMemberIdList and ProcessEvents call the connection manager through them.
// CConnectionManager::GetConnMemberIdList(false).
std::vector<int> CMatchingGLLive::ConnectionMemberIdList() const {
    return CConnectionManager::GetInstance()->GetConnMemberIdList(false);
}
// CConnectionManager::IsConnected(int).
bool CMatchingGLLive::IsConnectedMember(int memberId) const {
    return CConnectionManager::GetInstance()->IsConnected(memberId);
}
// CConnectionManager::Disconnect(int, false).
void CMatchingGLLive::DisconnectMember(int memberId) {
    CConnectionManager::GetInstance()->Disconnect(memberId, false);
}

// 0x81c5e8 _ZN15CMatchingGLLive17GetGLXPlayerLoginEv
// Creates the GLXPlayerLogin singleton on first use, fetches the login observer (created on first use), copies it into a
// temporary (vptr, +0x04, +0x05, 128 bytes from +0x06, the int at +0x88: the implicit copy), registers the login
// observer singleton on the component, and destroys the temporary. The temporary is never used.
GLXPlayerLogin* CMatchingGLLive::GetGLXPlayerLogin() {
    if (s_GLXPlayerLogin == nullptr) {
        s_GLXPlayerLogin = new GLXPlayerLogin();
        CSignInGLLiveObserver temporary(*GetGLXPlayerLoginObserver());
        s_GLXPlayerLogin->RegisterObserver(s_GLXPlayerLoginObserver);
    }
    return s_GLXPlayerLogin;
}

// 0x81c37c _ZN15CMatchingGLLive22GetGLXPlayerUserFriendEv
// Creates the GLXPlayerUserFriend singleton on first use (kept in s_GLXPlayerUserFriend), fetches the friend observer
// (created on first use) and copies it into a temporary that is destroyed unused. The component gets
// s_GLXPlayerLoginObserver registered, not the friend observer: the listing loads that global (it is null when no login
// observer was created yet), and the port does the same. The member at +0x6700 (glxUserFriend_) is a different slot and
// is not written here.
GLXPlayerUserFriend* CMatchingGLLive::GetGLXPlayerUserFriend() {
    if (s_GLXPlayerUserFriend == nullptr) {
        s_GLXPlayerUserFriend = new GLXPlayerUserFriend();
        CMatchingGLLiveFriendObserver temporary(*GetGLXPlayerUserFriendObserver());
        s_GLXPlayerUserFriend->RegisterObserver(s_GLXPlayerLoginObserver);
    }
    return s_GLXPlayerUserFriend;
}

// 0x81f858 _ZN15CMatchingGLLive9TerminateEv
// Partial. When IsInRoom() (vtable +0x64) is set it calls LeaveRoom (vtable +0x3c). It then clears the CMatching
// output queue (m_eventQueue), the CMatching internal queue (m_eventQueueInternal) and the GLLive queue. When signed
// in it calls the lobby's vtable +0x18 slot, mpDisconnect, and terminates the lobby observer. It terminates the login
// observer, unregisters packet types 2, 3, 9 and 4, calls the CMatching base Terminate, and clears the initialized flag
// (+0x0c), the Game Center flag (+0x67e8), the GLLive started flag and the alpha-server flag (+0x67ed).
// Partial: the original creates the lobby on first use, so a null lobby here skips the disconnect; the lobby observer's
// Terminate calls ClearRoomList, which is not reconstructed.
std::int32_t CMatchingGLLive::Terminate() {
    if (IsInRoom()) {
        LeaveRoom();
    }
    MatchingOutputEventQueue().Clear();
    MatchingInternalEventQueue().Clear();
    s_eventQueueGLLiveInternal.Clear();

    CSignIn* signIn = CSignIn::Get();
    if (signIn != nullptr && signIn->LoggedIn()) {
        if (GLXPlayerMPLobby* lobby = GetGLXPlayerMPLobby(); lobby != nullptr) {
            lobby->mpDisconnect();  // GLXPlayerMPLobby vtable +0x18
        }
        GetGLXPlayerMPLobbyObserver()->Terminate();
    }
    GetGLXPlayerLoginObserver()->Terminate();

    CConnectionManager::UnregisterPacketType(2);
    CConnectionManager::UnregisterPacketType(3);
    CConnectionManager::UnregisterPacketType(9);
    CConnectionManager::UnregisterPacketType(4);
    CMatching::Terminate();

    gameCenterActive_ = false;  // +0x67e8
    initialized_ = false;       // +0x0c
    s_IsGameStarting = false;
    useAlphaServer_ = false;    // +0x67ed
    return 0;
}
