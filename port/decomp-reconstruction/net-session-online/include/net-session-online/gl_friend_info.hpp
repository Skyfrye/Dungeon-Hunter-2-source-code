// GLFriendInfo: one entry of CMatchingGLLive's game friend list (std::list<GLFriendInfo> at +0x6bd8).
// The list node is 0x14 bytes in the original (next and previous links, then these 12 bytes).
//
// Layout (original 32-bit offsets, kept as comments), recovered from
// MultiplayerCallback::LoadGLLiveFriends (0x49a75c, the only writer of a new entry),
// CMatchingGLLive::IsMyFriend (0x81c6cc) and SendGLFriendsGameInvite (0x81c78c):
//   +0x00 friend number (strdup of GetGLFriendsNumber)
//   +0x04 friend name (strdup of GetGLFriendsName; IsMyFriend compares it with the argument)
//   +0x08 online flag (byte: friend state == 2)
//   +0x09 invited flag (byte: starts at 0, SendGLFriendsGameInvite sets it to 1)
//   +0x0a two bytes of padding
// The strings are owned by the entry in the original (strdup, never freed by the list). The port
// holds them as std::string so a copy of the list is a deep copy.
#pragma once

#include <string>

struct GLFriendInfo {
    std::string number;    // +0x00
    std::string name;      // +0x04
    bool online = false;   // +0x08
    bool invited = false;  // +0x09
};
