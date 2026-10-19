// GLXPlayerUserFriend request senders. Each formats an "f|kind|i|GGI|u|UID|..." request into a
// 0x1000-byte buffer and hands it to SendByGet.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_user_friend.hpp"

namespace {
constexpr std::size_t kRequestBytes = 0x1000;
constexpr std::size_t kFieldBytes = 0x100;

// A missing user id is written as an empty string, as in the other request builders.
const char* UidText(const char* uid) { return uid != nullptr ? uid : ""; }
}  // namespace

// 0x82cb60 _ZN19GLXPlayerUserFriend19GLXPlayerUserFriendEv (C2 at 0x82cbf8 has the same body).
// The per-entry arrays are vectors in the port, so they start empty.
GLXPlayerUserFriend::GLXPlayerUserFriend() = default;

// 0x82cacc _ZN19GLXPlayerUserFriendD1Ev (D2 at 0x82cb24). The original clears the list first;
// the vectors release the entries when the object is destroyed.
GLXPlayerUserFriend::~GLXPlayerUserFriend() = default;

// 0x82c584 _ZN19GLXPlayerUserFriend23sendGetUserFriendsCountEv
void GLXPlayerUserFriend::sendGetUserFriendsCount() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x49, static_cast<int>(GetGGI()), UidText(GetUID()));
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserFriendsCount before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x82c640 _ZN19GLXPlayerUserFriend18sendGetUserFriendsEii
std::int32_t GLXPlayerUserFriend::sendGetUserFriends(std::int32_t first, std::int32_t count) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|a|%d|c|%d|", 0x3d, static_cast<int>(GetGGI()),
                  UidText(GetUID()), first, count);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserFriends before String2Blob -> buffer = %s\n", buf);
    return SendByGet(buf);
}

// 0x82c708 _ZN19GLXPlayerUserFriend17sendDelUserFriendEPcb
void GLXPlayerUserFriend::sendDelUserFriend(const char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    const char* format = byUserName ? "f|%d|i|%d|u|%s|un|%s|" : "f|%d|i|%d|u|%s|n|%s|";
    std::snprintf(buf, sizeof buf, format, 0x3c, static_cast<int>(GetGGI()), UidText(GetUID()),
                  name != nullptr ? name : "");
    XP_DEBUG_OUT("GLXPlayerUser::sendDelUserFriend before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x82c7f4 _ZN19GLXPlayerUserFriend21sendConfirmUserFriendEPcib
void GLXPlayerUserFriend::sendConfirmUserFriend(const char* name, std::int32_t confirm, bool byUserName) {
    char buf[kRequestBytes] = {};
    const char* format = byUserName ? "f|%d|i|%d|u|%s|un|%s|c|%d|" : "f|%d|i|%d|u|%s|n|%s|c|%d|";
    std::snprintf(buf, sizeof buf, format, 0x3e, static_cast<int>(GetGGI()), UidText(GetUID()),
                  name != nullptr ? name : "", confirm != 0 ? 1 : 0);
    XP_DEBUG_OUT("GLXPlayerUser::sendConfirmUserFriend before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x82c8ec _ZN19GLXPlayerUserFriend17sendAddUserFriendEPcS0_b
std::int32_t GLXPlayerUserFriend::sendAddUserFriend(const char* name, const char* message, bool byUserName) {
    char buf[kRequestBytes] = {};
    const char* format = byUserName ? "f|%d|i|%d|u|%s|un|%s|" : "f|%d|i|%d|u|%s|n|%s|";
    std::snprintf(buf, sizeof buf, format, 0x3b, static_cast<int>(GetGGI()), UidText(GetUID()),
                  name != nullptr ? name : "");
    if (message != nullptr) {
        char field[kFieldBytes] = {};
        std::snprintf(field, sizeof field, "m|%s|", message);
        std::strcat(buf, field);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendAddUserFriend before String2Blob -> buffer = %s\n", buf);
    return SendByGet(buf);
}
