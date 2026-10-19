#include "net-session-online/c_matching_gl_live.hpp"

#include "net-session-online/member_mask.hpp"

// 0x81bbf4 _ZN15CMatchingGLLive19GenerateNewMemberIdEv
std::int32_t CMatchingGLLive::GenerateNewMemberId() { return -1; }

// 0x81bbfc _ZN15CMatchingGLLive25SendConnectRequestMessageE12tPACKET_TYPEi
std::int32_t CMatchingGLLive::SendConnectRequestMessage(int /*packetType*/, std::int32_t /*target*/) const {
    return 0;
}

// 0x81bc04 _ZN15CMatchingGLLive28ProcessConnectRequestMessageER10CNetworkIdR12NetBitStream
void CMatchingGLLive::ProcessConnectRequestMessage(CNetworkId& /*from*/, NetBitStream& /*stream*/) const {}

// 0x81bc74 _ZN15CMatchingGLLive29ProcessConnectResponseMessageER10CNetworkIdR12NetBitStream
void CMatchingGLLive::ProcessConnectResponseMessage(CNetworkId& /*from*/, NetBitStream& /*stream*/) const {}

// 0x81bc94 _ZN15CMatchingGLLive20ProcessClientMessageER10CNetworkIdR12NetBitStream
void CMatchingGLLive::ProcessClientMessage(CNetworkId& /*from*/, NetBitStream& /*stream*/) const {}

// 0x81bc08 _ZN15CMatchingGLLive17ReceiveInvitationEv
std::int32_t CMatchingGLLive::ReceiveInvitation() { return 0; }

// 0x81bc10 _ZN15CMatchingGLLive19GetInvitationRoomIdEv
std::uint64_t CMatchingGLLive::GetInvitationRoomId() { return 0; }

// 0x81bc1c _ZN15CMatchingGLLive9CloseRoomEv
std::int32_t CMatchingGLLive::CloseRoom() { return 0; }

// 0x81bc24 _ZN15CMatchingGLLive8OpenRoomEb
std::int32_t CMatchingGLLive::OpenRoom(bool /*value*/) { return 0; }

// 0x81bc2c _ZN15CMatchingGLLive8HideRoomEv
std::int32_t CMatchingGLLive::HideRoom() { return 0; }

// 0x81bc34 _ZN15CMatchingGLLive8ShowRoomEv
std::int32_t CMatchingGLLive::ShowRoom() { return 0; }

// 0x81bc4c _ZN15CMatchingGLLive19ProcessFriendEventsEv
std::int32_t CMatchingGLLive::ProcessFriendEvents() const { return 0; }

// 0x81bc98 _ZN15CMatchingGLLive13InitGLFriendsEv
void CMatchingGLLive::InitGLFriends() const {}

// 0x81bc78 _ZN15CMatchingGLLive13GetMemberMaskEi
std::int32_t CMatchingGLLive::GetMemberMask(std::int32_t memberId) const {
    return MemberMaskForId(memberId);
}
