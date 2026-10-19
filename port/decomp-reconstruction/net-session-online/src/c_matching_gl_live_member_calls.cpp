#include "net-session-online/c_matching_gl_live.hpp"

#include <cstddef>
#include <cstring>
#include <string>
#include <utility>

#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-session-online/c_sign_in.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-session-online/glx_player_component.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_message.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"
#include "net-session-online/glx_player_user.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

namespace {

// Text of the game invitation sent by SendGLFriendsGameInvite (decompiled literal).
constexpr char kInviteTitle[] = "title";
constexpr char kInviteText[] = "Lets play Dungeon Hunter 2 !";
// Largest user parameter accepted by SetPlayerParam (0x80 bytes, decompiled bound).
constexpr std::size_t kMaxPlayerParamBytes = 0x80;

}  // namespace

// 0x81c138 _ZN15CMatchingGLLive18GetGLFriendsNumberEi
// The user number text of friend `index` when 0 <= index < the friend count, else 0 (null). A null friend list returns
// null here; the original would dereference it.
const char* CMatchingGLLive::GetGLFriendsNumber(std::int32_t index) {
    if (glxUserFriend_ == nullptr || index < 0 || index >= glxUserFriend_->GetFriendsCount()) {
        return nullptr;
    }
    return glxUserFriend_->GetUserNumber(index);
}

// 0x81c174 _ZN15CMatchingGLLive23SendRequestLostPasswordEPc
// Forwards the name to the GLXPlayerUser object (+0x6718) and returns 1. A null user object skips
// the request here; the original would call through it.
std::int32_t CMatchingGLLive::SendRequestLostPassword(char* name) {
    if (glxUser_ != nullptr) {
        glxUser_->sendRetrievalPassword(name);
    }
    return 1;
}

// 0x81c748 _ZN15CMatchingGLLive16InitializeFriendEv
// Partial: the login singleton is fetched first (as in the original, where it is not guarded), then the login
// UID is copied into the friend list object, the friend list is requested (kind 0x3d, first 0, count 0) and the
// byte at +0x67e9 is set. Returns the request's result (the SendByGet result). A null friend list skips the copy and
// the request and returns 0 here (the original would fault).
std::int32_t CMatchingGLLive::InitializeFriend() {
    GLXPlayerLogin* login = GetGLXPlayerLogin();
    std::int32_t result = 0;
    if (glxUserFriend_ != nullptr) {
        glxUserFriend_->SetUID(login->GetUID());
        result = glxUserFriend_->sendGetUserFriends(0, 0);
    }
    glFriendsRequested_ = 1;
    return result;
}

// 0x81c78c _ZN15CMatchingGLLive23SendGLFriendsGameInviteEPc
// Sends the invitation (title "title", text "Lets play Dungeon Hunter 2 !", type 8) to the name through the
// GLXPlayerMessage object (+0x6708), then walks the game friend list (+0x6bd8) for the first entry whose name
// equals the argument and sets its invited flag. The result is the last value computed, as in the original: the
// send result when the list is empty, otherwise the last string comparison (0 once an entry matched).
// Partial: the invitation goes through GLXPlayerMessage::SendOnlineMessage, whose bool argument and result are the
// port's (the original's last argument is 0). A null message object skips the send here (result 0) and a
// null name skips the list walk; the original dereferences both.
std::int32_t CMatchingGLLive::SendGLFriendsGameInvite(char* name) {
    char title[sizeof(kInviteTitle)];
    char text[sizeof(kInviteText)];
    std::memcpy(title, kInviteTitle, sizeof(title));
    std::memcpy(text, kInviteText, sizeof(text));
    std::int32_t result = 0;
    if (glxMessage_ != nullptr) {
        result = glxMessage_->SendOnlineMessage(name, 8, title, text, false);
    }
    if (name == nullptr) {
        return result;
    }
    for (GLFriendInfo& entry : glFriends_) {
        result = std::strcmp(entry.name.c_str(), name);  // LC_API_STRCMP_0
        if (result == 0) {
            entry.invited = true;  // node +0x11
            return result;
        }
    }
    return result;
}

