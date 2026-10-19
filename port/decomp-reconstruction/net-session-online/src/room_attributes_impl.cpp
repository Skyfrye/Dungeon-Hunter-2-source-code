#include "net-session-online/c_matching_gl_live.hpp"

#include <cstdlib>

#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_mp_lobby.hpp"

// 0x820508 _ZN15CMatchingGLLive17GetRoomAttributesEv
// The original is std::map<unsigned long long, CRoomAttributes>::operator[](key) at this+0x6720,
// with the key read from the int at +0x680c. The key is widened to 64 bits (sign rule not
// confirmed for negative keys).
CRoomAttributes* CMatchingGLLive::GetRoomAttributes() {
    return &roomAttributes_[static_cast<std::uint64_t>(roomKey_)];
}

// 0x81fadc _ZN15CMatchingGLLive18SearchRoomInternalER17CRoomSearchFilterbh
// The filter copy into +0x6738, the lobby list request (the lobby id is atoi of the login's "un" token, GLXPlayerLogin
// +0x78; query 0, game-param mask 0xF, mode forwarded), the room state set to 7 at +0x6834, return 0. The bool argument
// is unused, as in the original. Partial: a missing token gives lobby id 0 here, where the original calls atoi on null.
std::int32_t CMatchingGLLive::SearchRoomInternal(CRoomSearchFilter& filter, bool /*flag*/,
                                                 std::uint8_t mode) {
    searchFilter_ = filter;  // CRoomSearchFilter::operator= on this+0x6738

    GLXPlayerLogin* login = GetGLXPlayerLogin();
    const char* unToken = login->UnToken();
    GLXPlayerMPLobby* lobby = GetGLXPlayerMPLobby();
    const int lobbyId = unToken != nullptr ? std::atoi(unToken) : 0;
    lobby->mpSendGetLobbyListWithGameParam(lobbyId, 0, 0x0F, nullptr, mode);

    roomOp_ = 7;  // +0x6834
    return 0;
}

// CRoomAttributes::Serialize(NetBitStream&, unsigned) and Unserialize(NetBitStream&) are the game-world bodies
// (game-world/src/g1-game-world-CRoomAttributes-90a94b-*.cpp, 0x8190d8 and 0x817e5c). The stand-ins that stood here
// (Serialize wrote nothing, Unserialize read nothing) are removed (link-1): the class has one definition.