// 0x81ee10 _ZN15CMatchingGLLive19AddFriendInGameListE12GLFriendInfo
// Allocates a list node (0x14 bytes: links, then the three words of the entry) and links it at the tail of the
// list whose head is at +0x6bd8.
void CMatchingGLLive::AddFriendInGameList(GLFriendInfo info) {
    glFriends_.push_back(std::move(info));
}

// 0x81ee6c _ZN15CMatchingGLLive16GetGLFriendsListEv
// Builds a new list (returned through the hidden result pointer) with a copy of every node of the list at +0x6bd8,
// in order. The entries' strings are copied by value here; the original copies the three words (the string
// pointers are shared).
std::list<GLFriendInfo> CMatchingGLLive::GetGLFriendsList() const {
    return glFriends_;
}

// 0x81dea0 _ZNK15CMatchingGLLive11GetMemberIdEv
// The local member id while the game runs; otherwise the id found in the GLLive member list.
std::int32_t CMatchingGLLive::GetMemberId() const {
    if (s_IsGameStarting) {
        return memberId_;  // +0x3640
    }
    return GetGLLiveMemberId();
}

// 0x81dd04 _ZNK15CMatchingGLLive17GetGLLiveMemberIdEv
// Reconstructed. -1 when the Game Center flag (+0x67e8) is set or the user is not signed in. Otherwise the lobby
// observer member vector is copied, the signed-in user name (CSignIn +0x04) is lower-cased, and the index of the
// last member whose lower-cased name (+0x28) equals it is returned, scanning GetMemberCount() (vtable +0x60)
// entries; -1 when none. Host-necessitated deviation: the original indexes the copied vector without a range check,
// so a count beyond the vector reads past it; the port stops at the end of the vector.
std::int32_t CMatchingGLLive::GetGLLiveMemberId() const {
    if (gameCenterActive_) {
        return -1;
    }
    CSignIn* signIn = CSignIn::Get();
    if (!signIn->LoggedIn()) {
        return -1;
    }
    const std::vector<tMemberInfo> members = GetGLXPlayerMPLobbyObserver()->MemberList();
    const auto lower = [](std::string text) {
        for (char& c : text) {
            c = static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
        }
        return text;
    };
    const char* userName = signIn->CredentialsName();
    const std::string wanted = lower(userName != nullptr ? std::string(userName) : std::string());
    std::int32_t result = -1;
    for (std::int32_t i = 0; i < GetMemberCount(); ++i) {
        if (static_cast<std::size_t>(i) >= members.size()) {
            break;
        }
        if (lower(std::string(members[static_cast<std::size_t>(i)].Name())) == wanted) {
            result = i;
        }
    }
    return result;
}

// 0x81f04c _ZN15CMatchingGLLive14SetPlayerParamESsb
// Stores the text in playerParam_ (+0x67f0) when it is at most 0x80 bytes. With the flag set, the text is sent to the lobby
// as a user parameter, with its length (mpSendSetUserParameter), and then a copy of the text goes to the lobby observer's
// SetPlayerParam (0x822638, reconstructed: it assigns the value of the local member). GetGLXPlayerMPLobby creates the lobby on
// first use, so the send always happens.
void CMatchingGLLive::SetPlayerParam(std::string value, bool sendToLobby) {
    if (value.size() > kMaxPlayerParamBytes) {
        return;
    }
    playerParam_ = value;
    if (!sendToLobby) {
        return;
    }
    {
        std::string copy = value;
        GetGLXPlayerMPLobby()->mpSendSetUserParameter(copy.data(), static_cast<std::int32_t>(copy.size()));
    }
    GetGLXPlayerMPLobbyObserver()->SetPlayerParam(value);
}
